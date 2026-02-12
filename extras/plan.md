# Diagnostic Conversion Plan: C++ DIAGNOSTIC() Macros → Lua Rich Diagnostics

## Overview

Convert all ~709 diagnostic definitions from the old C++ `DIAGNOSTIC()` macro system
(`source/slang/slang-diagnostic-defs.h`) to the new Lua-based rich diagnostic system.

The conversion is parallelized across 6 agents using Claude Code's team feature,
with each agent processing ~118-119 diagnostics independently.

## Pipeline

```
Step 1: Extract           Step 2: Split            Step 3: Convert (parallel)      Step 4: Merge
────────────────          ──────────────           ─────────────────────────       ────────────
extract-diagnostics.py → split-manifest.py →  ┌─ converter-0 → chunk-0.lua ─┐
                                               ├─ converter-1 → chunk-1.lua ─┤
  diagnostics-manifest.json    chunk-{0..5}.json ├─ converter-2 → chunk-2.lua ─├→ slang-diagnostics.lua
                                               ├─ converter-3 → chunk-3.lua ─┤
                                               ├─ converter-4 → chunk-4.lua ─┤
                                               └─ converter-5 → chunk-5.lua ─┘
```

---

## Step 1: Extract Diagnostic Definitions + Call Sites

**Script:** `extras/extract-diagnostics.py`
**Input:** `source/slang/slang-diagnostic-defs.h` + all `source/slang/*.cpp` and `*.h` files
**Output:** `extras/diagnostics-manifest.json`

```bash
python3 extras/extract-diagnostics.py
```

This produces a JSON manifest containing:
- Every `DIAGNOSTIC(id, severity, name, message)` definition (709 diagnostics + 61 notes)
- For each diagnostic, all call sites found by grepping for `Diagnostics::name`
- Each call site includes: file, line, full statement text, surrounding context, call pattern, and any note chains

**Manifest structure:**
```json
{
  "source_file": "source/slang/slang-diagnostic-defs.h",
  "diagnostics": [ ... ],   // 709 entries (non-Note)
  "notes": [ ... ],          // 61 Note entries
  "stats": {
    "total_diagnostics": 709,
    "total_notes": 61,
    "total_call_sites": 891,
    "diagnostics_with_no_call_sites": 118,
    "diagnostics_with_note_chains": 14
  }
}
```

Each diagnostic entry:
```json
{
  "id": 1,
  "severity": "Error",
  "name": "cannotOpenFile",
  "message": "cannot open file '$0'.",
  "line": 91,
  "param_count": 1,
  "call_sites": [
    {
      "file": "source/slang/slang-session.cpp",
      "line": 1705,
      "statement": "sink->diagnose(requestingLoc, Diagnostics::cannotOpenFile, defaultSourceFileName);",
      "context_before": ["..."],
      "context_after": ["..."],
      "call_pattern": "diagnose",
      "uses_notes": []
    }
  ]
}
```

---

## Step 2: Split Manifest into Chunks

**Script:** `/tmp/claude/split-manifest.py` (reproduced below)
**Input:** `extras/diagnostics-manifest.json`
**Output:** `/tmp/claude/chunks/chunk-{0..5}.json`

```bash
mkdir -p /tmp/claude/chunks
python3 /tmp/claude/split-manifest.py
```

**Script content:**
```python
#!/usr/bin/env python3
"""Split diagnostics-manifest.json into N chunk files for parallel processing."""
import json, os

MANIFEST = "extras/diagnostics-manifest.json"
OUTPUT_DIR = "/tmp/claude/chunks"
NUM_CHUNKS = 6

os.makedirs(OUTPUT_DIR, exist_ok=True)

with open(MANIFEST) as f:
    data = json.load(f)

diags = data["diagnostics"]  # already excludes Notes (severity != "Note")
notes_by_name = {d["name"]: d for d in data.get("notes", [])}

chunk_size = len(diags) // NUM_CHUNKS
remainder = len(diags) % NUM_CHUNKS

chunks = []
start = 0
for i in range(NUM_CHUNKS):
    end = start + chunk_size + (1 if i < remainder else 0)
    chunks.append(diags[start:end])
    start = end

for i, chunk in enumerate(chunks):
    chunk_data = {
        "chunk_index": i,
        "total_chunks": NUM_CHUNKS,
        "diagnostics": chunk,
        "notes_reference": notes_by_name,
    }
    with open(os.path.join(OUTPUT_DIR, f"chunk-{i}.json"), "w") as f:
        json.dump(chunk_data, f, indent=2)

    print(f"Chunk {i}: {len(chunk)} diagnostics, "
          f"IDs {chunk[0]['id']}..{chunk[-1]['id']}")
```

Produces 6 chunks of ~118-119 diagnostics each, with note definitions included as reference in every chunk.

---

## Step 3: Parallel Conversion via Claude Code Team

### Prerequisites

1. A custom agent definition at `.claude/agents/diagnostic-converter.md` (uses Sonnet model)
2. Claude Code team support enabled

### Team Setup

```
# In Claude Code session:
TeamCreate  → team_name: "diag-convert"
TaskCreate  → one task per chunk (tasks #1-#6)
Task        → spawn 6 converter agents (converter-0 through converter-5)
```

Each converter agent:
1. Reads its assigned `/tmp/claude/chunks/chunk-N.json`
2. Converts all diagnostics to Lua format
3. Writes output to `/tmp/claude/output/chunk-N.lua`
4. Marks its task complete

### Conversion Rules (given to each agent)

**Name:** Convert camelCase → space-separated lowercase
- `cannotOpenFile` → `"cannot open file"`
- `entryPointUsesUnavailableCapability` → `"entry point uses unavailable capability"`

**Severity mapping:**
| Old | New |
|-----|-----|
| `Error` | `err(...)` |
| `Warning` | `warning(...)` |
| `Fatal` | `err(...)` |
| `Internal` | `err(...)` |
| `Note` | Skip (handled separately) |

**Message → Two parts:**
1. **Diagnostic message** (2nd string arg): Concise standalone description
2. **Span message** (in `span()`): Original message with `$N` replaced by named `~interpolants`

**Interpolant naming from call sites:**

The call site `sink->diagnose(loc, Diagnostics::name, arg0, arg1)` tells us:
- `loc` → span location name
- `arg0` → `$0` interpolant name/type
- `arg1` → `$1` interpolant name/type

Type mappings:
| C++ Type | Lua Type |
|----------|----------|
| `Type*`, `QualifiedType` | `:Type` |
| `Decl*`, `DeclRef` | `:Decl` |
| `Expr*` | `:Expr` |
| `String`, `Name*`, `getText(...)` | omit or `:String` |
| `int`, `Index`, `Count` | `:int` |
| `Token` | `:Token` |

**Notes:** If `uses_notes` non-empty in any call site, add `-- uses notes: noteName` above the diagnostic.

### Output Format (per diagnostic)

```lua
err(
  "cannot open file",
  1,
  "file could not be opened",
  span("loc", "cannot open file '~path'.")
)
```

---

## Step 4: Merge Chunks

After all 6 converters complete, concatenate outputs:

```bash
mkdir -p /tmp/claude/output
cat /tmp/claude/output/chunk-{0,1,2,3,4,5}.lua > source/slang/slang-diagnostics.lua
```

Or with a header/footer:

```bash
{
  echo "-- Auto-converted from slang-diagnostic-defs.h"
  echo "-- $(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo ""
  for i in 0 1 2 3 4 5; do
    echo "-- ═══ Chunk $i ═══"
    cat /tmp/claude/output/chunk-$i.lua
    echo ""
  done
} > source/slang/slang-diagnostics.lua
```

---

## Step 5: Validation (DONE)

Results after merging:
1. Count diagnostics: `grep -c '^err\|^warning' slang-diagnostics.lua` = **709** (matches manifest)
2. All IDs present (except -1 which is the Note sentinel — expected)
3. Duplicate IDs exist but are **inherited from the original source** — 56 IDs are shared by multiple diagnostics (e.g., ID 39999 is used by 33 diagnostics, ID 20001 by 9). This is by design in the old system.
4. Spot-checks passed — output format is consistent across all chunks

---

## File Locations Summary

| File | Purpose |
|------|---------|
| `source/slang/slang-diagnostic-defs.h` | Original C++ DIAGNOSTIC() definitions |
| `extras/extract-diagnostics.py` | Step 1: Extracts definitions + call sites |
| `extras/diagnostics-manifest.json` | Full manifest (709 diagnostics + 61 notes + call sites) |
| `/tmp/claude/split-manifest.py` | Step 2: Splits manifest into chunks |
| `/tmp/claude/chunks/chunk-{0..5}.json` | Chunk files for parallel processing |
| `.claude/agents/diagnostic-converter.md` | Agent definition (Sonnet model, conversion rules) |
| `/tmp/claude/output/chunk-{0..5}.lua` | Per-chunk Lua output |
| `source/slang/slang-diagnostics.lua` | Final merged output |

---

## Execution Progress

| Chunk | Diagnostics | Status | Lines | Verified |
|-------|-------------|--------|-------|----------|
| 0 | 119 | **completed** | 837 | 119/119 diagnostics |
| 1 | 118 | **completed** | 830 | 118/118 diagnostics |
| 2 | 118 | **completed** | 826 | 118/118 diagnostics |
| 3 | 118 | **completed** | 828 | 118/118 diagnostics |
| 4 | 118 | **completed** | 828 | 118/118 diagnostics |
| 5 | 118 | **completed** | 826 | 118/118 diagnostics |

---

## Notes for Replication

- The extract script only searches `source/slang/` — diagnostics used in other directories won't have call sites
- 118 diagnostics have zero call sites (dead code or used outside `source/slang/`); these still get converted with generic parameter names (`~arg0`, `~arg1`)
- Notes (61 total) are NOT converted as standalone diagnostics — they're referenced by parent diagnostics via `-- uses notes:` comments
- The converter agent uses Sonnet (fast, cheap) — each chunk takes ~2-5 minutes
- If a converter fails mid-chunk, re-run just that chunk by spawning a single agent
- The team approach uses Claude Code's TeamCreate + Task tools; alternatively, run 6 independent `Task` calls without teams
