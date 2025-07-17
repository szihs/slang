//TEST(compute):COMPARE_COMPUTE:-cpu -shaderobj

// This test verifies that the GlobalSession renaming works correctly
// by checking that basic compilation and execution still functions

int test(int val)
{
    return val * 2;
}

//TEST_INPUT:ubuffer(data=[0 0 0 0], stride=4):out,name=outputBuffer
RWStructuredBuffer<int> outputBuffer;

[numthreads(1, 1, 1)]
void computeMain(uint3 dispatchThreadID : SV_DispatchThreadID)
{
    outputBuffer[0] = test(21);
}