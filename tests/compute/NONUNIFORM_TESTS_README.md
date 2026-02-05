# NonUniformResourceIndex Test Suite

This document describes the comprehensive test suite for the `NonUniformResourceIndex` functionality, specifically testing the IR pass implementation in `source/slang/slang-ir-float-non-uniform-resource-index.cpp`.

## Overview

The `floatNonUniformResourceIndex` pass transforms IR instructions to properly "float" `NonUniformResourceIndex` decorations to the correct locations in the IR. This is critical for SPIR-V code generation to ensure that non-uniform resource accesses are properly decorated with `NonUniform` attributes.

## Test Files

### 1. `nonuniform-dynamic-resource.slang` (Original)
**Purpose**: Basic regression test for dynamic resource access with NonUniformResourceIndex

**What it tests**:
- Basic `__DynamicResource` array access with `NonUniformResourceIndex`
- Lookup table (LUT) based indexing
- SPIR-V code generation with proper NonUniform decoration

**Key Checks**:
- `CHECK: OpDecorate {{.*}} NonUniform` - Verifies NonUniform decoration is present
- `CHECK: OpAccessChain` - Verifies access chain instruction
- `CHECK: OpLoad` - Verifies load instruction

### 2. `nonuniform-dynamic-resource-comprehensive.slang` (New)
**Purpose**: Comprehensive test covering multiple patterns of NonUniformResourceIndex usage

**What it tests**:
- Basic NonUniformResourceIndex with dynamic resource access
- NonUniformResourceIndex with nested cast expressions (IntCast operation)
- NonUniformResourceIndex with arithmetic operations on indices
- Multiple NonUniformResourceIndex calls in the same scope
- NonUniformResourceIndex with conditional index selection

**Coverage**:
- Tests the transformation of `intCast(nonUniformRes(x))` → `nonUniformRes(intCast(x))`
- Tests multiple resource accesses in a single shader
- Tests boundary conditions and index computations

### 3. `nonuniform-nested-operations.slang` (New)
**Purpose**: Test nested NonUniformResourceIndex operations

**What it tests**:
- Single NonUniformResourceIndex (baseline)
- Nested NonUniformResourceIndex: `nonUniform(nonUniform(x))` → `nonUniform(x)`
- Complex index expressions
- Boundary index (0)

**Coverage**:
- Tests the unwrapping logic in lines 26-32 of `slang-ir-float-non-uniform-resource-index.cpp`
- Verifies that nested NonUniformResourceIndex calls are properly simplified
- Tests that the innermost instruction is processed correctly

### 4. `nonuniform-getelementptr-load.slang` (New)
**Purpose**: Test GetElementPtr and Load operations with NonUniformResourceIndex (SPIRV mode)

**What it tests**:
- `gep(pArray, nonUniformRes(x))` → `nonUniformRes(gep(pArray, x))`
- `load(nonUniformRes(x))` → `nonUniformRes(load(x))`
- Array element access with non-uniform indices
- Nested structure access
- Multiple non-uniform accesses in loops

**Coverage**:
- Tests cases in lines 68-81 (GetElementPtr) and lines 125-130 (Load) of the IR pass
- Tests the SPIRV-specific path (lines 70, 126 check for SPIRV mode)
- Tests decoration of both the load instruction and its address operand (lines 201-208)

### 5. `nonuniform-intcast-swizzle.slang` (New)
**Purpose**: Test IntCast and Swizzle operations with NonUniformResourceIndex

**What it tests**:
- `intCast(nonUniformRes(x))` → `nonUniformRes(intCast(x))`
- Multiple type conversions (signed/unsigned, int/uint/float)
- Swizzle operations on non-uniform resources
- Complex cast chains
- Boundary test with zero index after cast

**Coverage**:
- Tests cases in lines 52-55 (IntCast operation)
- Tests cases in lines 104-120 (Swizzle operation)
- Verifies proper type conversion handling

### 6. `nonuniform-regression-test.slang` (New)
**Purpose**: Specific regression test for the bug fix

**What it tests**:
- The original bug: NonUniformResourceIndex not working with SPIRV dynamic resources
- OpAccessChain with NonUniform decoration
- OpLoad with NonUniform decoration
- Multiple accesses with different indices
- Edge case with index 0

**Coverage**:
- Validates the complete fix for the reported issue
- Tests the decoration application logic (lines 195-209)
- Ensures both pointer and loaded value are decorated

### 7. `nonuniform-edge-cases.slang` (New)
**Purpose**: Edge cases and boundary conditions

**What it tests**:
- Zero index boundary
- Maximum valid index boundary
- Complex expressions with all operators (arithmetic, bitwise, shift)
- Alternating uniform and non-uniform access
- NonUniformResourceIndex with RW resources
- Back-to-back non-uniform accesses
- Conditional branches with non-uniform in both branches
- NonUniformResourceIndex in loops

**Coverage**:
- Stress tests the worklist algorithm (lines 38-175)
- Tests the use-def chain walking (lines 11-14)
- Verifies robustness with edge cases

## Running the Tests

### Prerequisites
The project must be built first:

```bash
# From repository root
cmake --preset default
cmake --build --preset release
```

### Running All NonUniform Tests

```bash
# From repository root
./build/Release/bin/slang-test tests/compute/nonuniform*.slang
```

### Running Individual Tests

```bash
# Original test
./build/Release/bin/slang-test tests/compute/nonuniform-dynamic-resource.slang

# Comprehensive test
./build/Release/bin/slang-test tests/compute/nonuniform-dynamic-resource-comprehensive.slang

# Nested operations test
./build/Release/bin/slang-test tests/compute/nonuniform-nested-operations.slang

# GetElementPtr/Load test
./build/Release/bin/slang-test tests/compute/nonuniform-getelementptr-load.slang

# IntCast/Swizzle test
./build/Release/bin/slang-test tests/compute/nonuniform-intcast-swizzle.slang

# Regression test
./build/Release/bin/slang-test tests/compute/nonuniform-regression-test.slang

# Edge cases test
./build/Release/bin/slang-test tests/compute/nonuniform-edge-cases.slang
```

### Running with Multiple Test Servers (Faster)

```bash
# From repository root
./build/Release/bin/slang-test tests/compute/nonuniform*.slang -use-test-server -server-count 8
```

## Test Coverage Summary

The test suite covers all major code paths in `slang-ir-float-non-uniform-resource-index.cpp`:

### IR Operations Covered:
- ✅ **IntCast** (lines 52-55): Transform `intCast(nonUniformRes(x))`
- ✅ **CastDescriptorHandleToUInt2** (lines 56-67): Transform descriptor handle casts
- ✅ **GetElementPtr** (lines 68-81): Transform pointer arithmetic (SPIRV mode)
- ✅ **GetElement** (lines 82-103): Transform element extraction (both operand positions)
- ✅ **Swizzle** (lines 104-120): Transform swizzle operations
- ✅ **NonUniformResourceIndex** (lines 121-124): Unwrap nested calls
- ✅ **Load** (lines 125-130): Transform load operations (SPIRV mode)
- ✅ **CastDynamicResource** (lines 131-142): Transform dynamic resource casts

### Algorithm Features Covered:
- ✅ Nested NonUniformResourceIndex unwrapping (lines 26-32)
- ✅ Worklist processing (lines 38-175)
- ✅ Use-def chain traversal (lines 41-174)
- ✅ SPIRV-specific decoration (lines 177-212)
- ✅ Resource type checking (lines 197-198)
- ✅ Load address decoration (lines 201-208)
- ✅ Instruction replacement and cleanup (lines 153, 173, 210-211)

### Edge Cases Covered:
- ✅ Zero index (boundary condition)
- ✅ Maximum index (boundary condition)
- ✅ Nested transformations
- ✅ Multiple accesses in same scope
- ✅ Conditional branches
- ✅ Loop contexts
- ✅ Complex expressions
- ✅ Type conversions
- ✅ Read-write resources
- ✅ Mixed uniform/non-uniform access

## Expected Test Outcomes

All tests should pass with the fixed implementation. Each test verifies:

1. **Compilation Success**: The Slang compiler successfully compiles the test
2. **SPIR-V Generation**: Valid SPIR-V code is generated with `-emit-spirv-directly`
3. **NonUniform Decoration**: The `OpDecorate ... NonUniform` instruction is present in the output
4. **Correct IR Structure**: OpAccessChain and OpLoad instructions are properly formed

## Debugging Test Failures

If tests fail, check:

1. **SPIR-V Validation**: Set `SLANG_RUN_SPIRV_VALIDATION=1` to enable validation
2. **IR Dump**: Use `slangc -target spirv -emit-spirv-directly -dump-ir` (note: may be unreliable)
3. **FileCheck Patterns**: Ensure the CHECK patterns match the expected SPIR-V output

## Future Test Additions

Consider adding tests for:
- Multiple entry points with different NonUniformResourceIndex patterns
- Interaction with other IR passes
- Performance regression tests
- Memory usage tests with large resource arrays