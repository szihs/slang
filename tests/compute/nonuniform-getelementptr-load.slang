//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Test NonUniformResourceIndex with GetElementPtr and Load operations (SPIRV mode)
// The float pass should properly handle gep(pArray, nonUniformRes(x)) -> nonUniformRes(gep(pArray, x))
// and load(nonUniformRes(x)) -> nonUniformRes(load(x))

// CHECK: OpDecorate {{.*}} NonUniform
// CHECK: OpAccessChain
// CHECK: OpLoad

struct BufferData {
    float4 values[8];
};

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] StructuredBuffer<BufferData> buffers[];

[shader("compute")]
[numthreads(16, 1, 1)]
void main(uint thread_id: SV_DispatchThreadID) {
    uint buffer_index = thread_id % 5;
    uint element_index = (thread_id / 5) % 8;

    // Test 1: NonUniformResourceIndex with array element access
    // This tests GetElement operation where the base object is marked non-uniform
    float4 result1 = buffers[NonUniformResourceIndex(buffer_index)][0].values[element_index];
    output[thread_id] = result1;

    // Test 2: NonUniformResourceIndex with nested structure access
    if (thread_id < 50) {
        BufferData data = buffers[NonUniformResourceIndex(buffer_index)][0];
        float4 result2 = data.values[element_index];
        output[thread_id + 1000] = result2;
    }

    // Test 3: Multiple non-uniform accesses
    if (thread_id < 30) {
        float4 sum = float4(0, 0, 0, 0);
        for (uint i = 0; i < 3; i++) {
            sum += buffers[NonUniformResourceIndex(buffer_index)][0].values[i];
        }
        output[thread_id + 2000] = sum;
    }

    // Test 4: Non-uniform access with offset
    if (thread_id < 20) {
        uint offset_index = buffer_index + 1u;
        float4 result4 = buffers[NonUniformResourceIndex(offset_index)][0].values[0];
        output[thread_id + 3000] = result4;
    }
}