-- uses notes: seeDefinitionOf
err(
  "expected postfix operator",
  39999,
  "function called as postfix operator was not declared __postfix",
  span("loc", "function called as postfix operator was not declared `__postfix`")
)

err(
  "not enough arguments",
  39999,
  "insufficient arguments in call",
  span("loc", "not enough arguments to call (got ~argCount:int, expected ~expected:int)")
)

err(
  "too many arguments",
  39999,
  "excess arguments in call",
  span("loc", "too many arguments to call (got ~argCount:int, expected ~expected:int)")
)

err(
  "invalid integer literal suffix",
  39999,
  "invalid suffix on integer literal",
  span("token:Token", "invalid suffix '~suffix' on integer literal")
)

err(
  "invalid floating point literal suffix",
  39999,
  "invalid suffix on floating-point literal",
  span("token:Token", "invalid suffix '~suffix' on floating-point literal")
)

warning(
  "integer literal too large",
  39999,
  "integer literal too large for signed type",
  span("token:Token", "integer literal is too large to be represented in a signed integer type, interpreting as unsigned")
)

warning(
  "integer literal truncated",
  39999,
  "integer literal truncated to fit type",
  span("token:Token", "integer literal '~literal' too large for type '~type' truncated to '~truncated'")
)

warning(
  "float literal unrepresentable",
  39999,
  "floating-point literal cannot be represented exactly",
  span("token:Token", "~type literal '~literal' unrepresentable, converted to '~converted'")
)

warning(
  "float literal too small",
  39999,
  "floating-point literal too small for type",
  span("token:Token", "'~literal' is smaller than the smallest representable value for type ~type, converted to '~converted'")
)

err(
  "unable to find symbol in module",
  39999,
  "symbol not found in module",
  span("loc", "unable to find the mangled symbol '~symbol' in module '~module'")
)

err(
  "matrix column or row count is one",
  39999,
  "unsupported matrix dimensions",
  span("loc", "matrices with 1 column or row are not supported by the current code generation target")
)

err(
  "entry point function not found",
  38000,
  "entry point not found",
  span("decl:Decl", "no function found matching entry point name '~name'")
)

err(
  "ambiguous entry point",
  38001,
  "ambiguous entry point name",
  span("loc", "more than one function matches entry point name '~name'")
)

err(
  "entry point symbol not a function",
  38003,
  "entry point must be a function",
  span("loc", "entry point '~name' must be declared as a function")
)

err(
  "entry point type parameter not found",
  38004,
  "type parameter not found for entry point",
  span("loc", "no type found matching entry-point type parameter name '~name'")
)

err(
  "expected type for specialization arg",
  38005,
  "expected type argument for specialization",
  span("loc", "expected a type as argument for specialization parameter '~param:Decl'")
)

warning(
  "specified stage doesnt match attribute",
  38006,
  "entry point stage mismatch",
  span("decl:Decl", "entry point '~name' being compiled for the '~specifiedStage' stage has a '[shader(...)]' attribute that specifies the '~attributeStage' stage")
)

err(
  "entry point has no stage",
  38007,
  "no stage specified for entry point",
  span("decl:Decl", "no stage specified for entry point '~name'; use either a '[shader(\"name\")]' function attribute or the '-stage <name>' command-line option to specify a stage")
)

err(
  "specialization parameter of name not specialized",
  38008,
  "missing specialization argument",
  span("loc", "no specialization argument was provided for specialization parameter '~param:Decl'")
)

err(
  "specialization parameter not specialized",
  38008,
  "missing specialization argument",
  span("loc", "no specialization argument was provided for specialization parameter")
)

err(
  "expected value of type for specialization arg",
  38009,
  "expected constant value for specialization",
  span("loc", "expected a constant value of type '~type:Type' as argument for specialization parameter '~param:Decl'")
)

warning(
  "unhandled mod on entry point parameter",
  38010,
  "unsupported modifier on entry point parameter",
  span("param:Decl", "~modifier on parameter '~name' is unsupported on entry point parameters and will be ignored")
)

err(
  "entry point cannot return resource type",
  38011,
  "entry point returns resource type",
  span("decl:Decl", "entry point '~name' cannot return type '~type:Type' that contains resource types")
)

err(
  "type doesnt implement interface requirement",
  38100,
  "missing interface member implementation",
  span("decl:Decl", "type '~type:Type' does not provide required interface member '~member:Decl'")
)

err(
  "member does not match requirement signature",
  38105,
  "member signature mismatch with interface requirement",
  span("decl:Decl", "member '~member:Decl' does not match interface requirement.")
)

err(
  "member return type mismatch",
  38106,
  "interface member return type mismatch",
  span("decl:Decl", "member '~member:Decl' return type '~actualType:Type' does not match interface requirement return type '~expectedType:Type'.")
)

err(
  "generic signature does not match requirement",
  38107,
  "generic signature mismatch with interface requirement",
  span("loc", "generic signature of '~name' does not match interface requirement.")
)

err(
  "parameter direction does not match requirement",
  38108,
  "parameter direction mismatch with interface requirement",
  span("decl:Decl", "parameter '~param:Decl' direction '~actualDir' does not match interface requirement '~expectedDir'.")
)

err(
  "this expression outside of type decl",
  38101,
  "invalid use of 'this' expression",
  span("expr:Expr", "'this' expression can only be used in members of an aggregate type")
)

err(
  "initializer not inside type",
  38102,
  "invalid 'init' declaration location",
  span("decl:Decl", "an 'init' declaration is only allowed inside a type or 'extension' declaration")
)

err(
  "this type outside of type decl",
  38103,
  "invalid use of 'This' type",
  span("expr:Expr", "'This' type can only be used inside of an aggregate type")
)

err(
  "return val not available",
  38104,
  "invalid use of '__return_val'",
  span("expr:Expr", "cannot use '__return_val' here. '__return_val' is defined only in functions that return a non-copyable value.")
)

err(
  "mismatch entry point type argument",
  38020,
  "wrong number of entry-point type arguments",
  span("loc", "expecting ~expected:int entry-point type arguments, provided ~provided:int.")
)

err(
  "type argument for generic parameter does not conform to interface",
  38021,
  "type argument does not conform to generic constraint",
  span("decl:Decl", "type argument `~argType:Type` for generic parameter `~param` does not conform to interface `~interface:Type`.")
)

err(
  "cannot specialize global generic to itself",
  38022,
  "global type parameter specialized to itself",
  span("decl:Decl", "the global type parameter '~name' cannot be specialized to itself")
)

err(
  "cannot specialize global generic to another generic param",
  38023,
  "global type parameter specialized using another generic parameter",
  span("decl:Decl", "the global type parameter '~name' cannot be specialized using another global type parameter ('~otherParam')")
)

err(
  "invalid dispatch thread ID type",
  38024,
  "invalid SV_DispatchThreadID parameter type",
  span("loc", "parameter with SV_DispatchThreadID must be either scalar or vector (1 to 3) of uint/int but is ~type")
)

err(
  "mismatch specialization arguments",
  38025,
  "wrong number of specialization arguments",
  span("loc", "expected ~expected:int specialization arguments (~provided:int provided)")
)

err(
  "global type argument does not conform to interface",
  38026,
  "global generic type argument does not conform",
  span("loc", "type argument `~argType:Type` for global generic parameter `~param` does not conform to interface `~interface:Type`.")
)

err(
  "mismatch existential slot arg count",
  38027,
  "wrong number of existential slot arguments",
  span("loc", "expected ~expected:int existential slot arguments (~provided:int provided)")
)

err(
  "invalid form of specialization arg",
  38028,
  "invalid specialization argument",
  span("loc", "global specialization argument ~index:int has an invalid form.")
)

err(
  "type argument does not conform to interface",
  38029,
  "type does not conform to interface",
  span("loc", "type argument '~type:Type' does not conform to the required interface '~interface:Type'")
)

err(
  "invalid use of no diff",
  38031,
  "invalid use of 'no_diff'",
  span("expr:Expr", "'no_diff' can only be used to decorate a call or a subscript operation")
)

err(
  "use of no diff on differentiable func",
  38032,
  "meaningless 'no_diff' on differentiable function",
  span("expr:Expr", "use 'no_diff' on a call to a differentiable function has no meaning.")
)

err(
  "cannot use no diff in non differentiable func",
  38033,
  "'no_diff' used in non-differentiable function",
  span("expr:Expr", "cannot use 'no_diff' in a non-differentiable function.")
)

err(
  "cannot use borrow in on differentiable parameter",
  38034,
  "'borrow in' not allowed on differentiable parameter",
  span("loc", "cannot use 'borrow in' on a differentiable parameter.")
)

err(
  "cannot use const ref on differentiable member method",
  38034,
  "'[constref]' not allowed on differentiable member method",
  span("loc", "cannot use '[constref]' on a differentiable member method of a differentiable type.")
)

warning(
  "non uniform entry point parameter treated as uniform",
  38040,
  "entry point parameter treated as uniform",
  span("param:Decl", "parameter '~name' is treated as 'uniform' because it does not have a system-value semantic.")
)

err(
  "int val from non int spec const encountered",
  38041,
  "invalid cast of non-integer specialization constant",
  span("decl:Decl", "cannot cast non-integer specialization constant to compile-time integer")
)

err(
  "recursive module import",
  38200,
  "recursive module import detected",
  span("loc", "module `~module` recursively imports itself")
)

err(
  "error in imported module",
  39999,
  "compilation error in imported module",
  span("loc", "import of module '~module' failed because of a compilation error")
)

err(
  "glsl module not available",
  38201,
  "GLSL module not available",
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
  "disallowed vector element type",
  span("loc", "vector with disallowed element type '~elementType' encountered")
)

err(
  "vector with invalid element count encountered",
  38203,
  "invalid vector element count",
  span("loc", "vector has invalid element count '~count', valid values are between '~min' and '~max' inclusive")
)

err(
  "cannot use resource type in structured buffer",
  38204,
  "resource type in structured buffer element",
  span("loc", "StructuredBuffer element type '~type:Type' cannot contain resource or opaque handle types")
)

err(
  "recursive types found in structured buffer",
  38205,
  "recursive type in structured buffer element",
  span("loc", "structured buffer element type '~type:Type' contains recursive type references")
)

err(
  "conflicting explicit bindings for parameter",
  39000,
  "conflicting parameter bindings",
  span("decl:Decl", "conflicting explicit bindings for parameter '~name'")
)

warning(
  "parameter bindings overlap",
  39001,
  "overlapping parameter bindings",
  span("loc", "explicit binding for parameter '~paramA' overlaps with parameter '~paramB'")
)

err(
  "shader parameter declarations dont match",
  39002,
  "mismatched shader parameter declarations",
  span("loc", "declarations of shader parameter '~name' in different translation units don't match")
)

err(
  "unknown register class",
  39007,
  "unknown register class",
  span("loc", "unknown register class: '~name'")
)

err(
  "expected a register index",
  39008,
  "missing register index",
  span("loc", "expected a register index after '~name'")
)

err(
  "expected space",
  39009,
  "expected 'space' keyword",
  span("loc", "expected 'space', got '~text'")
)

err(
  "expected space index",
  39010,
  "missing register space index",
  span("loc", "expected a register space index after 'space'")
)

err(
  "invalid component mask",
  39011,
  "invalid register component mask",
  span("loc", "invalid register component mask '~mask'.")
)

warning(
  "requested bindless space index unavailable",
  39012,
  "requested bindless space index unavailable",
  span("loc", "requested bindless space index '~requested:int' is unavailable, using the next available index '~available:int'.")
)

warning(
  "register modifier but no vulkan layout",
  39013,
  "missing Vulkan binding for D3D register",
  span("loc", "shader parameter '~name' has a 'register' specified for D3D, but no '[[vk::binding(...)]]` specified for Vulkan")
)

err(
  "unexpected specifier after space",
  39014,
  "unexpected specifier after register space",
  span("loc", "unexpected specifier after register space: '~name'")
)

err(
  "whole space parameter requires zero binding",
  39015,
  "whole descriptor set parameter requires zero binding",
  span("loc", "shader parameter '~name' consumes whole descriptor sets, so the binding must be in the form '[[vk::binding(0, ...)]]'; the non-zero binding '~binding:int' is not allowed")
)

warning(
  "hlsl to vulkan mapping not found",
  39016,
  "unable to infer Vulkan binding",
  span("loc", "unable to infer Vulkan binding for '~name', automatic layout will be used")
)

err(
  "dont expect out parameters for stage",
  39017,
  "out parameters not supported for stage",
  span("loc", "the '~stage' stage does not support `out` or `inout` entry point parameters")
)

err(
  "dont expect in parameters for stage",
  39018,
  "in parameters not supported for stage",
  span("loc", "the '~stage' stage does not support `in` entry point parameters")
)

warning(
  "global uniform not expected",
  39019,
  "implicit global shader parameter",
  span("decl:Decl", "'~name' is implicitly a global shader parameter, not a global variable. If a global variable is intended, add the 'static' modifier. If a uniform shader parameter is intended, add the 'uniform' modifier to silence this warning.")
)

err(
  "too many shader record constant buffers",
  39020,
  "too many shader record constant buffers",
  span("loc", "can have at most one 'shader record' attributed constant buffer; found ~count:int.")
)

err(
  "type parameters not allowed on entry point global",
  39021,
  "existential types not allowed on entry point globals",
  span("loc", "local-root-signature shader parameter '~name' at global scope must not include existential/interface types")
)

warning(
  "vk index without vk location",
  39022,
  "vk::index used without vk::location",
  span("loc", "ignoring '[[vk::index(...)]]` attribute without a corresponding '[[vk::location(...)]]' attribute")
)

err(
  "mixing implicit and explicit binding for varying params",
  39023,
  "mixing implicit and explicit varying bindings",
  span("decl:Decl", "mixing explicit and implicit bindings for varying parameters is not supported (see '~implicitParam' and '~explicitParam')")
)

warning(
  "cannot infer vulkan binding without register modifier",
  39024,
  "missing register for automatic Vulkan binding",
  span("loc", "shader parameter '~name' doesn't have a 'register' specified, automatic layout will be used")
)

err(
  "conflicting vulkan inferred binding for parameter",
  39025,
  "conflicting inferred Vulkan bindings",
  span("decl:Decl", "conflicting vulkan inferred binding for parameter '~name' overlap is ~currentRange and ~clashRange")
)

err(
  "matrix layout modifier on non matrix type",
  39026,
  "matrix layout modifier on non-matrix type",
  span("loc", "matrix layout modifier cannot be used on non-matrix type '~type:Type'.")
)

err(
  "get attribute at vertex must refer to per vertex input",
  39027,
  "GetAttributeAtVertex requires per-vertex input",
  span("expr:Expr", "'GetAttributeAtVertex' must reference a vertex input directly, and the vertex input must be decorated with 'pervertex' or 'nointerpolation'.")
)

err(
  "not valid varying parameter",
  39028,
  "invalid varying parameter",
  span("decl:Decl", "parameter '~param' is not a valid varying parameter.")
)

warning(
  "register modifier but no vk binding nor shift",
  39029,
  "missing Vulkan binding and shift for D3D register",
  span("loc", "shader parameter '~name' has a 'register' specified for D3D, but no '[[vk::binding(...)]]` specified for Vulkan, nor is `-fvk-~registerClass-shift` used.")
)

warning(
  "binding attribute ignored on uniform",
  39071,
  "binding attribute ignored on packed uniform",
  span("decl:Decl", "binding attribute on uniform '~name' will be ignored since it will be packed into the default constant buffer at descriptor set 0 binding 0. To use explicit bindings, declare the uniform inside a constant buffer.")
)

err(
  "binding already occupied by component",
  40001,
  "resource binding location conflict",
  span("loc", "resource binding location '~location' is already occupied by component '~component'.")
)

err(
  "invalid binding value",
  40002,
  "binding location out of range",
  span("loc", "binding location '~location' is out of valid range.")
)

err(
  "binding exceeds limit",
  40003,
  "binding location exceeds maximum",
  span("loc", "binding location '~location' assigned to component '~component' exceeds maximum limit.")
)

err(
  "binding already occupied by module",
  40004,
  "descriptor set already occupied",
  span("loc", "DescriptorSet ID '~id' is already occupied by module instance '~module'.")
)

err(
  "top level module used without specifying binding",
  40005,
  "module used without binding location",
  span("loc", "top level module '~module' is being used without specifying binding location. Use [Binding: \"index\"] attribute to provide a binding location.")
)

err(
  "unimplemented system value semantic",
  40006,
  "unknown system-value semantic",
  span("loc", "unknown system-value semantic '~name'")
)

err(
  "unknown system value semantic",
  49999,
  "unknown system-value semantic",
  span("loc", "unknown system-value semantic '~name'")
)

err(
  "ir validation failed",
  40007,
  "IR validation failure",
  span("inst", "IR validation failed: ~message")
)

err(
  "invalid l value for ref parameter",
  40008,
  "invalid l-value for ref parameter",
  span("loc", "the form of this l-value argument is not valid for a `ref` parameter")
)

err(
  "dynamic interface lacks any value size attribute",
  40009,
  "interface missing [anyValueSize] attribute",
  span("loc", "interface '~interface' is being used in dynamic dispatch code but has no [anyValueSize] attribute defined.")
)

err(
  "unconstrained generic parameter not allowed in dynamic function",
  40011,
  "unconstrained generic in dynamic function",
  span("loc", "unconstrained generic paramter '~param' is not allowed in a dynamic function.")
)

err(
  "need compile time constant",
  40012,
  "compile-time constant required",
  span("loc", "expected a compile-time constant")
)

err(
  "arg is not constexpr",
  40013,
  "argument is not compile-time constant",
  span("loc", "arg ~index:int in '~func' is not a compile-time constant")
)

err(
  "cannot unroll loop",
  40020,
  "loop unrolling failed",
  span("loc", "loop does not terminate within the limited number of iterations, unrolling is aborted.")
)

err(
  "function never returns fatal",
  40030,
  "function never returns",
  span("loc", "function '~func' never returns, compilation ceased.")
)

warning(
  "unreachable code",
  41000,
  "unreachable code detected",
  span("stmt", "unreachable code detected")
)

err(
  "recursive type",
  41001,
  "recursive type reference",
  span("loc", "type '~type' contains cyclic reference to itself.")
)

err(
  "missing return error",
  41009,
  "non-void function missing return",
  span("loc", "non-void function must return in all cases for target '~target'")
)

warning(
  "missing return",
  41010,
  "non-void function may not return",
  span("loc", "non-void function does not return in all cases")
)

err(
  "profile incompatible with target switch",
  41011,
  "no compatible target in __target_switch",
  span("loc", "__target_switch has no compatable target with current profile '~profile:CapabilitySet'")
)

-- uses notes: profileImplicitlyUpgradedRestrictive
warning(
  "profile implicitly upgraded",
  41012,
  "profile automatically upgraded with additional capabilities",
  span("loc", "entry point '~entryPoint:Decl' uses additional capabilities that are not part of the specified profile '~profile'. The profile setting is automatically updated to include these capabilities: '~capabilities'")
)

err(
  "profile implicitly upgraded restrictive",
  41012,
  "entry point uses capabilities outside specified profile",
  span("loc", "entry point '~entryPoint:Decl' uses capabilities that are not part of the specified profile '~profile'. Missing capabilities are: '~capabilities'")
)

warning(
  "using uninitialized out",
  41015,
  "use of uninitialized out parameter",
  span("loc", "use of uninitialized out parameter '~param'")
)

warning(
  "using uninitialized variable",
  41016,
  "use of uninitialized variable",
  span("loc", "use of uninitialized variable '~variable'")
)

warning(
  "using uninitialized value",
  41016,
  "use of uninitialized value",
  span("loc", "use of uninitialized value of type '~type:Type'")
)

warning(
  "using uninitialized global variable",
  41017,
  "use of uninitialized global variable",
  span("loc", "use of uninitialized global variable '~variable'")
)

-- uses notes: usingUninitializedOut
warning(
  "returning with uninitialized out",
  41018,
  "returning without initializing out parameter",
  span("loc", "returning without initializing out parameter '~param'")
)

warning(
  "returning with partially uninitialized out",
  41019,
  "returning with partially uninitialized out parameter",
  span("loc", "returning without fully initializing out parameter '~param'")
)

warning(
  "constructor uninitialized field",
  41020,
  "uninitialized field in constructor",
  span("loc", "exiting constructor without initializing field '~field'")
)

warning(
  "field not default initialized",
  41021,
  "field not initialized by default initializer",
  span("loc", "default initializer for '~type' will not initialize field '~field'")
)

warning(
  "in out never stored into",
  41022,
  "inout parameter never written to",
  span("loc", "inout parameter '~param' is never written to")
)

warning(
  "method never mutates",
  41023,
  "mutable method never modifies this",
  span("loc", "method marked `[mutable]` but never modifies `this`")
)

warning(
  "comma operator used in expression",
  41024,
  "comma operator may be unintended",
  span("expr:Expr", "comma operator used in expression (may be unintended)")
)

warning(
  "switch fallthrough restructured",
  41026,
  "switch fall-through restructured",
  span("loc", "switch fall-through is not supported by this target and will be restructured; this may affect wave/subgroup convergence if the duplicated code contains wave operations")
)
