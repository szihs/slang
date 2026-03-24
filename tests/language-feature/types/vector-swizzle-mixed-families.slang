// Test: Slang allows mixing .xyzw (position) and .rgba (color) component families
// in the same swizzle expression. GLSL forbids this, but Slang maps both sets
// to the same element indices (x==r==0, y==g==1, z==b==2, w==a==3) so they
// interoperate freely.
// This behavior is NOT currently documented in the spec.
//
// NOTE: The slangi byte-code VM does not yet support mixed-family swizzles
// ("unimplemented: VM bytecode gen for inst"), so we verify via HLSL emission.
//TEST:SIMPLE(filecheck=HLSL): -target hlsl -profile cs_6_0 -entry computeMain

// Swizzle write .ra (color aliases) must map to position names .xw in HLSL output.
// HLSL: w_0.xw = int2(int(99), int(77))

RWStructuredBuffer<int> outputBuffer;

[shader("compute")]
[numthreads(1, 1, 1)]
void computeMain()
{
    int4 v = { 10, 20, 30, 40 };

    // Mix position and color: x=0, g=1 → same as .xy
    int2 xg = v.xg;

    // Mix: r=0, y=1, b=2, w=3 → same as .xyzw
    int4 rybw = v.rybw;

    // Swizzle write with mixed families: .ra = elements {0, 3} = .xw
    int4 w = { 0, 0, 0, 0 };
    w.ra = int2(99, 77);

    // Store results so code isn't dead-eliminated
    outputBuffer[0] = xg.x + xg.y + rybw.x + rybw.y + rybw.z + rybw.w + w.x + w.w;
}
