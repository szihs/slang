err(
  "dyn interface cannot inherit non dyn interface",
  33077,
  "invalid dyn interface inheritance",
  span("decl:Decl", "dyn interface '~decl:Decl' may only inherit 'dyn' interfaces. '~inheritedInterface:Decl' is not a dyn interface.")
)

err(
  "cannot use extension to make type conform to dyn interface",
  33078,
  "cannot use extension for dyn interface conformance",
  span("decl:Decl", "cannot use a extension to conform to a dyn interface '~interface:Decl'.")
)

err(
  "cannot have unsized member when inheriting dyn interface",
  33079,
  "unsized member in dyn interface type",
  span("decl:Decl", "cannot have unsized member '~member:Decl' when inheriting from dyn interface '~interface:Decl'.")
)

err(
  "cannot have opaque member when inheriting dyn interface",
  33080,
  "opaque member in dyn interface type",
  span("decl:Decl", "cannot have opaque member '~member:Decl' when inheriting from dyn interface '~interface:Decl'.")
)

err(
  "cannot have non copyable member when inheriting dyn interface",
  33081,
  "non-copyable member in dyn interface type",
  span("decl:Decl", "cannot have non-copyable member '~member:Decl' when inheriting from dyn interface '~interface:Decl'.")
)

err(
  "cannot conform generic to dyn interface",
  33082,
  "generic type cannot conform to dyn interface",
  span("decl:Decl", "cannot conform generic type '~type:Decl' to dyn interface '~interface:Decl'.")
)

err(
  "ambiguous conversion",
  30080,
  "ambiguous type conversion",
  span("expr:Expr", "more than one conversion exists from '~fromType:Type' to '~toType:Type'")
)

warning(
  "unrecommended implicit conversion",
  30081,
  "unrecommended implicit conversion",
  span("expr:Expr", "implicit conversion from '~fromType:Type' to '~toType:Type' is not recommended")
)

warning(
  "implicit conversion to double",
  30082,
  "implicit float-to-double conversion",
  span("expr:Expr", "implicit float-to-double conversion may cause unexpected performance issues, use explicit cast if intended.")
)

err(
  "try clause must apply to invoke expr",
  30090,
  "try clause requires a call expression",
  span("expr:Expr", "expression in a 'try' clause must be a call to a function or operator overload.")
)

err(
  "try invoke callee should throw",
  30091,
  "callee in try clause does not throw",
  span("expr:Expr", "'~callee:Decl' called from a 'try' clause does not throw an error, make sure the callee is marked as 'throws'")
)

err(
  "callee of try call must be func",
  30092,
  "callee in try clause must be a function",
  span("expr:Expr", "callee in a 'try' clause must be a function")
)

err(
  "uncaught try call in non throw func",
  30093,
  "uncaught try in non-throwing function",
  span("expr:Expr", "the current function or environment is not declared to throw any errors, but the 'try' clause is not caught")
)

err(
  "must use try clause to call a throw func",
  30094,
  "missing try clause for throwing callee",
  span("expr:Expr", "the callee may throw an error, and therefore must be called within a 'try' clause")
)

err(
  "error type of callee incompatible with caller",
  30095,
  "incompatible error types between callee and caller",
  span("expr:Expr", "the error type `~calleeErrorType:Type` of callee `~callee:Decl` is not compatible with the caller's error type `~callerErrorType:Type`.")
)

-- uses notes: seeDefinitionOf
err(
  "differential type should serve as its own differential type",
  30096,
  "invalid differential type",
  span("decl:Decl", "cannot use type '~differentialType:Type' a `Differential` type. A differential type's differential must be itself. However, '~differentialType.Differential' is '~diffDiffType:Type'.")
)

err(
  "function not marked as differentiable",
  30097,
  "function is not differentiable",
  span("expr:Expr", "function '~func:Decl' is not marked as ~direction-differentiable.")
)

err(
  "non static member function not allowed as diff operand",
  30098,
  "non-static function not allowed here",
  span("expr:Expr", "non-static function reference '~func:Decl' is not allowed here.")
)

err(
  "size of argument is invalid",
  30099,
  "invalid sizeof argument",
  span("expr:Expr", "argument to sizeof is invalid")
)

err(
  "count of argument is invalid",
  30083,
  "invalid countof argument",
  span("expr:Expr", "argument to countof can only be a type pack or tuple")
)

err(
  "float bit cast type mismatch",
  30084,
  "float bit cast type mismatch",
  span("expr:Expr", "'~funcName' requires a ~expectedType argument")
)

err(
  "float bit cast requires constant",
  30085,
  "float bit cast requires constant expression",
  span("expr:Expr", "'__floatAsInt' requires a compile-time constant floating-point expression")
)

err(
  "reading from write only",
  30101,
  "cannot read from writeonly value",
  span("expr:Expr", "cannot read from writeonly, check modifiers.")
)

err(
  "differentiable member should have corresponding field in diff type",
  30102,
  "missing corresponding field in differential type",
  span("decl:Decl", "differentiable member '~member' should have a corresponding field in '~diffType:Type'. Use [DerivativeMember(~diffType.<field-name>)] or mark as no_diff")
)

err(
  "expect type pack after each",
  30103,
  "expected type pack or tuple after each",
  span("expr:Expr", "expected a type pack or a tuple after 'each'.")
)

err(
  "each expr must be inside expand expr",
  30104,
  "each expression outside expand",
  span("expr:Expr", "'each' expression must be inside 'expand' expression.")
)

err(
  "expand term captures no type packs",
  30105,
  "expand term has no type pack references",
  span("expr:Expr", "'expand' term captures no type packs. At least one type pack must be referenced via an 'each' term inside an 'expand' term.")
)

err(
  "improper use of type",
  30106,
  "type cannot be used in this context",
  span("expr:Expr", "type '~type:Type' cannot be used in this context.")
)

err(
  "parameter pack must be const",
  30107,
  "parameter pack must be const",
  span("modifier", "a parameter pack must be declared as 'const'.")
)

err(
  "break inside defer",
  30108,
  "break inside defer statement",
  span("stmt", "break' must not appear inside a defer statement.")
)

err(
  "continue inside defer",
  30109,
  "continue inside defer statement",
  span("stmt", "'continue' must not appear inside a defer statement.")
)

err(
  "return inside defer",
  30110,
  "return inside defer statement",
  span("stmt", "'return' must not appear inside a defer statement.")
)

err(
  "return type mismatch inside lambda",
  30111,
  "mismatched return types in lambda",
  span("stmt", "returned values must have the same type among all 'return' statements inside a lambda expression: returned '~returnType:Type' here, but '~previousType:Type' previously.")
)

err(
  "non copyable type captured in lambda",
  30112,
  "non-copyable type captured in lambda",
  span("expr:Expr", "cannot capture non-copyable type '~type:Type' in a lambda expression.")
)

err(
  "uncaught throw inside defer",
  30113,
  "uncaught throw inside defer statement",
  span("stmt", "'throw' expressions require a matching 'catch' inside a defer statement.")
)

err(
  "uncaught try inside defer",
  30114,
  "uncaught try inside defer statement",
  span("expr:Expr", "'try' expressions require a matching 'catch' inside a defer statement.")
)

err(
  "uncaught throw in non throw func",
  30115,
  "uncaught throw in non-throwing function",
  span("stmt", "the current function or environment is not declared to throw any errors, but contains an uncaught 'throw' statement.")
)

err(
  "throw type incompatible with error type",
  30116,
  "throw type incompatible with function error type",
  span("expr:Expr", "the type `~throwType:Type` of `throw` is not compatible with function's error type `~errorType:Type`.")
)

err(
  "forward reference in generic constraint",
  30117,
  "forward reference in generic constraint",
  span("expr:Expr", "generic constraint for parameter '~param:Type' references type parameter '~typeParam:Decl' before it is declared")
)

err(
  "included file missing implementing",
  30500,
  "missing implementing declaration in included file",
  span("loc", "missing 'implementing' declaration in the included source file '~name'.")
)

err(
  "included file missing implementing do you mean import",
  30501,
  "missing implementing declaration in included file",
  span("loc", "missing 'implementing' declaration in the included source file '~name'. The file declares that it defines module '~moduleName', do you mean 'import' instead?")
)

err(
  "included file does not implement current module",
  30502,
  "included file implements wrong module",
  span("loc", "the included source file is expected to implement module '~expectedModule', but it is implementing '~actualModule' instead.")
)

err(
  "primary module file cannot start with implementing decl",
  30503,
  "primary module file cannot start with implementing",
  span("decl:Decl", "a primary source file for a module cannot start with 'implementing'.")
)

warning(
  "primary module file must start with module decl",
  30504,
  "primary module file should start with module",
  span("decl:Decl", "a primary source file for a module should start with 'module'.")
)

err(
  "implementing must reference primary module file",
  30505,
  "implementing must reference primary module file",
  span("loc", "the source file referenced by 'implementing' must be a primary module file starting with a 'module' declaration.")
)

warning(
  "module implementation has file extension",
  30506,
  "file extension in implementing module name",
  span("loc", "implementing directive contains file extension in module name '~moduleName'. Module names should not include extensions. The compiler will use '~normalizedName' as the module name.")
)

err(
  "decl is not visible",
  30600,
  "declaration not accessible",
  span("loc", "'~decl:Decl' is not accessible from the current context.")
)

err(
  "decl cannot have higher visibility",
  30601,
  "declaration has higher visibility than parent",
  span("decl:Decl", "'~decl:Decl' cannot have a higher visibility than '~parent:Decl'.")
)

err(
  "satisfying decl cannot have lower visibility",
  30602,
  "satisfying declaration has lower visibility",
  span("decl:Decl", "'~decl:Decl' is less visible than the interface requirement it satisfies.")
)

err(
  "invalid use of private visibility",
  30603,
  "invalid use of private visibility",
  span("modifier", "'~decl:Decl' cannot have private visibility because it is not a member of a type.")
)

err(
  "use of less visible type",
  30604,
  "reference to less visible type",
  span("decl:Decl", "'~decl:Decl' references less visible type '~type:Type'.")
)

err(
  "invalid visibility modifier on type of decl",
  36005,
  "visibility modifier not allowed here",
  span("modifier", "visibility modifier is not allowed on '~nodeType'.")
)

err(
  "conflicting capability due to use of decl",
  36100,
  "conflicting capability requirement",
  span("loc", "'~referencedDecl:Decl' requires capability '~nodeCaps:CapabilitySet' that is conflicting with the '~decl:Decl's current capability requirement '~oldCaps:CapabilitySet'.")
)

err(
  "conflicting capability due to statement",
  36101,
  "conflicting capability requirement from statement",
  span("loc", "statement requires capability '~nodeCaps:CapabilitySet' that is conflicting with the '~decl's current capability requirement '~oldCaps:CapabilitySet'.")
)

err(
  "conflicting capability due to statement enclosing func",
  36102,
  "conflicting capability with enclosing function",
  span("loc", "statement requires capability '~nodeCaps:CapabilitySet' that is conflicting with the current function's capability requirement '~oldCaps:CapabilitySet'.")
)

warning(
  "missing capability requirement on public decl",
  36103,
  "missing capability requirement on public symbol",
  span("decl:Decl", "public symbol '~decl:Decl' is missing capability requirement declaration, the symbol is assumed to require inferred capabilities '~caps:CapabilitySet'.")
)

err(
  "use of undeclared capability",
  36104,
  "use of undeclared capability",
  span("decl:Decl", "'~decl:Decl' uses undeclared capability '~caps:CapabilitySet'")
)

err(
  "use of undeclared capability of interface requirement",
  36104,
  "capability incompatible with interface requirement",
  span("decl:Decl", "'~decl:Decl' uses capability '~caps:CapabilitySet' that is incompatable with the interface requirement")
)

err(
  "use of undeclared capability of inheritance decl",
  36104,
  "capability incompatible with supertype",
  span("decl:Decl", "'~decl:Decl' uses capability '~caps:CapabilitySet' that is incompatable with the supertype")
)

err(
  "unknown capability",
  36105,
  "unknown capability name",
  span("loc", "unknown capability name '~name'.")
)

err(
  "expect capability",
  36106,
  "expected capability name",
  span("expr:Expr", "expect a capability name.")
)

err(
  "entry point uses unavailable capability",
  36107,
  "entry point uses unavailable capability",
  span("decl:Decl", "entrypoint '~entryPoint:Decl' uses features that are not available in '~stage' stage for '~target' compilation target.")
)

err(
  "decl has dependencies not compatible on target",
  36108,
  "dependencies incompatible with target",
  span("decl:Decl", "'~decl:Decl' has dependencies that are not compatible on the required compilation target '~target'.")
)

err(
  "invalid target switch case",
  36109,
  "invalid target_switch case",
  span("loc", "'~capability' cannot be used as a target_switch case.")
)

err(
  "stage is incompatible with capability definition",
  36110,
  "stage incompatible with capability",
  span("decl:Decl", "'~decl:Decl' is defined for stage '~stage', which is incompatible with the declared capability set '~caps:CapabilitySet'.")
)

err(
  "unexpected capability",
  36111,
  "disallowed capability",
  span("attr", "'~attr' resolves into a disallowed `~capability` Capability.")
)

warning(
  "entry point and profile are incompatible",
  36112,
  "entry point stage incompatible with profile",
  span("attr", "'~entryPoint:Decl' is defined for stage '~stage', which is incompatible with the declared profile '~profile'.")
)

warning(
  "using internal capability name",
  36113,
  "using internal capability name",
  span("attr", "'~attr' resolves into a '_Internal' '_~capName' Capability, use '~capName' instead.")
)

warning(
  "incompatible with precompile lib",
  36114,
  "precompiled library capability mismatch",
  span("loc", "Precompiled library requires '~required:CapabilitySet', has `~actual:CapabilitySet`, implicitly upgrading capabilities.")
)

err(
  "incompatible with precompile lib restrictive",
  36115,
  "precompiled library capability mismatch",
  span("loc", "Precompiled library requires '~required:CapabilitySet', has `~actual:CapabilitySet`.")
)

err(
  "capability has multiple stages",
  36116,
  "capability targets multiple stages",
  span("attr", "Capability '~capability' is targeting stages '~stages', only allowed to use 1 unique stage here.")
)

err(
  "decl has dependencies not compatible on stage",
  36117,
  "dependencies incompatible with stage",
  span("decl:Decl", "'~decl:Decl' requires support for stage '~stage', but stage is unsupported.")
)

err(
  "sub type has subset of abstract atoms to super type",
  36118,
  "subtype missing target/stage support",
  span("decl:Decl", "subtype '~decl:Decl' must have the same target/stage support as the supertype; '~decl' is missing '~caps:CapabilitySet'")
)

err(
  "requirment has subset of abstract atoms to implementation",
  36119,
  "requirement missing target/stage support",
  span("decl:Decl", "requirement '~decl:Decl' must have the same target/stage support as the implementation; '~decl' is missing '~caps:CapabilitySet'")
)

err(
  "target switch cap cases conflict",
  36120,
  "conflicting target_switch cases",
  span("loc", "the capability for case '~caseName' is '~newSet:CapabilitySet', which is conflicts with previous case which requires '~currentSet:CapabilitySet'.In target_switch, if two cases are belong to the same target, then one capability set has to be a subset of the other.")
)

warning(
  "unknown attribute name",
  31000,
  "unknown attribute",
  span("attr", "unknown attribute '~name'")
)

err(
  "attribute argument count mismatch",
  31001,
  "wrong number of attribute arguments",
  span("attr", "attribute '~name' expects ~expected arguments (~actual provided)")
)

err(
  "attribute not applicable",
  31002,
  "attribute not valid here",
  span("attr", "attribute '~name' is not valid here")
)

err(
  "badly defined patch constant func",
  31003,
  "badly defined patchconstantfunc attribute",
  span("attr", "hull shader '~entryPoint' has has badly defined 'patchconstantfunc' attribute.")
)

err(
  "expected single int arg",
  31004,
  "attribute expects single int argument",
  span("attr", "attribute '~name' expects a single int argument")
)

err(
  "expected single string arg",
  31005,
  "attribute expects single string argument",
  span("attr", "attribute '~name' expects a single string argument")
)

err(
  "attribute function not found",
  31006,
  "attribute function not found",
  span("expr:Expr", "Could not find function '~name' for attribute'~attrName'")
)

err(
  "attribute expected int arg",
  31007,
  "attribute expects int argument",
  span("attr", "attribute '~name' expects argument ~index:int to be int")
)

err(
  "attribute expected string arg",
  31008,
  "attribute expects string argument",
  span("attr", "attribute '~name' expects argument ~index:int to be string")
)

err(
  "expected single float arg",
  31009,
  "attribute expects single float argument",
  span("attr", "attribute '~name' expects a single floating point argument")
)

err(
  "unknown stage name",
  31100,
  "unknown stage name",
  span("loc", "unknown stage name '~name:Token'")
)

err(
  "unknown image format name",
  31101,
  "unknown image format",
  span("expr:Expr", "unknown image format '~format'")
)

err(
  "unknown diagnostic name",
  31101,
  "unknown diagnostic",
  span("loc", "unknown diagnostic '~name'")
)

err(
  "non positive num threads",
  31102,
  "non-positive numthreads value",
  span("attr", "expected a positive integer in 'numthreads' attribute, got '~value:int'")
)

err(
  "invalid wave size",
  31103,
  "invalid WaveSize value",
  span("attr", "expected a power of 2 between 4 and 128, inclusive, in 'WaveSize' attribute, got '~value:int'")
)

warning(
  "explicit uniform location",
  31104,
  "explicit uniform binding discouraged",
  span("decl:Decl", "Explicit binding of uniform locations is discouraged. Prefer 'ConstantBuffer<~type:Type>' over 'uniform ~type'")
)

warning(
  "image format unsupported by backend",
  31105,
  "image format unsupported by backend",
  span("loc", "Image format '~format' is not explicitly supported by the ~backend backend, using supported format '~fallback' instead.")
)

err(
  "invalid attribute target",
  31120,
  "invalid attribute syntax target",
  span("attr", "invalid syntax target for user defined attribute")
)

err(
  "attribute usage attribute must be on non generic struct",
  31125,
  "AttributeUsage requires non-generic struct",
  span("attr", "[__AttributeUsage] can only be applied to non-generic struct definitions")
)

err(
  "any value size exceeds limit",
  31121,
  "anyValueSize exceeds limit",
  span("loc", "'anyValueSize' cannot exceed ~limit:int")
)

err(
  "associated type not allow in com interface",
  31122,
  "associatedtype not allowed in COM interface",
  span("decl:Decl", "associatedtype not allowed in a [COM] interface")
)

err(
  "invalid GUID",
  31123,
  "invalid GUID",
  span("attr", "'~guid' is not a valid GUID")
)

err(
  "struct cannot implement com interface",
  31124,
  "struct cannot implement COM interface",
  span("decl:Decl", "a struct type cannot implement a [COM] interface")
)

err(
  "interface inheriting com must be com",
  31124,
  "interface inheriting COM must be COM",
  span("decl:Decl", "an interface type that inherits from a [COM] interface must itself be a [COM] interface")
)

err(
  "derivative member attribute must name a member in expected differential type",
  31130,
  "DerivativeMember must reference differential type member",
  span("attr", "[DerivativeMember] must reference to a member in the associated differential type '~diffType:Type'.")
)

err(
  "invalid use of derivative member attribute parent type is not differentiable",
  31131,
  "parent type is not differentiable",
  span("attr", "invalid use of [DerivativeMember], parent type is not differentiable.")
)

err(
  "derivative member attribute can only be used on members",
  31132,
  "DerivativeMember only allowed on members",
  span("attr", "[DerivativeMember] is allowed on members only.")
)

err(
  "type of extern decl mismatches original definition",
  31140,
  "extern declaration type mismatch",
  span("decl:Decl", "type of `extern` decl '~decl:Decl' differs from its original definition. expected '~expectedType:Type'.")
)

err(
  "definition of extern decl mismatches original definition",
  31141,
  "extern declaration inconsistent with original",
  span("decl:Decl", "`extern` decl '~decl:Decl' is not consistent with its original definition.")
)

err(
  "ambiguous original defintion of extern decl",
  31142,
  "ambiguous original definition for extern",
  span("decl:Decl", "`extern` decl '~decl:Decl' has ambiguous original definitions.")
)

err(
  "missing original defintion of extern decl",
  31143,
  "no original definition for extern",
  span("decl:Decl", "no original definition found for `extern` decl '~decl:Decl'.")
)

err(
  "invalid custom derivative",
  31145,
  "invalid custom derivative attribute",
  span("attr", "invalid custom derivative attribute.")
)

err(
  "decl already has attribute",
  31146,
  "declaration already has attribute",
  span("attr", "'~decl:Decl' already has attribute '[~attrName]'.")
)

err(
  "cannot resolve original function for derivative",
  31147,
  "cannot resolve original function for derivative",
  span("attr", "cannot resolve the original function for the the custom derivative.")
)

err(
  "cannot resolve derivative function",
  31148,
  "cannot resolve custom derivative function",
  span("attr", "cannot resolve the custom derivative function")
)

err(
  "custom derivative signature mismatch at position",
  31149,
  "custom derivative parameter type mismatch",
  span("attr", "invalid custom derivative. parameter type mismatch at position ~position:int. expected '~expected:Type', got '~actual:Type'")
)

err(
  "custom derivative signature mismatch",
  31150,
  "custom derivative signature mismatch",
  span("attr", "invalid custom derivative. could not resolve function with expected signature '~signature'")
)

err(
  "cannot resolve generic argument for derivative function",
  31151,
  "cannot deduce generic arguments for derivative",
  span("attr", "The generic arguments to the derivative function cannot be deduced from the parameter list of the original function. Consider using [ForwardDerivative], [BackwardDerivative] or [PrimalSubstitute] attributes on the primal function with explicit generic arguments to associate it with a generic derivative function. Note that [ForwardDerivativeOf], [BackwardDerivativeOf], and [PrimalSubstituteOf] attributes are not supported when the generic arguments to the derivatives cannot be automatically deduced.")
)

err(
  "cannot associate interface requirement with derivative",
  31152,
  "cannot associate interface requirement with derivative",
  span("attr", "cannot associate an interface requirement with a derivative.")
)

err(
  "cannot use interface requirement as derivative",
  31153,
  "cannot use interface requirement as derivative",
  span("attr", "cannot use an interface requirement as a derivative.")
)

err(
  "custom derivative signature this param mismatch",
  31154,
  "custom derivative this parameter mismatch",
  span("attr", "custom derivative does not match expected signature on `this`. Both original and derivative function must have the same `this` type.")
)

err(
  "custom derivative not allowed for member functions of differentiable type",
  31155,
  "custom derivative not allowed for non-static members",
  span("attr", "custom derivative is not allowed for non-static member functions of a differentiable type.")
)

err(
  "custom derivative expected static",
  31156,
  "custom derivative expected static definition",
  span("attr", "expected a static definition for the custom derivative.")
)
