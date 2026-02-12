err(
  "overloaded func used with derivative of attributes",
  31157,
  "cannot resolve overloaded functions for derivative-of attributes",
  span("attr:Modifier", "cannot resolve overloaded functions for derivative-of attributes.")
)

err(
  "primal substitute target must have higher differentiability level",
  31158,
  "primal substitute function for differentiable method must also be differentiable",
  span("loc", "primal substitute function for differentiable method must also be differentiable. Use [Differentiable] or [TreatAsDifferentiable] (for empty derivatives)")
)

warning(
  "no derivative on non differentiable this type",
  31159,
  "no derivative for member '~member:Decl' because parent struct is not differentiable",
  span("loc", "There is no derivative calculated for member '~member:Decl' because the parent struct is not differentiable. If this is intended, consider using [NoDiffThis] on the function '~func:Decl' to suppress this warning. Alternatively, users can mark the parent struct as [Differentiable] to propagate derivatives.")
)

err(
  "invalid address of",
  31160,
  "'__getAddress' only supports groupshared variables and members of groupshared/device memory",
  span("expr:Expr", "'__getAddress' only supports groupshared variables and members of groupshared/device memory.")
)

warning(
  "deprecated usage",
  31200,
  "'~name:Name' has been deprecated: ~message:String",
  span("loc", "~name:Name has been deprecated: ~message:String")
)

err(
  "modifier not allowed",
  31201,
  "modifier '~modifier:Modifier' is not allowed here",
  span("modifier:Modifier", "modifier '~modifier' is not allowed here.")
)

err(
  "duplicate modifier",
  31202,
  "modifier '~modifier:Modifier' conflicts with '~existing:Modifier'",
  span("loc", "modifier '~modifier:Modifier' is redundant or conflicting with existing modifier '~existing:Modifier'")
)

err(
  "cannot export incomplete type",
  31203,
  "cannot export incomplete type '~type:Decl'",
  span("loc", "cannot export incomplete type '~type:Decl'")
)

err(
  "memory qualifier not allowed on a non image type parameter",
  31206,
  "modifier ~mod:Modifier is not allowed on a non image type parameter",
  span("decl:Decl", "modifier ~mod:Modifier is not allowed on a non image type parameter.")
)

err(
  "require input decorated var for parameter",
  31208,
  "~decl:Decl expects a shader input variable for argument ~paramNum:int",
  span("expr:Expr", "~decl:Decl expects for argument ~paramNum:int a type which is a shader input (`in`) variable.")
)

err(
  "derivative group quad must be multiple 2 for XY threads",
  31210,
  "compute derivative group quad requires X and Y thread counts to be multiples of 2",
  span("loc", "compute derivative group quad requires thread dispatch count of X and Y to each be at a multiple of 2")
)

err(
  "derivative group linear must be multiple 4 for total thread count",
  31211,
  "compute derivative group linear requires total thread count to be a multiple of 4",
  span("loc", "compute derivative group linear requires total thread dispatch count to be at a multiple of 4")
)

err(
  "only one of derivative group linear or quad can be set",
  31212,
  "cannot set compute derivative group linear and quad at the same time",
  span("loc", "cannot set compute derivative group linear and compute derivative group quad at the same time")
)

err(
  "cuda kernel must return void",
  31213,
  "return type of a CUDA kernel function cannot be non-void",
  span("decl:Decl", "return type of a CUDA kernel function cannot be non-void.")
)

err(
  "differentiable kernel entry point cannot have differentiable params",
  31214,
  "differentiable kernel entry point cannot have differentiable parameters",
  span("decl:Decl", "differentiable kernel entry point cannot have differentiable parameters. Consider using DiffTensorView to pass differentiable data, or marking this parameter with 'no_diff'")
)

-- uses notes: seeConstantBufferDefinition
err(
  "cannot use unsized type in constant buffer",
  31215,
  "cannot use unsized type '~type:Type' in a constant buffer",
  span("loc", "cannot use unsized type '~type:Type' in a constant buffer.")
)

err(
  "unrecognized GLSL layout qualifier",
  31216,
  "GLSL layout qualifier is unrecognized",
  span("attr:Modifier", "GLSL layout qualifier is unrecognized")
)

err(
  "unrecognized GLSL layout qualifier or requires assignment",
  31217,
  "GLSL layout qualifier is unrecognized or requires assignment",
  span("modifier:Modifier", "GLSL layout qualifier is unrecognized or requires assignment")
)

err(
  "specialization constant must be scalar",
  31218,
  "specialization constant must be a scalar",
  span("modifier:Modifier", "specialization constant must be a scalar.")
)

err(
  "push or specialization constant cannot be static",
  31219,
  "push or specialization constants cannot be 'static'",
  span("decl:Decl", "push or specialization constants cannot be 'static'.")
)

err(
  "variable cannot be push and specialization constant",
  31220,
  "'~name:Name' cannot be both a push constant and a specialization constant",
  span("decl:Decl", "'~name:Name' cannot be a push constant and a specialization constant at the same time")
)

err(
  "invalid HLSL register name",
  31221,
  "invalid HLSL register name '~name:Token'",
  span("loc", "invalid HLSL register name '~name:Token'.")
)

err(
  "invalid HLSL register name for type",
  31222,
  "invalid HLSL register name '~name' for type '~type:Type'",
  span("loc", "invalid HLSL register name '~name:String' for type '~type:Type'.")
)

err(
  "extern and export var decl must be const",
  31223,
  "extern and export variables must be static const: '~name:Name'",
  span("decl:Decl", "extern and export variables must be static const: '~name:Name'")
)

err(
  "const global var with init requires static",
  31224,
  "global const variable with initializer must be declared static: '~name:Name'",
  span("decl:Decl", "global const variable with initializer must be declared static: '~name:Name'")
)

err(
  "static const variable requires initializer",
  31225,
  "static const variable '~var:Decl' must have an initializer",
  span("decl:Decl", "static const variable '~var:Decl' must have an initializer")
)

err(
  "invalid enum tag type",
  32000,
  "invalid tag type for 'enum': '~type:Type'",
  span("loc", "invalid tag type for 'enum': '~type:Type'")
)

err(
  "unexpected enum tag expr",
  32003,
  "unexpected form for 'enum' tag value expression",
  span("expr:Expr", "unexpected form for 'enum' tag value expression")
)

err(
  "assoc type in interface only",
  30300,
  "'associatedtype' can only be defined in an 'interface'",
  span("decl:Decl", "'associatedtype' can only be defined in an 'interface'.")
)

err(
  "global gen param in global scope only",
  30301,
  "'type_param' can only be defined global scope",
  span("decl:Decl", "'type_param' can only be defined global scope.")
)

err(
  "static const requirement must be int or bool",
  30302,
  "'static const' requirement can only have int or bool type",
  span("decl:Decl", "'static const' requirement can only have int or bool type.")
)

err(
  "value requirement must be compile time const",
  30303,
  "requirement in the form of a simple value must be declared as 'static const'",
  span("decl:Decl", "requirement in the form of a simple value must be declared as 'static const'.")
)

err(
  "type is not differentiable",
  30310,
  "type '~type:Type' is not differentiable",
  span("attr:Modifier", "type '~type:Type' is not differentiable.")
)

err(
  "non method interface requirement cannot have body",
  30311,
  "non-method interface requirement cannot have a body",
  span("decl:Decl", "non-method interface requirement cannot have a body.")
)

err(
  "interface requirement cannot be override",
  30312,
  "interface requirement cannot override a base declaration",
  span("decl:Decl", "interface requirement cannot override a base declaration.")
)

err(
  "cannot define ptr type to managed resource",
  30400,
  "pointer to a managed resource is invalid, use `NativeRef<T>` instead",
  span("expr:Expr", "pointer to a managed resource is invalid, use `NativeRef<T>` instead")
)

warning(
  "for loop side effect changing different var",
  30500,
  "for loop initializes '~initVar:DeclRef' but side effect modifies '~sideVar:DeclRef'",
  span("expr:Expr", "the for loop initializes and checks variable '~initVar:DeclRef' but the side effect expression is modifying '~sideVar:DeclRef'.")
)

warning(
  "for loop predicate checking different var",
  30501,
  "for loop initializes '~initVar:DeclRef' but predicate checks '~predVar:DeclRef'",
  span("expr:Expr", "the for loop initializes and modifies variable '~initVar:DeclRef' but the predicate expression is checking '~predVar:DeclRef'.")
)

warning(
  "for loop changing iteration variable in opposite direction",
  30502,
  "for loop modifies '~var:DeclRef' in opposite direction from exit condition",
  span("expr:Expr", "the for loop is modifiying variable '~var:DeclRef' in the opposite direction from loop exit condition.")
)

warning(
  "for loop not modifying iteration variable",
  30503,
  "for loop not modifying '~var:DeclRef' because step size is 0",
  span("expr:Expr", "the for loop is not modifiying variable '~var:DeclRef' because the step size evaluates to 0.")
)

warning(
  "for loop terminates in fewer iterations than max iters",
  30504,
  "loop terminates within ~count:int iterations, less than [MaxIters] specifies",
  span("attr:Modifier", "the for loop is statically determined to terminate within ~count:int iterations, which is less than what [MaxIters] specifies.")
)

warning(
  "loop runs for zero iterations",
  30505,
  "the loop runs for 0 iterations and will be removed",
  span("stmt:Stmt", "the loop runs for 0 iterations and will be removed.")
)

err(
  "loop in diff func require unroll or max iters",
  30510,
  "loops inside a differentiable function need '[MaxIters(n)]' or '[ForceUnroll]'",
  span("loc", "loops inside a differentiable function need to provide either '[MaxIters(n)]' or '[ForceUnroll]' attribute.")
)

err(
  "switch multiple default",
  30600,
  "multiple 'default' cases not allowed within a 'switch' statement",
  span("stmt:Stmt", "multiple 'default' cases not allowed within a 'switch' statement")
)

err(
  "switch duplicate cases",
  30601,
  "duplicate cases not allowed within a 'switch' statement",
  span("stmt:Stmt", "duplicate cases not allowed within a 'switch' statement")
)

warning(
  "link time constant array size",
  31000,
  "link-time constant sized arrays are a work in progress feature",
  span("decl:Decl", "Link-time constant sized arrays are a work in progress feature, some aspects of the reflection API may not work")
)

err(
  "cyclic reference",
  39999,
  "cyclic reference '~decl:Decl'",
  span("decl:Decl", "cyclic reference '~decl'.")
)

err(
  "cyclic reference in inheritance",
  39999,
  "cyclic reference in inheritance graph '~decl:Decl'",
  span("decl:Decl", "cyclic reference in inheritance graph '~decl:Decl'.")
)

err(
  "local variable used before declared",
  39999,
  "local variable '~var:Decl' is being used before its declaration",
  span("loc", "local variable '~var:Decl' is being used before its declaration.")
)

err(
  "variable used in its own definition",
  39999,
  "variable '~decl:Decl' depends on its own value in its initializer",
  span("decl:Decl", "the initial-value expression for variable '~decl' depends on the value of the variable itself")
)

err(
  "cannot process include",
  39901,
  "internal compiler error: cannot process '__include' in the current semantic checking context",
  span("loc", "internal compiler error: cannot process '__include' in the current semantic checking context.")
)

err(
  "generic type needs args",
  30400,
  "generic type '~type:Expr' used without argument",
  span("expr:Expr", "generic type '~type:Expr' used without argument")
)

err(
  "invalid type for constraint",
  30401,
  "type '~type:Type' cannot be used as a constraint",
  span("expr:Expr", "type '~type:Type' cannot be used as a constraint.")
)

err(
  "invalid constraint sub type",
  30402,
  "type '~type:Type' is not a valid left hand side of a type constraint",
  span("expr:Expr", "type '~type:Type' is not a valid left hand side of a type constraint.")
)

err(
  "required constraint is not checked",
  30403,
  "optional constraint providing '~decl:DeclRef' must be checked with 'is' before use",
  span("loc", "the constraint providing '~decl:DeclRef' is optional and must be checked with an 'is' statement before usage.")
)

err(
  "invalid equality constraint sup type",
  30404,
  "type '~type:Type' is not a proper type for a generic equality constraint",
  span("expr:Expr", "type '~type:Type' is not a proper type to use in a generic equality constraint.")
)

err(
  "no valid equality constraint sub type",
  30405,
  "generic equality constraint requires at least one operand to be dependant on the generic declaration",
  span("decl:Decl", "generic equality constraint requires at least one operand to be dependant on the generic declaration")
)

warning(
  "failed equality constraint canonical order",
  30407,
  "failed to resolve canonical order of generic equality constraint",
  span("decl:Decl", "failed to resolve canonical order of generic equality constraint.")
)

err(
  "too many initializers",
  30500,
  "too many initializers (expected ~expected:int, got ~actual:int)",
  span("expr:Expr", "too many initializers (expected ~expected:int, got ~actual:int)")
)

err(
  "cannot use initializer list for array of unknown size",
  30501,
  "cannot use initializer list for array of statically unknown size '~size'",
  span("loc", "cannot use initializer list for array of statically unknown size '~size'")
)

err(
  "cannot use initializer list for vector of unknown size",
  30502,
  "cannot use initializer list for vector of statically unknown size '~size:IntVal'",
  span("expr:Expr", "cannot use initializer list for vector of statically unknown size '~size:IntVal'")
)

err(
  "cannot use initializer list for matrix of unknown size",
  30503,
  "cannot use initializer list for matrix of statically unknown size '~rows:IntVal' rows",
  span("expr:Expr", "cannot use initializer list for matrix of statically unknown size '~rows:IntVal' rows")
)

err(
  "cannot use initializer list for type",
  30504,
  "cannot use initializer list for type '~type:Type'",
  span("expr:Expr", "cannot use initializer list for type '~type:Type'")
)

err(
  "cannot use initializer list for coop vector of unknown size",
  30505,
  "cannot use initializer list for CoopVector of statically unknown size '~size:IntVal'",
  span("expr:Expr", "cannot use initializer list for CoopVector of statically unknown size '~size:IntVal'")
)

warning(
  "interface default initializer",
  30506,
  "initializing an interface variable with defaults is deprecated",
  span("expr:Expr", "initializing an interface variable with defaults is deprecated and may cause unexpected behavior. Please provide a compatible initializer or leave the variable uninitialized")
)

err(
  "var without type must have initializer",
  30620,
  "a variable declaration without an initial-value expression must be given an explicit type",
  span("decl:Decl", "a variable declaration without an initial-value expression must be given an explicit type")
)

err(
  "param without type must have initializer",
  30621,
  "a parameter declaration without an initial-value expression must be given an explicit type",
  span("decl:Decl", "a parameter declaration without an initial-value expression must be given an explicit type")
)

err(
  "ambiguous default initializer for type",
  30622,
  "more than one default initializer was found for type '~type:Type'",
  span("decl:Decl", "more than one default initializer was found for type '~type:Type'")
)

err(
  "cannot have initializer",
  30623,
  "'~var:Decl' cannot have an initializer because it is ~reason:String",
  span("decl:Decl", "'~var:Decl' cannot have an initializer because it is ~reason:String")
)

err(
  "generic value parameter must have type",
  30623,
  "a generic value parameter must be given an explicit type",
  span("decl:Decl", "a generic value parameter must be given an explicit type")
)

err(
  "generic value parameter type not supported",
  30624,
  "generic value parameter type '~type:Type' is not supported",
  span("decl:Decl", "generic value parameter type '~type:Type' is not supported; only integer and enum types are allowed")
)

err(
  "output parameter cannot have default value",
  30700,
  "an 'out' or 'inout' parameter cannot have a default-value expression",
  span("expr:Expr", "an 'out' or 'inout' parameter cannot have a default-value expression")
)

err(
  "system value semantic invalid type",
  30701,
  "type '~type:Type' is not valid for system value semantic '~semantic:String'",
  span("loc", "type '~type:Type' is not valid for system value semantic '~semantic:String'; expected '~expected:String'")
)

err(
  "system value semantic invalid direction",
  30702,
  "system value semantic '~semantic:String' cannot be used as ~direction:String in '~stage:String' shader stage",
  span("loc", "system value semantic '~semantic:String' cannot be used as ~direction:String in '~stage:String' shader stage")
)

err(
  "base of interface must be interface",
  30810,
  "interface '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'",
  span("inheritanceDecl:Decl", "interface '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of struct must be interface",
  30811,
  "struct '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'",
  span("inheritanceDecl:Decl", "struct '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of enum must be integer or interface",
  30812,
  "enum '~decl:Decl' cannot inherit from type '~baseType:Type'",
  span("inheritanceDecl:Decl", "enum '~decl:Decl' cannot inherit from type '~baseType:Type' that is neither an interface not a builtin integer type")
)

err(
  "base of extension must be interface",
  30813,
  "extension cannot inherit from non-interface type '~baseType:Type'",
  span("inheritanceDecl:Decl", "extension cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of class must be class or interface",
  30814,
  "class '~decl:Decl' cannot inherit from type '~baseType:Type'",
  span("inheritanceDecl:Decl", "class '~decl:Decl' cannot inherit from type '~baseType:Type' that is neither a class nor an interface")
)

err(
  "circularity in extension",
  30815,
  "circular extension is not allowed",
  span("decl:Decl", "circular extension is not allowed.")
)

warning(
  "inheritance unstable",
  30816,
  "support for inheritance is unstable and will be removed in future language versions",
  span("inheritanceDecl:Decl", "support for inheritance is unstable and will be removed in future language versions, consider using composition instead.")
)

err(
  "base struct must be listed first",
  30820,
  "a struct type may only inherit from one other struct type, and that type must appear first",
  span("inheritanceDecl:Decl", "a struct type may only inherit from one other struct type, and that type must appear first in the list of bases")
)

err(
  "tag type must be listed first",
  30821,
  "an enum type may only have a single tag type, and that type must be listed first",
  span("inheritanceDecl:Decl", "an unum type may only have a single tag type, and that type must be listed first in the list of bases")
)

err(
  "base class must be listed first",
  30822,
  "a class type may only inherit from one other class type, and that type must appear first",
  span("inheritanceDecl:Decl", "a class type may only inherit from one other class type, and that type must appear first in the list of bases")
)

err(
  "cannot inherit from explicitly sealed declaration in another module",
  30830,
  "cannot inherit from type '~baseType:Type' marked 'sealed' in module '~module:Name'",
  span("inheritanceDecl:Decl", "cannot inherit from type '~baseType:Type' marked 'sealed' in module '~module:Name'")
)

err(
  "cannot inherit from implicitly sealed declaration in another module",
  30831,
  "cannot inherit from type '~baseType:Type' in module '~module:Name' because it is implicitly 'sealed'",
  span("inheritanceDecl:Decl", "cannot inherit from type '~baseType:Type' in module '~module:Name' because it is implicitly 'sealed'; mark the base type 'open' to allow inheritance across modules")
)

err(
  "invalid type for inheritance",
  30832,
  "type '~type:Type' cannot be used for inheritance",
  span("inheritanceDecl:Decl", "type '~type:Type' cannot be used for inheritance")
)

err(
  "invalid extension on type",
  30850,
  "type '~type:Type' cannot be extended",
  span("expr:Expr", "type '~type:Type' cannot be extended. `extension` can only be used to extend a nominal type.")
)

err(
  "invalid member type in extension",
  30851,
  "~nodeType:ASTNodeType cannot be a part of an `extension`",
  span("decl:Decl", "~nodeType:ASTNodeType cannot be a part of an `extension`")
)

err(
  "invalid extension on interface",
  30852,
  "cannot extend interface type '~type:Type'",
  span("expr:Expr", "cannot extend interface type '~type:Type'. consider using a generic extension: `extension<T:~type> T {...}`.")
)

err(
  "missing override",
  30853,
  "missing 'override' keyword for methods that override the default implementation in the interface",
  span("decl:Decl", "missing 'override' keyword for methods that overrides the default implementation in the interface.")
)

err(
  "override modifier not overriding base decl",
  30854,
  "'~decl:Decl' marked as 'override' is not overriding any base declarations",
  span("decl:Decl", "'~decl' marked as 'override' is not overriding any base declarations.")
)

err(
  "unreferenced generic param in extension",
  30855,
  "generic parameter '~param:Name' is not referenced by extension target type '~targetType:Type'",
  span("decl:Decl", "generic parameter '~param:Name' is not referenced by extension target type '~targetType:Type'.")
)

warning(
  "generic param in extension not referenced by target type",
  30856,
  "generic parameter '~param:Name' is not referenced by extension target type '~targetType:Type'",
  span("decl:Decl", "the extension is non-standard and may not work as intended because the generic parameter '~param:Name' is not referenced by extension target type '~targetType:Type'.")
)

err(
  "multi dimensional array not supported",
  30900,
  "multi-dimensional array is not supported",
  span("expr:Expr", "multi-dimensional array is not supported.")
)

err(
  "subscript must have return type",
  30901,
  "__subscript declaration must have a return type specified after '->'",
  span("loc", "__subscript declaration must have a return type specified after '->'")
)

err(
  "accessor must be inside subscript or property",
  31100,
  "an accessor declaration is only allowed inside a subscript or property declaration",
  span("decl:Decl", "an accessor declaration is only allowed inside a subscript or property declaration")
)

err(
  "non set accessor must not have params",
  31101,
  "accessors other than 'set' must not have parameters",
  span("decl:Decl", "accessors other than 'set' must not have parameters")
)

err(
  "set accessor may not have more than one param",
  31102,
  "a 'set' accessor may not have more than one parameter",
  span("decl:Decl", "a 'set' accessor may not have more than one parameter")
)

err(
  "set accessor param wrong type",
  31102,
  "'set' parameter '~param:Decl' has type '~actualType:Type' but expected '~expectedType:Type'",
  span("param:Decl", "'set' parameter '~param' has type '~actualType:Type' which does not match the expected type '~expectedType:Type'")
)

err(
  "bit field too wide",
  31300,
  "bit-field size (~width:int) exceeds the width of its type ~type:Type (~typeWidth:int)",
  span("loc", "bit-field size (~width:int) exceeds the width of its type ~type:Type (~typeWidth:int)")
)

err(
  "bit field non integral",
  31301,
  "bit-field type (~type:Type) must be an integral type",
  span("loc", "bit-field type (~type:Type) must be an integral type")
)

err(
  "expected integer constant wrong type",
  39999,
  "expected integer constant (found: '~type:Type')",
  span("loc", "expected integer constant (found: '~type:Type')")
)

err(
  "expected integer constant not constant",
  39999,
  "expression does not evaluate to a compile-time constant",
  span("expr:Expr", "expression does not evaluate to a compile-time constant")
)

err(
  "expected integer constant not literal",
  39999,
  "could not extract value from integer constant",
  span("loc", "could not extract value from integer constant")
)

err(
  "expected ray tracing payload object at location but missing",
  39999,
  "raytracing payload expected at location ~location:int but it is missing",
  span("inst:IRInst", "raytracing payload expected at location ~location:int but it is missing")
)

err(
  "no applicable overload for name with args",
  39999,
  "no overload for '~name:Name' applicable to arguments of type ~args:String",
  span("expr:Expr", "no overload for '~name:Name' applicable to arguments of type ~args:String")
)

err(
  "no applicable with args",
  39999,
  "no overload applicable to arguments of type ~args:String",
  span("expr:Expr", "no overload applicable to arguments of type ~args:String")
)

err(
  "ambiguous overload for name with args",
  39999,
  "ambiguous call to '~name:Name' with arguments of type ~args:String",
  span("expr:Expr", "ambiguous call to '~name:Name' with arguments of type ~args:String")
)

err(
  "ambiguous overload with args",
  39999,
  "ambiguous call to overloaded operation with arguments of type ~args:String",
  span("expr:Expr", "ambiguous call to overloaded operation with arguments of type ~args:String")
)

err(
  "case outside switch",
  39999,
  "'case' not allowed outside of a 'switch' statement",
  span("stmt:Stmt", "'case' not allowed outside of a 'switch' statement")
)

err(
  "default outside switch",
  39999,
  "'default' not allowed outside of a 'switch' statement",
  span("stmt:Stmt", "'default' not allowed outside of a 'switch' statement")
)

err(
  "expected a generic",
  39999,
  "expected a generic when using '<...>' (found: '~type:Type')",
  span("expr:Expr", "expected a generic when using '<...>' (found: '~type:Type')")
)

-- uses notes: genericSignatureTried
err(
  "generic argument inference failed",
  39999,
  "could not specialize generic for arguments of type ~args:String",
  span("loc", "could not specialize generic for arguments of type ~args:String")
)

err(
  "ambiguous reference",
  39999,
  "ambiguous reference to '~name:DeclRef'",
  span("loc", "ambiguous reference to '~name:DeclRef'")
)

err(
  "ambiguous expression",
  39999,
  "ambiguous reference",
  span("loc", "ambiguous reference")
)

err(
  "declaration didnt declare anything",
  39999,
  "declaration does not declare anything",
  span("loc", "declaration does not declare anything")
)

-- uses notes: seeDefinitionOf
err(
  "expected prefix operator",
  39999,
  "function called as prefix operator was not declared `__prefix`",
  span("loc", "function called as prefix operator was not declared `__prefix`")
)
