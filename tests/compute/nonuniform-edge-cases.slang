//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Edge case tests for NonUniformResourceIndex
// Tests boundary conditions, empty operations, and unusual patterns

// CHECK: OpDecorate {{.*}} NonUniform

[[vk::binding(0, 0)]] RWStructuredBuffer<uint> output;
[[vk::binding(1, 1)]] Texture2D<float4> textures[];
[[vk::binding(2, 2)]] RWStructuredBuffer<float4> buffers[];

[shader("compute")]
[numthreads(64, 1, 1)]
void main(uint thread_id: SV_DispatchThreadID) {
    uint index = thread_id % 32;

    // Test 1: Zero index (boundary test)
    float4 result1 = textures[NonUniformResourceIndex(0u)].Load(int3(0, 0, 0));
    output[thread_id] = uint(result1.x * 1000.0);

    // Test 2: Maximum valid index boundary
    uint max_index = 31u;
    float4 result2 = textures[NonUniformResourceIndex(max_index)].Load(int3(0, 0, 0));
    output[thread_id + 1000] = uint(result2.y * 1000.0);

    // Test 3: Index from complex expression with all operators
    uint complex = ((index * 7u + 13u) ^ (index >> 1u)) & 0x1Fu;
    float4 result3 = textures[NonUniformResourceIndex(complex)].Load(int3(0, 0, 0));
    output[thread_id + 2000] = uint(result3.z * 1000.0);

    // Test 4: Alternating between uniform and non-uniform access
    // First a uniform access
    float4 uniform_result = textures[5].Load(int3(0, 0, 0));
    // Then non-uniform
    float4 nonuniform_result = textures[NonUniformResourceIndex(index)].Load(int3(0, 0, 0));
    output[thread_id + 3000] = uint((uniform_result.w + nonuniform_result.w) * 1000.0);

    // Test 5: NonUniformResourceIndex with RW resource
    if (thread_id < 32) {
        buffers[NonUniformResourceIndex(index)][0] = float4(1.0, 2.0, 3.0, 4.0);
    }

    // Test 6: Back-to-back non-uniform accesses
    if (thread_id < 16) {
        uint idx1 = index;
        uint idx2 = (index + 1u) % 32u;
        uint idx3 = (index + 2u) % 32u;

        float4 r1 = textures[NonUniformResourceIndex(idx1)].Load(int3(0, 0, 0));
        float4 r2 = textures[NonUniformResourceIndex(idx2)].Load(int3(0, 0, 0));
        float4 r3 = textures[NonUniformResourceIndex(idx3)].Load(int3(0, 0, 0));

        output[thread_id + 4000] = uint((r1.x + r2.y + r3.z) * 1000.0);
    }

    // Test 7: Conditional with non-uniform in both branches
    uint branch_result;
    if (thread_id % 2 == 0) {
        float4 even = textures[NonUniformResourceIndex(index)].Load(int3(0, 0, 0));
        branch_result = uint(even.x * 1000.0);
    } else {
        float4 odd = textures[NonUniformResourceIndex((index + 16u) % 32u)].Load(int3(0, 0, 0));
        branch_result = uint(odd.y * 1000.0);
    }
    output[thread_id + 5000] = branch_result;

    // Test 8: NonUniformResourceIndex in loop
    float4 loop_sum = float4(0, 0, 0, 0);
    for (uint i = 0; i < 3; i++) {
        uint loop_idx = (index + i) % 32u;
        loop_sum += textures[NonUniformResourceIndex(loop_idx)].Load(int3(0, 0, 0));
    }
    output[thread_id + 6000] = uint(loop_sum.w * 1000.0);
}