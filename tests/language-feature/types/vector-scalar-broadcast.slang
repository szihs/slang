// Test: scalar assignment to a vector broadcasts to all elements.
// The spec documents this for binary operators (e.g. v += 1) but the
// same broadcast applies to plain assignment (v = 42).
//TEST:INTERPRET(filecheck=CHECK):

void main()
{
    // Scalar assignment to vector variable
    int4 v = { 1, 2, 3, 4 };
    v = 42;
    //CHECK: 42
    printf("%d\n", v.x);
    //CHECK: 42
    printf("%d\n", v.y);
    //CHECK: 42
    printf("%d\n", v.z);
    //CHECK: 42
    printf("%d\n", v.w);

    // Scalar initialization broadcasts to all elements
    int3 b = 7;
    //CHECK: 7
    printf("%d\n", b.x);
    //CHECK: 7
    printf("%d\n", b.y);
    //CHECK: 7
    printf("%d\n", b.z);

    // Scalar compound assignment on zero-initialized vector (avoids slangi init bug)
    int3 a = 0;
    a += 5;
    //CHECK: 5
    printf("%d\n", a.x);
    //CHECK: 5
    printf("%d\n", a.y);
    //CHECK: 5
    printf("%d\n", a.z);

    // Matrix scalar broadcast
    float2x2 m = 1.0f;
    //CHECK: 1
    printf("%d\n", (int)m[0][0]);
    //CHECK: 1
    printf("%d\n", (int)m[0][1]);
    //CHECK: 1
    printf("%d\n", (int)m[1][0]);
    //CHECK: 1
    printf("%d\n", (int)m[1][1]);
}
