err(
  "cannot open file",
  1,
  "cannot open file",
  span("loc", "cannot open file '~path'.")
)

err(
  "cannot find file",
  2,
  "cannot find file",
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
  "cannot write output file",
  span("loc", "cannot write output file '~path'.")
)

err(
  "failed to load dynamic library",
  5,
  "failed to load dynamic library",
  span("loc", "failed to load dynamic library '~path'")
)

err(
  "too many output paths specified",
  6,
  "too many output paths specified",
  span("loc", "~count:int output paths specified, but only ~entryPointCount:int entry points given")
)

err(
  "no output path specified for entry point",
  7,
  "no output path specified for entry point",
  span("loc", "no output path specified for entry point '~name' (the '-o' option for an entry point must precede the corresponding '-entry')")
)

err(
  "output paths imply different formats",
  8,
  "output paths imply different formats",
  span("loc", "the output paths '~path0' and '~path1' require different code-generation targets")
)

err(
  "explicit output paths and multiple targets",
  10,
  "explicit output paths and multiple targets",
  span("loc", "canot use both explicit output paths ('-o') and multiple targets ('-target')")
)

err(
  "cannot deduce source language",
  12,
  "cannot deduce source language",
  span("loc", "can't deduce language for input file '~path'")
)

err(
  "unknown code generation target",
  13,
  "unknown code generation target",
  span("loc", "unknown code generation target '~name'")
)

err(
  "unknown profile",
  14,
  "unknown profile",
  span("loc", "unknown profile '~name'")
)

err(
  "unknown stage",
  15,
  "unknown stage",
  span("loc", "unknown stage '~name'")
)

err(
  "unknown pass through target",
  16,
  "unknown pass through target",
  span("loc", "unknown pass-through target '~name'")
)

err(
  "unknown command line option",
  17,
  "unknown command line option",
  span("loc", "unknown command-line option '~option'")
)

warning(
  "separate debug info unsupported for target",
  18,
  "separate debug info unsupported for target",
  span("loc", "'-separate-debug-info' is not supported for target '~target'. This option is only supported for SPIR-V binary targets.")
)

err(
  "unknown source language",
  19,
  "unknown source language",
  span("loc", "unknown source language '~name'")
)

err(
  "entry points need to be associated with translation units",
  20,
  "entry points need to be associated with translation units",
  span("loc", "when using multiple source files, entry points must be specified after their corresponding source file(s)")
)

err(
  "unknown downstream compiler",
  22,
  "unknown downstream compiler",
  span("loc", "unknown downstream compiler '~name'")
)

err(
  "unknown optimiziation level",
  26,
  "unknown optimiziation level",
  span("loc", "unknown optimization level '~level'")
)

err(
  "unable to generate code for target",
  28,
  "unable to generate code for target",
  span("loc", "unable to generate code for target '~target'")
)

warning(
  "same stage specified more than once",
  30,
  "same stage specified more than once",
  span("loc", "the stage '~stage' was specified more than once for entry point '~entryPoint'")
)

err(
  "conflicting stages for entry point",
  31,
  "conflicting stages for entry point",
  span("loc", "conflicting stages have been specified for entry point '~entryPoint'")
)

warning(
  "explicit stage doesnt match implied stage",
  32,
  "explicit stage doesnt match implied stage",
  span("loc", "the stage specified for entry point '~entryPoint' ('~explicitStage') does not match the stage implied by the source file name ('~impliedStage')")
)

err(
  "stage specification ignored because no entry points",
  33,
  "stage specification ignored because no entry points",
  span("loc", "one or more stages were specified, but no entry points were specified with '-entry'")
)

err(
  "stage specification ignored because before all entry points",
  34,
  "stage specification ignored because before all entry points",
  span("loc", "when compiling multiple entry points, any '-stage' options must follow the '-entry' option that they apply to")
)

err(
  "no stage specified in pass through mode",
  35,
  "no stage specified in pass through mode",
  span("loc", "no stage was specified for entry point '~entryPoint'; when using the '-pass-through' option, stages must be fully specified on the command line")
)

err(
  "expecting an integer",
  36,
  "expecting an integer",
  span("loc", "expecting an integer value")
)

warning(
  "same profile specified more than once",
  40,
  "same profile specified more than once",
  span("loc", "the '~profile' was specified more than once for target '~profile'")
)

err(
  "conflicting profiles specified for target",
  41,
  "conflicting profiles specified for target",
  span("loc", "conflicting profiles have been specified for target '~target'")
)

err(
  "profile specification ignored because no targets",
  42,
  "profile specification ignored because no targets",
  span("loc", "a '-profile' option was specified, but no target was specified with '-target'")
)

err(
  "profile specification ignored because before all targets",
  43,
  "profile specification ignored because before all targets",
  span("loc", "when using multiple targets, any '-profile' option must follow the '-target' it applies to")
)

err(
  "target flags ignored because no targets",
  42,
  "target flags ignored because no targets",
  span("loc", "target options were specified, but no target was specified with '-target'")
)

err(
  "target flags ignored because before all targets",
  43,
  "target flags ignored because before all targets",
  span("loc", "when using multiple targets, any target options must follow the '-target' they apply to")
)

err(
  "duplicate targets",
  50,
  "duplicate targets",
  span("loc", "the target '~target' has been specified more than once")
)

err(
  "unhandled language for source embedding",
  51,
  "unhandled language for source embedding",
  span("loc", "unhandled source language for source embedding")
)

err(
  "cannot deduce output format from path",
  60,
  "cannot deduce output format from path",
  span("loc", "cannot infer an output format from the output path '~path'")
)

err(
  "cannot match output file to target",
  61,
  "cannot match output file to target",
  span("loc", "no specified '-target' option matches the output path '~path', which implies the '~format' format")
)

err(
  "unknown command line value",
  62,
  "unknown command line value",
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
  "cannot match output file to entry point",
  span("loc", "the output path '~path' is not associated with any entry point; a '-o' option for a compiled kernel must follow the '-entry' option for its corresponding entry point")
)

err(
  "invalid type conformance option string",
  71,
  "invalid type conformance option string",
  span("loc", "syntax error in type conformance option '~option'.")
)

err(
  "invalid type conformance option no type",
  72,
  "invalid type conformance option no type",
  span("loc", "invalid conformance option '~option', type '~option' is not found.")
)

err(
  "cannot create type conformance",
  73,
  "cannot create type conformance",
  span("loc", "cannot create type conformance '~option'.")
)

err(
  "duplicate output paths for entry point and target",
  80,
  "duplicate output paths for entry point and target",
  span("loc", "multiple output paths have been specified entry point '~entryPoint' on target '~target'")
)

err(
  "duplicate output paths for target",
  81,
  "duplicate output paths for target",
  span("loc", "multiple output paths have been specified for target '~target'")
)

err(
  "duplicate dependency output paths",
  82,
  "duplicate dependency output paths",
  span("loc", "the -dep argument can only be specified once")
)

err(
  "unable to write repro file",
  82,
  "unable to write repro file",
  span("loc", "unable to write repro file '~path'")
)

err(
  "unable to write module container",
  83,
  "unable to write module container",
  span("loc", "unable to write module container '~path'")
)

err(
  "unable to read module container",
  84,
  "unable to read module container",
  span("loc", "unable to read module container '~path'")
)

err(
  "unable to add reference to module container",
  85,
  "unable to add reference to module container",
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
  "unable to set default downstream compiler",
  span("loc", "unable to set default downstream compiler for source language '~sourceLanguage' to '~compiler'")
)

err(
  "unknown archive type",
  88,
  "unknown archive type",
  span("loc", "archive type '~type' is unknown")
)

err(
  "expecting slang riff container",
  89,
  "expecting slang riff container",
  span("loc", "expecting a slang riff container")
)

err(
  "incompatible riff semantic version",
  90,
  "incompatible riff semantic version",
  span("loc", "incompatible riff semantic version ~actual expecting ~expected")
)

err(
  "riff hash mismatch",
  91,
  "riff hash mismatch",
  span("loc", "riff hash mismatch - incompatible riff")
)

err(
  "unable to create directory",
  92,
  "unable to create directory",
  span("loc", "unable to create directory '~path'")
)

err(
  "unable extract repro to directory",
  93,
  "unable extract repro to directory",
  span("loc", "unable to extract repro to directory '~path'")
)

err(
  "unable to read riff",
  94,
  "unable to read riff",
  span("loc", "unable to read as 'riff'/not a 'riff' file")
)

err(
  "unknown library kind",
  95,
  "unknown library kind",
  span("loc", "unknown library kind '~kind'")
)

err(
  "kind not linkable",
  96,
  "kind not linkable",
  span("loc", "not a known linkable kind '~kind'")
)

err(
  "library does not exist",
  97,
  "library does not exist",
  span("loc", "library '~path' does not exist")
)

err(
  "cannot access as blob",
  98,
  "cannot access as blob",
  span("loc", "cannot access as a blob")
)

err(
  "unknown debug option",
  99,
  "unknown debug option",
  span("loc", "unknown debug option, known options are (~options)")
)

err(
  "need to enable experiment feature",
  104,
  "need to enable experiment feature",
  span("loc", "'~module' is an experimental module, need to enable'-experimental-feature' to load this module")
)

err(
  "null component type",
  105,
  "null component type",
  span("loc", "componentTypes[~index:int] is `nullptr`")
)

err(
  "failed to load downstream compiler",
  100,
  "failed to load downstream compiler",
  span("loc", "failed to load downstream compiler '~compiler'")
)

err(
  "downstream compiler doesnt support whole program compilation",
  101,
  "downstream compiler doesnt support whole program compilation",
  span("loc", "downstream compiler '~compiler' doesn't support whole program compilation")
)

-- uses notes: seeDirective
err(
  "end of file in preprocessor conditional",
  15000,
  "end of file in preprocessor conditional",
  span("token:Token", "end of file encountered during preprocessor conditional")
)

err(
  "directive without if",
  15001,
  "directive without if",
  span("loc", "'~directive' directive without '#if'")
)

-- uses notes: seeDirective
err(
  "directive after else",
  15002,
  "directive after else",
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
  "unknown preprocessor directive",
  span("loc", "unknown preprocessor directive '~directive'")
)

err(
  "expected token in preprocessor directive",
  15102,
  "expected token in preprocessor directive",
  span("loc", "expected '~expected' in '~directive' directive")
)

err(
  "expected2 tokens in preprocessor directive",
  15102,
  "expected2 tokens in preprocessor directive",
  span("loc", "expected '~expected0' or '~expected1' in '~directive' directive")
)

err(
  "unexpected tokens after directive",
  15103,
  "unexpected tokens after directive",
  span("loc", "unexpected tokens following '~directive' directive")
)

-- uses notes: seeOpeningToken
err(
  "expected token in preprocessor expression",
  15200,
  "expected token in preprocessor expression",
  span("loc", "expected '~expected' in preprocessor expression")
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
  "divide by zero in preprocessor expression",
  span("loc", "division by zero in preprocessor expression")
)

err(
  "expected token in defined expression",
  15203,
  "expected token in defined expression",
  span("loc", "expected '~expected' in 'defined' expression")
)

warning(
  "directive expects expression",
  15204,
  "directive expects expression",
  span("loc", "'~directive' directive requires an expression")
)

warning(
  "undefined identifier in preprocessor expression",
  15205,
  "undefined identifier in preprocessor expression",
  span("loc", "undefined identifier '~identifier' in preprocessor expression will evaluate to zero")
)

err(
  "expected integral version number",
  15206,
  "expected integral version number",
  span("loc", "Expected integer for #version number")
)

err(
  "unknown language version",
  15207,
  "unknown language version",
  span("loc", "unknown language version '~version'.")
)

err(
  "unknown language",
  15208,
  "unknown language",
  span("loc", "unknown language '~language'.")
)

err(
  "language version differs from including module",
  15208,
  "language version differs from including module",
  span("loc", "the source file declares a different language version than the including module.")
)

-- uses notes: noIncludeHandlerSpecified
err(
  "include failed",
  15300,
  "include failed",
  span("token:Token", "failed to find include file '~path'")
)

err(
  "import failed",
  15301,
  "import failed",
  span("loc", "failed to find imported file '~module'")
)

err(
  "cyclic include",
  15302,
  "cyclic include",
  span("loc", "cyclic `#include` of file '~path'")
)

err(
  "no include handler specified",
  -1,
  "no include handler specified",
  span("token:Token", "no `#include` handler was specified")
)

err(
  "no unique identity",
  15302,
  "no unique identity",
  span("token:Token", "`#include` handler didn't generate a unique identity for file '~path'")
)

err(
  "cannot resolve imported decl",
  15303,
  "cannot resolve imported decl",
  span("loc", "cannot resolve imported declaration '~decl' from precompiled module '~module'. Make sure module '~module' is up-to-date. If you suspect this to be a compiler bug, file an issue on GitHub (https://github.com/shader-slang/slang/issues) or join the Slang Discord for assistance")
)

-- uses notes: seePreviousDefinitionOf
warning(
  "macro redefinition",
  15400,
  "macro redefinition",
  span("token:Token", "redefinition of macro '~name'")
)

warning(
  "macro not defined",
  15401,
  "macro not defined",
  span("token:Token", "macro '~name' is not defined")
)

err(
  "expected token in macro parameters",
  15403,
  "expected token in macro parameters",
  span("loc", "expected '~expected' in macro parameters")
)

warning(
  "builtin macro redefinition",
  15404,
  "builtin macro redefinition",
  span("token:Token", "Redefinition of builtin macro '~name'")
)

err(
  "token paste at start",
  15405,
  "token paste at start",
  span("token:Token", "'##' is not allowed at the start of a macro body")
)

err(
  "token paste at end",
  15406,
  "token paste at end",
  span("token:Token", "'##' is not allowed at the end of a macro body")
)

err(
  "expected macro parameter after stringize",
  15407,
  "expected macro parameter after stringize",
  span("token:Token", "'#' in macro body must be followed by the name of a macro parameter")
)

err(
  "duplicate macro parameter name",
  15408,
  "duplicate macro parameter name",
  span("loc", "redefinition of macro parameter '~name'")
)

err(
  "variadic macro parameter must be last",
  15409,
  "variadic macro parameter must be last",
  span("loc", "a variadic macro parameter is only allowed at the end of the parameter list")
)

warning(
  "expected token in macro arguments",
  15500,
  "expected token in macro arguments",
  span("loc", "expected '~expected' in macro invocation")
)

err(
  "wrong number of arguments to macro",
  15501,
  "wrong number of arguments to macro",
  span("loc", "wrong number of arguments to macro (expected ~expected:int, got ~got:int)")
)

err(
  "error parsing to macro invocation argument",
  15502,
  "error parsing to macro invocation argument",
  span("loc", "error parsing macro '~argIndex:int' invocation argument to '~macro'")
)

warning(
  "invalid token paste result",
  15503,
  "invalid token paste result",
  span("loc", "toking pasting with '##' resulted in the invalid token '~result'")
)

err(
  "expected pragma directive name",
  15600,
  "expected pragma directive name",
  span("loc", "expected a name after '#pragma'")
)

warning(
  "unknown pragma directive ignored",
  15601,
  "unknown pragma directive ignored",
  span("loc", "ignoring unknown directive '#pragma ~directive'")
)

warning(
  "pragma once ignored",
  15602,
  "pragma once ignored",
  span("token:Token", "pragma once was ignored - this is typically because is not placed in an include")
)

err(
  "pragma warning generic error",
  15610,
  "pragma warning generic error",
  span("loc", "Error in #pragma warning processing: ~message")
)

warning(
  "pragma warning pop empty",
  15611,
  "pragma warning pop empty",
  span("loc", "Detected #pragma warning(pop) with no corresponding #pragma warning(push)")
)

warning(
  "pragma warning push not popped",
  15612,
  "pragma warning push not popped",
  span("loc", "Detected #pragma warning(push) with no corresponding #pragma warning(pop)")
)

warning(
  "pragma warning unknown specifier",
  15613,
  "pragma warning unknown specifier",
  span("loc", "Unknown #pragma warning specifier '~specifier'")
)

warning(
  "pragma warning suppress cannot identify next line",
  15614,
  "pragma warning suppress cannot identify next line",
  span("loc", "Cannot identify the next line to suppress in #pragma warning suppress")
)

warning(
  "pragma warning cannot insert here",
  15615,
  "pragma warning cannot insert here",
  span("loc", "Cannot insert #pragma warning here for id '~id'")
)

err(
  "user defined error",
  15900,
  "user defined error",
  span("loc", "#error: ~message")
)

warning(
  "user defined warning",
  15901,
  "user defined warning",
  span("loc", "#warning: ~message")
)

err(
  "unexpected token",
  20003,
  "unexpected token",
  span("loc", "unexpected ~token:Token")
)

err(
  "unexpected token expected token type",
  20001,
  "unexpected token expected token type",
  span("loc", "unexpected ~token:Token, expected ~expected")
)
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
err(
  "overloaded func used with derivative of attributes",
  31157,
  "cannot resolve overloaded function for derivative-of attributes",
  span("attr", "cannot resolve overloaded functions for derivative-of attributes.")
)

err(
  "primal substitute target must have higher differentiability level",
  31158,
  "primal substitute must be differentiable",
  span("loc", "primal substitute function for differentiable method must also be differentiable. Use [Differentiable] or [TreatAsDifferentiable] (for empty derivatives)")
)

warning(
  "no derivative on non differentiable this type",
  31159,
  "no derivative for member on non-differentiable struct",
  span("loc", "There is no derivative calculated for member '~member:Decl' because the parent struct is not differentiable. If this is intended, consider using [NoDiffThis] on the function '~func:Decl' to suppress this warning. Alternatively, users can mark the parent struct as [Differentiable] to propagate derivatives.")
)

err(
  "invalid address of",
  31160,
  "invalid use of __getAddress",
  span("expr:Expr", "'__getAddress' only supports groupshared variables and members of groupshared/device memory.")
)

warning(
  "deprecated usage",
  31200,
  "use of deprecated declaration",
  span("loc", "~name has been deprecated: ~message")
)

err(
  "modifier not allowed",
  31201,
  "modifier not allowed here",
  span("modifier", "modifier '~modifier' is not allowed here.")
)

err(
  "duplicate modifier",
  31202,
  "redundant or conflicting modifier",
  span("loc", "modifier '~modifier' is redundant or conflicting with existing modifier '~existingModifier'")
)

err(
  "cannot export incomplete type",
  31203,
  "cannot export incomplete type",
  span("loc", "cannot export incomplete type '~type:Decl'")
)

err(
  "memory qualifier not allowed on a non image type parameter",
  31206,
  "memory qualifier on non-image parameter",
  span("param:Decl", "modifier ~modifier is not allowed on a non image type parameter.")
)

err(
  "require input decorated var for parameter",
  31208,
  "expected shader input variable for parameter",
  span("expr:Expr", "~decl:Decl expects for argument ~paramNum:int a type which is a shader input (`in`) variable.")
)

err(
  "derivative group quad must be multiple 2 for x y threads",
  31210,
  "invalid thread count for derivative group quad",
  span("loc", "compute derivative group quad requires thread dispatch count of X and Y to each be at a multiple of 2")
)

err(
  "derivative group linear must be multiple 4 for total thread count",
  31211,
  "invalid thread count for derivative group linear",
  span("loc", "compute derivative group linear requires total thread dispatch count to be at a multiple of 4")
)

err(
  "only one of derivative group linear or quad can be set",
  31212,
  "conflicting derivative group attributes",
  span("loc", "cannot set compute derivative group linear and compute derivative group quad at the same time")
)

err(
  "cuda kernel must return void",
  31213,
  "CUDA kernel must return void",
  span("decl:Decl", "return type of a CUDA kernel function cannot be non-void.")
)

err(
  "differentiable kernel entry point cannot have differentiable params",
  31214,
  "differentiable kernel cannot have differentiable parameters",
  span("param:Decl", "differentiable kernel entry point cannot have differentiable parameters. Consider using DiffTensorView to pass differentiable data, or marking this parameter with 'no_diff'")
)

-- uses notes: seeConstantBufferDefinition
err(
  "cannot use unsized type in constant buffer",
  31215,
  "unsized type in constant buffer",
  span("loc", "cannot use unsized type '~type:Type' in a constant buffer.")
)

err(
  "unrecognized glsl layout qualifier",
  31216,
  "unrecognized GLSL layout qualifier",
  span("attr", "GLSL layout qualifier is unrecognized")
)

err(
  "unrecognized glsl layout qualifier or requires assignment",
  31217,
  "unrecognized GLSL layout qualifier",
  span("modifier", "GLSL layout qualifier is unrecognized or requires assignment")
)

err(
  "specialization constant must be scalar",
  31218,
  "specialization constant must be scalar",
  span("modifier", "specialization constant must be a scalar.")
)

err(
  "push or specialization constant cannot be static",
  31219,
  "push or specialization constant cannot be static",
  span("decl:Decl", "push or specialization constants cannot be 'static'.")
)

err(
  "variable cannot be push and specialization constant",
  31220,
  "variable cannot be both push and specialization constant",
  span("decl:Decl", "'~name' cannot be a push constant and a specialization constant at the same time")
)

err(
  "invalid hlsl register name",
  31221,
  "invalid HLSL register name",
  span("loc", "invalid HLSL register name '~name:Token'.")
)

err(
  "invalid hlsl register name for type",
  31222,
  "invalid HLSL register name for type",
  span("loc", "invalid HLSL register name '~name' for type '~type:Type'.")
)

err(
  "extern and export var decl must be const",
  31223,
  "extern/export variable must be static const",
  span("decl:Decl", "extern and export variables must be static const: '~name'")
)

err(
  "const global var with init requires static",
  31224,
  "global const variable requires static",
  span("decl:Decl", "global const variable with initializer must be declared static: '~name'")
)

err(
  "static const variable requires initializer",
  31225,
  "static const variable requires initializer",
  span("decl:Decl", "static const variable '~decl' must have an initializer")
)

err(
  "invalid enum tag type",
  32000,
  "invalid enum tag type",
  span("loc", "invalid tag type for 'enum': '~type:Type'")
)

err(
  "unexpected enum tag expr",
  32003,
  "unexpected enum tag value expression",
  span("expr:Expr", "unexpected form for 'enum' tag value expression")
)

err(
  "assoc type in interface only",
  30300,
  "associatedtype only allowed in interface",
  span("decl:Decl", "'associatedtype' can only be defined in an 'interface'.")
)

err(
  "global gen param in global scope only",
  30301,
  "type_param only allowed at global scope",
  span("decl:Decl", "'type_param' can only be defined global scope.")
)

err(
  "static const requirement must be int or bool",
  30302,
  "static const requirement must be int or bool",
  span("decl:Decl", "'static const' requirement can only have int or bool type.")
)

err(
  "value requirement must be compile time const",
  30303,
  "value requirement must be static const",
  span("decl:Decl", "requirement in the form of a simple value must be declared as 'static const'.")
)

err(
  "type is not differentiable",
  30310,
  "type is not differentiable",
  span("attr", "type '~type:Type' is not differentiable.")
)

err(
  "non method interface requirement cannot have body",
  30311,
  "non-method interface requirement cannot have body",
  span("decl:Decl", "non-method interface requirement cannot have a body.")
)

err(
  "interface requirement cannot be override",
  30312,
  "interface requirement cannot be override",
  span("decl:Decl", "interface requirement cannot override a base declaration.")
)

err(
  "cannot define ptr type to managed resource",
  30400,
  "pointer to managed resource is invalid",
  span("expr:Expr", "pointer to a managed resource is invalid, use `NativeRef<T>` instead")
)

warning(
  "for loop side effect changing different var",
  30500,
  "for loop modifies different variable than expected",
  span("expr:Expr", "the for loop initializes and checks variable '~initialVar:Decl' but the side effect expression is modifying '~sideEffectVar:Decl'.")
)

warning(
  "for loop predicate checking different var",
  30501,
  "for loop predicate checks different variable than expected",
  span("expr:Expr", "the for loop initializes and modifies variable '~initialVar:Decl' but the predicate expression is checking '~predicateVar:Decl'.")
)

warning(
  "for loop changing iteration variable in opposite direction",
  30502,
  "for loop modifies variable in wrong direction",
  span("expr:Expr", "the for loop is modifiying variable '~var:Decl' in the opposite direction from loop exit condition.")
)

warning(
  "for loop not modifying iteration variable",
  30503,
  "for loop not modifying iteration variable",
  span("expr:Expr", "the for loop is not modifiying variable '~var:Decl' because the step size evaluates to 0.")
)

warning(
  "for loop terminates in fewer iterations than max iters",
  30504,
  "for loop terminates in fewer iterations than MaxIters",
  span("loc", "the for loop is statically determined to terminate within ~count:int iterations, which is less than what [MaxIters] specifies.")
)

warning(
  "loop runs for zero iterations",
  30505,
  "loop runs for zero iterations",
  span("stmt", "the loop runs for 0 iterations and will be removed.")
)

err(
  "loop in diff func require unroll or max iters",
  30510,
  "loop in differentiable function requires unroll or MaxIters",
  span("loc", "loops inside a differentiable function need to provide either '[MaxIters(n)]' or '[ForceUnroll]' attribute.")
)

err(
  "switch multiple default",
  30600,
  "multiple default cases in switch",
  span("stmt", "multiple 'default' cases not allowed within a 'switch' statement")
)

err(
  "switch duplicate cases",
  30601,
  "duplicate cases in switch",
  span("stmt", "duplicate cases not allowed within a 'switch' statement")
)

warning(
  "link time constant array size",
  31000,
  "link-time constant sized arrays are work in progress",
  span("decl:Decl", "Link-time constant sized arrays are a work in progress feature, some aspects of the reflection API may not work")
)

err(
  "cyclic reference",
  39999,
  "cyclic reference detected",
  span("decl:Decl", "cyclic reference '~decl'.")
)

err(
  "cyclic reference in inheritance",
  39999,
  "cyclic reference in inheritance graph",
  span("decl:Decl", "cyclic reference in inheritance graph '~decl'.")
)

err(
  "local variable used before declared",
  39999,
  "variable used before declaration",
  span("loc", "local variable '~var:Decl' is being used before its declaration.")
)

err(
  "variable used in its own definition",
  39999,
  "variable used in its own definition",
  span("decl:Decl", "the initial-value expression for variable '~decl' depends on the value of the variable itself")
)

err(
  "cannot process include",
  39901,
  "cannot process __include",
  span("loc", "internal compiler error: cannot process '__include' in the current semantic checking context.")
)

err(
  "generic type needs args",
  30400,
  "generic type used without arguments",
  span("expr:Expr", "generic type '~type' used without argument")
)

err(
  "invalid type for constraint",
  30401,
  "invalid type for constraint",
  span("expr:Expr", "type '~type:Type' cannot be used as a constraint.")
)

err(
  "invalid constraint sub type",
  30402,
  "invalid constraint left-hand side type",
  span("expr:Expr", "type '~type:Type' is not a valid left hand side of a type constraint.")
)

err(
  "required constraint is not checked",
  30403,
  "optional constraint not checked before use",
  span("loc", "the constraint providing '~decl:Decl' is optional and must be checked with an 'is' statement before usage.")
)

err(
  "invalid equality constraint sup type",
  30404,
  "invalid type in generic equality constraint",
  span("expr:Expr", "type '~type:Type' is not a proper type to use in a generic equality constraint.")
)

err(
  "no valid equality constraint sub type",
  30405,
  "equality constraint requires generic-dependent operand",
  span("decl:Decl", "generic equality constraint requires at least one operand to be dependant on the generic declaration")
)

warning(
  "failed equality constraint canonical order",
  30407,
  "failed to resolve canonical constraint order",
  span("decl:Decl", "failed to resolve canonical order of generic equality constraint.")
)

err(
  "too many initializers",
  30500,
  "too many initializers",
  span("expr:Expr", "too many initializers (expected ~expected:int, got ~actual:int)")
)

err(
  "cannot use initializer list for array of unknown size",
  30501,
  "cannot use initializer list for unsized array",
  span("loc", "cannot use initializer list for array of statically unknown size '~size'")
)

err(
  "cannot use initializer list for vector of unknown size",
  30502,
  "cannot use initializer list for unsized vector",
  span("expr:Expr", "cannot use initializer list for vector of statically unknown size '~size'")
)

err(
  "cannot use initializer list for matrix of unknown size",
  30503,
  "cannot use initializer list for unsized matrix",
  span("expr:Expr", "cannot use initializer list for matrix of statically unknown size '~rowCount' rows")
)

err(
  "cannot use initializer list for type",
  30504,
  "cannot use initializer list for type",
  span("expr:Expr", "cannot use initializer list for type '~type:Type'")
)

err(
  "cannot use initializer list for coop vector of unknown size",
  30505,
  "cannot use initializer list for unsized CoopVector",
  span("expr:Expr", "cannot use initializer list for CoopVector of statically unknown size '~size'")
)

warning(
  "interface default initializer",
  30506,
  "deprecated interface variable default initialization",
  span("expr:Expr", "initializing an interface variable with defaults is deprecated and may cause unexpected behavior. Please provide a compatible initializer or leave the variable uninitialized")
)

err(
  "var without type must have initializer",
  30620,
  "variable without type must have initializer",
  span("decl:Decl", "a variable declaration without an initial-value expression must be given an explicit type")
)

err(
  "param without type must have initializer",
  30621,
  "parameter without type must have initializer",
  span("param:Decl", "a parameter declaration without an initial-value expression must be given an explicit type")
)

err(
  "ambiguous default initializer for type",
  30622,
  "ambiguous default initializer",
  span("decl:Decl", "more than one default initializer was found for type '~type:Type'")
)

err(
  "cannot have initializer",
  30623,
  "variable cannot have initializer",
  span("decl:Decl", "'~decl' cannot have an initializer because it is ~reason")
)

err(
  "generic value parameter must have type",
  30623,
  "generic value parameter must have explicit type",
  span("decl:Decl", "a generic value parameter must be given an explicit type")
)

err(
  "generic value parameter type not supported",
  30624,
  "unsupported generic value parameter type",
  span("decl:Decl", "generic value parameter type '~type:Type' is not supported; only integer and enum types are allowed")
)

err(
  "output parameter cannot have default value",
  30700,
  "out/inout parameter cannot have default value",
  span("expr:Expr", "an 'out' or 'inout' parameter cannot have a default-value expression")
)

err(
  "system value semantic invalid type",
  30701,
  "invalid type for system value semantic",
  span("loc", "type '~type:Type' is not valid for system value semantic '~semantic'; expected '~validTypes'")
)

err(
  "system value semantic invalid direction",
  30702,
  "invalid direction for system value semantic",
  span("loc", "system value semantic '~semantic' cannot be used as ~direction in '~stage' shader stage")
)

err(
  "base of interface must be interface",
  30810,
  "interface base must be interface",
  span("loc", "interface '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of struct must be interface",
  30811,
  "struct base must be interface",
  span("loc", "struct '~decl:Decl' cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of enum must be integer or interface",
  30812,
  "invalid enum base type",
  span("loc", "enum '~decl:Decl' cannot inherit from type '~baseType:Type' that is neither an interface not a builtin integer type")
)

err(
  "base of extension must be interface",
  30813,
  "extension base must be interface",
  span("loc", "extension cannot inherit from non-interface type '~baseType:Type'")
)

err(
  "base of class must be class or interface",
  30814,
  "invalid class base type",
  span("loc", "class '~decl:Decl' cannot inherit from type '~baseType:Type' that is neither a class nor an interface")
)

err(
  "circularity in extension",
  30815,
  "circular extension detected",
  span("decl:Decl", "circular extension is not allowed.")
)

warning(
  "inheritance unstable",
  30816,
  "struct inheritance is unstable",
  span("loc", "support for inheritance is unstable and will be removed in future language versions, consider using composition instead.")
)

err(
  "base struct must be listed first",
  30820,
  "base struct must be listed first",
  span("loc", "a struct type may only inherit from one other struct type, and that type must appear first in the list of bases")
)

err(
  "tag type must be listed first",
  30821,
  "enum tag type must be listed first",
  span("loc", "an unum type may only have a single tag type, and that type must be listed first in the list of bases")
)

err(
  "base class must be listed first",
  30822,
  "base class must be listed first",
  span("loc", "a class type may only inherit from one other class type, and that type must appear first in the list of bases")
)

err(
  "cannot inherit from explicitly sealed declaration in another module",
  30830,
  "cannot inherit from sealed type in another module",
  span("loc", "cannot inherit from type '~baseType:Type' marked 'sealed' in module '~module'")
)

err(
  "cannot inherit from implicitly sealed declaration in another module",
  30831,
  "cannot inherit from implicitly sealed type",
  span("loc", "cannot inherit from type '~baseType:Type' in module '~module' because it is implicitly 'sealed'; mark the base type 'open' to allow inheritance across modules")
)

err(
  "invalid type for inheritance",
  30832,
  "invalid type for inheritance",
  span("loc", "type '~type:Type' cannot be used for inheritance")
)

err(
  "invalid extension on type",
  30850,
  "type cannot be extended",
  span("expr:Expr", "type '~type:Type' cannot be extended. `extension` can only be used to extend a nominal type.")
)

err(
  "invalid member type in extension",
  30851,
  "invalid member in extension",
  span("loc", "~nodeType cannot be a part of an `extension`")
)

err(
  "invalid extension on interface",
  30852,
  "cannot extend interface type directly",
  span("expr:Expr", "cannot extend interface type '~type:Type'. consider using a generic extension: `extension<T:~type> T {...}`.")
)

err(
  "missing override",
  30853,
  "missing override keyword",
  span("decl:Decl", "missing 'override' keyword for methods that overrides the default implementation in the interface.")
)

err(
  "override modifier not overriding base decl",
  30854,
  "override not overriding any base declaration",
  span("decl:Decl", "'~decl' marked as 'override' is not overriding any base declarations.")
)

err(
  "unreferenced generic param in extension",
  30855,
  "unreferenced generic parameter in extension",
  span("member:Decl", "generic parameter '~param' is not referenced by extension target type '~targetType:Type'.")
)

warning(
  "generic param in extension not referenced by target type",
  30856,
  "generic parameter not referenced by extension target type",
  span("member:Decl", "the extension is non-standard and may not work as intended because the generic parameter '~param' is not referenced by extension target type '~targetType:Type'.")
)

err(
  "multi dimensional array not supported",
  30900,
  "multi-dimensional array not supported",
  span("expr:Expr", "multi-dimensional array is not supported.")
)

err(
  "subscript must have return type",
  30901,
  "subscript must have return type",
  span("loc", "__subscript declaration must have a return type specified after '->'")
)

err(
  "accessor must be inside subscript or property",
  31100,
  "accessor not inside subscript or property",
  span("decl:Decl", "an accessor declaration is only allowed inside a subscript or property declaration")
)

err(
  "non set accessor must not have params",
  31101,
  "non-set accessor must not have parameters",
  span("decl:Decl", "accessors other than 'set' must not have parameters")
)

err(
  "set accessor may not have more than one param",
  31102,
  "set accessor has too many parameters",
  span("param:Decl", "a 'set' accessor may not have more than one parameter")
)

err(
  "set accessor param wrong type",
  31102,
  "set accessor parameter has wrong type",
  span("param:Decl", "'set' parameter '~param' has type '~actualType:Type' which does not match the expected type '~expectedType:Type'")
)

err(
  "bit field too wide",
  31300,
  "bit-field exceeds type width",
  span("loc", "bit-field size (~width:int) exceeds the width of its type ~type:Type (~typeWidth:int)")
)

err(
  "bit field non integral",
  31301,
  "bit-field type must be integral",
  span("loc", "bit-field type (~type:Type) must be an integral type")
)

err(
  "expected integer constant wrong type",
  39999,
  "expected integer constant",
  span("loc", "expected integer constant (found: '~type')")
)

err(
  "expected integer constant not constant",
  39999,
  "expression is not a compile-time constant",
  span("expr:Expr", "expression does not evaluate to a compile-time constant")
)

err(
  "expected integer constant not literal",
  39999,
  "could not extract integer constant value",
  span("loc", "could not extract value from integer constant")
)

err(
  "expected ray tracing payload object at location but missing",
  39999,
  "missing raytracing payload at location",
  span("loc", "raytracing payload expected at location ~location:int but it is missing")
)

err(
  "no applicable overload for name with args",
  39999,
  "no applicable overload found",
  span("expr:Expr", "no overload for '~name' applicable to arguments of type ~args")
)

err(
  "no applicable with args",
  39999,
  "no applicable overload found",
  span("expr:Expr", "no overload applicable to arguments of type ~args")
)

err(
  "ambiguous overload for name with args",
  39999,
  "ambiguous overload call",
  span("expr:Expr", "ambiguous call to '~name' with arguments of type ~args")
)

err(
  "ambiguous overload with args",
  39999,
  "ambiguous overload call",
  span("expr:Expr", "ambiguous call to overloaded operation with arguments of type ~args")
)

err(
  "case outside switch",
  39999,
  "case outside switch statement",
  span("stmt", "'case' not allowed outside of a 'switch' statement")
)

err(
  "default outside switch",
  39999,
  "default outside switch statement",
  span("stmt", "'default' not allowed outside of a 'switch' statement")
)

err(
  "expected a generic",
  39999,
  "expected a generic",
  span("expr:Expr", "expected a generic when using '<...>' (found: '~type:Type')")
)

-- uses notes: genericSignatureTried
err(
  "generic argument inference failed",
  39999,
  "generic argument inference failed",
  span("loc", "could not specialize generic for arguments of type ~args")
)

err(
  "ambiguous reference",
  39999,
  "ambiguous reference",
  span("loc", "ambiguous reference to '~name'")
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
  "function not declared as prefix operator",
  span("loc", "function called as prefix operator was not declared `__prefix`")
)
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
