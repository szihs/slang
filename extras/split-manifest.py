#!/usr/bin/env python3
"""Split diagnostics-manifest.json into N chunk files for parallel processing."""
import json
import sys
import os

MANIFEST = "extras/diagnostics-manifest.json"
OUTPUT_DIR = "/tmp/claude/chunks"
NUM_CHUNKS = 6

os.makedirs(OUTPUT_DIR, exist_ok=True)

with open(MANIFEST) as f:
    data = json.load(f)

# Filter out Note diagnostics (they're handled as part of parent diagnostics)
diags = [d for d in data["diagnostics"] if d["severity"] != "Note"]
notes_by_name = {d["name"]: d for d in data["diagnostics"] if d["severity"] == "Note"}

print(f"Total convertible diagnostics: {len(diags)}")
print(f"Total notes (for reference): {len(notes_by_name)}")

# Split into chunks
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
    path = os.path.join(OUTPUT_DIR, f"chunk-{i}.json")
    with open(path, "w") as f:
        json.dump(chunk_data, f, indent=2)

    # ID range info for labeling
    first_id = chunk[0]["id"] if chunk else "?"
    last_id = chunk[-1]["id"] if chunk else "?"
    first_name = chunk[0]["name"] if chunk else "?"
    last_name = chunk[-1]["name"] if chunk else "?"
    print(f"  Chunk {i}: {len(chunk)} diagnostics, IDs {first_id}..{last_id} ({first_name}..{last_name})")

print(f"\nWrote {NUM_CHUNKS} chunk files to {OUTPUT_DIR}/")
