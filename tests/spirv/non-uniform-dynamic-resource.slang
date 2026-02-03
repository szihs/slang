//TEST:SIMPLE(filecheck=CHECK): -target spirv -entry main -stage compute

// Test that NonUniformResourceIndex properly applies the NonUniform decoration
// when used with __DynamicResource (bindless descriptor arrays).
// This is a regression test for https://github.com/shader-slang/slang/issues/6640

// CHECK: OpCapability ShaderNonUniform
// CHECK: OpDecorate %[[ADDR:[a-zA-Z0-9_]+]] NonUniform
// CHECK: %[[ADDR]] = OpAccessChain

[[vk::binding(0, 0)]] uniform uint uniformIndex;
[[vk::binding(1, 1)]] __DynamicResource<__DynamicResourceKind.General> bindlessBuffers[];
[[vk::binding(0, 2)]] RWStructuredBuffer<float4> output;

[shader("compute")]
[numthreads(16, 1, 1)]
void main(uint3 tid : SV_DispatchThreadID)
{
    // Use NonUniformResourceIndex to mark the index as divergent
    uint index = NonUniformResourceIndex(tid.x % 5);
    StructuredBuffer<float4> buffer = bindlessBuffers[index];
    output[tid.x] = buffer[0];
}
