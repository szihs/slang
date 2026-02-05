//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Test that NonUniformResourceIndex works correctly with __DynamicResource arrays
// when the non-uniform index is used to access bindless descriptors.
// This regression test ensures the NonUniform decoration is properly applied
// to the access chain and load operations.

// CHECK: OpDecorate {{.*}} NonUniform
// CHECK: OpAccessChain
// CHECK: OpLoad

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] __DynamicResource<__DynamicResourceKind.General> bindless_storage_buffers[];

static const uint LUT[] = {
    12u, 15u, 18u, 21u, 12u
};

[shader("compute")]
[numthreads(16, 8, 1)]
void main(uint2 thread_id: SV_DispatchThreadID) {
    const uint index = thread_id.x % 5;
    const StructuredBuffer<float4> buffer = bindless_storage_buffers[NonUniformResourceIndex(LUT[index] - 1u)].asOpaqueDescriptor<StructuredBuffer<float4>>();

    output[thread_id.x] = buffer[0];
}
