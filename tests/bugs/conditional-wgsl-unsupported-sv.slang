// conditional-wgsl-unsupported-sv.slang
// Test that Conditional<T, false> suppresses the unsupported system value semantic
// error on WGSL target. PointSize is not supported on WGSL, but when wrapped in
// Conditional<float, false>, the field should be eliminated and no error emitted.
// https://github.com/shader-slang/slang/issues/6428

//TEST:SIMPLE(filecheck=CHECK): -target wgsl -stage vertex -entry vertexMain

// CHECK: fn vertexMain

struct VSOutput
{
    float4 pos : SV_Position;
    Conditional<float, false> pointSize : SV_PointSize;
};

[shader("vertex")]
VSOutput vertexMain(uint vertexID : SV_VertexID)
{
    VSOutput output;
    output.pos = float4(0.0, 0.0, 0.0, 1.0);
    return output;
}
