err(
  "unexpected token expected token name",
  20001,
  "unexpected ~token:TokenType, expected '~expected'",
  span("loc", "unexpected ~token:TokenType, expected '~expected'")
)

err(
  "token name expected but EOF",
  0,
  "\"~name\" expected but end of file encountered",
  span("loc", "\"~name\" expected but end of file encountered.")
)

err(
  "token type expected but EOF",
  0,
  "~tokenType:TokenType expected but end of file encountered",
  span("loc", "~tokenType:TokenType expected but end of file encountered.")
)

err(
  "token name expected",
  20001,
  "\"~name\" expected",
  span("loc", "\"~name\" expected")
)

err(
  "token name expected but EOF2",
  20001,
  "\"~name\" expected but end of file encountered",
  span("loc", "\"~name\" expected but end of file encountered.")
)

err(
  "token type expected",
  20001,
  "~tokenType expected",
  span("token:Token", "~tokenType expected")
)

err(
  "token type expected but EOF2",
  20001,
  "~tokenType expected but end of file encountered",
  span("loc", "~tokenType expected but end of file encountered.")
)

err(
  "type name expected but",
  20001,
  "unexpected ~token:TokenType, expected type name",
  span("loc", "unexpected ~token:TokenType, expected type name")
)

err(
  "type name expected but EOF",
  20001,
  "type name expected but end of file encountered",
  span("loc", "type name expected but end of file encountered.")
)

err(
  "unexpected EOF",
  20001,
  "unexpected end of file",
  span("loc", " Unexpected end of file.")
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
  "unexpected token '~token:Token', only component definitions allowed in shader scope",
  span("loc", "unexpected token '~token', only component definitions are allowed in a shader scope.")
)

err(
  "invalid empty parenthesis expr",
  20005,
  "empty parenthesis '()' is not a valid expression",
  span("token:Token", "empty parenthesis '()' is not a valid expression.")
)

err(
  "invalid operator",
  20008,
  "invalid operator '~op:Token'",
  span("loc", "invalid operator '~op'.")
)

err(
  "unexpected colon",
  20011,
  "unexpected ':'",
  span("loc", "unexpected ':'.")
)

err(
  "invalid SPIRV version",
  20012,
  "invalid SPIR-V version format",
  span("token:Token", "Expecting SPIR-V version as either 'major.minor', or quoted if has patch (eg for SPIR-V 1.2, '1.2' or \"1.2\"')")
)

err(
  "invalid CUDA SM version",
  20013,
  "invalid CUDA SM version format",
  span("token:Token", "Expecting CUDA SM version as either 'major.minor', or quoted if has patch (eg for '7.0' or \"7.0\"')")
)

err(
  "class is reserved keyword",
  20014,
  "'class' is a reserved keyword; use 'struct' instead",
  span("loc", "'class' is a reserved keyword in this context; use 'struct' instead.")
)

err(
  "unknown SPIRV capability",
  20015,
  "unknown SPIR-V capability '~name'",
  span("loc", "unknown SPIR-V capability '~name'.")
)

err(
  "missing layout binding modifier",
  20016,
  "missing 'binding' modifier in layout qualifier",
  span("attr:Modifier", "Expecting 'binding' modifier in the layout qualifier here")
)

err(
  "const not allowed on C style ptr decl",
  20017,
  "'const' not allowed on C-style pointer declarations",
  span("modifier:Modifier", "'const' not allowed on pointer typed declarations using the C style '*' operator. If the intent is to restrict the pointed-to value to read-only, use 'Ptr<T, Access.Read>'; if the intent is to make the pointer itself immutable, use 'let' or 'const Ptr<...>'.")
)

err(
  "const not allowed on type",
  20018,
  "cannot use 'const' as a type modifier",
  span("modifier:Modifier", "cannot use 'const' as a type modifier")
)

warning(
  "unintended empty statement",
  20101,
  "potentially unintended empty statement; use {} instead",
  span("loc", "potentially unintended empty statement at this location; use {} instead.")
)

err(
  "unexpected body after semicolon",
  20102,
  "unexpected function body after ';', is this a typo?",
  span("loc", "unexpected function body after signature declaration, is this ';' a typo?")
)

err(
  "decl not allowed",
  30102,
  "~declType:ASTNodeType is not allowed here",
  span("loc", "~declType is not allowed here.")
)

err(
  "snippet parsing failed",
  29000,
  "unable to parse target intrinsic snippet: ~snippet",
  span("inst:IRInst", "unable to parse target intrinsic snippet: ~snippet")
)

err(
  "unrecognized SPIRV opcode",
  29100,
  "unrecognized SPIR-V opcode: ~opcode:Token",
  span("token:Token", "unrecognized spirv opcode: ~opcode")
)

-- uses notes: considerOpCopyObject
err(
  "misplaced result id marker",
  29101,
  "result-id marker must only be in the last instruction of a spirv_asm expression",
  span("token:Token", "the result-id marker must only be used in the last instruction of a spriv_asm expression")
)

err(
  "spirv instruction without result id",
  29104,
  "cannot use 'x = ~opcode:Token...' syntax because ~opcode does not have a <result-id> operand",
  span("token:Token", "cannot use this 'x = ~opcode...' syntax because ~opcode does not have a <result-id> operand")
)

err(
  "spirv instruction without result type id",
  29105,
  "cannot use 'x : <type> = ~opcode:Token...' syntax because ~opcode does not have a <result-type-id> operand",
  span("token:Token", "cannot use this 'x : <type> = ~opcode...' syntax because ~opcode does not have a <result-type-id> operand")
)

warning(
  "spirv instruction with too many operands",
  29106,
  "too many operands for ~opcode:Token (expected max ~maxCount:int), did you forget a semicolon?",
  span("token:Token", "too many operands for ~opcode (expected max ~maxCount), did you forget a semicolon?")
)

err(
  "spirv unable to resolve name",
  29107,
  "unknown SPIR-V identifier '~name', not a known enumerator or opcode",
  span("token:Token", "unknown SPIR-V identifier ~name, it's not a known enumerator or opcode")
)

err(
  "spirv non constant bitwise or",
  29108,
  "only integer literals and enum names can appear in a bitwise or expression",
  span("token:Token", "only integer literals and enum names can appear in a bitwise or expression")
)

err(
  "spirv operand range",
  29109,
  "literal ints must be in the range 0 to 0xffffffff",
  span("token:Token", "Literal ints must be in the range 0 to 0xffffffff")
)

err(
  "unknown target name",
  29110,
  "unknown target name '~name'",
  span("loc", "unknown target name '~name'")
)

err(
  "spirv invalid truncate",
  29111,
  "__truncate source is smaller than its target",
  span("inst:IRInst", "__truncate has been given a source smaller than its target")
)

err(
  "spirv instruction with not enough operands",
  29112,
  "not enough operands for ~opcode:Token",
  span("token:Token", "not enough operands for ~opcode")
)

err(
  "spirv id redefinition",
  29113,
  "SPIRV id '%~id:Token' is already defined in the current assembly block",
  span("token:Token", "SPIRV id '%~id' is already defined in the current assembly block")
)

err(
  "spirv undefined id",
  29114,
  "SPIRV id '%~id:Token' is not defined in the current assembly block",
  span("token:Token", "SPIRV id '%~id' is not defined in the current assembly block location")
)

err(
  "target switch case cannot be a stage",
  29115,
  "cannot use a stage name in '__target_switch', use '__stage_switch' instead",
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
  "'break' must appear inside loop or switch constructs",
  span("stmt:Stmt", "'break' must appear inside loop or switch constructs.")
)

err(
  "continue outside loop",
  30004,
  "'continue' must appear inside loop constructs",
  span("stmt:Stmt", "'continue' must appear inside loop constructs.")
)

err(
  "while predicate type error",
  30005,
  "'while' expression must evaluate to int",
  span("loc", "'while': expression must evaluate to int.")
)

err(
  "if predicate type error",
  30006,
  "'if' expression must evaluate to int",
  span("loc", "'if': expression must evaluate to int.")
)

err(
  "return needs expression",
  30006,
  "'return' should have an expression",
  span("stmt:Stmt", "'return' should have an expression.")
)

err(
  "component return type mismatch",
  30007,
  "expression type '~exprType:Type' does not match component's type '~componentType:Type'",
  span("loc", "expression type '~exprType' does not match component's type '~componentType'")
)

err(
  "function return type mismatch",
  30007,
  "type '~exprType:Type' does not match return type '~returnType:Type'",
  span("loc", "expression type '~exprType' does not match function's return type '~returnType'")
)

err(
  "variable name already defined",
  30008,
  "variable ~name already defined",
  span("loc", "variable ~name already defined.")
)

err(
  "invalid type void",
  30009,
  "invalid type 'void'",
  span("expr:Expr", "invalid type 'void'.")
)

err(
  "while predicate type error2",
  30010,
  "'while' expression must evaluate to int",
  span("loc", "'while': expression must evaluate to int.")
)

err(
  "assign non l value",
  30011,
  "left of '=' is not an l-value",
  span("expr:Expr", "left of '=' is not an l-value.")
)

err(
  "no application unary operator",
  30012,
  "no overload found for operator ~op (~type:Type)",
  span("loc", "no overload found for operator ~op (~type).")
)

err(
  "no overload found for bin operator on types",
  30012,
  "no overload found for operator ~op (~left:Type, ~right:Type)",
  span("loc", "no overload found for operator ~op  (~left, ~right).")
)

err(
  "subscript non array",
  30013,
  "no subscript operation for type '~type:Type'",
  span("expr:Expr", "no subscript operation found for type '~type'")
)

err(
  "subscript index non integer",
  30014,
  "index expression must evaluate to int",
  span("loc", "index expression must evaluate to int.")
)

err(
  "call operator not found",
  30016,
  "no call operation for type '~type:Type'",
  span("expr:Expr", "no call operation found for type '~type'")
)

err(
  "undefined identifier2",
  30015,
  "undefined identifier '~name:Name'",
  span("expr:Expr", "undefined identifier '~name'.")
)

-- uses notes: noteExplicitConversionPossible
err(
  "type mismatch",
  30019,
  "expected type '~toType:Type', got '~fromType:Type'",
  span("expr:Expr", "expected an expression of type '~toType', got '~fromType'")
)

err(
  "no application function",
  30021,
  "~callee: no overload takes arguments (~argTypes)",
  span("loc", "~callee: no overload takes arguments (~argTypes)")
)

err(
  "invalid type cast",
  30022,
  "invalid type cast between '~fromType:Type' and '~toType:Type'",
  span("loc", "invalid type cast between \"~fromType\" and \"~toType\".")
)

err(
  "type has no public member of name",
  30023,
  "'~type:Type' does not have public member '~name:Name'",
  span("loc", "\"~type\" does not have public member \"~name\".")
)

err(
  "cannot convert array of smaller to larger size",
  30024,
  "cannot convert array of size ~fromSize:int to array of size ~toSize:int",
  span("inst:IRInst", "Cannot convert array of size ~fromSize to array of size ~toSize as this would truncate data")
)

err(
  "invalid array size",
  30025,
  "array size must be non-negative",
  span("expr:Expr", "array size must be non-negative.")
)

err(
  "disallowed array of non addressable type",
  30027,
  "arrays of non-addressable type '~type:Type' are not allowed",
  span("decl:Decl", "Arrays of non-addressable type '~type' are not allowed")
)

err(
  "non addressable type in structured buffer",
  30028,
  "'~type:Type' is non-addressable and cannot be used in StructuredBuffer",
  span("loc", "'~type' is non-addressable and cannot be used in StructuredBuffer")
)

err(
  "array index out of bounds",
  30029,
  "array index '~index:int' is out of bounds for array of size '~size:int'",
  span("inst:IRInst", "array index '~index' is out of bounds for array of size '~size'.")
)

err(
  "return in component must come last",
  30026,
  "'return' can only appear as the last statement in component definition",
  span("loc", "'return' can only appear as the last statement in component definition.")
)

err(
  "no member of name in type",
  30027,
  "'~name:Name' is not a member of '~type:Type'",
  span("expr:Expr", "'~name' is not a member of '~type'.")
)

err(
  "for predicate type error",
  30028,
  "'for' predicate expression must evaluate to bool",
  span("loc", "'for': predicate expression must evaluate to bool.")
)

err(
  "projection outside import operator",
  30030,
  "'project' invalid use outside import operator",
  span("loc", "'project': invalid use outside import operator.")
)

err(
  "project type mismatch",
  30031,
  "'project' expression must evaluate to record type '~type:Type'",
  span("loc", "'project': expression must evaluate to record type '~type'.")
)

err(
  "invalid type for local variable",
  30033,
  "cannot declare a local variable of this type",
  span("loc", "cannot declare a local variable of this type.")
)

err(
  "component overload type mismatch",
  30035,
  "'~name' type of overloaded component mismatches previous definition",
  span("loc", "'~name': type of overloaded component mismatches previous definition.")
)

err(
  "bit operation non integral",
  30041,
  "bit operation operand must be integral type",
  span("loc", "bit operation: operand must be integral type.")
)

err(
  "get string hash requires string literal",
  30043,
  "getStringHash parameter can only accept a string literal",
  span("loc", "getStringHash parameter can only accept a string literal")
)

err(
  "argument expected l value",
  30047,
  "argument passed to parameter ~paramIndex:int must be l-value",
  span("expr:Expr", "argument passed to parameter '~paramIndex' must be l-value.")
)

err(
  "argument has more memory qualifiers than param",
  30048,
  "argument has memory qualifier '~qualifier' that the parameter type is missing",
  span("arg:Expr", "argument passed in to parameter has a memory qualifier the parameter type is missing: '~qualifier'")
)

err(
  "mutating method on immutable value",
  30050,
  "mutating method '~method:Name' cannot be called on an immutable value",
  span("loc", "mutating method '~method' cannot be called on an immutable value")
)

err(
  "invalid value for argument",
  30051,
  "invalid value for argument '~name'",
  span("loc", "invalid value for argument '~name'")
)

err(
  "invalid swizzle expr",
  30052,
  "invalid swizzle pattern '~pattern' on type '~type:Type'",
  span("expr:Expr", "invalid swizzle pattern '~pattern' on type '~type'")
)

err(
  "break label not found",
  30053,
  "label '~label:Name' used as break target is not found",
  span("stmt:Stmt", "label '~label' used as break target is not found.")
)

err(
  "target label does not mark breakable stmt",
  30054,
  "statement labeled '~label:Name' is not breakable",
  span("stmt:Stmt", "invalid break target: statement labeled '~label' is not breakable.")
)

err(
  "use of non short circuiting operator in diff func",
  30055,
  "non-short-circuiting `?:` operator is not allowed in a differentiable function",
  span("loc", "non-short-circuiting `?:` operator is not allowed in a differentiable function, use `select` instead.")
)

warning(
  "use of non short circuiting operator",
  30056,
  "non-short-circuiting `?:` operator is deprecated, use 'select' instead",
  span("loc", "non-short-circuiting `?:` operator is deprecated, use 'select' instead.")
)

err(
  "assignment in predicate expr",
  30057,
  "assignment operation used as predicate expression is not allowed",
  span("expr:Expr", "use an assignment operation as predicate expression is not allowed, wrap the assignment with '()' to clarify the intent.")
)

warning(
  "dangling equality expr",
  30058,
  "result of '==' not used, did you intend '='?",
  span("expr:Expr", "result of '==' not used, did you intend '='?")
)

err(
  "expected a type",
  30060,
  "expected a type, got a '~got:Type'",
  span("expr:Expr", "expected a type, got a '~got'")
)

err(
  "expected a namespace",
  30061,
  "expected a namespace, got a '~got:Type'",
  span("expr:Expr", "expected a namespace, got a '~got'")
)

err(
  "new can only be used to initialize a class",
  30065,
  "`new` can only be used to initialize a class",
  span("expr:Expr", "`new` can only be used to initialize a class")
)

err(
  "class can only be initialized with new",
  30066,
  "a class can only be initialized by a `new` clause",
  span("expr:Expr", "a class can only be initialized by a `new` clause")
)

err(
  "mutating method on function input parameter error",
  30067,
  "mutating method '~method:Name' called on `in` parameter '~param:Name'",
  span("loc", "mutating method '~method' called on `in` parameter '~param'; changes will not be visible to caller. copy the parameter into a local variable if this behavior is intended")
)

warning(
  "mutating method on function input parameter warning",
  30068,
  "mutating method '~method:Name' called on `in` parameter '~param:Name'",
  span("loc", "mutating method '~method' called on `in` parameter '~param'; changes will not be visible to caller. copy the parameter into a local variable if this behavior is intended")
)

err(
  "unsized member must appear last",
  30070,
  "member with unknown size at compile time can only appear as the last member",
  span("decl:Decl", "member with unknown size at compile time can only appear as the last member in a composite type.")
)

err(
  "var cannot be unsized",
  30071,
  "cannot instantiate a variable of unsized type",
  span("decl:Decl", "cannot instantiate a variable of unsized type.")
)

err(
  "param cannot be unsized",
  30072,
  "function parameter cannot be unsized",
  span("decl:Decl", "function parameter cannot be unsized.")
)

err(
  "cannot specialize generic",
  30075,
  "cannot specialize generic '~generic:Decl' with the provided arguments",
  span("loc", "cannot specialize generic '~generic' with the provided arguments.")
)

-- uses notes: doYouMeanStaticConst, doYouMeanUniform
err(
  "global var cannot have opaque type",
  30076,
  "global variable cannot have opaque type",
  span("decl:Decl", "global variable cannot have opaque type.")
)

err(
  "concrete argument to output interface",
  30077,
  "argument of concrete type '~argType:Type' passed to interface-typed output parameter '~param'",
  span("loc", "argument passed to parameter '~param' is of concrete type '~argType', but interface-typed output parameters require interface-typed arguments. To allow passing a concrete type to this function, you can replace '~paramType:Type ~param' with a generic 'T ~param' and a 'where T : ~paramType' constraint.")
)

err(
  "coherent keyword on a pointer",
  30078,
  "cannot have `globallycoherent T*` or `coherent T*`",
  span("decl:Decl", "cannot have a `globallycoherent T*` or a `coherent T*`, use explicit methods for coherent operations instead")
)

err(
  "cannot take constant pointers",
  30079,
  "cannot take the address of an immutable object",
  span("expr:Expr", "Not allowed to take the address of an immutable object")
)

err(
  "cannot specialize generic with existential",
  33180,
  "specializing '~generic:IRInst' with an existential type is not allowed",
  span("loc", "specializing '~generic' with an existential type is not allowed. All generic arguments must be statically resolvable at compile time.")
)

err(
  "static ref to non static member",
  30100,
  "type '~type:Type' cannot be used to refer to non-static member '~member:Name'",
  span("loc", "type '~type' cannot be used to refer to non-static member '~member'")
)

err(
  "cannot dereference type",
  30101,
  "cannot dereference type '~type:Type', do you mean to use '.'?",
  span("loc", "cannot dereference type '~type', do you mean to use '.'?")
)

err(
  "static ref to this",
  30102,
  "static function cannot refer to non-static member '~member:Name' via `this`",
  span("loc", "static function cannot refer to non-static member `~member` via `this`")
)

-- uses notes: seePreviousDeclarationOf
err(
  "redeclaration",
  30200,
  "declaration of '~name:Name' conflicts with existing declaration",
  span("decl:Decl", "declaration of '~name' conflicts with existing declaration")
)

err(
  "function redefinition",
  30201,
  "function '~name:Name' already has a body",
  span("decl:Decl", "function '~name' already has a body")
)

-- uses notes: seePreviousDeclarationOf
err(
  "function redeclaration with different return type",
  30202,
  "function '~name:Name' declared to return '~returnType:Type' but previously returned '~prevReturnType:Type'",
  span("decl:Decl", "function '~name' declared to return '~returnType' was previously declared to return '~prevReturnType'")
)

err(
  "is operator value must be interface type",
  30300,
  "'is'/'as' operator requires an interface-typed expression",
  span("expr:Expr", "'is'/'as' operator requires an interface-typed expression.")
)

err(
  "is operator cannot use interface as RHS",
  30301,
  "cannot use 'is' operator with an interface type as right-hand side without a corresponding optional constraint",
  span("expr:Expr", "cannot use 'is' operator with an interface type as the right-hand side without a corresponding optional constraint. Use a concrete type instead, or add an optional constraint for the interface type.")
)

err(
  "as operator cannot use interface as RHS",
  30302,
  "cannot use 'as' operator with an interface type as right-hand side",
  span("expr:Expr", "cannot use 'as' operator with an interface type as the right-hand side. Use a concrete type instead. If you want to use an optional constraint, use an 'if (T is IInterface)' block instead.")
)

err(
  "expected function",
  33070,
  "expected a function, got '~type:Type'",
  span("expr:Expr", "expected a function, got '~type'")
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
  "dyn interfaces cannot be generic: '~decl:Decl'",
  span("decl:Decl", "dyn interfaces cannot be generic: '~decl'.")
)

err(
  "cannot have associated type in dyn interface",
  33073,
  "dyn interfaces cannot have associatedType members",
  span("decl:Decl", "dyn interfaces cannot have associatedType members.")
)

err(
  "cannot have generic method in dyn interface",
  33074,
  "dyn interfaces cannot have generic methods",
  span("decl:Decl", "dyn interfaces cannot have generic methods.")
)

err(
  "cannot have mutating method in dyn interface",
  33075,
  "dyn interfaces cannot have [mutating] methods",
  span("decl:Decl", "dyn interfaces cannot have [mutating] methods.")
)

err(
  "cannot have differentiable method in dyn interface",
  33076,
  "dyn interfaces cannot have [Differentiable] methods",
  span("decl:Decl", "dyn interfaces cannot have [Differentiable] methods.")
)
