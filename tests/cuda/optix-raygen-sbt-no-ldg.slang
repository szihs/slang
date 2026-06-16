//TEST:SIMPLE(filecheck=CUDA): -target cuda -entry rayGenA -stage raygeneration -line-directive-mode none

// CUDA: __raygen__rayGenA
// CUDA-NOT: __ldg
// CUDA: optixGetSbtDataPointer())->value_0
// CUDA-NOT: __ldg
// CUDA: return;

[shader("raygeneration")]
void rayGenA(RWStructuredBuffer<uint> output, uniform uint value)
{
    uint3 index = DispatchRaysIndex();
    uint3 dim = DispatchRaysDimensions();
    uint linearIndex = index.y * dim.x + index.x;
    output[linearIndex] = value + linearIndex;
}
