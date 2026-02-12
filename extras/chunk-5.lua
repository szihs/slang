err(
  "cannot default initialize resource",
  41024,
  "cannot default-initialize ~resourceName with '{}'",
  span("loc", "cannot default-initialize ~resourceName with '{}'. Resource types must be explicitly initialized")
)

err(
  "cannot default initialize struct with uninitialized resource",
  41024,
  "cannot default-initialize struct '~structName' because it contains an uninitialized ~resourceName field",
  span("loc", "cannot default-initialize struct '~structName' with '{}' because it contains an uninitialized ~resourceName field")
)

err(
  "cannot default initialize struct containing resources",
  41024,
  "cannot default-initialize struct '~structName' because it contains resource fields",
  span("loc", "cannot default-initialize struct '~structName' with '{}' because it contains resource fields")
)

-- uses notes: typeAndLimit
err(
  "type does not fit any value size",
  41011,
  "type '~type:Type' does not fit in the size required by its conforming interface",
  span("type:Type", "type '~type' does not fit in the size required by its conforming interface.")
)

err(
  "type cannot be packed into any value",
  41014,
  "type '~type:Type' contains fields that cannot be packed for dynamic dispatch",
  span("loc", "type '~type:Type' contains fields that cannot be packed into ordinary bytes for dynamic dispatch.")
)

err(
  "loss of derivative due to call of non differentiable function",
  41020,
  "derivative cannot be propagated through non-~diffLevel-differentiable function '~callee:Decl'",
  span("inst:Inst", "derivative cannot be propagated through call to non-~diffLevel-differentiable function `~callee:Decl`, use 'no_diff' to clarify intention.")
)

err(
  "loss of derivative assigning to non differentiable location",
  41024,
  "derivative is lost during assignment to non-differentiable location",
  span("loc", "derivative is lost during assignment to non-differentiable location, use 'detach()' to clarify intention.")
)

err(
  "loss of derivative using non differentiable location as out arg",
  41025,
  "derivative is lost when passing a non-differentiable location to an `out` or `inout` parameter",
  span("loc", "derivative is lost when passing a non-differentiable location to an `out` or `inout` parameter, consider passing a temporary variable instead.")
)

err(
  "differentiable func must have output",
  41021,
  "a differentiable function must have at least one differentiable output",
  span("loc", "a differentiable function must have at least one differentiable output.")
)

err(
  "differentiable func must have input",
  41022,
  "a differentiable function must have at least one differentiable input",
  span("loc", "a differentiable function must have at least one differentiable input.")
)

err(
  "get string hash must be on string literal",
  41023,
  "getStringHash argument must be statically resolvable to a string literal",
  span("inst:Inst", "getStringHash can only be called when argument is statically resolvable to a string literal")
)

warning(
  "operator shift left overflow",
  41030,
  "left shift of '~lhsType:Type' by ~shiftAmount:int exceeds bit width, result is always zero",
  span("inst:Inst", "left shift amount exceeds the number of bits and the result will be always zero, (`~lhsType:Type` << `~shiftAmount:int`).")
)

err(
  "unsupported use of l value for auto diff",
  41901,
  "unsupported use of L-value for auto differentiation",
  span("loc", "unsupported use of L-value for auto differentiation.")
)

err(
  "cannot differentiate dynamically indexed data",
  41902,
  "cannot auto-differentiate mixed read/write access to dynamically indexed data in '~name'",
  span("loc", "cannot auto-differentiate mixed read/write access to dynamically indexed data in '~name'.")
)

err(
  "unable to size of",
  41903,
  "sizeof could not be performed for type '~type:Type'",
  span("loc", "sizeof could not be performed for type '~type:Type'.")
)

err(
  "unable to align of",
  41904,
  "alignof could not be performed for type '~type:Type'",
  span("loc", "alignof could not be performed for type '~type:Type'.")
)

err(
  "invalid use of torch tensor type in device func",
  42001,
  "TorchTensor type cannot be used in device/kernel functions; use TensorView instead",
  span("loc", "invalid use of TorchTensor type in device/kernel functions. use `TensorView` instead.")
)

warning(
  "potential issues with prefer recompute on side effect method",
  42050,
  "'~funcName' has [PreferRecompute] and may have side effects",
  span("func:Inst", "~funcName has [PreferRecompute] and may have side effects. side effects may execute multiple times. use [PreferRecompute(SideEffectBehavior.Allow)], or mark function with [__NoSideEffect]")
)

err(
  "unresolved symbol",
  45001,
  "unresolved external symbol '~symbol:Decl'",
  span("loc", "unresolved external symbol '~symbol'.")
)

warning(
  "expect dynamic uniform argument",
  41201,
  "argument for '~param:Decl' might not be a dynamic uniform",
  span("loc", "argument for '~param:Decl' might not be a dynamic uniform, use `asDynamicUniform()` to silence this warning.")
)

warning(
  "expect dynamic uniform value",
  41201,
  "value stored at this location must be dynamic uniform",
  span("loc", "value stored at this location must be dynamic uniform, use `asDynamicUniform()` to silence this warning.")
)

err(
  "not equal bit cast size",
  41202,
  "invalid bit_cast: '~fromType:Type' (size ~fromSize:int) to '~toType:Type' (size ~toSize:int)",
  span("loc", "invalid to bit_cast differently sized types: '~fromType' with size '~fromSize' casted into '~toType' with size '~toSize'")
)

err(
  "byte address buffer unaligned",
  41300,
  "invalid alignment ~alignment:int for byte address buffer with element size ~elementSize:int",
  span("loc", "invalid alignment `~alignment:int` specified for the byte address buffer resource with the element size of `~elementSize:int`")
)

err(
  "static assertion failure",
  41400,
  "static assertion failed: ~message",
  span("inst:Inst", "static assertion failed, ~message")
)

err(
  "static assertion failure without message",
  41401,
  "static assertion failed",
  span("inst:Inst", "static assertion failed.")
)

err(
  "static assertion condition not constant",
  41402,
  "static assertion condition cannot be evaluated at compile time",
  span("inst:Inst", "condition for static assertion cannot be evaluated at compile time.")
)

err(
  "multi sampled texture does not allow writes",
  41402,
  "cannot write to a multisampled texture with target '~target'",
  span("image:Inst", "cannot write to a multisampled texture with target '~target'.")
)

err(
  "invalid atomic destination pointer",
  41403,
  "cannot perform atomic operation because destination is neither groupshared nor from a device buffer",
  span("loc", "cannot perform atomic operation because destination is neither groupshared nor from a device buffer.")
)

err(
  "cannot write to read only pointer",
  41404,
  "cannot write to a read-only pointer",
  span("loc", "cannot write to a read-only pointer")
)

err(
  "missing existential bindings for parameter",
  50010,
  "missing argument for existential parameter slot",
  span("loc", "missing argument for existential parameter slot")
)

warning(
  "spirv version not supported",
  50011,
  "SPIR-V backend only supports version 1.3 and later",
  span("loc", "Slang's SPIR-V backend only supports SPIR-V version 1.3 and later. Use `-emit-spirv-via-glsl` option to produce SPIR-V 1.0 through 1.2.")
)

err(
  "invalid tess coord type",
  50020,
  "TessCoord must have vec2 or vec3 type",
  span("loc", "TessCoord must have vec2 or vec3 type.")
)

err(
  "invalid frag coord type",
  50020,
  "FragCoord must be a vec4",
  span("loc", "FragCoord must be a vec4.")
)

err(
  "invalid invocation id type",
  50020,
  "InvocationId must have int type",
  span("loc", "InvocationId must have int type.")
)

err(
  "invalid thread id type",
  50020,
  "ThreadId must have int type",
  span("loc", "ThreadId must have int type.")
)

err(
  "invalid primitive id type",
  50020,
  "PrimitiveId must have int type",
  span("loc", "PrimitiveId must have int type.")
)

err(
  "invalid patch vertex count type",
  50020,
  "PatchVertexCount must have int type",
  span("loc", "PatchVertexCount must have int type.")
)

err(
  "world is not defined",
  50022,
  "world '~world' is not defined",
  span("loc", "world '~world' is not defined.")
)

err(
  "stage should provide world attribute",
  50023,
  "'~stage' should provide 'World' attribute",
  span("loc", "'~stage' should provide 'World' attribute.")
)

err(
  "component has invalid type for position output",
  50040,
  "'~component' used as 'loc' output must be of vec4 type",
  span("loc", "'~component': component used as 'loc' output must be of vec4 type.")
)

err(
  "component not defined",
  50041,
  "component '~component' not defined",
  span("loc", "'~component': component not defined.")
)

err(
  "domain shader requires control point count",
  50052,
  "'DomainShader' requires attribute 'ControlPointCount'",
  span("loc", "'DomainShader' requires attribute 'ControlPointCount'.")
)

err(
  "hull shader requires control point count",
  50052,
  "'HullShader' requires attribute 'ControlPointCount'",
  span("loc", "'HullShader' requires attribute 'ControlPointCount'.")
)

err(
  "hull shader requires control point world",
  50052,
  "'HullShader' requires attribute 'ControlPointWorld'",
  span("loc", "'HullShader' requires attribute 'ControlPointWorld'.")
)

err(
  "hull shader requires corner point world",
  50052,
  "'HullShader' requires attribute 'CornerPointWorld'",
  span("loc", "'HullShader' requires attribute 'CornerPointWorld'.")
)

err(
  "hull shader requires domain",
  50052,
  "'HullShader' requires attribute 'Domain'",
  span("loc", "'HullShader' requires attribute 'Domain'.")
)

err(
  "hull shader requires input control point count",
  50052,
  "'HullShader' requires attribute 'InputControlPointCount'",
  span("loc", "'HullShader' requires attribute 'InputControlPointCount'.")
)

err(
  "hull shader requires output topology",
  50052,
  "'HullShader' requires attribute 'OutputTopology'",
  span("loc", "'HullShader' requires attribute 'OutputTopology'.")
)

err(
  "hull shader requires partitioning",
  50052,
  "'HullShader' requires attribute 'Partitioning'",
  span("loc", "'HullShader' requires attribute 'Partitioning'.")
)

err(
  "hull shader requires patch world",
  50052,
  "'HullShader' requires attribute 'PatchWorld'",
  span("loc", "'HullShader' requires attribute 'PatchWorld'.")
)

err(
  "hull shader requires tess level inner",
  50052,
  "'HullShader' requires attribute 'TessLevelInner'",
  span("loc", "'HullShader' requires attribute 'TessLevelInner'.")
)

err(
  "hull shader requires tess level outer",
  50052,
  "'HullShader' requires attribute 'TessLevelOuter'",
  span("loc", "'HullShader' requires attribute 'TessLevelOuter'.")
)

err(
  "invalid tessellation domian",
  50053,
  "'Domain' should be either 'triangles' or 'quads'",
  span("loc", "'Domain' should be either 'triangles' or 'quads'.")
)

err(
  "invalid tessellation output topology",
  50053,
  "'OutputTopology' must be one of: 'point', 'line', 'triangle_cw', or 'triangle_ccw'",
  span("loc", "'OutputTopology' must be one of: 'point', 'line', 'triangle_cw', or 'triangle_ccw'.")
)

err(
  "invalid tessellation partitioning",
  50053,
  "'Partitioning' must be one of: 'integer', 'pow2', 'fractional_even', or 'fractional_odd'",
  span("loc", "'Partitioning' must be one of: 'integer', 'pow2', 'fractional_even', or 'fractional_odd'.")
)

err(
  "invalid tessellation domain",
  50053,
  "'Domain' should be either 'triangles' or 'quads'",
  span("loc", "'Domain' should be either 'triangles' or 'quads'.")
)

err(
  "invalid mesh stage output topology",
  50060,
  "invalid mesh output topology '~topology' for target '~target'",
  span("decoration:Inst", "Invalid mesh stage output topology '~topology' for target '~target', must be one of: ~validTopologies")
)

err(
  "importing from packed buffer unsupported",
  50082,
  "importing type '~type:Type' from PackedBuffer is not supported by the GLSL backend",
  span("loc", "importing type '~type:Type' from PackedBuffer is not supported by the GLSL backend.")
)

err(
  "cannot generate code for extern component type",
  51090,
  "cannot generate code for extern component type '~type'",
  span("loc", "cannot generate code for extern component type '~type'.")
)

err(
  "type cannot be placed in a texture",
  51091,
  "type '~type:Type' cannot be placed in a texture",
  span("loc", "type '~type:Type' cannot be placed in a texture.")
)

err(
  "stage doesnt have input world",
  51092,
  "'~stage' doesn't appear to have any input world",
  span("loc", "'~stage' doesn't appear to have any input world")
)

err(
  "no type conformances found for interface",
  50100,
  "no type conformances found for interface '~interfaceType:Type'",
  span("inst:Inst", "No type conformances are found for interface '~interfaceType'. Code generation for current target requires at least one implementation type present in the linkage.")
)

err(
  "dynamic dispatch on potentially uninitialized existential",
  50101,
  "cannot dynamically dispatch on potentially uninitialized interface object '~object:Decl'",
  span("loc", "Cannot dynamically dispatch on potentially uninitialized interface object '~object'.")
)

err(
  "multi level break unsupported",
  52000,
  "control flow requires multi-level `break`, which is not yet supported",
  span("block:Inst", "control flow appears to require multi-level `break`, which Slang does not yet support")
)

warning(
  "dxil not found",
  52001,
  "dxil shared library not found; 'dxc' output cannot be signed",
  span("loc", "dxil shared library not found, so 'dxc' output cannot be signed! Shader code will not be runnable in non-development environments.")
)

err(
  "pass through compiler not found",
  52002,
  "could not find a suitable pass-through compiler for '~compiler'",
  span("loc", "could not find a suitable pass-through compiler for '~compiler'.")
)

err(
  "cannot disassemble",
  52003,
  "cannot disassemble '~target'",
  span("loc", "cannot disassemble '~target'.")
)

err(
  "unable to write file",
  52004,
  "unable to write file '~path'",
  span("loc", "unable to write file '~path'")
)

err(
  "unable to read file",
  52005,
  "unable to read file '~path'",
  span("loc", "unable to read file '~path'")
)

err(
  "compiler not defined for transition",
  52006,
  "compiler not defined for transition '~source' to '~target'",
  span("loc", "compiler not defined for transition '~source' to '~target'.")
)

err(
  "type cannot be used in dynamic dispatch",
  52007,
  "failed to generate dynamic dispatch code for type '~type:Type'",
  span("loc", "failed to generate dynamic dispatch code for type '~type:Type'.")
)

err(
  "dynamic dispatch on specialize only interface",
  52008,
  "type '~type:Type' is marked for specialization only, but dynamic dispatch is needed",
  span("loc", "type '~type:Type' is marked for specialization only, but dynamic dispatch is needed for the call.")
)

err(
  "cannot emit reflection without target",
  52009,
  "cannot emit reflection JSON; no compilation target available",
  span("loc", "cannot emit reflection JSON; no compilation target available")
)

err(
  "invalid type marshalling for imported dll symbol",
  53001,
  "invalid type marshalling in imported func ~func",
  span("loc", "invalid type marshalling in imported func ~func.")
)

warning(
  "mesh output must be out",
  54001,
  "mesh shader outputs must be declared with 'out'",
  span("decl:Decl", "Mesh shader outputs must be declared with 'out'.")
)

err(
  "mesh output must be array",
  54002,
  "HLSL style mesh shader outputs must be arrays",
  span("decl:Decl", "HLSL style mesh shader outputs must be arrays")
)

err(
  "mesh output array must have size",
  54003,
  "HLSL style mesh shader output arrays must have a length specified",
  span("decl:Decl", "HLSL style mesh shader output arrays must have a length specified")
)

warning(
  "unnecessary hlsl mesh output modifier",
  54004,
  "unnecessary HLSL style mesh shader output modifier",
  span("modifier:Modifier", "Unnecessary HLSL style mesh shader output modifier")
)

err(
  "invalid torch kernel return type",
  55101,
  "'~type:Type' is not a valid return type for a pytorch kernel function",
  span("loc", "'~type:Type' is not a valid return type for a pytorch kernel function.")
)

err(
  "invalid torch kernel param type",
  55102,
  "'~type:Type' is not a valid parameter type for a pytorch kernel function",
  span("loc", "'~type:Type' is not a valid parameter type for a pytorch kernel function.")
)

err(
  "unsupported builtin type",
  55200,
  "'~type:Type' is not a supported builtin type for the target",
  span("loc", "'~type:Type' is not a supported builtin type for the target.")
)

err(
  "unsupported recursion",
  55201,
  "recursion detected in call to '~callee:Decl' but target does not allow recursion",
  span("callInst:Inst", "recursion detected in call to '~callee:Decl', but the current code generation target does not allow recursion.")
)

err(
  "system value attribute not supported",
  55202,
  "system value semantic '~semanticName' is not supported for the current target",
  span("loc", "system value semantic '~semanticName' is not supported for the current target.")
)

err(
  "system value type incompatible",
  55203,
  "system value semantic '~semanticName' should have type '~expectedType'",
  span("loc", "system value semantic '~semanticName' should have type '~expectedType' or be convertible to type '~expectedType'.")
)

err(
  "unsupported target intrinsic",
  55204,
  "intrinsic operation '~operation' is not supported for the current target",
  span("inst:Inst", "intrinsic operation '~operation' is not supported for the current target.")
)

err(
  "unsupported specialization constant for num threads",
  55205,
  "specialization constants are not supported in 'numthreads' for the current target",
  span("func:Inst", "Specialization constants are not supported in the 'numthreads' attribute for the current target.")
)

err(
  "unable to auto map cuda type to host type",
  56001,
  "could not automatically map '~type:Type' to a host type for '~func:Decl'",
  span("loc", "Could not automatically map '~type:Type' to a host type. Automatic binding generation failed for '~func:Decl'")
)

err(
  "attempt to query size of unsized array",
  56002,
  "cannot obtain the size of an unsized array",
  span("inst:Inst", "cannot obtain the size of an unsized array.")
)

err(
  "use of uninitialized opaque handle",
  56003,
  "use of uninitialized opaque handle '~type:Type'",
  span("loc", "use of uninitialized opaque handle '~type:Type'.")
)

err(
  "constant buffer in parameter block not allowed on metal",
  56100,
  "nested 'ConstantBuffer' inside a 'ParameterBlock' is not supported on Metal",
  span("loc", "nested 'ConstantBuffer' inside a 'ParameterBlock' is not supported on Metal, use 'ParameterBlock' instead.")
)

err(
  "resource types in constant buffer in parameter block not allowed on metal",
  56101,
  "nesting a 'ConstantBuffer' with resource types inside a 'ParameterBlock' is not supported on Metal",
  span("inst:Inst", "nesting a 'ConstantBuffer' containing resource types inside a 'ParameterBlock' is not supported on Metal, please use 'ParameterBlock' instead.")
)

err(
  "division by matrix not supported",
  56102,
  "division by matrix is not supported for Metal and WGSL targets",
  span("inst:Inst", "division by matrix is not supported for Metal and WGSL targets.")
)

err(
  "int16 not supported in wgsl",
  56103,
  "16-bit integer type '~typeName' is not supported by the WGSL backend",
  span("loc", "16-bit integer type '~typeName' is not supported by the WGSL backend.")
)

err(
  "assign to ref not supported",
  56104,
  "whole struct must be assigned to mesh output at once for Metal target",
  span("loc", "whole struct must be assiged to mesh output at once for Metal target.")
)

warning(
  "spirv opt failed",
  57001,
  "spirv-opt failed: ~error",
  span("loc", "spirv-opt failed. ~error")
)

err(
  "unknown patch constant parameter",
  57002,
  "unknown patch constant parameter '~param:Decl'",
  span("loc", "unknown patch constant parameter '~param'.")
)

err(
  "unknown tess partitioning",
  57003,
  "unknown tessellation partitioning '~partitioning'",
  span("decoration:Inst", "unknown tessellation partitioning '~partitioning'.")
)

err(
  "output spv is empty",
  57004,
  "output SPIR-V contains no exported symbols",
  span("inst:Inst", "output SPIR-V contains no exported symbols. Please make sure to specify at least one entrypoint.")
)

err(
  "entry point must return void when global output present",
  58001,
  "entry point must return 'void' when global output variables are present",
  span("func:Inst", "entry point must return 'void' when global output variables are present.")
)

err(
  "unhandled glsl ssbo type",
  58002,
  "unhandled GLSL SSBO contents; unsized arrays as final parameter must be the only parameter",
  span("inst:Inst", "Unhandled GLSL Shader Storage Buffer Object contents, unsized arrays as a final parameter must be the only parameter")
)

err(
  "inconsistent pointer address space",
  58003,
  "'~inst:Decl': use of pointer with inconsistent address space",
  span("inst:Decl", "'~inst': use of pointer with inconsistent address space.")
)

warning(
  "ignored documentation on overload candidate",
  90001,
  "documentation comment on overload candidate '~decl:Decl' is ignored",
  span("loc", "documentation comment on overload candidate '~decl' is ignored")
)

err(
  "nvapi macro mismatch",
  81110,
  "conflicting definitions for NVAPI macro '~macroName': '~existingValue' and '~newValue'",
  span("loc", "conflicting definitions for NVAPI macro '~macroName': '~existingValue' and '~newValue'")
)

err(
  "opaque reference must resolve to global",
  81111,
  "could not determine register/space for a resource or sampler used with NVAPI",
  span("inst:Inst", "could not determine register/space for a resource or sampler used with NVAPI")
)

err(
  "unimplemented",
  99999,
  "unimplemented feature: ~what",
  span("loc", "unimplemented feature in Slang compiler: ~what\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "unexpected",
  99999,
  "unexpected condition: ~message",
  span("loc", "unexpected condition encountered in Slang compiler: ~message\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "internal compiler error",
  99999,
  "Slang internal compiler error",
  span("loc", "Slang internal compiler error\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "compilation aborted",
  99999,
  "Slang compilation aborted due to internal error",
  span("loc", "Slang compilation aborted due to internal error\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "compilation aborted due to exception",
  99999,
  "compilation aborted due to exception ~exceptionType: ~exceptionMessage",
  span("loc", "Slang compilation aborted due to an exception of ~exceptionType: ~exceptionMessage\nFor assistance, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord (https://khr.io/slangdiscord)")
)

err(
  "serial debug verification failed",
  99999,
  "verification of serial debug information failed",
  span("loc", "Verification of serial debug information failed.")
)

err(
  "spirv validation failed",
  99999,
  "validation of generated SPIR-V failed",
  span("loc", "Validation of generated SPIR-V failed.")
)

err(
  "no blocks or intrinsic",
  99999,
  "no blocks found for function definition, is there a '~target' intrinsic missing?",
  span("func:Inst", "no blocks found for function definition, is there a '~target' intrinsic missing?")
)

warning(
  "main entry point renamed",
  40100,
  "entry point '~name' renamed to '~newName'",
  span("loc", "entry point '~name' is not allowed, and has been renamed to '~newName'")
)

err(
  "ray payload field missing access qualifiers",
  40000,
  "field '~field' in ray payload struct must have 'read' or 'write' access qualifiers",
  span("decl:Decl", "field '~field' in ray payload struct must have either 'read' OR 'write' access qualifiers")
)

err(
  "ray payload invalid stage in access qualifier",
  40001,
  "invalid stage name '~stageName' in ray payload access qualifier",
  span("token:Token", "invalid stage name '~stageName' in ray payload access qualifier; valid stages are 'anyhit', 'closesthit', 'miss', and 'caller'")
)

err(
  "cooperative matrix unsupported element type",
  50000,
  "element type '~typeName' is not supported for matrix '~matrixName'",
  span("loc", "Element type '~typeName' is not supported for matrix'~matrixName'.")
)

err(
  "cooperative matrix invalid shape",
  50000,
  "invalid shape [~rowCount:int, ~colCount:int] for cooperative matrix '~matrixName'",
  span("loc", "Invalid shape ['~rowCount:int', '~colCount:int'] for cooperative matrix'~matrixName'.")
)

err(
  "cooperative matrix unsupported capture",
  51701,
  "'CoopMat.MapElement' per-element function cannot capture buffers, resources or opaque types",
  span("inst:Inst", "'CoopMat.MapElement' per-element function cannot capture buffers, resources or any opaque type values. Consider pre-loading the content of any referenced buffers into a local variable before calling 'CoopMat.MapElement', or moving any referenced resources to global scope.")
)
