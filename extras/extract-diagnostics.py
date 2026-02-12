#!/usr/bin/env python3
"""
Extract all DIAGNOSTIC() macro definitions and their call sites from the Slang codebase.

Outputs extras/diagnostics-manifest.json with:
  - Every diagnostic definition (id, severity, name, message, line, param_count)
  - Every call site (file, line, context, call pattern, note chains)
  - Summary statistics

Usage:
    python3 extras/extract-diagnostics.py
"""

import json
import re
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parent.parent
DEFS_FILE = REPO_ROOT / "source" / "slang" / "slang-diagnostic-defs.h"
SEARCH_DIR = REPO_ROOT / "source" / "slang"
OUTPUT_FILE = REPO_ROOT / "extras" / "diagnostics-manifest.json"

CONTEXT_LINES = 5


def parse_diagnostics(text: str):
    """Parse all DIAGNOSTIC(...) macros from slang-diagnostic-defs.h.

    Handles single-line, multi-line, and string-concatenation forms.
    Returns list of dicts with keys: id, severity, name, message, line, param_count, is_note.
    """
    diagnostics = []
    lines = text.split("\n")
    line_offsets = []  # character offset for each line start
    offset = 0
    for line in lines:
        line_offsets.append(offset)
        offset += len(line) + 1  # +1 for '\n'

    def char_to_line(pos):
        """Convert character position to 1-based line number."""
        lo, hi = 0, len(line_offsets) - 1
        while lo < hi:
            mid = (lo + hi + 1) // 2
            if line_offsets[mid] <= pos:
                lo = mid
            else:
                hi = mid - 1
        return lo + 1  # 1-based

    # Find each DIAGNOSTIC( token
    pattern = re.compile(r'\bDIAGNOSTIC\s*\(')
    for m in pattern.finditer(text):
        start = m.start()
        line_num = char_to_line(start)

        # Find matching closing paren, respecting strings and nested parens
        pos = m.end()  # just after '('
        depth = 1
        tokens = []  # collect raw token strings for the 4 arguments
        current_token = []
        in_string = False

        while pos < len(text) and depth > 0:
            ch = text[pos]

            if in_string:
                current_token.append(ch)
                if ch == '\\' and pos + 1 < len(text):
                    pos += 1
                    current_token.append(text[pos])
                elif ch == '"':
                    in_string = False
                pos += 1
                continue

            if ch == '"':
                in_string = True
                current_token.append(ch)
                pos += 1
                continue

            if ch == '(':
                depth += 1
                current_token.append(ch)
                pos += 1
                continue

            if ch == ')':
                depth -= 1
                if depth == 0:
                    # flush last token
                    tokens.append(''.join(current_token))
                    pos += 1
                    break
                current_token.append(ch)
                pos += 1
                continue

            if ch == ',' and depth == 1:
                tokens.append(''.join(current_token))
                current_token = []
                pos += 1
                continue

            current_token.append(ch)
            pos += 1

        if len(tokens) < 4:
            continue  # malformed, skip

        raw_id = tokens[0].strip()
        raw_severity = tokens[1].strip()
        raw_name = tokens[2].strip()
        raw_message = tokens[3].strip()

        # Parse id
        try:
            diag_id = int(raw_id)
        except ValueError:
            continue

        # Parse message: join adjacent string literals
        # Find all quoted strings and concatenate their contents
        string_parts = re.findall(r'"((?:[^"\\]|\\.)*)"', raw_message)
        message = ''.join(string_parts)

        # Count $N parameters
        param_indices = set(re.findall(r'\$(\d+)', message))
        param_count = len(param_indices)

        is_note = raw_severity == "Note"

        diagnostics.append({
            "id": diag_id,
            "severity": raw_severity,
            "name": raw_name,
            "message": message,
            "line": line_num,
            "param_count": param_count,
            "is_note": is_note,
        })

    return diagnostics


def load_source_files(search_dir: Path):
    """Pre-read all .cpp and .h files under search_dir into memory.

    Returns dict: {relative_path: (full_path, lines_list)}
    """
    files = {}
    for ext in ("*.cpp", "*.h"):
        for fpath in search_dir.glob(ext):
            try:
                content = fpath.read_text(encoding="utf-8", errors="replace")
                file_lines = content.split("\n")
                rel = str(fpath.relative_to(REPO_ROOT))
                files[rel] = (fpath, file_lines)
            except (OSError, UnicodeDecodeError):
                pass
    return files


def find_call_sites(diag_name: str, source_files: dict):
    """Find all call sites for a diagnostic by searching for Diagnostics::NAME.

    Returns list of call site dicts.
    """
    pattern = re.compile(r'Diagnostics::' + re.escape(diag_name) + r'\b')
    sites = []

    for rel_path, (_, file_lines) in source_files.items():
        for i, line in enumerate(file_lines):
            if pattern.search(line):
                line_num = i + 1  # 1-based

                # Extract context
                start = max(0, i - CONTEXT_LINES)
                end = min(len(file_lines), i + CONTEXT_LINES + 1)
                context_before = file_lines[start:i]
                context_after = file_lines[i + 1:end]

                # Extract the full statement (from current line until ';')
                stmt_lines = [file_lines[i]]
                j = i
                # Check if statement continues (no ';' on this line and not a
                # comment-only line)
                while j < len(file_lines) - 1 and ';' not in file_lines[j]:
                    j += 1
                    stmt_lines.append(file_lines[j])
                    if j - i > 10:  # safety limit
                        break
                statement = ' '.join(l.strip() for l in stmt_lines)

                # Detect call pattern
                call_pattern = "unknown"
                # Search back a few lines for the diagnose call start
                search_region = '\n'.join(
                    file_lines[max(0, i - 3):i + 1]
                )
                if 'maybeDiagnoseWarningOrError(' in search_region:
                    call_pattern = "maybeDiagnoseWarningOrError"
                elif 'maybeDiagnose(' in search_region:
                    call_pattern = "maybeDiagnose"
                elif 'diagnose(' in search_region:
                    call_pattern = "diagnose"

                # Detect note chains: look for Diagnostics::*Note* or
                # Diagnostics::see* or Diagnostics::declared* within a few
                # lines after
                uses_notes = []
                note_search_end = min(len(file_lines), i + 4)
                for k in range(i + 1, note_search_end):
                    note_matches = re.findall(
                        r'Diagnostics::(\w+)',
                        file_lines[k]
                    )
                    for nm in note_matches:
                        if nm != diag_name:
                            uses_notes.append(nm)

                sites.append({
                    "file": rel_path,
                    "line": line_num,
                    "statement": statement,
                    "context_before": context_before,
                    "context_after": context_after,
                    "call_pattern": call_pattern,
                    "uses_notes": uses_notes,
                })

    return sites


def main():
    if not DEFS_FILE.exists():
        print(f"Error: {DEFS_FILE} not found", file=sys.stderr)
        sys.exit(1)

    print(f"Parsing diagnostics from {DEFS_FILE.relative_to(REPO_ROOT)}...")
    defs_text = DEFS_FILE.read_text(encoding="utf-8")
    all_diags = parse_diagnostics(defs_text)
    print(f"  Found {len(all_diags)} DIAGNOSTIC() entries")

    print(f"Loading source files from {SEARCH_DIR.relative_to(REPO_ROOT)}/...")
    source_files = load_source_files(SEARCH_DIR)
    print(f"  Loaded {len(source_files)} files")

    # Separate notes from regular diagnostics
    notes = [d for d in all_diags if d["is_note"]]
    diagnostics = [d for d in all_diags if not d["is_note"]]

    # Build a set of note names for cross-referencing
    note_names = {n["name"] for n in notes}

    # Find call sites for all diagnostics
    print("Finding call sites for diagnostics...")
    total_call_sites = 0
    no_call_sites_count = 0
    with_note_chains_count = 0

    for diag in diagnostics:
        sites = find_call_sites(diag["name"], source_files)
        diag["call_sites"] = sites
        total_call_sites += len(sites)
        if not sites:
            no_call_sites_count += 1
        if any(any(n in note_names for n in s["uses_notes"]) for s in sites):
            with_note_chains_count += 1

    # Find call sites for notes and build referenced_by
    print("Finding call sites for notes...")
    note_total_sites = 0
    for note in notes:
        sites = find_call_sites(note["name"], source_files)
        note_total_sites += len(sites)

        # Remove is_note key, add referenced_by
        del note["is_note"]
        note["call_sites"] = sites

        # Build referenced_by: which diagnostics use this note in their chains
        referenced_by = set()
        for diag in diagnostics:
            for site in diag["call_sites"]:
                if note["name"] in site.get("uses_notes", []):
                    referenced_by.add(diag["name"])
        note["referenced_by"] = sorted(referenced_by)

    # Clean up is_note from diagnostics output
    for diag in diagnostics:
        del diag["is_note"]

    print(f"  Diagnostics: {total_call_sites} call sites")
    print(f"  Notes: {note_total_sites} call sites")

    stats = {
        "total_diagnostics": len(diagnostics),
        "total_notes": len(notes),
        "total_call_sites": total_call_sites + note_total_sites,
        "diagnostics_with_no_call_sites": no_call_sites_count,
        "diagnostics_with_note_chains": with_note_chains_count,
    }

    manifest = {
        "source_file": str(DEFS_FILE.relative_to(REPO_ROOT)),
        "diagnostics": diagnostics,
        "notes": notes,
        "stats": stats,
    }

    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(manifest, f, indent=2, ensure_ascii=False)

    print(f"\nWrote {OUTPUT_FILE.relative_to(REPO_ROOT)}")
    print(f"Stats: {json.dumps(stats, indent=2)}")


if __name__ == "__main__":
    main()
