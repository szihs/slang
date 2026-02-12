err(
  "dyn interface cannot inherit non dyn interface",
  33077,
  "dyn interface '~decl:Decl' may only inherit 'dyn' interfaces, but '~inherited:Decl' is not",
  span("member:Decl", "dyn interface '~decl' may only inherit 'dyn' interfaces. '~inherited' is not a dyn interface.")
)

err(
  "cannot use extension to make type conform to dyn interface",
  33078,
  "cannot use an extension to conform to dyn interface '~interface:Decl'",
  span("extensionDecl:Decl", "cannot use a extension to conform to a dyn interface '~interface'.")
)

err(
  "cannot have unsized member when inheriting dyn interface",
  33079,
  "unsized member '~member:Decl' not allowed in dyn interface '~interface:Decl'",
  span("member:Decl", "cannot have unsized member '~member' when inheriting from dyn interface '~interface'.")
)

err(
  "cannot have opaque member when inheriting dyn interface",
  33080,
  "opaque member '~member:Decl' not allowed in dyn interface '~interface:Decl'",
  span("member:Decl", "cannot have opaque member '~member' when inheriting from dyn interface '~interface'.")
)

err(
  "cannot have non copyable member when inheriting dyn interface",
  33081,
  "non-copyable member '~member:Decl' not allowed in dyn interface '~interface:Decl'",
  span("member:Decl", "cannot have non-copyable member '~member' when inheriting from dyn interface '~interface'.")
)

err(
  "cannot conform generic to dyn interface",
  33082,
  "generic type '~type:Decl' cannot conform to dyn interface '~interface:Decl'",
  span("decl:Decl", "cannot conform generic type '~type' to dyn interface '~interface'.")
)

err(
  "ambiguous conversion",
  30080,
  "more than one conversion exists from '~fromType:Type' to '~toType:Type'",
  span("expr:Expr", "more than one conversion exists from '~fromType' to '~toType'")
)

warning(
  "unrecommended implicit conversion",
  30081,
  "implicit conversion from '~fromType:Type' to '~toType:Type' is not recommended",
  span("expr:Expr", "implicit conversion from '~fromType' to '~toType' is not recommended")
)

warning(
  "implicit conversion to double",
  30082,
  "implicit float-to-double conversion may cause unexpected performance issues",
  span("expr:Expr", " implicit float-to-double conversion may cause unexpected performance issues, use explicit cast if intended.")
)

err(
  "try clause must apply to invoke expr",
  30090,
  "expression in a 'try' clause must be a call to a function or operator overload",
  span("expr:Expr", "expression in a 'try' clause must be a call to a function or operator overload.")
)

err(
  "try invoke callee should throw",
  30091,
  "'~callee:Decl' called from a 'try' clause does not throw",
  span("expr:Expr", "'~callee' called from a 'try' clause does not throw an error, make sure the callee is marked as 'throws'")
)

err(
  "callee of try call must be func",
  30092,
  "callee in a 'try' clause must be a function",
  span("expr:Expr", "callee in a 'try' clause must be a function")
)

err(
  "uncaught try call in non throw func",
  30093,
  "uncaught 'try' clause in non-throwing function",
  span("expr:Expr", "the current function or environment is not declared to throw any errors, but the 'try' clause is not caught")
)

err(
  "must use try clause to call a throw func",
  30094,
  "callee may throw and must be called within a 'try' clause",
  span("invoke:Expr", "the callee may throw an error, and therefore must be called within a 'try' clause")
)

err(
  "error type of callee incompatible with caller",
  30095,
  "error type '~calleeErrorType:Type' of '~callee:Decl' incompatible with caller's '~callerErrorType:Type'",
  span("expr:Expr", "the error type `~calleeErrorType` of callee `~callee` is not compatible with the caller's error type `~callerErrorType`.")
)

-- uses notes: seeDefinitionOf
err(
  "differential type should serve as its own differential type",
  30096,
  "differential type '~diffType:Type' must be its own differential, but '~diffType.Differential' is '~diffDiffType:Type'",
  span("inheritanceDecl:Decl", "cannot use type '~diffType' a `Differential` type. A differential type's differential must be itself. However, '~diffType.Differential' is '~diffDiffType'.")
)

err(
  "function not marked as differentiable",
  30097,
  "function '~func:Decl' is not marked as ~direction:String-differentiable",
  span("expr:Expr", "function '~func' is not marked as ~direction-differentiable.")
)

err(
  "non static member function not allowed as diff operand",
  30098,
  "non-static function reference '~func:Decl' is not allowed here",
  span("expr:Expr", "non-static function reference '~func' is not allowed here.")
)

err(
  "size of argument is invalid",
  30099,
  "argument to sizeof is invalid",
  span("expr:Expr", "argument to sizeof is invalid")
)

err(
  "count of argument is invalid",
  30083,
  "argument to countof can only be a type pack or tuple",
  span("expr:Expr", "argument to countof can only be a type pack or tuple")
)

err(
  "float bit cast type mismatch",
  30084,
  "'~funcName:String' requires a ~expectedType:String argument",
  span("expr:Expr", "'~funcName' requires a ~expectedType argument")
)

err(
  "float bit cast requires constant",
  30085,
  "'__floatAsInt' requires a compile-time constant floating-point expression",
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
  "differentiable member '~member:Name' has no corresponding field in '~diffType:Type'",
  span("member:Decl", "differentiable member '~member' should have a corresponding field in '~diffType'. Use [DerivativeMember(~diffType.<field-name>)] or mark as no_diff")
)

err(
  "expect type pack after each",
  30103,
  "expected a type pack or a tuple after 'each'",
  span("expr:Expr", "expected a type pack or a tuple after 'each'.")
)

err(
  "each expr must be inside expand expr",
  30104,
  "'each' expression must be inside 'expand' expression",
  span("expr:Expr", "'each' expression must be inside 'expand' expression.")
)

err(
  "expand term captures no type packs",
  30105,
  "'expand' term captures no type packs",
  span("expr:Expr", "'expand' term captures no type packs. At least one type pack must be referenced via an 'each' term inside an 'expand' term.")
)

err(
  "improper use of type",
  30106,
  "type '~type:Type' cannot be used in this context",
  span("expr:Expr", "type '~type' cannot be used in this context.")
)

err(
  "parameter pack must be const",
  30107,
  "a parameter pack must be declared as 'const'",
  span("modifier:Modifier", "a parameter pack must be declared as 'const'.")
)

err(
  "break inside defer",
  30108,
  "'break' must not appear inside a defer statement",
  span("stmt:Stmt", "'break' must not appear inside a defer statement.")
)

err(
  "continue inside defer",
  30109,
  "'continue' must not appear inside a defer statement",
  span("stmt:Stmt", "'continue' must not appear inside a defer statement.")
)

err(
  "return inside defer",
  30110,
  "'return' must not appear inside a defer statement",
  span("stmt:Stmt", "'return' must not appear inside a defer statement.")
)

err(
  "return type mismatch inside lambda",
  30111,
  "returned '~returnType:Type' but previously returned '~previousType:Type' in lambda",
  span("stmt:Stmt", "returned values must have the same type among all 'return' statements inside a lambda expression: returned '~returnType' here, but '~previousType' previously.")
)

err(
  "non copyable type captured in lambda",
  30112,
  "cannot capture non-copyable type '~type:Type' in a lambda expression",
  span("expr:Expr", "cannot capture non-copyable type '~type' in a lambda expression.")
)

err(
  "uncaught throw inside defer",
  30113,
  "'throw' requires a matching 'catch' inside a defer statement",
  span("stmt:Stmt", "'throw' expressions require a matching 'catch' inside a defer statement.")
)

err(
  "uncaught try inside defer",
  30114,
  "'try' requires a matching 'catch' inside a defer statement",
  span("expr:Expr", "'try' expressions require a matching 'catch' inside a defer statement.")
)

err(
  "uncaught throw in non throw func",
  30115,
  "uncaught 'throw' in non-throwing function",
  span("stmt:Stmt", "the current function or environment is not declared to throw any errors, but contains an uncaught 'throw' statement.")
)

err(
  "throw type incompatible with error type",
  30116,
  "throw type '~throwType:Type' incompatible with function's error type '~errorType:Type'",
  span("expr:Expr", "the type `~throwType` of `throw` is not compatible with function's error type `~errorType`.")
)

err(
  "forward reference in generic constraint",
  30117,
  "constraint for '~param:Type' references undeclared type parameter '~typeParam:Decl'",
  span("expr:Expr", "generic constraint for parameter '~param' references type parameter '~typeParam' before it is declared")
)

err(
  "included file missing implementing",
  30500,
  "missing 'implementing' declaration in included source file '~name:Name'",
  span("loc", "missing 'implementing' declaration in the included source file '~name'.")
)

err(
  "included file missing implementing do you mean import",
  30501,
  "included file '~name:Name' declares module '~moduleName:Name'; did you mean 'import'?",
  span("loc", "missing 'implementing' declaration in the included source file '~name'. The file declares that it defines module '~moduleName', do you mean 'import' instead?")
)

err(
  "included file does not implement current module",
  30502,
  "included file implements '~actual:Name' instead of expected '~expected:Name'",
  span("loc", "the included source file is expected to implement module '~expected', but it is implementing '~actual' instead.")
)

err(
  "primary module file cannot start with implementing decl",
  30503,
  "a primary source file for a module cannot start with 'implementing'",
  span("decl:Decl", "a primary source file for a module cannot start with 'implementing'.")
)

warning(
  "primary module file must start with module decl",
  30504,
  "a primary source file for a module should start with 'module'",
  span("decl:Decl", "a primary source file for a module should start with 'module'.")
)

err(
  "implementing must reference primary module file",
  30505,
  "the source file referenced by 'implementing' must be a primary module file",
  span("loc", "the source file referenced by 'implementing' must be a primary module file starting with a 'module' declaration.")
)

warning(
  "module implementation has file extension",
  30506,
  "implementing directive '~name:String' contains file extension; will use '~normalizedName:String'",
  span("loc", "implementing directive contains file extension in module name '~name'. Module names should not include extensions. The compiler will use '~normalizedName' as the module name.")
)

err(
  "decl is not visible",
  30600,
  "'~decl:Decl' is not accessible from the current context",
  span("loc", "'~decl' is not accessible from the current context.")
)

err(
  "decl cannot have higher visibility",
  30601,
  "'~decl:Decl' cannot have a higher visibility than '~parent:Decl'",
  span("decl:Decl", "'~decl' cannot have a higher visibility than '~parent'.")
)

err(
  "satisfying decl cannot have lower visibility",
  30602,
  "'~decl:Decl' is less visible than the interface requirement it satisfies",
  span("decl:Decl", "'~decl' is less visible than the interface requirement it satisfies.")
)

err(
  "invalid use of private visibility",
  30603,
  "'~decl:Decl' cannot have private visibility because it is not a member of a type",
  span("modifier:Modifier", "'~decl' cannot have private visibility because it is not a member of a type.")
)

err(
  "use of less visible type",
  30604,
  "'~decl:Decl' references less visible type '~type:Type'",
  span("decl:Decl", "'~decl' references less visible type '~type'.")
)

err(
  "invalid visibility modifier on type of decl",
  36005,
  "visibility modifier is not allowed on '~nodeType:ASTNodeType'",
  span("modifier:Modifier", "visibility modifier is not allowed on '~nodeType'.")
)

err(
  "conflicting capability due to use of decl",
  36100,
  "'~referencedDecl:Decl' requires capability '~requiredCaps:CapabilitySet' conflicting with '~decl:Decl' capability '~currentCaps:CapabilitySet'",
  span("loc", "'~referencedDecl' requires capability '~requiredCaps' that is conflicting with the '~decl's current capability requirement '~currentCaps'.")
)

err(
  "conflicting capability due to statement",
  36101,
  "statement requires capability '~requiredCaps:CapabilitySet' conflicting with '~decl:Decl' capability '~currentCaps:CapabilitySet'",
  span("loc", "statement requires capability '~requiredCaps' that is conflicting with the '~decl's current capability requirement '~currentCaps'.")
)

err(
  "conflicting capability due to statement enclosing func",
  36102,
  "statement requires capability '~requiredCaps:CapabilitySet' conflicting with function's capability '~currentCaps:CapabilitySet'",
  span("loc", "statement requires capability '~requiredCaps' that is conflicting with the current function's capability requirement '~currentCaps'.")
)

warning(
  "missing capability requirement on public decl",
  36103,
  "public symbol '~decl:Decl' is missing capability requirement, assumed to require '~caps:CapabilitySet'",
  span("decl:Decl", "public symbol '~decl' is missing capability requirement declaration, the symbol is assumed to require inferred capabilities '~caps'.")
)

err(
  "use of undeclared capability",
  36104,
  "'~decl:Decl' uses undeclared capability '~cap:CapabilityAtom'",
  span("decl:Decl", "'~decl' uses undeclared capability '~cap'")
)

err(
  "use of undeclared capability of interface requirement",
  36104,
  "'~decl:Decl' uses capability '~cap:CapabilityAtom' incompatible with the interface requirement",
  span("decl:Decl", "'~decl' uses capability '~cap' that is incompatable with the interface requirement")
)

err(
  "use of undeclared capability of inheritance decl",
  36104,
  "'~decl:Decl' uses capability '~cap:CapabilityAtom' incompatible with the supertype",
  span("decl:Decl", "'~decl' uses capability '~cap' that is incompatable with the supertype")
)

err(
  "unknown capability",
  36105,
  "unknown capability name '~name'",
  span("loc", "unknown capability name '~name'.")
)

err(
  "expect capability",
  36106,
  "expected a capability name",
  span("expr:Expr", "expect a capability name.")
)

err(
  "entry point uses unavailable capability",
  36107,
  "entrypoint '~entryPoint:Decl' uses features unavailable in '~stage:CapabilityAtom' for '~target:CapabilityAtom'",
  span("entryPoint:Decl", "entrypoint '~entryPoint' uses features that are not available in '~stage' stage for '~target' compilation target.")
)

err(
  "decl has dependencies not compatible on target",
  36108,
  "'~decl:Decl' has dependencies not compatible on target '~target:CapabilityAtom'",
  span("decl:Decl", "'~decl' has dependencies that are not compatible on the required compilation target '~target'.")
)

err(
  "invalid target switch case",
  36109,
  "'~cap:String' cannot be used as a target_switch case",
  span("loc", "'~cap' cannot be used as a target_switch case.")
)

err(
  "stage is incompatible with capability definition",
  36110,
  "'~decl:Decl' is defined for stage '~stage' incompatible with capability set '~caps:CapabilitySet'",
  span("decl:Decl", "'~decl' is defined for stage '~stage', which is incompatible with the declared capability set '~caps'.")
)

err(
  "unexpected capability",
  36111,
  "'~attr:Modifier' resolves into a disallowed '~cap:CapabilityName' capability",
  span("attr:Modifier", "'~attr' resolves into a disallowed `~cap` Capability.")
)

warning(
  "entry point and profile are incompatible",
  36112,
  "'~entryPoint:Decl' is defined for stage '~stage:Stage' incompatible with profile '~profile'",
  span("attr:Modifier", "'~entryPoint' is defined for stage '~stage', which is incompatible with the declared profile '~profile'.")
)

warning(
  "using internal capability name",
  36113,
  "'~attr:Modifier' resolves into an internal capability, use '~capName:CapabilityName' instead",
  span("attr:Modifier", "'~attr' resolves into a '_Internal' '_~capName' Capability, use '~capName' instead.")
)

warning(
  "incompatible with precompile lib",
  36114,
  "precompiled library requires '~required:CapabilitySet', has '~current:CapabilitySet', implicitly upgrading",
  span("loc", "Precompiled library requires '~required', has `~current`, implicitly upgrading capabilities.")
)

err(
  "incompatible with precompile lib restrictive",
  36115,
  "precompiled library requires '~required:CapabilitySet', has '~current:CapabilitySet'",
  span("loc", "Precompiled library requires '~required', has `~current`.")
)

err(
  "capability has multiple stages",
  36116,
  "capability '~cap:String' targets multiple stages '~stages', only 1 allowed",
  span("attr:Modifier", "Capability '~cap' is targeting stages '~stages', only allowed to use 1 unique stage here.")
)

err(
  "decl has dependencies not compatible on stage",
  36117,
  "'~decl:Decl' requires unsupported stage '~stage:CapabilityAtom'",
  span("decl:Decl", "'~decl' requires support for stage '~stage', but stage is unsupported.")
)

err(
  "sub type has subset of abstract atoms to super type",
  36118,
  "subtype '~decl:Decl' is missing '~missingCaps:CapabilityAtomSet' required by supertype",
  span("decl:Decl", "subtype '~decl' must have the same target/stage support as the supertype; '~decl' is missing '~missingCaps'")
)

err(
  "requirment has subset of abstract atoms to implementation",
  36119,
  "requirement '~decl:Decl' is missing '~missingCaps:CapabilityAtomSet' required by implementation",
  span("decl:Decl", "requirement '~decl' must have the same target/stage support as the implementation; '~decl' is missing '~missingCaps'")
)

err(
  "target switch cap cases conflict",
  36120,
  "target_switch case '~caseName:String' capability '~newSet:CapabilitySet' conflicts with '~currentSet:CapabilitySet'",
  span("loc", "the capability for case '~caseName' is '~newSet', which is conflicts with previous case which requires '~currentSet'.In target_switch, if two cases are belong to the same target, then one capability set has to be a subset of the other.")
)

warning(
  "unknown attribute name",
  31000,
  "unknown attribute '~name:Name'",
  span("attr:Modifier", "unknown attribute '~name'")
)

err(
  "attribute argument count mismatch",
  31001,
  "attribute '~name:Name' expects ~expected:int arguments (~actual:int provided)",
  span("attr:Modifier", "attribute '~name' expects ~expected arguments (~actual provided)")
)

err(
  "attribute not applicable",
  31002,
  "attribute '~name:Name' is not valid here",
  span("attr:Modifier", "attribute '~name' is not valid here")
)

err(
  "badly defined patch constant func",
  31003,
  "hull shader '~entryPoint:Name' has badly defined 'patchconstantfunc' attribute",
  span("attr:Modifier", "hull shader '~entryPoint' has has badly defined 'patchconstantfunc' attribute.")
)

err(
  "expected single int arg",
  31004,
  "attribute '~name:Name' expects a single int argument",
  span("attr:Modifier", "attribute '~name' expects a single int argument")
)

err(
  "expected single string arg",
  31005,
  "attribute '~name:Name' expects a single string argument",
  span("attr:Modifier", "attribute '~name' expects a single string argument")
)

err(
  "attribute function not found",
  31006,
  "could not find function '~funcName:String' for attribute '~attrName:String'",
  span("expr:Expr", "Could not find function '~funcName' for attribute'~attrName'")
)

err(
  "attribute expected int arg",
  31007,
  "attribute '~name:Name' expects argument ~index:int to be int",
  span("attr:Modifier", "attribute '~name' expects argument ~index to be int")
)

err(
  "attribute expected string arg",
  31008,
  "attribute '~name:Name' expects argument ~index:int to be string",
  span("attr:Modifier", "attribute '~name' expects argument ~index to be string")
)

err(
  "expected single float arg",
  31009,
  "attribute '~name:Name' expects a single floating point argument",
  span("attr:Modifier", "attribute '~name' expects a single floating point argument")
)

err(
  "unknown stage name",
  31100,
  "unknown stage name '~name:Token'",
  span("loc", "unknown stage name '~name'")
)

err(
  "unknown image format name",
  31101,
  "unknown image format '~name:String'",
  span("expr:Expr", "unknown image format '~name'")
)

err(
  "unknown diagnostic name",
  31101,
  "unknown diagnostic '~name:String'",
  span("loc", "unknown diagnostic '~name'")
)

err(
  "non positive num threads",
  31102,
  "expected a positive integer in 'numthreads' attribute, got '~value:int'",
  span("attr:Modifier", "expected a positive integer in 'numthreads' attribute, got '~value'")
)

err(
  "invalid wave size",
  31103,
  "expected a power of 2 between 4 and 128 in 'WaveSize' attribute, got '~value:int'",
  span("attr:Modifier", "expected a power of 2 between 4 and 128, inclusive, in 'WaveSize' attribute, got '~value'")
)

warning(
  "explicit uniform location",
  31104,
  "explicit binding of uniform locations is discouraged; prefer 'ConstantBuffer<~type:Type>'",
  span("decl:Decl", "Explicit binding of uniform locations is discouraged. Prefer 'ConstantBuffer<~type>' over 'uniform ~type'")
)

warning(
  "image format unsupported by backend",
  31105,
  "image format '~format:String' not supported by ~backend:String backend, using '~fallback:String'",
  span("loc", "Image format '~format' is not explicitly supported by the ~backend backend, using supported format '~fallback' instead.")
)

err(
  "invalid attribute target",
  31120,
  "invalid syntax target for user defined attribute",
  span("attr:Modifier", "invalid syntax target for user defined attribute")
)

err(
  "attribute usage attribute must be on non generic struct",
  31125,
  "[__AttributeUsage] can only be applied to non-generic struct definitions",
  span("attr:Modifier", "[__AttributeUsage] can only be applied to non-generic struct definitions")
)

err(
  "any value size exceeds limit",
  31121,
  "'anyValueSize' cannot exceed ~limit:int",
  span("loc", "'anyValueSize' cannot exceed ~limit")
)

err(
  "associated type not allow in com interface",
  31122,
  "associatedtype not allowed in a [COM] interface",
  span("decl:Decl", "associatedtype not allowed in a [COM] interface")
)

err(
  "invalid GUID",
  31123,
  "'~guid:String' is not a valid GUID",
  span("attr:Modifier", "'~guid' is not a valid GUID")
)

err(
  "struct cannot implement com interface",
  31124,
  "a struct type cannot implement a [COM] interface",
  span("decl:Decl", "a struct type cannot implement a [COM] interface")
)

err(
  "interface inheriting com must be com",
  31124,
  "an interface inheriting from a [COM] interface must itself be [COM]",
  span("decl:Decl", "an interface type that inherits from a [COM] interface must itself be a [COM] interface")
)

err(
  "derivative member attribute must name a member in expected differential type",
  31130,
  "[DerivativeMember] must reference a member in differential type '~diffType:Type'",
  span("attr:Modifier", "[DerivativeMember] must reference to a member in the associated differential type '~diffType'.")
)

err(
  "invalid use of derivative member attribute parent type is not differentiable",
  31131,
  "invalid use of [DerivativeMember], parent type is not differentiable",
  span("attr:Modifier", "invalid use of [DerivativeMember], parent type is not differentiable.")
)

err(
  "derivative member attribute can only be used on members",
  31132,
  "[DerivativeMember] is allowed on members only",
  span("attr:Modifier", "[DerivativeMember] is allowed on members only.")
)

err(
  "type of extern decl mismatches original definition",
  31140,
  "type of `extern` decl '~decl:Decl' differs from expected type '~expectedType:Type'",
  span("decl:Decl", "type of `extern` decl '~decl' differs from its original definition. expected '~expectedType'.")
)

err(
  "definition of extern decl mismatches original definition",
  31141,
  "`extern` decl '~decl:Decl' is not consistent with its original definition",
  span("decl:Decl", "`extern` decl '~decl' is not consistent with its original definition.")
)

err(
  "ambiguous original defintion of extern decl",
  31142,
  "`extern` decl '~decl:Decl' has ambiguous original definitions",
  span("decl:Decl", "`extern` decl '~decl' has ambiguous original definitions.")
)

err(
  "missing original defintion of extern decl",
  31143,
  "no original definition found for `extern` decl '~decl:Decl'",
  span("decl:Decl", "no original definition found for `extern` decl '~decl'.")
)

err(
  "invalid custom derivative",
  31145,
  "invalid custom derivative attribute",
  span("attr:Modifier", "invalid custom derivative attribute.")
)

err(
  "decl already has attribute",
  31146,
  "'~decl:Decl' already has attribute '[~attrName:String]'",
  span("attr:Modifier", "'~decl' already has attribute '[~attrName]'.")
)

err(
  "cannot resolve original function for derivative",
  31147,
  "cannot resolve the original function for the custom derivative",
  span("attr:Modifier", "cannot resolve the original function for the the custom derivative.")
)

err(
  "cannot resolve derivative function",
  31148,
  "cannot resolve the custom derivative function",
  span("attr:Modifier", "cannot resolve the custom derivative function")
)

err(
  "custom derivative signature mismatch at position",
  31149,
  "parameter type mismatch at position ~index:int: expected '~expected:String', got '~actual:String'",
  span("attr:Modifier", "invalid custom derivative. parameter type mismatch at position ~index. expected '~expected', got '~actual'")
)

err(
  "custom derivative signature mismatch",
  31150,
  "invalid custom derivative, could not resolve function with expected signature '~sig:String'",
  span("attr:Modifier", "invalid custom derivative. could not resolve function with expected signature '~sig'")
)

err(
  "cannot resolve generic argument for derivative function",
  31151,
  "generic arguments to derivative function cannot be deduced from parameter list",
  span("attr:Modifier", "The generic arguments to the derivative function cannot be deduced from the parameter list of the original function. Consider using [ForwardDerivative], [BackwardDerivative] or [PrimalSubstitute] attributes on the primal function with explicit generic arguments to associate it with a generic derivative function. Note that [ForwardDerivativeOf], [BackwardDerivativeOf], and [PrimalSubstituteOf] attributes are not supported when the generic arguments to the derivatives cannot be automatically deduced.")
)

err(
  "cannot associate interface requirement with derivative",
  31152,
  "cannot associate an interface requirement with a derivative",
  span("attr:Modifier", "cannot associate an interface requirement with a derivative.")
)

err(
  "cannot use interface requirement as derivative",
  31153,
  "cannot use an interface requirement as a derivative",
  span("attr:Modifier", "cannot use an interface requirement as a derivative.")
)

err(
  "custom derivative signature this param mismatch",
  31154,
  "custom derivative `this` type mismatch: original and derivative must have the same `this` type",
  span("attr:Modifier", "custom derivative does not match expected signature on `this`. Both original and derivative function must have the same `this` type.")
)

err(
  "custom derivative not allowed for member functions of differentiable type",
  31155,
  "custom derivative is not allowed for non-static member functions of a differentiable type",
  span("attr:Modifier", "custom derivative is not allowed for non-static member functions of a differentiable type.")
)

err(
  "custom derivative expected static",
  31156,
  "expected a static definition for the custom derivative",
  span("attr:Modifier", "expected a static definition for the custom derivative.")
)
