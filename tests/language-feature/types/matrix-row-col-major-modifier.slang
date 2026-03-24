// Test: row_major and column_major modifiers can be applied to matrix declarations.
// The Slang spec states these modifiers are "NOT supported", but the implementation
// fully supports them on both shader parameters and local/global variables.
// This is a documentation error — the spec should be corrected.
//TEST:SIMPLE(filecheck=HLSL): -target hlsl -profile cs_6_0 -entry computeMain

// row_major parameters are emitted as a custom storage struct (not 'row_major float4x4')
// because Slang's default session layout is column-major.
// HLSL: _MatrixStorage_float4x4natural_0 gRowMajor_0
// column_major parameters use the default HLSL float4x4 (column-major by default).
// HLSL: float4x4 gColMajor_0
row_major matrix<float, 4, 4> gRowMajor;
column_major matrix<float, 4, 4> gColMajor;

RWStructuredBuffer<float> outputBuffer;

[shader("compute")]
[numthreads(1, 1, 1)]
void computeMain()
{
    // row_major and column_major as modifiers on local variables
    row_major float4x4 localRow = gRowMajor;
    column_major float4x4 localCol = gColMajor;

    // Both should produce the same value since the logical matrix is the same
    outputBuffer[0] = localRow[0][0] + localCol[0][0];
}
