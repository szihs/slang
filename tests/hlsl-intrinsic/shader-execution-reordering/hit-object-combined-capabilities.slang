// Test that HitObject API works correctly with NV and EXT capabilities.
// This tests the fix for issue #42 where __target_switch with both NV and EXT branches
// requires NV to imply EXT.
//
// Key behaviors:
// - When only EXT is specified, EXT instructions should be emitted
// - When only NV is specified, NV instructions should be emitted
// - When both are specified, NV is used (since NV implies EXT, it's the more specific capability)

// Test 1: Only EXT specified - should emit EXT instructions
//TEST:SIMPLE(filecheck=EXT): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderEXT

// Test 2: Only NV specified - should emit NV instructions
//TEST:SIMPLE(filecheck=NV): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderNV

// Test 3: Both capabilities specified - NV is selected (more specific capability)
//TEST:SIMPLE(filecheck=NV): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderEXT+spvShaderInvocationReorderNV

// EXT-DAG: OpExtension "SPV_EXT_shader_invocation_reorder"
// EXT-DAG: OpCapability ShaderInvocationReorderEXT
// EXT: OpHitObjectTraceRayEXT
// EXT: OpHitObjectIsHitEXT

// NV-DAG: OpExtension "SPV_NV_shader_invocation_reorder"
// NV-DAG: OpCapability ShaderInvocationReorderNV
// NV: OpHitObjectTraceRayNV
// NV: OpHitObjectIsHitNV

//TEST_INPUT: set scene = AccelerationStructure
uniform RaytracingAccelerationStructure scene;

//TEST_INPUT:set outputBuffer = out ubuffer(data=[0 0 0 0], stride=4)
RWStructuredBuffer<uint> outputBuffer;

struct MyPayload { float4 color; };

[shader("raygeneration")]
void rayGenerationMain()
{
    int idx = DispatchRaysIndex().x;

    RayDesc ray;
    ray.Origin = float3(idx, 0, 0);
    ray.TMin = 0.01f;
    ray.Direction = float3(0, 1, 0);
    ray.TMax = 1e4f;

    MyPayload payload = { float4(0) };
    uint r = 0;

    HitObject hitFromTrace = HitObject::TraceRay(scene, RAY_FLAG_NONE, 0xFF, 0, 0, 0, ray, payload);

    if (hitFromTrace.IsHit()) { r += 1; }

    outputBuffer[idx] = r;
}
