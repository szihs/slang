//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Test that NonUniformResourceIndex works correctly with __DynamicResource
// and asOpaqueDescriptor when indexing into bindless resource arrays.
// This ensures the NonUniform decoration is properly propagated through GetElement
// when the NonUniformResourceIndex is on the index (not the base).

// CHECK: OpDecorate %[[ADDR:[a-zA-Z0-9_]+]] NonUniform
// CHECK: OpDecorate %[[LOAD:[a-zA-Z0-9_]+]] NonUniform

// CHECK: %[[ADDR]] = OpAccessChain
// CHECK: %[[LOAD]] = OpLoad %{{.*}} %[[ADDR]]

[[vk::binding(1, 1)]] __DynamicResource<__DynamicResourceKind.General> bindless_storage_buffers[];
[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;

static const uint LUT[] = { 12u, 15u, 18u, 21u, 12u };

[shader("compute")]
[numthreads(16, 1, 1)]
void main(uint3 thread_id: SV_DispatchThreadID) {
    const uint index = thread_id.x % 5;
    const StructuredBuffer<float4> buffer = bindless_storage_buffers[NonUniformResourceIndex(LUT[index] - 1u)].asOpaqueDescriptor<StructuredBuffer<float4>>();

    output[thread_id.x] = buffer[0];
}
