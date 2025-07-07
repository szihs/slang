[shader("compute")]
[numthreads(1, 1, 1)]
void compute_main(uint3 tid: SV_DispatchThreadID, StructuredBuffer<bool2> src, RWStructuredBuffer<bool2> dest) {{
    uint i = tid.x;
    dest[i] = src[i];
}}
