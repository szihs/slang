err(
  "unexpected token expected token name",
  20001,
  "unexpected token",
  span("loc", "unexpected ~tokenType:Token, expected '~expected'")
)

err(
  "token name expected but EOF",
  0,
  "expected token but found end of file",
  span("loc", "\"~arg0\" expected but end of file encountered.")
)

err(
  "token type expected but EOF",
  0,
  "expected token but found end of file",
  span("loc", "~arg0 expected but end of file encountered.")
)

err(
  "token name expected",
  20001,
  "expected token",
  span("loc", "\"~arg0\" expected")
)

err(
  "token name expected but EOF2",
  20001,
  "expected token but found end of file",
  span("loc", "\"~arg0\" expected but end of file encountered.")
)

err(
  "token type expected",
  20001,
  "expected token",
  span("token:Token", "~expected expected")
)

err(
  "token type expected but EOF2",
  20001,
  "expected token but found end of file",
  span("loc", "~arg0 expected but end of file encountered.")
)

err(
  "type name expected but",
  20001,
  "expected type name",
  span("loc", "unexpected ~arg0, expected type name")
)

err(
  "type name expected but EOF",
  20001,
  "expected type name but found end of file",
  span("loc", "type name expected but end of file encountered.")
)

err(
  "unexpected EOF",
  20001,
  "unexpected end of file",
  span("loc", "Unexpected end of file.")
)

err(
  "syntax error",
  20002,
  "syntax error",
  span("loc", "syntax error.")
)

err(
  "unexpected token expected component definition",
  20004,
  "unexpected token in shader scope",
  span("loc", "unexpected token '~arg0', only component definitions are allowed in a shader scope.")
)

err(
  "invalid empty parenthesis expr",
  20005,
  "invalid empty parenthesis expression",
  span("token:Token", "empty parenthesis '()' is not a valid expression.")
)

err(
  "invalid operator",
  20008,
  "invalid operator",
  span("loc", "invalid operator '~token:Token'.")
)

err(
  "unexpected colon",
  20011,
  "unexpected colon",
  span("loc", "unexpected ':'.")
)

err(
  "invalid SPIRV version",
  20012,
  "invalid SPIR-V version",
  span("token:Token", "Expecting SPIR-V version as either 'major.minor', or quoted if has patch (eg for SPIR-V 1.2, '1.2' or \"1.2\"')")
)

err(
  "invalid CUDASM version",
  20013,
  "invalid CUDA SM version",
  span("token:Token", "Expecting CUDA SM version as either 'major.minor', or quoted if has patch (eg for '7.0' or \"7.0\"')")
)

err(
  "class is reserved keyword",
  20014,
  "class keyword is reserved",
  span("loc", "'class' is a reserved keyword in this context; use 'struct' instead.")
)

err(
  "unknown SPIRV capability",
  20015,
  "unknown SPIR-V capability",
  span("loc", "unknown SPIR-V capability '~arg0'.")
)

err(
  "missing layout binding modifier",
  20016,
  "missing layout binding modifier",
  span("attr", "Expecting 'binding' modifier in the layout qualifier here")
)

err(
  "const not allowed on C style ptr decl",
  20017,
  "const not allowed on pointer declaration",
  span("modifier", "'const' not allowed on pointer typed declarations using the C style '*' operator. If the intent is to restrict the pointed-to value to read-only, use 'Ptr<T, Access.Read>'; if the intent is to make the pointer itself immutable, use 'let' or 'const Ptr<...>'.")
)

err(
  "const not allowed on type",
  20018,
  "const not allowed as type modifier",
  span("modifier", "cannot use 'const' as a type modifier")
)

warning(
  "unintended empty statement",
  20101,
  "potentially unintended empty statement",
  span("loc", "potentially unintended empty statement at this location; use {} instead.")
)

err(
  "unexpected body after semicolon",
  20102,
  "unexpected function body after semicolon",
  span("loc", "unexpected function body after signature declaration, is this ';' a typo?")
)

err(
  "decl not allowed",
  30102,
  "declaration not allowed",
  span("loc", "~declType is not allowed here.")
)

err(
  "snippet parsing failed",
  29000,
  "failed to parse intrinsic snippet",
  span("inst", "unable to parse target intrinsic snippet: ~definition")
)

err(
  "unrecognized SPIRV opcode",
  29100,
  "unrecognized SPIR-V opcode",
  span("token:Token", "unrecognized spirv opcode: ~opcode:Token")
)

-- uses notes: considerOpCopyObject
err(
  "misplaced result id marker",
  29101,
  "misplaced result-id marker",
  span("token:Token", "the result-id marker must only be used in the last instruction of a spriv_asm expression")
)

err(
  "spirv instruction without result id",
  29104,
  "instruction has no result-id",
  span("token:Token", "cannot use this 'x = ~opcode:Token...' syntax because ~opcode does not have a <result-id> operand")
)

err(
  "spirv instruction without result type id",
  29105,
  "instruction has no result-type-id",
  span("token:Token", "cannot use this 'x : <type> = ~opcode:Token...' syntax because ~opcode does not have a <result-type-id> operand")
)

warning(
  "spirv instruction with too many operands",
  29106,
  "too many operands for SPIR-V instruction",
  span("loc", "too many operands for ~opcode:Token (expected max ~maxCount:int), did you forget a semicolon?")
)

err(
  "spirv unable to resolve name",
  29107,
  "unknown SPIR-V identifier",
  span("token:Token", "unknown SPIR-V identifier ~name, it's not a known enumerator or opcode")
)

err(
  "spirv non constant bitwise or",
  29108,
  "non-constant bitwise or in SPIR-V",
  span("token:Token", "only integer literals and enum names can appear in a bitwise or expression")
)

err(
  "spirv operand range",
  29109,
  "SPIR-V operand out of range",
  span("token:Token", "Literal ints must be in the range 0 to 0xffffffff")
)

err(
  "unknown target name",
  29110,
  "unknown target name",
  span("loc", "unknown target name '~name'")
)

err(
  "spirv invalid truncate",
  29111,
  "invalid truncate operation",
  span("inst", "__truncate has been given a source smaller than its target")
)

err(
  "spirv instruction with not enough operands",
  29112,
  "not enough operands for SPIR-V instruction",
  span("token:Token", "not enough operands for ~opcode:Token")
)

err(
  "spirv id redefinition",
  29113,
  "SPIR-V id redefinition",
  span("token:Token", "SPIRV id '%~id:Token' is already defined in the current assembly block")
)

err(
  "spirv undefined id",
  29114,
  "undefined SPIR-V id",
  span("token:Token", "SPIRV id '%~id:Token' is not defined in the current assembly block location")
)

err(
  "target switch case cannot be a stage",
  29115,
  "stage name in target switch",
  span("loc", "cannot use a stage name in '__target_switch', use '__stage_switch' for stage-specific code.")
)

err(
  "divide by zero",
  30002,
  "divide by zero",
  span("loc", "divide by zero")
)

err(
  "break outside loop",
  30003,
  "break outside loop or switch",
  span("stmt", "'break' must appear inside loop or switch constructs.")
)

err(
  "continue outside loop",
  30004,
  "continue outside loop",
  span("stmt", "'continue' must appear inside loop constructs.")
)

err(
  "while predicate type error",
  30005,
  "invalid while predicate type",
  span("loc", "'while': expression must evaluate to int.")
)

err(
  "if predicate type error",
  30006,
  "invalid if predicate type",
  span("loc", "'if': expression must evaluate to int.")
)

err(
  "return needs expression",
  30006,
  "return statement missing expression",
  span("stmt", "'return' should have an expression.")
)

err(
  "component return type mismatch",
  30007,
  "component return type mismatch",
  span("loc", "expression type '~exprType:Type' does not match component's type '~componentType:Type'")
)

err(
  "function return type mismatch",
  30007,
  "function return type mismatch",
  span("loc", "expression type '~exprType:Type' does not match function's return type '~returnType:Type'")
)

err(
  "variable name already defined",
  30008,
  "variable already defined",
  span("loc", "variable ~name already defined.")
)

err(
  "invalid type void",
  30009,
  "invalid void type",
  span("expr:Expr", "invalid type 'void'.")
)

err(
  "while predicate type error2",
  30010,
  "invalid while predicate type",
  span("loc", "'while': expression must evaluate to int.")
)

err(
  "assign non l value",
  30011,
  "assignment to non l-value",
  span("expr:Expr", "left of '=' is not an l-value.")
)

err(
  "no application unary operator",
  30012,
  "no overload for unary operator",
  span("loc", "no overload found for operator ~op (~type:Type).")
)

err(
  "no overload found for bin operator on types",
  30012,
  "no overload for binary operator",
  span("loc", "no overload found for operator ~op  (~left:Type, ~right:Type).")
)

err(
  "subscript non array",
  30013,
  "invalid subscript expression",
  span("expr:Expr", "no subscript operation found for type '~type:Type'")
)

err(
  "subscript index non integer",
  30014,
  "non-integer subscript index",
  span("loc", "index expression must evaluate to int.")
)

err(
  "call operator not found",
  30016,
  "no call operator found",
  span("expr:Expr", "no call operation found for type '~type:Type'")
)

err(
  "undefined identifier2",
  30015,
  "undefined identifier",
  span("loc", "undefined identifier '~name'.")
)

-- uses notes: noteExplicitConversionPossible
err(
  "type mismatch",
  30019,
  "type mismatch",
  span("expr:Expr", "expected an expression of type '~expected:Type', got '~actual:Type'")
)

err(
  "no application function",
  30021,
  "no matching overload found",
  span("loc", "~name: no overload takes arguments (~args)")
)

err(
  "invalid type cast",
  30022,
  "invalid type cast",
  span("loc", "invalid type cast between \"~from:Type\" and \"~to:Type\".")
)

err(
  "type has no public member of name",
  30023,
  "no public member found",
  span("loc", "\"~type:Type\" does not have public member \"~member\".")
)

err(
  "cannot convert array of smaller to larger size",
  30024,
  "array size conversion would truncate",
  span("layout", "Cannot convert array of size ~fromSize:int to array of size ~toSize:int as this would truncate data")
)

err(
  "invalid array size",
  30025,
  "invalid array size",
  span("loc", "array size must be non-negative.")
)

err(
  "disallowed array of non addressable type",
  30027,
  "array of non-addressable type",
  span("decl:Decl", "Arrays of non-addressable type '~type:Type' are not allowed")
)

err(
  "non addressable type in structured buffer",
  30028,
  "non-addressable type in StructuredBuffer",
  span("loc", "'~type:Type' is non-addressable and cannot be used in StructuredBuffer")
)

err(
  "array index out of bounds",
  30029,
  "array index out of bounds",
  span("inst", "array index '~index:int' is out of bounds for array of size '~size:int'.")
)

err(
  "return in component must come last",
  30026,
  "return must be last in component",
  span("loc", "'return' can only appear as the last statement in component definition.")
)

err(
  "no member of name in type",
  30027,
  "member not found",
  span("expr:Expr", "'~name' is not a member of '~type:Type'.")
)

err(
  "for predicate type error",
  30028,
  "invalid for-loop predicate type",
  span("loc", "'for': predicate expression must evaluate to bool.")
)

err(
  "projection outside import operator",
  30030,
  "projection used outside import",
  span("loc", "'project': invalid use outside import operator.")
)

err(
  "project type mismatch",
  30031,
  "project type mismatch",
  span("loc", "'project': expression must evaluate to record type '~type:Type'.")
)

err(
  "invalid type for local variable",
  30033,
  "invalid type for local variable",
  span("loc", "cannot declare a local variable of this type.")
)

err(
  "component overload type mismatch",
  30035,
  "component overload type mismatch",
  span("loc", "'~name': type of overloaded component mismatches previous definition.")
)

err(
  "bit operation non integral",
  30041,
  "bit operation on non-integral type",
  span("loc", "bit operation: operand must be integral type.")
)

err(
  "get string hash requires string literal",
  30043,
  "getStringHash requires string literal",
  span("loc", "getStringHash parameter can only accept a string literal")
)

err(
  "argument expected l value",
  30047,
  "argument must be l-value",
  span("expr:Expr", "argument passed to parameter '~param:Decl' must be l-value.")
)

err(
  "argument has more memory qualifiers than param",
  30048,
  "argument has extra memory qualifier",
  span("expr:Expr", "argument passed in to parameter has a memory qualifier the parameter type is missing: '~qualifier'")
)

err(
  "mutating method on immutable value",
  30050,
  "mutating method on immutable value",
  span("loc", "mutating method '~method' cannot be called on an immutable value")
)

err(
  "invalid value for argument",
  30051,
  "invalid argument value",
  span("loc", "invalid value for argument '~arg0'")
)

err(
  "invalid swizzle expr",
  30052,
  "invalid swizzle expression",
  span("expr:Expr", "invalid swizzle pattern '~swizzle' on type '~type:Type'")
)

err(
  "break label not found",
  30053,
  "break label not found",
  span("stmt", "label '~label' used as break target is not found.")
)

err(
  "target label does not mark breakable stmt",
  30054,
  "label does not mark breakable statement",
  span("stmt", "invalid break target: statement labeled '~label' is not breakable.")
)

err(
  "use of non short circuiting operator in diff func",
  30055,
  "non-short-circuiting operator in differentiable function",
  span("loc", "non-short-circuiting `?:` operator is not allowed in a differentiable function, use `select` instead.")
)

warning(
  "use of non short circuiting operator",
  30056,
  "deprecated non-short-circuiting operator",
  span("loc", "non-short-circuiting `?:` operator is deprecated, use 'select' instead.")
)

err(
  "assignment in predicate expr",
  30057,
  "assignment in predicate expression",
  span("expr:Expr", "use an assignment operation as predicate expression is not allowed, wrap the assignment with '()' to clarify the intent.")
)

warning(
  "dangling equality expr",
  30058,
  "unused equality comparison result",
  span("expr:Expr", "result of '==' not used, did you intend '='?")
)

err(
  "expected a type",
  30060,
  "expected a type",
  span("expr:Expr", "expected a type, got a '~actual'")
)

err(
  "expected a namespace",
  30061,
  "expected a namespace",
  span("expr:Expr", "expected a namespace, got a '~actual:Type'")
)

err(
  "new can only be used to initialize a class",
  30065,
  "new requires class type",
  span("expr:Expr", "`new` can only be used to initialize a class")
)

err(
  "class can only be initialized with new",
  30066,
  "class initialization requires new",
  span("expr:Expr", "a class can only be initialized by a `new` clause")
)

-- uses notes: mutatingMethodOnFunctionInputParameterWarning
err(
  "mutating method on function input parameter error",
  30067,
  "mutating method on input parameter",
  span("loc", "mutating method '~method' called on `in` parameter '~param'; changes will not be visible to caller. copy the parameter into a local variable if this behavior is intended")
)

warning(
  "mutating method on function input parameter warning",
  30068,
  "mutating method on input parameter",
  span("loc", "mutating method '~method' called on `in` parameter '~param'; changes will not be visible to caller. copy the parameter into a local variable if this behavior is intended")
)

err(
  "unsized member must appear last",
  30070,
  "unsized member must be last",
  span("decl:Decl", "member with unknown size at compile time can only appear as the last member in a composite type.")
)

err(
  "var cannot be unsized",
  30071,
  "cannot instantiate unsized type",
  span("decl:Decl", "cannot instantiate a variable of unsized type.")
)

err(
  "param cannot be unsized",
  30072,
  "parameter cannot be unsized",
  span("decl:Decl", "function parameter cannot be unsized.")
)

err(
  "cannot specialize generic",
  30075,
  "cannot specialize generic",
  span("loc", "cannot specialize generic '~generic:Decl' with the provided arguments.")
)

-- uses notes: doYouMeanStaticConst
err(
  "global var cannot have opaque type",
  30076,
  "global variable with opaque type",
  span("decl:Decl", "global variable cannot have opaque type.")
)

err(
  "concrete argument to output interface",
  30077,
  "concrete type for interface output parameter",
  span("loc", "argument passed to parameter '~name' is of concrete type '~argType:Type', but interface-typed output parameters require interface-typed arguments. To allow passing a concrete type to this function, you can replace '~paramType:Type ~name' with a generic 'T ~name' and a 'where T : ~paramType' constraint.")
)

err(
  "coherent keyword on a pointer",
  30078,
  "coherent not allowed on pointer",
  span("decl:Decl", "cannot have a `globallycoherent T*` or a `coherent T*`, use explicit methods for coherent operations instead")
)

err(
  "cannot take constant pointers",
  30079,
  "cannot take address of immutable object",
  span("expr:Expr", "Not allowed to take the address of an immutable object")
)

err(
  "cannot specialize generic with existential",
  33180,
  "cannot specialize generic with existential type",
  span("loc", "specializing '~generic' with an existential type is not allowed. All generic arguments must be statically resolvable at compile time.")
)

err(
  "static ref to non static member",
  30100,
  "static reference to non-static member",
  span("loc", "type '~type:Type' cannot be used to refer to non-static member '~member'")
)

err(
  "cannot dereference type",
  30101,
  "cannot dereference type",
  span("loc", "cannot dereference type '~type:Type', do you mean to use '.'?")
)

err(
  "static ref to this",
  30102,
  "static function references non-static member via this",
  span("loc", "static function cannot refer to non-static member `~member` via `this`")
)

-- uses notes: seePreviousDeclarationOf
err(
  "redeclaration",
  30200,
  "conflicting declaration",
  span("decl:Decl", "declaration of '~name' conflicts with existing declaration")
)

err(
  "function redefinition",
  30201,
  "function already has a body",
  span("decl:Decl", "function '~name' already has a body")
)

err(
  "function redeclaration with different return type",
  30202,
  "function redeclared with different return type",
  span("decl:Decl", "function '~name' declared to return '~returnType:Type' was previously declared to return '~prevReturnType:Type'")
)

err(
  "is operator value must be interface type",
  30300,
  "is/as operator requires interface type",
  span("expr:Expr", "'is'/'as' operator requires an interface-typed expression.")
)

err(
  "is operator cannot use interface as RHS",
  30301,
  "cannot use interface as is-operator RHS",
  span("expr:Expr", "cannot use 'is' operator with an interface type as the right-hand side without a corresponding optional constraint. Use a concrete type instead, or add an optional constraint for the interface type.")
)

err(
  "as operator cannot use interface as RHS",
  30302,
  "cannot use interface as as-operator RHS",
  span("expr:Expr", "cannot use 'as' operator with an interface type as the right-hand side. Use a concrete type instead. If you want to use an optional constraint, use an 'if (T is IInterface)' block instead.")
)

err(
  "expected function",
  33070,
  "expected a function",
  span("expr:Expr", "expected a function, got '~type:Type'")
)

err(
  "expected a string literal",
  33071,
  "expected a string literal",
  span("expr:Expr", "expected a string literal")
)

err(
  "cannot have generic dyn interface",
  33072,
  "dyn interface cannot be generic",
  span("decl:Decl", "dyn interfaces cannot be generic: '~decl:Decl'.")
)

err(
  "cannot have associated type in dyn interface",
  33073,
  "dyn interface cannot have associated types",
  span("decl:Decl", "dyn interfaces cannot have associatedType members.")
)

err(
  "cannot have generic method in dyn interface",
  33074,
  "dyn interface cannot have generic methods",
  span("decl:Decl", "dyn interfaces cannot have generic methods.")
)

err(
  "cannot have mutating method in dyn interface",
  33075,
  "dyn interface cannot have mutating methods",
  span("decl:Decl", "dyn interfaces cannot have [mutating] methods.")
)

err(
  "cannot have differentiable method in dyn interface",
  33076,
  "dyn interface cannot have differentiable methods",
  span("decl:Decl", "dyn interfaces cannot have [Differentiable] methods.")
)
