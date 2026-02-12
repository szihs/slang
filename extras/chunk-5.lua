err(
  "cannot default initialize resource",
  41024,
  "resource type requires explicit initialization",
  span("loc", "cannot default-initialize ~resourceName with '{}'. Resource types must be explicitly initialized")
)

err(
  "cannot default initialize struct with uninitialized resource",
  41024,
  "struct contains uninitialized resource field",
  span("loc", "cannot default-initialize struct '~structName' with '{}' because it contains an uninitialized ~resourceName field")
)

err(
  "cannot default initialize struct containing resources",
  41024,
  "struct contains resource fields that require initialization",
  span("loc", "cannot default-initialize struct '~structName' with '{}' because it contains resource fields")
)

-- uses notes: typeAndLimit
err(
  "type does not fit any value size",
  41011,
  "type exceeds interface any-value size",
  span("type:Type", "type '~type:Type' does not fit in the size required by its conforming interface.")
)

err(
  "type cannot be packed into any value",
  41014,
  "type contains fields incompatible with dynamic dispatch",
  span("loc", "type '~type:Type' contains fields that cannot be packed into ordinary bytes for dynamic dispatch.")
)

err(
  "loss of derivative due to call of non differentiable function",
  41020,
  "derivative lost through non-differentiable function call",
  span("inst", "derivative cannot be propagated through call to non-~direction-differentiable function `~callee:Decl`, use 'no_diff' to clarify intention.")
)

err(
  "loss of derivative assigning to non differentiable location",
  41024,
  "derivative lost during assignment",
  span("loc", "derivative is lost during assignment to non-differentiable location, use 'detach()' to clarify intention.")
)

err(
  "loss of derivative using non differentiable location as out arg",
  41025,
  "derivative lost through out parameter",
  span("loc", "derivative is lost when passing a non-differentiable location to an `out` or `inout` parameter, consider passing a temporary variable instead.")
)

err(
  "differentiable func must have output",
  41021,
  "differentiable function missing output",
  span("loc", "a differentiable function must have at least one differentiable output.")
)

err(
  "differentiable func must have input",
  41022,
  "differentiable function missing input",
  span("loc", "a differentiable function must have at least one differentiable input.")
)

err(
  "get string hash must be on string literal",
  41023,
  "getStringHash requires string literal argument",
  span("inst", "getStringHash can only be called when argument is statically resolvable to a string literal")
)

warning(
  "operator shift left overflow",
  41030,
  "left shift amount exceeds bit width",
  span("inst", "left shift amount exceeds the number of bits and the result will be always zero, (`~type:Type` << `~shiftAmount:int`).")
)

err(
  "unsupported use of l value for auto diff",
  41901,
  "unsupported L-value in auto differentiation",
  span("loc", "unsupported use of L-value for auto differentiation.")
)

err(
  "cannot differentiate dynamically indexed data",
  41902,
  "cannot differentiate dynamically indexed data",
  span("loc", "cannot auto-differentiate mixed read/write access to dynamically indexed data in '~name'.")
)

err(
  "unable to size of",
  41903,
  "sizeof failed for type",
  span("loc", "sizeof could not be performed for type '~type:Type'.")
)

err(
  "unable to align of",
  41904,
  "alignof failed for type",
  span("loc", "alignof could not be performed for type '~type:Type'.")
)

err(
  "invalid use of torch tensor type in device func",
  42001,
  "TorchTensor type invalid in device function",
  span("loc", "invalid use of TorchTensor type in device/kernel functions. use `TensorView` instead.")
)

warning(
  "potential issues with prefer recompute on side effect method",
  42050,
  "PreferRecompute function may have side effects",
  span("func", "~name has [PreferRecompute] and may have side effects. side effects may execute multiple times. use [PreferRecompute(SideEffectBehavior.Allow)], or mark function with [__NoSideEffect]")
)

err(
  "unresolved symbol",
  45001,
  "unresolved external symbol",
  span("loc", "unresolved external symbol '~symbol'.")
)

warning(
  "expect dynamic uniform argument",
  41201,
  "argument may not be dynamic uniform",
  span("loc", "argument for '~param:Decl' might not be a dynamic uniform, use `asDynamicUniform()` to silence this warning.")
)

warning(
  "expect dynamic uniform value",
  41201,
  "value must be dynamic uniform",
  span("loc", "value stored at this location must be dynamic uniform, use `asDynamicUniform()` to silence this warning.")
)

err(
  "not equal bit cast size",
  41202,
  "bit_cast between differently sized types",
  span("loc", "invalid to bit_cast differently sized types: '~fromType:Type' with size '~fromSize:int' casted into '~toType:Type' with size '~toSize:int'")
)

err(
  "byte address buffer unaligned",
  41300,
  "invalid byte address buffer alignment",
  span("loc", "invalid alignment `~alignment:int` specified for the byte address buffer resource with the element size of `~elementSize:int`")
)

err(
  "static assertion failure",
  41400,
  "static assertion failed",
  span("inst", "static assertion failed, ~message")
)

err(
  "static assertion failure without message",
  41401,
  "static assertion failed",
  span("inst", "static assertion failed.")
)

err(
  "static assertion condition not constant",
  41402,
  "static assertion condition not compile-time constant",
  span("inst", "condition for static assertion cannot be evaluated at compile time.")
)

err(
  "multi sampled texture does not allow writes",
  41402,
  "cannot write to multisampled texture",
  span("image", "cannot write to a multisampled texture with target '~target'.")
)

err(
  "invalid atomic destination pointer",
  41403,
  "invalid atomic operation destination",
  span("loc", "cannot perform atomic operation because destination is neither groupshared nor from a device buffer.")
)

err(
  "cannot write to read only pointer",
  41404,
  "write to read-only pointer",
  span("loc", "cannot write to a read-only pointer")
)

err(
  "missing existential bindings for parameter",
  50010,
  "missing existential parameter binding",
  span("loc", "missing argument for existential parameter slot")
)

warning(
  "spirv version not supported",
  50011,
  "SPIR-V version not supported by direct backend",
  span("loc", "Slang's SPIR-V backend only supports SPIR-V version 1.3 and later. Use `-emit-spirv-via-glsl` option to produce SPIR-V 1.0 through 1.2.")
)

err(
  "invalid tess coord type",
  50020,
  "invalid TessCoord type",
  span("loc", "TessCoord must have vec2 or vec3 type.")
)

err(
  "invalid frag coord type",
  50020,
  "invalid FragCoord type",
  span("loc", "FragCoord must be a vec4.")
)

err(
  "invalid invocation id type",
  50020,
  "invalid InvocationId type",
  span("loc", "InvocationId must have int type.")
)

err(
  "invalid thread id type",
  50020,
  "invalid ThreadId type",
  span("loc", "ThreadId must have int type.")
)

err(
  "invalid primitive id type",
  50020,
  "invalid PrimitiveId type",
  span("loc", "PrimitiveId must have int type.")
)

err(
  "invalid patch vertex count type",
  50020,
  "invalid PatchVertexCount type",
  span("loc", "PatchVertexCount must have int type.")
)

err(
  "world is not defined",
  50022,
  "undefined world",
  span("loc", "world '~name' is not defined.")
)

err(
  "stage should provide world attribute",
  50023,
  "missing World attribute on stage",
  span("loc", "'~stage' should provide 'World' attribute.")
)

err(
  "component has invalid type for position output",
  50040,
  "position output component must be vec4",
  span("loc", "'~component': component used as 'loc' output must be of vec4 type.")
)

err(
  "component not defined",
  50041,
  "undefined component",
  span("loc", "'~component': component not defined.")
)

err(
  "domain shader requires control point count",
  50052,
  "DomainShader missing ControlPointCount",
  span("loc", "'DomainShader' requires attribute 'ControlPointCount'.")
)

err(
  "hull shader requires control point count",
  50052,
  "HullShader missing ControlPointCount",
  span("loc", "'HullShader' requires attribute 'ControlPointCount'.")
)

err(
  "hull shader requires control point world",
  50052,
  "HullShader missing ControlPointWorld",
  span("loc", "'HullShader' requires attribute 'ControlPointWorld'.")
)

err(
  "hull shader requires corner point world",
  50052,
  "HullShader missing CornerPointWorld",
  span("loc", "'HullShader' requires attribute 'CornerPointWorld'.")
)

err(
  "hull shader requires domain",
  50052,
  "HullShader missing Domain",
  span("loc", "'HullShader' requires attribute 'Domain'.")
)

err(
  "hull shader requires input control point count",
  50052,
  "HullShader missing InputControlPointCount",
  span("loc", "'HullShader' requires attribute 'InputControlPointCount'.")
)

err(
  "hull shader requires output topology",
  50052,
  "HullShader missing OutputTopology",
  span("loc", "'HullShader' requires attribute 'OutputTopology'.")
)

err(
  "hull shader requires partitioning",
  50052,
  "HullShader missing Partitioning",
  span("loc", "'HullShader' requires attribute 'Partitioning'.")
)

err(
  "hull shader requires patch world",
  50052,
  "HullShader missing PatchWorld",
  span("loc", "'HullShader' requires attribute 'PatchWorld'.")
)

err(
  "hull shader requires tess level inner",
  50052,
  "HullShader missing TessLevelInner",
  span("loc", "'HullShader' requires attribute 'TessLevelInner'.")
)

err(
  "hull shader requires tess level outer",
  50052,
  "HullShader missing TessLevelOuter",
  span("loc", "'HullShader' requires attribute 'TessLevelOuter'.")
)

err(
  "invalid tessellation domian",
  50053,
  "invalid tessellation domain",
  span("loc", "'Domain' should be either 'triangles' or 'quads'.")
)

err(
  "invalid tessellation output topology",
  50053,
  "invalid tessellation output topology",
  span("loc", "'OutputTopology' must be one of: 'point', 'line', 'triangle_cw', or 'triangle_ccw'.")
)

err(
  "invalid tessellation partitioning",
  50053,
  "invalid tessellation partitioning",
  span("loc", "'Partitioning' must be one of: 'integer', 'pow2', 'fractional_even', or 'fractional_odd'.")
)

err(
  "invalid tessellation domain",
  50053,
  "invalid tessellation domain",
  span("loc", "'Domain' should be either 'triangles' or 'quads'.")
)

err(
  "invalid mesh stage output topology",
  50060,
  "invalid mesh output topology for target",
  span("decoration", "Invalid mesh stage output topology '~topology' for target '~target', must be one of: ~validTopologies")
)

err(
  "importing from packed buffer unsupported",
  50082,
  "PackedBuffer import not supported in GLSL",
  span("loc", "importing type '~type:Type' from PackedBuffer is not supported by the GLSL backend.")
)

err(
  "cannot generate code for extern component type",
  51090,
  "cannot generate code for extern component",
  span("loc", "cannot generate code for extern component type '~name'.")
)

err(
  "type cannot be placed in a texture",
  51091,
  "type incompatible with texture",
  span("loc", "type '~type:Type' cannot be placed in a texture.")
)

err(
  "stage doesnt have input world",
  51092,
  "stage has no input world",
  span("loc", "'~stage' doesn't appear to have any input world")
)

err(
  "no type conformances found for interface",
  50100,
  "no type conformances for interface",
  span("inst", "No type conformances are found for interface '~interfaceType:Type'. Code generation for current target requires at least one implementation type present in the linkage.")
)

err(
  "dynamic dispatch on potentially uninitialized existential",
  50101,
  "dynamic dispatch on uninitialized interface object",
  span("loc", "Cannot dynamically dispatch on potentially uninitialized interface object '~object'.")
)

err(
  "multi level break unsupported",
  52000,
  "multi-level break not supported",
  span("block", "control flow appears to require multi-level `break`, which Slang does not yet support")
)

warning(
  "dxil not found",
  52001,
  "dxil shared library not found",
  span("loc", "dxil shared library not found, so 'dxc' output cannot be signed! Shader code will not be runnable in non-development environments.")
)

err(
  "pass through compiler not found",
  52002,
  "pass-through compiler not found",
  span("loc", "could not find a suitable pass-through compiler for '~compilerName'.")
)

err(
  "cannot disassemble",
  52003,
  "disassembly failed",
  span("loc", "cannot disassemble '~name'.")
)

err(
  "unable to write file",
  52004,
  "file write failed",
  span("loc", "unable to write file '~path'")
)

err(
  "unable to read file",
  52005,
  "file read failed",
  span("loc", "unable to read file '~path'")
)

err(
  "compiler not defined for transition",
  52006,
  "no compiler for target transition",
  span("loc", "compiler not defined for transition '~source' to '~target'.")
)

err(
  "type cannot be used in dynamic dispatch",
  52007,
  "type incompatible with dynamic dispatch",
  span("loc", "failed to generate dynamic dispatch code for type '~type:Type'.")
)

err(
  "dynamic dispatch on specialize only interface",
  52008,
  "dynamic dispatch on specialization-only type",
  span("loc", "type '~type:Type' is marked for specialization only, but dynamic dispatch is needed for the call.")
)

err(
  "cannot emit reflection without target",
  52009,
  "no target for reflection output",
  span("loc", "cannot emit reflection JSON; no compilation target available")
)

err(
  "invalid type marshalling for imported dll symbol",
  53001,
  "invalid type marshalling in DLL import",
  span("loc", "invalid type marshalling in imported func ~func.")
)

warning(
  "mesh output must be out",
  54001,
  "mesh output missing out modifier",
  span("decl:Decl", "Mesh shader outputs must be declared with 'out'.")
)

err(
  "mesh output must be array",
  54002,
  "mesh output must be an array",
  span("decl:Decl", "HLSL style mesh shader outputs must be arrays")
)

err(
  "mesh output array must have size",
  54003,
  "mesh output array missing size",
  span("decl:Decl", "HLSL style mesh shader output arrays must have a length specified")
)

warning(
  "unnecessary hlsl mesh output modifier",
  54004,
  "unnecessary mesh output modifier",
  span("modifier", "Unnecessary HLSL style mesh shader output modifier")
)

err(
  "invalid torch kernel return type",
  55101,
  "invalid pytorch kernel return type",
  span("loc", "'~type:Type' is not a valid return type for a pytorch kernel function.")
)

err(
  "invalid torch kernel param type",
  55102,
  "invalid pytorch kernel parameter type",
  span("loc", "'~type:Type' is not a valid parameter type for a pytorch kernel function.")
)

err(
  "unsupported builtin type",
  55200,
  "unsupported builtin type for target",
  span("loc", "'~type' is not a supported builtin type for the target.")
)

err(
  "unsupported recursion",
  55201,
  "recursion not supported for target",
  span("callInst", "recursion detected in call to '~callee:Decl', but the current code generation target does not allow recursion.")
)

err(
  "system value attribute not supported",
  55202,
  "unsupported system value semantic",
  span("loc", "system value semantic '~semanticName' is not supported for the current target.")
)

err(
  "system value type incompatible",
  55203,
  "system value type mismatch",
  span("loc", "system value semantic '~semanticName' should have type '~typeName' or be convertible to type '~typeName'.")
)

err(
  "unsupported target intrinsic",
  55204,
  "intrinsic not supported for target",
  span("inst", "intrinsic operation '~operation' is not supported for the current target.")
)

err(
  "unsupported specialization constant for num threads",
  55205,
  "specialization constants unsupported in numthreads",
  span("inst", "Specialization constants are not supported in the 'numthreads' attribute for the current target.")
)

err(
  "unable to auto map cuda type to host type",
  56001,
  "cannot map CUDA type to host type",
  span("loc", "Could not automatically map '~type:Type' to a host type. Automatic binding generation failed for '~func:Decl'")
)

err(
  "attempt to query size of unsized array",
  56002,
  "cannot query size of unsized array",
  span("inst", "cannot obtain the size of an unsized array.")
)

err(
  "use of uninitialized opaque handle",
  56003,
  "uninitialized opaque handle",
  span("loc", "use of uninitialized opaque handle '~type:Type'.")
)

err(
  "constant buffer in parameter block not allowed on metal",
  56100,
  "nested ConstantBuffer in ParameterBlock unsupported on Metal",
  span("loc", "nested 'ConstantBuffer' inside a 'ParameterBlock' is not supported on Metal, use 'ParameterBlock' instead.")
)

err(
  "resource types in constant buffer in parameter block not allowed on metal",
  56101,
  "resource types in nested ConstantBuffer unsupported on Metal",
  span("inst", "nesting a 'ConstantBuffer' containing resource types inside a 'ParameterBlock' is not supported on Metal, please use 'ParameterBlock' instead.")
)

err(
  "division by matrix not supported",
  56102,
  "matrix division unsupported on target",
  span("inst", "division by matrix is not supported for Metal and WGSL targets.")
)

err(
  "int16 not supported in wgsl",
  56103,
  "16-bit integers unsupported in WGSL",
  span("loc", "16-bit integer type '~typeName' is not supported by the WGSL backend.")
)

err(
  "assign to ref not supported",
  56104,
  "partial mesh output assignment unsupported on Metal",
  span("loc", "whole struct must be assiged to mesh output at once for Metal target.")
)

warning(
  "spirv opt failed",
  57001,
  "spirv-opt optimization failed",
  span("loc", "spirv-opt failed. ~error")
)

err(
  "unknown patch constant parameter",
  57002,
  "unknown patch constant parameter",
  span("loc", "unknown patch constant parameter '~param:Decl'.")
)

err(
  "unknown tess partitioning",
  57003,
  "unknown tessellation partitioning mode",
  span("decor", "unknown tessellation partitioning '~partitioning'.")
)

err(
  "output spv is empty",
  57004,
  "empty SPIR-V output",
  span("inst", "output SPIR-V contains no exported symbols. Please make sure to specify at least one entrypoint.")
)

err(
  "entry point must return void when global output present",
  58001,
  "entry point must return void with global outputs",
  span("func", "entry point must return 'void' when global output variables are present.")
)

err(
  "unhandled glsl ssbo type",
  58002,
  "unsupported GLSL SSBO layout",
  span("inst", "Unhandled GLSL Shader Storage Buffer Object contents, unsized arrays as a final parameter must be the only parameter")
)

err(
  "inconsistent pointer address space",
  58003,
  "inconsistent pointer address space",
  span("inst", "'~inst': use of pointer with inconsistent address space.")
)

warning(
  "ignored documentation on overload candidate",
  90001,
  "documentation comment ignored on overload",
  span("loc", "documentation comment on overload candidate '~decl:Decl' is ignored")
)

err(
  "nvapi macro mismatch",
  81110,
  "conflicting NVAPI macro definitions",
  span("loc", "conflicting definitions for NVAPI macro '~macroName': '~existingValue' and '~newValue'")
)

err(
  "opaque reference must resolve to global",
  81111,
  "NVAPI resource register/space not determined",
  span("inst", "could not determine register/space for a resource or sampler used with NVAPI")
)

err(
  "unimplemented",
  99999,
  "unimplemented compiler feature",
  span("loc", "unimplemented feature in Slang compiler: ~what\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "unexpected",
  99999,
  "unexpected compiler condition",
  span("loc", "unexpected condition encountered in Slang compiler: ~message\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "internal compiler error",
  99999,
  "internal compiler error",
  span("loc", "Slang internal compiler error\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "compilation aborted",
  99999,
  "compilation aborted due to internal error",
  span("loc", "Slang compilation aborted due to internal error\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "compilation aborted due to exception",
  99999,
  "compilation aborted due to exception",
  span("loc", "Slang compilation aborted due to an exception of ~exceptionType: ~message\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "serial debug verification failed",
  99999,
  "serial debug verification failed",
  span("loc", "Verification of serial debug information failed.")
)

err(
  "spirv validation failed",
  99999,
  "SPIR-V validation failed",
  span("loc", "Validation of generated SPIR-V failed.")
)

err(
  "no blocks or intrinsic",
  99999,
  "function has no blocks and no intrinsic",
  span("func", "no blocks found for function definition, is there a '~target' intrinsic missing?")
)

warning(
  "main entry point renamed",
  40100,
  "entry point name not allowed",
  span("loc", "entry point '~name' is not allowed, and has been renamed to '~newName'")
)

err(
  "ray payload field missing access qualifiers",
  40000,
  "ray payload field missing access qualifiers",
  span("decl:Decl", "field '~fieldName' in ray payload struct must have either 'read' OR 'write' access qualifiers")
)

err(
  "ray payload invalid stage in access qualifier",
  40001,
  "invalid stage in ray payload access qualifier",
  span("token:Token", "invalid stage name '~stageName' in ray payload access qualifier; valid stages are 'anyhit', 'closesthit', 'miss', and 'caller'")
)

err(
  "cooperative matrix unsupported element type",
  50000,
  "unsupported cooperative matrix element type",
  span("loc", "Element type '~typeName' is not supported for matrix'~matrixName'.")
)

err(
  "cooperative matrix invalid shape",
  50000,
  "invalid cooperative matrix shape",
  span("loc", "Invalid shape ['~rowCount', '~colCount'] for cooperative matrix'~matrixName'.")
)

err(
  "cooperative matrix unsupported capture",
  51701,
  "CoopMat.MapElement cannot capture opaque types",
  span("inst", "'CoopMat.MapElement' per-element function cannot capture buffers, resources or any opaque type values. Consider pre-loading the content of any referenced buffers into a local variable before calling 'CoopMat.MapElement', or moving any referenced resources to global scope.")
)
