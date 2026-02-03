# Review Slang IR Changes

Analyze IR-related changes in this PR with deep focus on the Slang compiler's intermediate representation.

## Review Checklist

### 1. IR Instruction Consistency
- Check `slang-ir-insts.lua` definitions match actual usage
- Verify new instructions have proper documentation
- Ensure instruction semantics are well-defined

### 2. Pass Correctness
- Verify IR passes maintain SSA invariants
- Check that type information is preserved through transformations
- Ensure no use-after-free of IR values

### 3. Type System Integration
- Type lowering correctness for new constructs
- Proper handling of generic types
- Interface implementation verification

### 4. Code Generation Impact
- Changes affecting SPIRV emission (`slang-emit-spirv.cpp`)
- Changes affecting HLSL emission (`slang-emit-hlsl.cpp`)
- Cross-target compatibility concerns

## Debugging Approach

If issues are found, suggest using:
```bash
# Dump IR before/after specific passes
slangc -dump-ir-before lowerGenerics -dump-ir-after lowerGenerics -target spirv-asm test.slang

# Use the split script for large dumps
slangc -dump-ir -target spirv-asm test.slang | python extras/split-ir-dump.py
```

## Output Format
- Post inline comments for specific issues in IR code
- Provide a summary of architectural concerns
- Suggest test cases if new IR features are added

Use `mcp__deepwiki__ask_question` with "shader-slang/slang" for deeper architectural insights.
