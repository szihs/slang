# Review Slang Test Coverage

Analyze test coverage for changes in this PR, focusing on Slang's testing patterns.

## Test File Conventions

Slang tests are `.slang` files under `tests/` with special directives:

### CPU/Interpreter Tests (No GPU Required)
```slang
//TEST:COMPARE_COMPUTE(filecheck-buffer=CHECK):-cpu -output-using-type
//TEST:INTERPRET(filecheck=CHECK):
```

### GPU-Specific Tests
```slang
//TEST:COMPARE_COMPUTE(filecheck-buffer=CHECK):-dx12
//TEST:COMPARE_COMPUTE(filecheck-buffer=CHECK):-vk
//TEST:COMPARE_COMPUTE(filecheck-buffer=CHECK):-mtl
```

## Review Checklist

### 1. Test Presence
- [ ] New language features have tests under `tests/language-feature/`
- [ ] Bug fixes have regression tests
- [ ] IR changes have corresponding output verification

### 2. Test Quality
- [ ] Tests cover edge cases
- [ ] Tests use FileCheck patterns for output verification
- [ ] Tests are runnable without GPU when possible

### 3. Test Organization
- [ ] Tests are in appropriate subdirectory
- [ ] Test names are descriptive
- [ ] Related tests are grouped together

## Example Test Structure

```slang
//TEST:COMPARE_COMPUTE(filecheck-buffer=CHECK):-cpu -output-using-type

//TEST_INPUT:ubuffer(data=[1 2 3 4], stride=4):name=inputBuffer
//TEST_INPUT:ubuffer(data=[0 0 0 0], stride=4):out,name=outputBuffer

[numthreads(4, 1, 1)]
void computeMain(uint3 dispatchThreadID : SV_DispatchThreadID)
{
    outputBuffer[dispatchThreadID.x] = inputBuffer[dispatchThreadID.x] * 2;
}

// CHECK: 2
// CHECK: 4
// CHECK: 6
// CHECK: 8
```

## Output
- List any missing test coverage
- Suggest specific test cases to add
- Identify tests that could be made GPU-independent
