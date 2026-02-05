//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Comprehensive test for NonUniformResourceIndex functionality with __DynamicResource arrays
// Tests various instruction patterns that need to be "floated" to proper positions in IR

// CHECK: OpDecorate {{.*}} NonUniform
// CHECK: OpAccessChain
// CHECK: OpLoad

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] __DynamicResource<__DynamicResourceKind.General> bindless_storage_buffers[];
[[vk::binding(2, 2)]] __DynamicResource<__DynamicResourceKind.General> bindless_textures[];

static const uint LUT[] = {
    12u, 15u, 18u, 21u, 12u, 24u, 27u, 30u
};

[shader("compute")]
[numthreads(16, 8, 1)]
void main(uint2 thread_id: SV_DispatchThreadID) {
    const uint index = thread_id.x % 8;
    const uint buffer_index = LUT[index] - 1u;

    // Test 1: Basic NonUniformResourceIndex with dynamic resource access
    const StructuredBuffer<float4> buffer =
        bindless_storage_buffers[NonUniformResourceIndex(buffer_index)]
            .asOpaqueDescriptor<StructuredBuffer<float4>>();

    output[thread_id.x] = buffer[0];

    // Test 2: NonUniformResourceIndex with nested cast expression
    if (thread_id.x < 100) {
        const StructuredBuffer<float4> buffer2 =
            bindless_storage_buffers[NonUniformResourceIndex(uint(float(buffer_index)))]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[thread_id.x + 1000] = buffer2[0];
    }

    // Test 3: NonUniformResourceIndex with arithmetic on index
    if (thread_id.x < 50) {
        uint computed_index = (buffer_index * 2u) % 20u;
        const StructuredBuffer<float4> buffer3 =
            bindless_storage_buffers[NonUniformResourceIndex(computed_index)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[thread_id.x + 2000] = buffer3[0];
    }

    // Test 4: Multiple NonUniformResourceIndex calls in same scope
    if (thread_id.x < 25) {
        const StructuredBuffer<float4> bufferA =
            bindless_storage_buffers[NonUniformResourceIndex(buffer_index)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        const StructuredBuffer<float4> bufferB =
            bindless_storage_buffers[NonUniformResourceIndex(buffer_index + 1u)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[thread_id.x + 3000] = bufferA[0] + bufferB[0];
    }

    // Test 5: NonUniformResourceIndex with conditional index selection
    if (thread_id.x % 2 == 0) {
        uint selected_index = (thread_id.y > 4) ? buffer_index : (buffer_index + 1u);
        const StructuredBuffer<float4> buffer5 =
            bindless_storage_buffers[NonUniformResourceIndex(selected_index)]
                .asOpaqueDescriptor<StructuredBuffer<float4>>();
        output[thread_id.x + 4000] = buffer5[0];
    }
}