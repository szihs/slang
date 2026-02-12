-- Chunk 0: Command-line, file I/O, and preprocessor diagnostics (119 total)

err(
  "cannot open file",
  1,
  "cannot open file '~path'",
  span("loc", "cannot open file '~path'.")
)

err(
  "cannot find file",
  2,
  "cannot find file '~path'",
  span("loc", "cannot find file '~path'.")
)

err(
  "unsupported compiler mode",
  2,
  "unsupported compiler mode",
  span("loc", "unsupported compiler mode.")
)

err(
  "cannot write output file",
  4,
  "cannot write output file '~path'",
  span("loc", "cannot write output file '~path'.")
)

err(
  "failed to load dynamic library",
  5,
  "failed to load dynamic library '~path'",
  span("loc", "failed to load dynamic library '~path'")
)

err(
  "too many output paths specified",
  6,
  "~outputCount:int output paths for ~entryPointCount:int entry points",
  span("loc", "~outputCount output paths specified, but only ~entryPointCount entry points given")
)

err(
  "no output path specified for entry point",
  7,
  "no output path for entry point '~name'",
  span("loc", "no output path specified for entry point '~name' (the '-o' option for an entry point must precede the corresponding '-entry')")
)

err(
  "output paths imply different formats",
  8,
  "output paths '~path0' and '~path1' require different targets",
  span("loc", "the output paths '~path0' and '~path1' require different code-generation targets")
)

err(
  "explicit output paths and multiple targets",
  10,
  "canot use both explicit output paths ('-o') and multiple targets ('-target')",
  span("loc", "canot use both explicit output paths ('-o') and multiple targets ('-target')")
)

err(
  "cannot deduce source language",
  12,
  "can't deduce language for input file '~path'",
  span("loc", "can't deduce language for input file '~path'")
)

err(
  "unknown code generation target",
  13,
  "unknown code generation target '~name'",
  span("loc", "unknown code generation target '~name'")
)

err(
  "unknown profile",
  14,
  "unknown profile '~name'",
  span("loc", "unknown profile '~name'")
)

err(
  "unknown stage",
  15,
  "unknown stage '~name'",
  span("loc", "unknown stage '~name'")
)

err(
  "unknown pass through target",
  16,
  "unknown pass-through target '~name'",
  span("loc", "unknown pass-through target '~name'")
)

err(
  "unknown command line option",
  17,
  "unknown command-line option '~option'",
  span("loc", "unknown command-line option '~option'")
)

warning(
  "separate debug info unsupported for target",
  18,
  "'-separate-debug-info' not supported for target '~target'",
  span("loc", "'-separate-debug-info' is not supported for target '~target'. This option is only supported for SPIR-V binary targets.")
)

err(
  "unknown source language",
  19,
  "unknown source language '~name'",
  span("loc", "unknown source language '~name'")
)

err(
  "entry points need to be associated with translation units",
  20,
  "when using multiple source files, entry points must be specified after their corresponding source file(s)",
  span("loc", "when using multiple source files, entry points must be specified after their corresponding source file(s)")
)

err(
  "unknown downstream compiler",
  22,
  "unknown downstream compiler '~name'",
  span("loc", "unknown downstream compiler '~name'")
)

err(
  "unknown optimiziation level",
  26,
  "unknown optimization level '~level'",
  span("loc", "unknown optimization level '~level'")
)

err(
  "unable to generate code for target",
  28,
  "unable to generate code for target '~target'",
  span("loc", "unable to generate code for target '~target'")
)

warning(
  "same stage specified more than once",
  30,
  "stage '~stage:Stage' specified more than once for entry point '~name'",
  span("loc", "the stage '~stage:Stage' was specified more than once for entry point '~name'")
)

err(
  "conflicting stages for entry point",
  31,
  "conflicting stages for entry point '~name'",
  span("loc", "conflicting stages have been specified for entry point '~name'")
)

warning(
  "explicit stage doesnt match implied stage",
  32,
  "stage '~stage:Stage' for entry point '~name' doesn't match implied stage '~impliedStage:Stage'",
  span("loc", "the stage specified for entry point '~name' ('~stage:Stage') does not match the stage implied by the source file name ('~impliedStage:Stage')")
)

err(
  "stage specification ignored because no entry points",
  33,
  "one or more stages were specified, but no entry points were specified with '-entry'",
  span("loc", "one or more stages were specified, but no entry points were specified with '-entry'")
)

err(
  "stage specification ignored because before all entry points",
  34,
  "'-stage' options must follow the '-entry' option they apply to",
  span("loc", "when compiling multiple entry points, any '-stage' options must follow the '-entry' option that they apply to")
)

err(
  "no stage specified in pass through mode",
  35,
  "no stage for entry point '~name' in pass-through mode",
  span("loc", "no stage was specified for entry point '~name'; when using the '-pass-through' option, stages must be fully specified on the command line")
)

err(
  "expecting an integer",
  36,
  "expecting an integer value",
  span("loc", "expecting an integer value")
)

warning(
  "same profile specified more than once",
  40,
  "profile '~profile' was specified more than once",
  span("loc", "the '~profile' was specified more than once for target '~profile'")
)

err(
  "conflicting profiles specified for target",
  41,
  "conflicting profiles for target '~target:CodeGenTarget'",
  span("loc", "conflicting profiles have been specified for target '~target:CodeGenTarget'")
)

err(
  "profile specification ignored because no targets",
  42,
  "a '-profile' option was specified, but no target was specified with '-target'",
  span("loc", "a '-profile' option was specified, but no target was specified with '-target'")
)

err(
  "profile specification ignored because before all targets",
  43,
  "'-profile' option must follow the '-target' it applies to",
  span("loc", "when using multiple targets, any '-profile' option must follow the '-target' it applies to")
)

err(
  "target flags ignored because no targets",
  42,
  "target options were specified, but no target was specified with '-target'",
  span("loc", "target options were specified, but no target was specified with '-target'")
)

err(
  "target flags ignored because before all targets",
  43,
  "target options must follow the '-target' they apply to",
  span("loc", "when using multiple targets, any target options must follow the '-target' they apply to")
)

err(
  "duplicate targets",
  50,
  "target '~format:CodeGenTarget' specified more than once",
  span("loc", "the target '~format:CodeGenTarget' has been specified more than once")
)

err(
  "unhandled language for source embedding",
  51,
  "unhandled source language for source embedding",
  span("loc", "unhandled source language for source embedding")
)

err(
  "cannot deduce output format from path",
  60,
  "cannot infer output format from path '~path'",
  span("loc", "cannot infer an output format from the output path '~path'")
)

err(
  "cannot match output file to target",
  61,
  "no target matches output path '~path' (implies '~format:CodeGenTarget')",
  span("loc", "no specified '-target' option matches the output path '~path', which implies the '~format:CodeGenTarget' format")
)

err(
  "unknown command line value",
  62,
  "unknown value for option, valid values are '~validValues'",
  span("loc", "unknown value for option. Valid values are '~validValues'")
)

err(
  "unknown help category",
  63,
  "unknown help category",
  span("loc", "unknown help category")
)

err(
  "cannot match output file to entry point",
  70,
  "output path '~path' is not associated with any entry point",
  span("loc", "the output path '~path' is not associated with any entry point; a '-o' option for a compiled kernel must follow the '-entry' option for its corresponding entry point")
)

err(
  "invalid type conformance option string",
  71,
  "syntax error in type conformance option '~value'",
  span("loc", "syntax error in type conformance option '~value'.")
)

err(
  "invalid type conformance option no type",
  72,
  "invalid conformance option '~value', type not found",
  span("loc", "invalid conformance option '~value', type '~value' is not found.")
)

err(
  "cannot create type conformance",
  73,
  "cannot create type conformance '~value'",
  span("loc", "cannot create type conformance '~value'.")
)

err(
  "duplicate output paths for entry point and target",
  80,
  "multiple output paths for entry point '~entryPoint' on target '~target:CodeGenTarget'",
  span("loc", "multiple output paths have been specified entry point '~entryPoint' on target '~target:CodeGenTarget'")
)

err(
  "duplicate output paths for target",
  81,
  "multiple output paths for target '~target:CodeGenTarget'",
  span("loc", "multiple output paths have been specified for target '~target:CodeGenTarget'")
)

err(
  "duplicate dependency output paths",
  82,
  "the -dep argument can only be specified once",
  span("loc", "the -dep argument can only be specified once")
)

err(
  "unable to write repro file",
  82,
  "unable to write repro file '~path'",
  span("loc", "unable to write repro file '~path'")
)

err(
  "unable to write module container",
  83,
  "unable to write module container '~path'",
  span("loc", "unable to write module container '~path'")
)

err(
  "unable to read module container",
  84,
  "unable to read module container '~path'",
  span("loc", "unable to read module container '~path'")
)

err(
  "unable to add reference to module container",
  85,
  "unable to add a reference to a module container",
  span("loc", "unable to add a reference to a module container")
)

err(
  "unable to create module container",
  86,
  "unable to create module container",
  span("loc", "unable to create module container")
)

err(
  "unable to set default downstream compiler",
  87,
  "unable to set default downstream compiler '~compiler' to '~language'",
  span("loc", "unable to set default downstream compiler '~compiler' to '~language'")
)

err(
  "unknown archive type",
  88,
  "unknown archive type '~type'",
  span("loc", "archive type '~type' is unknown")
)

err(
  "expecting slang riff container",
  89,
  "expecting a slang riff container",
  span("loc", "expecting a slang riff container")
)

err(
  "incompatible riff semantic version",
  90,
  "incompatible riff semantic version ~version expecting ~expected",
  span("loc", "incompatible riff semantic version ~version expecting ~expected")
)

err(
  "riff hash mismatch",
  91,
  "riff hash mismatch - incompatible riff",
  span("loc", "riff hash mismatch - incompatible riff")
)

err(
  "unable to create directory",
  92,
  "unable to create directory '~path'",
  span("loc", "unable to create directory '~path'")
)

err(
  "unable extract repro to directory",
  93,
  "unable to extract repro to directory '~path'",
  span("loc", "unable to extract repro to directory '~path'")
)

err(
  "unable to read riff",
  94,
  "unable to read as 'riff'/not a 'riff' file",
  span("loc", "unable to read as 'riff'/not a 'riff' file")
)

err(
  "unknown library kind",
  95,
  "unknown library kind '~ext'",
  span("loc", "unknown library kind '~ext'")
)

err(
  "kind not linkable",
  96,
  "not a known linkable kind '~ext'",
  span("loc", "not a known linkable kind '~ext'")
)

err(
  "library does not exist",
  97,
  "library '~path' does not exist",
  span("loc", "library '~path' does not exist")
)

err(
  "cannot access as blob",
  98,
  "cannot access as a blob",
  span("loc", "cannot access as a blob")
)

err(
  "unknown debug option",
  99,
  "unknown debug option, known options are (~options)",
  span("loc", "unknown debug option, known options are (~options)")
)

err(
  "need to enable experiment feature",
  104,
  "'~module' is an experimental module, enable '-experimental-feature' to load it",
  span("loc", "'~module' is an experimental module, need to enable'-experimental-feature' to load this module")
)

err(
  "null component type",
  105,
  "componentTypes[~index:int] is `nullptr`",
  span("loc", "componentTypes[~index:int] is `nullptr`")
)

err(
  "failed to load downstream compiler",
  100,
  "failed to load downstream compiler '~type'",
  span("loc", "failed to load downstream compiler '~type'")
)

err(
  "downstream compiler doesnt support whole program compilation",
  101,
  "downstream compiler '~compiler' doesn't support whole program compilation",
  span("loc", "downstream compiler '~compiler' doesn't support whole program compilation")
)

-- uses notes: seeDirective
err(
  "end of file in preprocessor conditional",
  15000,
  "end of file encountered during preprocessor conditional",
  span("token:Token", "end of file encountered during preprocessor conditional")
)

err(
  "directive without if",
  15001,
  "'~directive' directive without '#if'",
  span("loc", "'~directive' directive without '#if'")
)

-- uses notes: seeDirective
err(
  "directive after else",
  15002,
  "'~directive' directive after '#else'",
  span("loc", "'~directive' directive without '#if'")
)

err(
  "expected preprocessor directive name",
  15100,
  "expected preprocessor directive name",
  span("loc", "expected preprocessor directive name")
)

err(
  "unknown preprocessor directive",
  15101,
  "unknown preprocessor directive '~name'",
  span("loc", "unknown preprocessor directive '~name'")
)

err(
  "expected token in preprocessor directive",
  15102,
  "expected '~expected:TokenType' in '~directive' directive",
  span("loc", "expected '~expected:TokenType' in '~directive' directive")
)

err(
  "expected 2 tokens in preprocessor directive",
  15102,
  "expected '~expected0:TokenType' or '~expected1' in '~directive' directive",
  span("loc", "expected '~expected0:TokenType' or '~expected1' in '~directive' directive")
)

err(
  "unexpected tokens after directive",
  15103,
  "unexpected tokens following '~directive' directive",
  span("loc", "unexpected tokens following '~directive' directive")
)

-- uses notes: seeOpeningToken
err(
  "expected token in preprocessor expression",
  15200,
  "expected '~expected:TokenType' in preprocessor expression",
  span("loc", "expected '~expected:TokenType' in preprocessor expression")
)

err(
  "syntax error in preprocessor expression",
  15201,
  "syntax error in preprocessor expression",
  span("loc", "syntax error in preprocessor expression")
)

err(
  "divide by zero in preprocessor expression",
  15202,
  "division by zero in preprocessor expression",
  span("loc", "division by zero in preprocessor expression")
)

err(
  "expected token in defined expression",
  15203,
  "expected '~expected:TokenType' in 'defined' expression",
  span("loc", "expected '~expected:TokenType' in 'defined' expression")
)

warning(
  "directive expects expression",
  15204,
  "'~directive' directive requires an expression",
  span("loc", "'~directive' directive requires an expression")
)

warning(
  "undefined identifier in preprocessor expression",
  15205,
  "undefined identifier '~name' in preprocessor expression will evaluate to zero",
  span("loc", "undefined identifier '~name' in preprocessor expression will evaluate to zero")
)

err(
  "expected integral version number",
  15206,
  "expected integer for #version number",
  span("loc", "Expected integer for #version number")
)

err(
  "unknown language version",
  15207,
  "unknown language version '~version'",
  span("loc", "unknown language version '~version'.")
)

err(
  "unknown language",
  15208,
  "unknown language '~name'",
  span("loc", "unknown language '~name'.")
)

err(
  "language version differs from including module",
  15208,
  "the source file declares a different language version than the including module",
  span("loc", "the source file declares a different language version than the including module.")
)

-- uses notes: noIncludeHandlerSpecified (first call site)
err(
  "include failed",
  15300,
  "failed to find include file '~path'",
  span("token:Token", "failed to find include file '~path'")
)

err(
  "import failed",
  15301,
  "failed to find imported file '~name'",
  span("loc", "failed to find imported file '~name'")
)

err(
  "cyclic include",
  15302,
  "cyclic `#include` of file '~path'",
  span("token:Token", "cyclic `#include` of file '~path'")
)

err(
  "no include handler specified",
  -1,
  "no `#include` handler was specified",
  span("token:Token", "no `#include` handler was specified")
)

err(
  "no unique identity",
  15302,
  "`#include` handler didn't generate a unique identity for file '~path'",
  span("token:Token", "`#include` handler didn't generate a unique identity for file '~path'")
)

err(
  "cannot resolve imported decl",
  15303,
  "cannot resolve imported declaration '~mangledName' from module '~module'",
  span("loc", "cannot resolve imported declaration '~mangledName' from precompiled module '~module'. Make sure module '~module' is up-to-date. If you suspect this to be a compiler bug, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord for assistance")
)

-- uses notes: seePreviousDefinitionOf
warning(
  "macro redefinition",
  15400,
  "redefinition of macro '~name'",
  span("token:Token", "redefinition of macro '~name'")
)

warning(
  "macro not defined",
  15401,
  "macro '~name' is not defined",
  span("token:Token", "macro '~name' is not defined")
)

err(
  "expected token in macro parameters",
  15403,
  "expected '~expected:TokenType' in macro parameters",
  span("loc", "expected '~expected:TokenType' in macro parameters")
)

warning(
  "builtin macro redefinition",
  15404,
  "redefinition of builtin macro '~name'",
  span("token:Token", "Redefinition of builtin macro '~name'")
)

err(
  "token paste at start",
  15405,
  "'##' is not allowed at the start of a macro body",
  span("token:Token", "'##' is not allowed at the start of a macro body")
)

err(
  "token paste at end",
  15406,
  "'##' is not allowed at the end of a macro body",
  span("token:Token", "'##' is not allowed at the end of a macro body")
)

err(
  "expected macro parameter after stringize",
  15407,
  "'#' in macro body must be followed by a macro parameter name",
  span("token:Token", "'#' in macro body must be followed by the name of a macro parameter")
)

err(
  "duplicate macro parameter name",
  15408,
  "redefinition of macro parameter '~name'",
  span("loc", "redefinition of macro parameter '~name'")
)

err(
  "variadic macro parameter must be last",
  15409,
  "a variadic macro parameter is only allowed at the end of the parameter list",
  span("loc", "a variadic macro parameter is only allowed at the end of the parameter list")
)

warning(
  "expected token in macro arguments",
  15500,
  "expected '~expected:TokenType' in macro invocation",
  span("loc", "expected '~expected:TokenType' in macro invocation")
)

err(
  "wrong number of arguments to macro",
  15501,
  "wrong number of arguments to macro (expected ~expected:int, got ~actual:int)",
  span("token:Token", "wrong number of arguments to macro (expected ~expected:int, got ~actual:int)")
)

err(
  "error parsing to macro invocation argument",
  15502,
  "error parsing argument ~argIndex:int of macro '~macroName'",
  span("loc", "error parsing macro '~argIndex:int' invocation argument to '~macroName'")
)

warning(
  "invalid token paste result",
  15503,
  "token pasting with '##' resulted in invalid token '~result'",
  span("loc", "toking pasting with '##' resulted in the invalid token '~result'")
)

err(
  "expected pragma directive name",
  15600,
  "expected a name after '#pragma'",
  span("loc", "expected a name after '#pragma'")
)

warning(
  "unknown pragma directive ignored",
  15601,
  "ignoring unknown directive '#pragma ~name'",
  span("token:Token", "ignoring unknown directive '#pragma ~name'")
)

warning(
  "pragma once ignored",
  15602,
  "pragma once was ignored - typically not placed in an include",
  span("token:Token", "pragma once was ignored - this is typically because is not placed in an include")
)

err(
  "pragma warning generic error",
  15610,
  "error in #pragma warning processing: ~message",
  span("loc", "Error in #pragma warning processing: ~message")
)

warning(
  "pragma warning pop empty",
  15611,
  "#pragma warning(pop) with no corresponding push",
  span("loc", "Detected #pragma warning(pop) with no corresponding #pragma warning(push)")
)

warning(
  "pragma warning push not popped",
  15612,
  "#pragma warning(push) with no corresponding pop",
  span("loc", "Detected #pragma warning(push) with no corresponding #pragma warning(pop)")
)

warning(
  "pragma warning unknown specifier",
  15613,
  "unknown #pragma warning specifier '~specifier'",
  span("loc", "Unknown #pragma warning specifier '~specifier'")
)

warning(
  "pragma warning suppress cannot identify next line",
  15614,
  "cannot identify the next line to suppress in #pragma warning suppress",
  span("loc", "Cannot identify the next line to suppress in #pragma warning suppress")
)

warning(
  "pragma warning cannot insert here",
  15615,
  "cannot insert #pragma warning here for id '~id'",
  span("loc", "Cannot insert #pragma warning here for id '~id'")
)

err(
  "user defined error",
  15900,
  "#error: ~message",
  span("loc", "#error: ~message")
)

warning(
  "user defined warning",
  15901,
  "#warning: ~message",
  span("loc", "#warning: ~message")
)

err(
  "unexpected token",
  20003,
  "unexpected ~token:Token",
  span("loc", "unexpected ~token:Token")
)

err(
  "unexpected token expected token type",
  20001,
  "unexpected ~token:Token, expected ~expected",
  span("loc", "unexpected ~token:Token, expected ~expected")
)
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
