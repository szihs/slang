//TEST:SIMPLE(filecheck=CHECK): -target wgsl

// Test for issue where nested structs in vertex-fragment interfaces
// caused segfaults in WGSL and Metal targets due to null layout information

uniform float4x4 worldToClip;

struct Vertex{
    float3 position : POSITION;
    float3 normal : NORMAL;
    float4 tangent : TANGENT;
};

struct VsOutput{
    Vertex original;
    float3 originalBitangent;
    float4 svPosition : SV_Position;
};

[shader("vertex")]
VsOutput vertexMain(Vertex input)
{
    VsOutput o;
    o.original = input;
    o.originalBitangent = cross(input.normal, input.tangent.xyz) * input.tangent.w;
    o.svPosition = mul(float4(input.position, 1.0), worldToClip);
    return o;
}

[shader("fragment")]  
float4 fragmentMain(VsOutput v) : SV_Target
{
    return float4(normalize(v.originalBitangent), 1.0);
}

// CHECK: @vertex
// CHECK: fn vertexMain