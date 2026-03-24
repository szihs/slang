// Test: matrix<T, R, C> has a 4th type parameter L for memory layout.
// The spec only documents 3 type parameters, but the actual declaration is:
//   matrix<T = float, R : int = 4, C : int = 4, L : int = kUnknownLayout>
// Users can explicitly specify layout via the public constants
// kRowMajorMatrixLayout and kColumnMajorMatrixLayout.
//TEST:SIMPLE(filecheck=HLSL): -target hlsl -profile cs_6_0 -entry computeMain

RWStructuredBuffer<float> outputBuffer;

[shader("compute")]
[numthreads(1, 1, 1)]
void computeMain()
{
    // Explicit row-major layout via 4th type parameter
    matrix<float, 2, 2, kRowMajorMatrixLayout> rowMat = matrix<float, 2, 2, kRowMajorMatrixLayout>(
        1.0f, 2.0f,
        3.0f, 4.0f
    );

    // Explicit column-major layout via 4th type parameter
    matrix<float, 2, 2, kColumnMajorMatrixLayout> colMat = matrix<float, 2, 2, kColumnMajorMatrixLayout>(
        1.0f, 2.0f,
        3.0f, 4.0f
    );

    // Logical element access is row/column regardless of storage layout.
    // rowMat (row-major) is constant-folded and inlined — no named variable in HLSL output.
    // colMat (column-major) stays as a named variable since float2x2 is the default layout.
    // HLSL: colMat_0 = float2x2(1.0f, 2.0f, 3.0f, 4.0f)
    // HLSL: outputBuffer_0[{{.*}}0{{.*}}] = float2x2(1.0f, 2.0f, 3.0f, 4.0f)
    // HLSL: outputBuffer_0[{{.*}}1{{.*}}] = colMat_0
    outputBuffer[0] = rowMat[0][0]; // row 0, col 0 = 1.0
    outputBuffer[1] = colMat[0][0]; // row 0, col 0 = 1.0
}
