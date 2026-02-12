-- uses notes: seeDefinitionOf
err(
  "expected postfix operator",
  39999,
  "function called as postfix operator was not declared `__postfix`",
  span("loc", "function called as postfix operator was not declared `__postfix`")
)

err(
  "not enough arguments",
  39999,
  "got ~argCount:int arguments, expected ~required:int",
  span("loc", "not enough arguments to call (got ~argCount:int, expected ~required:int)")
)

err(
  "too many arguments",
  39999,
  "got ~argCount:int arguments, expected ~allowed:int",
  span("loc", "too many arguments to call (got ~argCount:int, expected ~allowed:int)")
)

err(
  "invalid integer literal suffix",
  39999,
  "invalid suffix '~suffix' on integer literal",
  span("token:Token", "invalid suffix '~suffix' on integer literal")
)

err(
  "invalid floating point literal suffix",
  39999,
  "invalid suffix '~suffix' on floating-point literal",
  span("token:Token", "invalid suffix '~suffix' on floating-point literal")
)

warning(
  "integer literal too large",
  39999,
  "integer literal is too large to be represented in a signed integer type, interpreting as unsigned",
  span("token:Token", "integer literal is too large to be represented in a signed integer type, interpreting as unsigned")
)

warning(
  "integer literal truncated",
  39999,
  "integer literal '~content' too large for type '~baseType', truncated to '~truncatedValue'",
  span("token:Token", "integer literal '~content' too large for type '~baseType' truncated to '~truncatedValue'")
)

warning(
  "float literal unrepresentable",
  39999,
  "~baseType literal '~content' is unrepresentable, converted to '~fixedValue'",
  span("token:Token", "~baseType literal '~content' unrepresentable, converted to '~fixedValue'")
)

warning(
  "float literal too small",
  39999,
  "'~content' is smaller than the smallest representable value for type ~baseType, converted to '~fixedValue'",
  span("token:Token", "'~content' is smaller than the smallest representable value for type ~baseType, converted to '~fixedValue'")
)

err(
  "unable to find symbol in module",
  39999,
  "unable to find the mangled symbol '~symbol' in module '~module'",
  span("loc", "unable to find the mangled symbol '~symbol' in module '~module'")
)

err(
  "matrix column or row count is one",
  39999,
  "matrices with 1 column or row are not supported by the current code generation target",
  span("loc", "matrices with 1 column or row are not supported by the current code generation target")
)

err(
  "entry point function not found",
  38000,
  "no function found matching entry point name '~name'",
  span("decl:Decl", "no function found matching entry point name '~name'")
)

err(
  "ambiguous entry point",
  38001,
  "more than one function matches entry point name '~name'",
  span("loc", "more than one function matches entry point name '~name'")
)

err(
  "entry point symbol not a function",
  38003,
  "entry point '~name' must be declared as a function",
  span("loc", "entry point '~name' must be declared as a function")
)

err(
  "entry point type parameter not found",
  38004,
  "no type found matching entry-point type parameter name '~name'",
  span("loc", "no type found matching entry-point type parameter name '~name'")
)

err(
  "expected type for specialization arg",
  38005,
  "expected a type as argument for specialization parameter '~param:Decl'",
  span("loc", "expected a type as argument for specialization parameter '~param:Decl'")
)

warning(
  "specified stage doesnt match attribute",
  38006,
  "entry point '~entryPoint' compiled for '~profileStage' but attribute specifies '~attrStage'",
  span("decl:Decl", "entry point '~entryPoint' being compiled for the '~profileStage' stage has a '[shader(...)]' attribute that specifies the '~attrStage' stage")
)

err(
  "entry point has no stage",
  38007,
  "no stage specified for entry point '~name'",
  span("decl:Decl", "no stage specified for entry point '~name'; use either a '[shader(\"name\")]' function attribute or the '-stage <name>' command-line option to specify a stage")
)

err(
  "specialization parameter of name not specialized",
  38008,
  "no specialization argument was provided for specialization parameter '~param:Decl'",
  span("loc", "no specialization argument was provided for specialization parameter '~param:Decl'")
)

err(
  "specialization parameter not specialized",
  38008,
  "no specialization argument was provided for specialization parameter",
  span("loc", "no specialization argument was provided for specialization parameter")
)

err(
  "expected value of type for specialization arg",
  38009,
  "expected a constant value of type '~type:Type' for specialization parameter '~param:Decl'",
  span("loc", "expected a constant value of type '~type:Type' as argument for specialization parameter '~param:Decl'")
)

warning(
  "unhandled mod on entry point parameter",
  38010,
  "~modifier on parameter '~param' is unsupported on entry point parameters",
  span("param:Decl", "~modifier on parameter '~param' is unsupported on entry point parameters and will be ignored")
)

err(
  "entry point cannot return resource type",
  38011,
  "entry point '~entryPoint' cannot return type '~returnType:Type' containing resources",
  span("decl:Decl", "entry point '~entryPoint' cannot return type '~returnType:Type' that contains resource types")
)

err(
  "type doesnt implement interface requirement",
  38100,
  "type '~type:Type' does not provide required interface member '~requirement:Decl'",
  span("decl:Decl", "type '~type:Type' does not provide required interface member '~requirement:Decl'")
)

err(
  "member does not match requirement signature",
  38105,
  "member '~member:Decl' does not match interface requirement",
  span("member:Decl", "member '~member:Decl' does not match interface requirement.")
)

err(
  "member return type mismatch",
  38106,
  "member '~member:Decl' return type '~actualType:Type' does not match expected '~expectedType:Type'",
  span("member:Decl", "member '~member:Decl' return type '~actualType:Type' does not match interface requirement return type '~expectedType:Type'.")
)

err(
  "generic signature does not match requirement",
  38107,
  "generic signature of '~name' does not match interface requirement",
  span("loc", "generic signature of '~name' does not match interface requirement.")
)

err(
  "parameter direction does not match requirement",
  38108,
  "parameter '~param:Decl' direction '~actualDir' does not match expected '~expectedDir'",
  span("param:Decl", "parameter '~param:Decl' direction '~actualDir' does not match interface requirement '~expectedDir'.")
)

err(
  "this expression outside of type decl",
  38101,
  "'this' expression can only be used in members of an aggregate type",
  span("expr:Expr", "'this' expression can only be used in members of an aggregate type")
)

err(
  "initializer not inside type",
  38102,
  "an 'init' declaration is only allowed inside a type or 'extension' declaration",
  span("decl:Decl", "an 'init' declaration is only allowed inside a type or 'extension' declaration")
)

err(
  "this type outside of type decl",
  38103,
  "'This' type can only be used inside of an aggregate type",
  span("expr:Expr", "'This' type can only be used inside of an aggregate type")
)

err(
  "return val not available",
  38104,
  "cannot use '__return_val' here",
  span("expr:Expr", "cannot use '__return_val' here. '__return_val' is defined only in functions that return a non-copyable value.")
)

err(
  "mismatch entry point type argument",
  38020,
  "expecting ~expected:int entry-point type arguments, provided ~provided:int",
  span("loc", "expecting ~expected:int entry-point type arguments, provided ~provided:int.")
)

err(
  "type argument for generic parameter does not conform to interface",
  38021,
  "type argument `~argType:Type` for generic parameter `~param` does not conform to interface `~interface:Type`",
  span("decl:Decl", "type argument `~argType:Type` for generic parameter `~param` does not conform to interface `~interface:Type`.")
)

err(
  "cannot specialize global generic to itself",
  38022,
  "the global type parameter '~name' cannot be specialized to itself",
  span("decl:Decl", "the global type parameter '~name' cannot be specialized to itself")
)

err(
  "cannot specialize global generic to another generic param",
  38023,
  "the global type parameter '~param' cannot be specialized using another global type parameter ('~other')",
  span("decl:Decl", "the global type parameter '~param' cannot be specialized using another global type parameter ('~other')")
)

err(
  "invalid dispatch thread ID type",
  38024,
  "parameter with SV_DispatchThreadID has invalid type '~type'",
  span("loc", "parameter with SV_DispatchThreadID must be either scalar or vector (1 to 3) of uint/int but is ~type")
)

err(
  "mismatch specialization arguments",
  38025,
  "expected ~expected:int specialization arguments (~provided:int provided)",
  span("loc", "expected ~expected:int specialization arguments (~provided:int provided)")
)

err(
  "global type argument does not conform to interface",
  38026,
  "type argument `~argType:Type` for global generic parameter `~param` does not conform to interface `~interface:Type`",
  span("loc", "type argument `~argType:Type` for global generic parameter `~param` does not conform to interface `~interface:Type`.")
)

err(
  "mismatch existential slot arg count",
  38027,
  "expected ~expected:int existential slot arguments (~provided:int provided)",
  span("loc", "expected ~expected:int existential slot arguments (~provided:int provided)")
)

err(
  "invalid form of specialization arg",
  38028,
  "global specialization argument ~index:int has an invalid form",
  span("loc", "global specialization argument ~index:int has an invalid form.")
)

err(
  "type argument does not conform to interface",
  38029,
  "type argument '~argType:Type' does not conform to the required interface '~interface:Type'",
  span("loc", "type argument '~argType:Type' does not conform to the required interface '~interface:Type'")
)

err(
  "invalid use of no diff",
  38031,
  "'no_diff' can only be used to decorate a call or a subscript operation",
  span("expr:Expr", "'no_diff' can only be used to decorate a call or a subscript operation")
)

err(
  "use of no diff on differentiable func",
  38032,
  "use 'no_diff' on a call to a differentiable function has no meaning",
  span("expr:Expr", "use 'no_diff' on a call to a differentiable function has no meaning.")
)

err(
  "cannot use no diff in non differentiable func",
  38033,
  "cannot use 'no_diff' in a non-differentiable function",
  span("expr:Expr", "cannot use 'no_diff' in a non-differentiable function.")
)

err(
  "cannot use borrow in on differentiable parameter",
  38034,
  "cannot use 'borrow in' on a differentiable parameter",
  span("modifier:Modifier", "cannot use 'borrow in' on a differentiable parameter.")
)

err(
  "cannot use const ref on differentiable member method",
  38034,
  "cannot use '[constref]' on a differentiable member method of a differentiable type",
  span("attr:Modifier", "cannot use '[constref]' on a differentiable member method of a differentiable type.")
)

warning(
  "non uniform entry point parameter treated as uniform",
  38040,
  "parameter '~param' is treated as 'uniform' because it does not have a system-value semantic",
  span("param:Decl", "parameter '~param' is treated as 'uniform' because it does not have a system-value semantic.")
)

err(
  "int val from non int spec const encountered",
  38041,
  "cannot cast non-integer specialization constant to compile-time integer",
  span("declRef:Decl", "cannot cast non-integer specialization constant to compile-time integer")
)

err(
  "recursive module import",
  38200,
  "module `~moduleName` recursively imports itself",
  span("loc", "module `~moduleName` recursively imports itself")
)

err(
  "error in imported module",
  39999,
  "import of module '~name' failed because of a compilation error",
  span("loc", "import of module '~name' failed because of a compilation error")
)

err(
  "glsl module not available",
  38201,
  "'glsl' module is not available from the current global session",
  span("loc", "'glsl' module is not available from the current global session. To enable GLSL compatibility mode, specify 'SlangGlobalSessionDesc::enableGLSL' when creating the global session.")
)

err(
  "compilation ceased",
  39999,
  "compilation ceased",
  span("loc", "compilation ceased")
)

err(
  "vector with disallowed element type encountered",
  38203,
  "vector with disallowed element type '~targetRequest' encountered",
  span("loc", "vector with disallowed element type '~targetRequest' encountered")
)

err(
  "vector with invalid element count encountered",
  38203,
  "vector has invalid element count '~elementCount', valid range is '~min' to '~max'",
  span("loc", "vector has invalid element count '~elementCount', valid values are between '~min' and '~max' inclusive")
)

err(
  "cannot use resource type in structured buffer",
  38204,
  "StructuredBuffer element type '~elementType:Type' cannot contain resource or opaque handle types",
  span("loc", "StructuredBuffer element type '~elementType:Type' cannot contain resource or opaque handle types")
)

err(
  "recursive types found in structured buffer",
  38205,
  "structured buffer element type '~elementType:Type' contains recursive type references",
  span("loc", "structured buffer element type '~elementType:Type' contains recursive type references")
)

err(
  "conflicting explicit bindings for parameter",
  39000,
  "conflicting explicit bindings for parameter '~param'",
  span("decl:Decl", "conflicting explicit bindings for parameter '~param'")
)

warning(
  "parameter bindings overlap",
  39001,
  "explicit binding for parameter '~paramA' overlaps with parameter '~paramB'",
  span("paramA:Decl", "explicit binding for parameter '~paramA' overlaps with parameter '~paramB'")
)

err(
  "shader parameter declarations dont match",
  39002,
  "declarations of shader parameter '~name' in different translation units don't match",
  span("loc", "declarations of shader parameter '~name' in different translation units don't match")
)

err(
  "unknown register class",
  39007,
  "unknown register class: '~registerClass'",
  span("loc", "unknown register class: '~registerClass'")
)

err(
  "expected a register index",
  39008,
  "expected a register index after '~registerClass'",
  span("loc", "expected a register index after '~registerClass'")
)

err(
  "expected space",
  39009,
  "expected 'space', got '~spelling'",
  span("loc", "expected 'space', got '~spelling'")
)

err(
  "expected space index",
  39010,
  "expected a register space index after 'space'",
  span("loc", "expected a register space index after 'space'")
)

err(
  "invalid component mask",
  39011,
  "invalid register component mask '~mask'",
  span("modifier:Modifier", "invalid register component mask '~mask'.")
)

warning(
  "requested bindless space index unavailable",
  39012,
  "requested bindless space index '~requestedIndex:int' is unavailable, using '~availableIndex:int'",
  span("loc", "requested bindless space index '~requestedIndex:int' is unavailable, using the next available index '~availableIndex:int'.")
)

warning(
  "register modifier but no vulkan layout",
  39013,
  "shader parameter '~name' has a 'register' specified for D3D, but no '[[vk::binding(...)]]` specified for Vulkan",
  span("modifier:Modifier", "shader parameter '~name' has a 'register' specified for D3D, but no '[[vk::binding(...)]]` specified for Vulkan")
)

err(
  "unexpected specifier after space",
  39014,
  "unexpected specifier after register space: '~name'",
  span("loc", "unexpected specifier after register space: '~name'")
)

err(
  "whole space parameter requires zero binding",
  39015,
  "shader parameter '~name' consumes whole descriptor sets, non-zero binding '~binding:int' not allowed",
  span("attr:Modifier", "shader parameter '~name' consumes whole descriptor sets, so the binding must be in the form '[[vk::binding(0, ...)]]'; the non-zero binding '~binding:int' is not allowed")
)

warning(
  "hlsl to vulkan mapping not found",
  39016,
  "unable to infer Vulkan binding for '~name', automatic layout will be used",
  span("loc", "unable to infer Vulkan binding for '~name', automatic layout will be used")
)

err(
  "dont expect out parameters for stage",
  39017,
  "the '~stage' stage does not support `out` or `inout` entry point parameters",
  span("loc", "the '~stage' stage does not support `out` or `inout` entry point parameters")
)

err(
  "dont expect in parameters for stage",
  39018,
  "the '~stage' stage does not support `in` entry point parameters",
  span("loc", "the '~stage' stage does not support `in` entry point parameters")
)

warning(
  "global uniform not expected",
  39019,
  "'~name' is implicitly a global shader parameter, not a global variable",
  span("decl:Decl", "'~name' is implicitly a global shader parameter, not a global variable. If a global variable is intended, add the 'static' modifier. If a uniform shader parameter is intended, add the 'uniform' modifier to silence this warning.")
)

err(
  "too many shader record constant buffers",
  39020,
  "found ~count:int shader record constant buffers, at most one is allowed",
  span("loc", "can have at most one 'shader record' attributed constant buffer; found ~count:int.")
)

err(
  "type parameters not allowed on entry point global",
  39021,
  "local-root-signature shader parameter '~name' at global scope must not include existential/interface types",
  span("loc", "local-root-signature shader parameter '~name' at global scope must not include existential/interface types")
)

warning(
  "vk index without vk location",
  39022,
  "ignoring '[[vk::index(...)]]` attribute without a corresponding '[[vk::location(...)]]' attribute",
  span("attr:Modifier", "ignoring '[[vk::index(...)]]` attribute without a corresponding '[[vk::location(...)]]' attribute")
)

err(
  "mixing implicit and explicit binding for varying params",
  39023,
  "mixing explicit and implicit bindings for varying parameters (see '~implicit' and '~explicit')",
  span("decl:Decl", "mixing explicit and implicit bindings for varying parameters is not supported (see '~implicit' and '~explicit')")
)

warning(
  "cannot infer vulkan binding without register modifier",
  39024,
  "shader parameter '~name' doesn't have a 'register' specified, automatic layout will be used",
  span("loc", "shader parameter '~name' doesn't have a 'register' specified, automatic layout will be used")
)

err(
  "conflicting vulkan inferred binding for parameter",
  39025,
  "conflicting vulkan inferred binding for parameter '~param', overlap is ~curRange and ~clashRange",
  span("decl:Decl", "conflicting vulkan inferred binding for parameter '~param' overlap is ~curRange and ~clashRange")
)

err(
  "matrix layout modifier on non matrix type",
  39026,
  "matrix layout modifier cannot be used on non-matrix type '~type:Type'",
  span("modifier:Modifier", "matrix layout modifier cannot be used on non-matrix type '~type:Type'.")
)

err(
  "get attribute at vertex must refer to per vertex input",
  39027,
  "'GetAttributeAtVertex' must reference a vertex input directly with 'pervertex' or 'nointerpolation'",
  span("expr:Expr", "'GetAttributeAtVertex' must reference a vertex input directly, and the vertex input must be decorated with 'pervertex' or 'nointerpolation'.")
)

err(
  "not valid varying parameter",
  39028,
  "parameter '~type:Type' is not a valid varying parameter",
  span("decl:Decl", "parameter '~type:Type' is not a valid varying parameter.")
)

warning(
  "register modifier but no vk binding nor shift",
  39029,
  "shader parameter '~name' has a 'register' for D3D but no Vulkan binding or shift",
  span("modifier:Modifier", "shader parameter '~name' has a 'register' specified for D3D, but no '[[vk::binding(...)]]` specified for Vulkan, nor is `-fvk-~registerClass-shift` used.")
)

warning(
  "binding attribute ignored on uniform",
  39071,
  "binding attribute on uniform '~name' will be ignored since it will be packed into the default constant buffer",
  span("decl:Decl", "binding attribute on uniform '~name' will be ignored since it will be packed into the default constant buffer at descriptor set 0 binding 0. To use explicit bindings, declare the uniform inside a constant buffer.")
)

err(
  "binding already occupied by component",
  40001,
  "resource binding location '~location' is already occupied by component '~component'",
  span("loc", "resource binding location '~location' is already occupied by component '~component'.")
)

err(
  "invalid binding value",
  40002,
  "binding location '~location' is out of valid range",
  span("loc", "binding location '~location' is out of valid range.")
)

err(
  "binding exceeds limit",
  40003,
  "binding location '~location' assigned to component '~component' exceeds maximum limit",
  span("loc", "binding location '~location' assigned to component '~component' exceeds maximum limit.")
)

err(
  "binding already occupied by module",
  40004,
  "DescriptorSet ID '~id' is already occupied by module instance '~module'",
  span("loc", "DescriptorSet ID '~id' is already occupied by module instance '~module'.")
)

err(
  "top level module used without specifying binding",
  40005,
  "top level module '~name' is being used without specifying binding location",
  span("loc", "top level module '~name' is being used without specifying binding location. Use [Binding: \"index\"] attribute to provide a binding location.")
)

err(
  "unimplemented system value semantic",
  40006,
  "unknown system-value semantic '~semantic'",
  span("decl:Decl", "unknown system-value semantic '~semantic'")
)

err(
  "unknown system value semantic",
  49999,
  "unknown system-value semantic '~semantic'",
  span("loc", "unknown system-value semantic '~semantic'")
)

err(
  "ir validation failed",
  40007,
  "IR validation failed: ~message",
  span("inst:IRInst", "IR validation failed: ~message")
)

err(
  "invalid l value for ref parameter",
  40008,
  "the form of this l-value argument is not valid for a `ref` parameter",
  span("loc", "the form of this l-value argument is not valid for a `ref` parameter")
)

err(
  "dynamic interface lacks any value size attribute",
  40009,
  "interface '~interface' is being used in dynamic dispatch code but has no [anyValueSize] attribute",
  span("loc", "interface '~interface' is being used in dynamic dispatch code but has no [anyValueSize] attribute defined.")
)

err(
  "unconstrained generic parameter not allowed in dynamic function",
  40011,
  "unconstrained generic parameter '~param' is not allowed in a dynamic function",
  span("loc", "unconstrained generic paramter '~param' is not allowed in a dynamic function.")
)

err(
  "need compile time constant",
  40012,
  "expected a compile-time constant",
  span("loc", "expected a compile-time constant")
)

err(
  "arg is not constexpr",
  40013,
  "arg ~index:int in '~callee:IRInst' is not a compile-time constant",
  span("loc", "arg ~index:int in '~callee:IRInst' is not a compile-time constant")
)

err(
  "cannot unroll loop",
  40020,
  "loop does not terminate within the limited number of iterations, unrolling is aborted",
  span("loc", "loop does not terminate within the limited number of iterations, unrolling is aborted.")
)

err(
  "function never returns fatal",
  40030,
  "function '~func:IRInst' never returns, compilation ceased",
  span("loc", "function '~func:IRInst' never returns, compilation ceased.")
)

warning(
  "unreachable code",
  41000,
  "unreachable code detected",
  span("stmt:Stmt", "unreachable code detected")
)

err(
  "recursive type",
  41001,
  "type '~type:IRInst' contains cyclic reference to itself",
  span("inst:IRInst", "type '~type:IRInst' contains cyclic reference to itself.")
)

err(
  "missing return error",
  41009,
  "non-void function must return in all cases for target '~target'",
  span("inst:IRInst", "non-void function must return in all cases for target '~target'")
)

warning(
  "missing return",
  41010,
  "non-void function does not return in all cases",
  span("inst:IRInst", "non-void function does not return in all cases")
)

err(
  "profile incompatible with target switch",
  41011,
  "__target_switch has no compatible target with current profile '~caps:CapabilitySet'",
  span("loc", "__target_switch has no compatable target with current profile '~caps:CapabilitySet'")
)

-- uses notes: profileImplicitlyUpgradedRestrictive
warning(
  "profile implicitly upgraded",
  41012,
  "entry point '~entryPoint:Decl' uses additional capabilities not part of profile '~profile', automatically updated to include: '~addedAtoms'",
  span("loc", "entry point '~entryPoint:Decl' uses additional capabilities that are not part of the specified profile '~profile'. The profile setting is automatically updated to include these capabilities: '~addedAtoms'")
)

err(
  "profile implicitly upgraded restrictive",
  41012,
  "entry point '~entryPoint:Decl' uses capabilities not part of the specified profile '~profile'",
  span("loc", "entry point '~entryPoint:Decl' uses capabilities that are not part of the specified profile '~profile'. Missing capabilities are: '~addedAtoms'")
)

warning(
  "using uninitialized out",
  41015,
  "use of uninitialized out parameter '~param:IRInst'",
  span("inst:IRInst", "use of uninitialized out parameter '~param:IRInst'")
)

warning(
  "using uninitialized variable",
  41016,
  "use of uninitialized variable '~var:IRInst'",
  span("load:IRInst", "use of uninitialized variable '~var:IRInst'")
)

warning(
  "using uninitialized value",
  41016,
  "use of uninitialized value of type '~type:IRType'",
  span("load:IRInst", "use of uninitialized value of type '~type:IRType'")
)

warning(
  "using uninitialized global variable",
  41017,
  "use of uninitialized global variable '~var:IRInst'",
  span("load:IRInst", "use of uninitialized global variable '~var:IRInst'")
)

-- uses notes: usingUninitializedOut
warning(
  "returning with uninitialized out",
  41018,
  "returning without initializing out parameter '~param:IRInst'",
  span("inst:IRInst", "returning without initializing out parameter '~param:IRInst'")
)

warning(
  "returning with partially uninitialized out",
  41019,
  "returning without fully initializing out parameter '~param'",
  span("loc", "returning without fully initializing out parameter '~param'")
)

warning(
  "constructor uninitialized field",
  41020,
  "exiting constructor without initializing field '~field:IRInst'",
  span("ret:IRInst", "exiting constructor without initializing field '~field:IRInst'")
)

warning(
  "field not default initialized",
  41021,
  "default initializer for '~type:IRInst' will not initialize field '~field:IRInst'",
  span("field:IRInst", "default initializer for '~type:IRInst' will not initialize field '~field:IRInst'")
)

warning(
  "in out never stored into",
  41022,
  "inout parameter '~param' is never written to",
  span("loc", "inout parameter '~param' is never written to")
)

warning(
  "method never mutates",
  41023,
  "method marked `[mutable]` but never modifies `this`",
  span("loc", "method marked `[mutable]` but never modifies `this`")
)

warning(
  "comma operator used in expression",
  41024,
  "comma operator used in expression (may be unintended)",
  span("expr:Expr", "comma operator used in expression (may be unintended)")
)

warning(
  "switch fallthrough restructured",
  41026,
  "switch fall-through is not supported by this target and will be restructured",
  span("inst:IRInst", "switch fall-through is not supported by this target and will be restructured; this may affect wave/subgroup convergence if the duplicated code contains wave operations")
)
