//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Regression test for NonUniformResourceIndex fix with SPIRV dynamic resources
// This test specifically validates the bug fix for NonUniformResourceIndex
// not working correctly with SPIRV when accessing dynamic resources.
//
// The bug was that NonUniform decoration was not being properly applied to
// access chains and load operations when NonUniformResourceIndex was used
// with __DynamicResource arrays.

// Verify NonUniform decoration is present
// CHECK: OpDecorate {{.*}} NonUniform
// Verify we have an OpAccessChain (pointer to dynamic resource element)
// CHECK: OpAccessChain
// Verify we have an OpLoad (loading the resource descriptor)
// CHECK: OpLoad

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] __DynamicResource<__DynamicResourceKind.General> bindless_buffers[];

static const uint INDEX_TABLE[] = {
    11u, 14u, 17u, 20u, 23u, 11u, 14u, 17u
};

[shader("compute")]
[numthreads(16, 8, 1)]
void main(uint2 thread_id: SV_DispatchThreadID) {
    // Compute non-uniform index from lookup table
    const uint lut_index = thread_id.x % 8;
    const uint resource_index = INDEX_TABLE[lut_index] - 1u;

    // Access dynamic resource with NonUniformResourceIndex
    // This should generate: OpAccessChain with NonUniform decoration
    // followed by OpLoad with NonUniform decoration
    const StructuredBuffer<float4> buffer =
        bindless_buffers[NonUniformResourceIndex(resource_index)]
            .asOpaqueDescriptor<StructuredBuffer<float4>>();

    // Use the buffer - this should work correctly now
    output[thread_id.x] = buffer[0];

    // Additional test: Multiple accesses with different indices
    if (thread_id.x < 64) {
        const uint alt_index = (resource_index + 1u) % 30u;
        const StructuredBuffer<float4> alt_buffer =
            bindless_buffers[NonUniformResourceIndex(alt_index)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[thread_id.x + 1000] = alt_buffer[0];
    }

    // Edge case: index at boundary (0)
    if (thread_id.x == 0) {
        const StructuredBuffer<float4> first_buffer =
            bindless_buffers[NonUniformResourceIndex(0u)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[0] = first_buffer[0];
    }
}