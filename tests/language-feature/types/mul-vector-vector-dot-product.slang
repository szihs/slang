// Test: mul(v1, v2) for two vectors of equal length performs a dot product,
// returning a scalar. This is consistent with HLSL semantics but is NOT
// documented in the Slang spec's mul() section.
//TEST:INTERPRET(filecheck=CHECK):

void main()
{
    // float dot product: {1,0,0}·{1,0,0} = 1
    float3 a = { 1.0f, 0.0f, 0.0f };
    float3 b = { 1.0f, 0.0f, 0.0f };
    float dot1 = mul(a, b);
    //CHECK: 1
    printf("%d\n", (int)dot1);

    // {1,2,3}·{4,5,6} = 4+10+18 = 32
    float3 c = { 1.0f, 2.0f, 3.0f };
    float3 d = { 4.0f, 5.0f, 6.0f };
    float dot2 = mul(c, d);
    //CHECK: 32
    printf("%d\n", (int)dot2);

    // 2D: {3,4}·{3,4} = 9+16 = 25
    float2 e = { 3.0f, 4.0f };
    float2 f = { 3.0f, 4.0f };
    float dot3 = mul(e, f);
    //CHECK: 25
    printf("%d\n", (int)dot3);

    // Verify result is a scalar (not a vector)
    float scalar = mul(float4(1.0f, 2.0f, 3.0f, 4.0f), float4(1.0f, 2.0f, 3.0f, 4.0f));
    // 1+4+9+16 = 30
    //CHECK: 30
    printf("%d\n", (int)scalar);
}
