// Test that HitObject with shader invocation reorder capabilities doesn't produce warnings.
// This test verifies the fix for issue #42 where using spvShaderInvocationReorderEXT alone
// or spvShaderInvocationReorderNV alone or both together should not produce capability warnings.
//
// The fix makes spvShaderInvocationReorderNV inherit from spvShaderInvocationReorderEXT,
// so that __target_switch with both NV and EXT cases evaluates to require just EXT (the lesser requirement).

// Test 1: With only EXT capability, should emit EXT opcodes and no warnings
//TEST:SIMPLE(filecheck=EXT): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderEXT

// EXT-DAG: OpExtension "SPV_EXT_shader_invocation_reorder"
// EXT-DAG: OpCapability ShaderInvocationReorderEXT
// EXT: OpHitObjectTraceRayEXT
// EXT: OpHitObjectIsHitEXT

// Test 2: With only NV capability, should emit NV opcodes and no warnings
//TEST:SIMPLE(filecheck=NV): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderNV

// NV-DAG: OpExtension "SPV_NV_shader_invocation_reorder"
// NV-DAG: OpCapability ShaderInvocationReorderNV
// NV: OpHitObjectTraceRayNV
// NV: OpHitObjectIsHitNV

// Test 3: With both EXT and NV capabilities, should prefer EXT opcodes and no warnings
//TEST:SIMPLE(filecheck=BOTH): -target spirv-asm -entry rayGenerationMain -stage raygeneration -emit-spirv-directly -capability spvShaderInvocationReorderEXT+spvShaderInvocationReorderNV

// BOTH-DAG: OpExtension "SPV_EXT_shader_invocation_reorder"
// BOTH-DAG: OpCapability ShaderInvocationReorderEXT
// BOTH: OpHitObjectTraceRayEXT
// BOTH: OpHitObjectIsHitEXT

//TEST_INPUT: set scene = AccelerationStructure
uniform RaytracingAccelerationStructure scene;

//TEST_INPUT:set outputBuffer = out ubuffer(data=[0 0 0 0], stride=4)
RWStructuredBuffer<uint> outputBuffer;

struct MyPayload
{
    float4 color;
};

[shader("raygeneration")]
void rayGenerationMain()
{
    int idx = DispatchRaysIndex().x;

    RayDesc ray;
    ray.Origin = float3(idx, 0, 0);
    ray.TMin = 0.01f;
    ray.Direction = float3(0, 1, 0);
    ray.TMax = 1e4f;

    MyPayload payload = {float4(0)};
    uint r = 0;

    HitObject hitObj = HitObject::TraceRay(scene, RAY_FLAG_NONE, 0xFF, 0, 0, 0, ray, payload);

    if (hitObj.IsHit())
    {
        r = 1;
    }

    outputBuffer[idx] = r;
}
