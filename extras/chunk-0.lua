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
