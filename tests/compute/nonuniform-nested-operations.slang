//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Test for nested NonUniformResourceIndex operations that should be unwrapped
// Tests the case: nonUniform(nonUniform(index)) -> nonUniform(index)

// CHECK: OpDecorate {{.*}} NonUniform
// CHECK: OpAccessChain
// CHECK: OpLoad

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] Texture2D<float4> textures[];

[shader("compute")]
[numthreads(8, 8, 1)]
void main(uint2 thread_id: SV_DispatchThreadID) {
    uint index = thread_id.x % 10;

    // Test 1: Single NonUniformResourceIndex
    float4 result1 = textures[NonUniformResourceIndex(index)].Load(int3(0, 0, 0));
    output[thread_id.x] = result1;

    // Test 2: Nested NonUniformResourceIndex (should be unwrapped to single)
    // The IR pass should detect nonUniform(nonUniform(x)) and simplify to nonUniform(x)
    float4 result2 = textures[NonUniformResourceIndex(NonUniformResourceIndex(index + 1u))].Load(int3(0, 0, 0));
    output[thread_id.x + 1000] = result2;

    // Test 3: NonUniformResourceIndex with complex index expression
    uint complex_index = ((index * 3u) + 7u) % 10u;
    float4 result3 = textures[NonUniformResourceIndex(complex_index)].Load(int3(0, 0, 0));
    output[thread_id.x + 2000] = result3;

    // Test 4: NonUniformResourceIndex with boundary index (0)
    float4 result4 = textures[NonUniformResourceIndex(0u)].Load(int3(0, 0, 0));
    output[thread_id.x + 3000] = result4;
}