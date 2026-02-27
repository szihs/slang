//TEST:SIMPLE(filecheck=CHECK_67): -target hlsl -profile lib_6_7 -stage raygeneration -entry rgen_main
//TEST:SIMPLE(filecheck=DXIL_67): -target dxil -profile lib_6_7 -stage raygeneration -entry rgen_main
//TEST:SIMPLE(filecheck=CHECK_66): -target hlsl -profile lib_6_6 -stage raygeneration -entry rgen_main

// Test that for SM 6.7+, Slang automatically adds default payload access qualifiers
// to ray payload struct fields when the [raypayload] attribute is emitted.

// For SM 6.7+:
// CHECK_67: struct [raypayload] RayPayload_0
// CHECK_67: float3 color_0 : read(caller) : write(caller);

// Verify DXIL compilation succeeds
// DXIL_67: define void @

// For SM 6.6, no [raypayload] attribute or access qualifiers
// CHECK_66: struct RayPayload_0
// CHECK_66-NOT: [raypayload]
// CHECK_66: float3 color_0;
// CHECK_66-NOT: read(caller)

RWTexture2D<float4> outputImage;
RaytracingAccelerationStructure topLevelAS;

struct RayPayload { float3 color; };

[shader("raygeneration")]
void rgen_main() {
    RayDesc ray;
    ray.Origin = float3(0, 0, 0);
    ray.Direction = float3(0, 0, 1);
    ray.TMin = 0.001;
    ray.TMax = 1000.0;
    RayPayload payload;
    payload.color = float3(0, 0, 0);
    TraceRay(topLevelAS, RAY_FLAG_NONE, 0xFF, 0, 0, 0, ray, payload);
    outputImage[DispatchRaysIndex().xy] = float4(payload.color, 1.0);
}
