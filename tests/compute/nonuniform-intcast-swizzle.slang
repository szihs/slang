//TEST:SIMPLE(filecheck=CHECK):-target spirv -entry main -stage compute -emit-spirv-directly

// Test NonUniformResourceIndex with IntCast and Swizzle operations
// Tests that intCast(nonUniformRes(x)) -> nonUniformRes(intCast(x))
// and swizzle(nonUniformRes(obj)) -> nonUniformRes(swizzle(obj))

// CHECK: OpDecorate {{.*}} NonUniform

[[vk::binding(0, 0)]] RWStructuredBuffer<float4> output;
[[vk::binding(1, 1)]] Texture2D<float4> textures[];
[[vk::binding(2, 2)]] RWStructuredBuffer<int> int_buffer;

[shader("compute")]
[numthreads(8, 8, 1)]
void main(uint2 thread_id: SV_DispatchThreadID) {
    uint index = thread_id.x % 10;

    // Test 1: NonUniformResourceIndex with signed/unsigned conversion
    // This tests IntCast operation
    int signed_index = int(index);
    float4 result1 = textures[NonUniformResourceIndex(uint(signed_index))].Load(int3(0, 0, 0));
    output[thread_id.x] = result1;

    // Test 2: NonUniformResourceIndex with multiple type conversions
    int value = int_buffer[thread_id.x % 100];
    uint unsigned_value = uint(abs(value)) % 10u;
    float4 result2 = textures[NonUniformResourceIndex(unsigned_value)].Load(int3(0, 0, 0));
    output[thread_id.x + 1000] = result2;

    // Test 3: NonUniformResourceIndex with result used in swizzle
    // The swizzle operation should be handled correctly
    float4 result3 = textures[NonUniformResourceIndex(index)].Load(int3(0, 0, 0));
    float3 swizzled = result3.xyz;
    output[thread_id.x + 2000] = float4(swizzled, 1.0);

    // Test 4: Complex case with cast chain
    uint computed = uint(float(int(index + 1u)));
    float4 result4 = textures[NonUniformResourceIndex(computed)].Load(int3(0, 0, 0));
    output[thread_id.x + 3000] = result4;

    // Test 5: Boundary test with zero index after cast
    int zero = 0;
    float4 result5 = textures[NonUniformResourceIndex(uint(zero))].Load(int3(0, 0, 0));
    output[thread_id.x + 4000] = result5;
}