// slang-support.cpp

#define _CRT_SECURE_NO_WARNINGS 1

#include "slang-support.h"

#include "../../source/core/slang-string-util.h"
#include "../../source/core/slang-test-tool-util.h"
#include "options.h"

#include <assert.h>
#include <stdio.h>

namespace renderer_test
{
using namespace Slang;

// Entry point name to use for vertex/fragment shader
static const char vertexEntryPointName[] = "vertexMain";
static const char fragmentEntryPointName[] = "fragmentMain";
static const char computeEntryPointName[] = "computeMain";
static const char rtEntryPointName[] = "raygenMain";
static const char taskEntryPointName[] = "taskMain";
static const char meshEntryPointName[] = "meshMain";

void ShaderCompilerUtil::Output::set(slang::IComponentType* inSlangProgram)
{
    slangProgram = inSlangProgram;
    desc.slangGlobalScope = inSlangProgram;
}

void ShaderCompilerUtil::Output::reset()
{
    {
        desc.slangGlobalScope = nullptr;
    }

    globalSession = nullptr;
    m_requestDEPRECATED = nullptr;
}

static SlangResult _compileProgramImpl(
    slang::IGlobalSession* globalSession,
    const Options& options,
    const ShaderCompilerUtil::Input& input,
    const ShaderCompileRequest& request,
    ShaderCompilerUtil::Output& out)
{
    out.reset();

    slang::SessionDesc sessionDesc = {};
    List<slang::PreprocessorMacroDesc> macros;
    sessionDesc.preprocessorMacroCount = (SlangInt)macros.getCount();
    sessionDesc.preprocessorMacros = macros.getBuffer();

    ComPtr<SlangCompileRequest> slangRequest = nullptr;
    SLANG_ALLOW_DEPRECATED_BEGIN
    globalSession->createCompileRequest(slangRequest.writeRef());
    SLANG_ALLOW_DEPRECATED_END
    out.m_requestDEPRECATED = slangRequest;
    out.globalSession = globalSession;

    // Parse all the extra args
    {
        List<const char*> args;
        for (const auto& arg : options.downstreamArgs.getArgsByName("slang"))
        {
            args.add(arg.value.getBuffer());
            // The -load-repro feature is not maintained, and not supported by the new compile API.
            // TODO: Remove this when the feature has been deprecated.
            SLANG_ASSERT(arg.value != "-load-repro");
        }

        // If there are additional args parse them
        if (args.getCount())
        {
            const auto res =
                slangRequest->processCommandLineArguments(args.getBuffer(), int(args.getCount()));
            // If there is a parse failure and diagnostic, output it
            if (SLANG_FAILED(res))
            {
                if (auto diagnostics = slangRequest->getDiagnosticOutput())
                {
                    fprintf(stderr, "%s", diagnostics);
                }
                return res;
            }
        }
    }

    spSetCodeGenTarget(slangRequest, input.target);
    if (input.profile.getLength()) // do not set profile unless requested
        spSetTargetProfile(
            slangRequest,
            0,
            spFindProfile(out.globalSession, input.profile.getBuffer()));
    if (options.generateSPIRVDirectly)
        spSetTargetFlags(slangRequest, 0, SLANG_TARGET_FLAG_GENERATE_SPIRV_DIRECTLY);
    else
        spSetTargetFlags(slangRequest, 0, 0);

    slangRequest->setAllowGLSLInput(options.allowGLSL);

    // Define a macro so that shader code in a test can detect what language we
    // are nominally working with.
    char const* langDefine = nullptr;
    switch (input.sourceLanguage)
    {
    case SLANG_SOURCE_LANGUAGE_GLSL:
        spAddPreprocessorDefine(slangRequest, "__GLSL__", "1");
        break;

    case SLANG_SOURCE_LANGUAGE_SLANG:
        spAddPreprocessorDefine(slangRequest, "__SLANG__", "1");
        // fall through
    case SLANG_SOURCE_LANGUAGE_HLSL:
        spAddPreprocessorDefine(slangRequest, "__HLSL__", "1");
        break;
    case SLANG_SOURCE_LANGUAGE_C:
        spAddPreprocessorDefine(slangRequest, "__C__", "1");
        break;
    case SLANG_SOURCE_LANGUAGE_CPP:
        spAddPreprocessorDefine(slangRequest, "__CPP__", "1");
        break;
    case SLANG_SOURCE_LANGUAGE_CUDA:
        spAddPreprocessorDefine(slangRequest, "__CUDA__", "1");
        break;
    case SLANG_SOURCE_LANGUAGE_WGSL:
        spAddPreprocessorDefine(slangRequest, "__WGSL__", "1");
        break;

    default:
        assert(!"unexpected");
        break;
    }

    if (input.passThrough != SLANG_PASS_THROUGH_NONE)
    {
        spSetPassThrough(slangRequest, input.passThrough);
    }
    else
    {
        spSetCompileFlags(slangRequest, SLANG_COMPILE_FLAG_NO_CODEGEN);
    }


    const auto sourceLanguage = input.sourceLanguage;

    int translationUnitIndex = 0;
    {
        translationUnitIndex = spAddTranslationUnit(slangRequest, sourceLanguage, nullptr);
        spAddTranslationUnitSourceString(
            slangRequest,
            translationUnitIndex,
            request.source.path,
            request.source.dataBegin);
    }

    const int globalSpecializationArgCount = int(request.globalSpecializationArgs.getCount());
    for (int ii = 0; ii < globalSpecializationArgCount; ++ii)
    {
        spSetTypeNameForGlobalExistentialTypeParam(
            slangRequest,
            ii,
            request.globalSpecializationArgs[ii].getBuffer());
    }

    const int entryPointSpecializationArgCount =
        int(request.entryPointSpecializationArgs.getCount());
    auto setEntryPointSpecializationArgs = [&](int entryPoint)
    {
        for (int ii = 0; ii < entryPointSpecializationArgCount; ++ii)
        {
            spSetTypeNameForEntryPointExistentialTypeParam(
                slangRequest,
                entryPoint,
                ii,
                request.entryPointSpecializationArgs[ii].getBuffer());
        }
    };

    Index explicitEntryPointCount = request.entryPoints.getCount();
    for (Index ee = 0; ee < explicitEntryPointCount; ++ee)
    {
        if (options.dontAddDefaultEntryPoints)
        {
            // If default entry points are not to be added, then
            // the `request.entryPoints` array should have been
            // left empty.
            //
            SLANG_ASSERT(false);
        }

        auto& entryPointInfo = request.entryPoints[ee];
        int entryPointIndex = spAddEntryPoint(
            slangRequest,
            translationUnitIndex,
            entryPointInfo.name,
            entryPointInfo.slangStage);
        SLANG_ASSERT(entryPointIndex == ee);

        setEntryPointSpecializationArgs(entryPointIndex);
    }

    spSetLineDirectiveMode(slangRequest, SLANG_LINE_DIRECTIVE_MODE_NONE);

    if (options.generateSPIRVDirectly)
    {
        if (options.disableDebugInfo)
            spSetDebugInfoLevel(slangRequest, SLANG_DEBUG_INFO_LEVEL_NONE);
        else
            spSetDebugInfoLevel(slangRequest, SLANG_DEBUG_INFO_LEVEL_STANDARD);
    }

    const SlangResult res = spCompile(slangRequest);

    if (auto diagnostics = spGetDiagnosticOutput(slangRequest))
    {
        StdWriters::getError().print("%s", diagnostics);
    }

    SLANG_RETURN_ON_FAIL(res);

    ComPtr<slang::IComponentType> linkedSlangProgram;

    List<ShaderCompileRequest::EntryPoint> actualEntryPoints;
    if (input.passThrough == SLANG_PASS_THROUGH_NONE)
    {
        // In the case where pass-through compilation is not being used,
        // we can use the Slang reflection information to discover what
        // the entry points were, and then use those to drive the
        // loading of code.
        //
        auto reflection = slang::ProgramLayout::get(slangRequest);
        SLANG_RETURN_ON_FAIL(spCompileRequest_getProgramWithEntryPoints(
            slangRequest,
            linkedSlangProgram.writeRef()));

        // Get the amount of entry points in reflection
        Index entryPointCount = Index(reflection->getEntryPointCount());

        // We must have at least one entry point (whether explicit or implicit)
        SLANG_ASSERT(entryPointCount);

        for (Index ee = 0; ee < entryPointCount; ++ee)
        {
            auto entryPoint = reflection->getEntryPointByIndex(ee);
            const char* entryPointName = entryPoint->getName();
            SLANG_ASSERT(entryPointName);

            auto slangStage = entryPoint->getStage();

            ShaderCompileRequest::EntryPoint entryPointInfo;
            entryPointInfo.name = entryPointName;
            entryPointInfo.slangStage = slangStage;

            actualEntryPoints.add(entryPointInfo);
        }
    }
    else
    {
        actualEntryPoints = request.entryPoints;
    }

    if (request.typeConformances.getCount())
    {
        ComPtr<slang::ISession> session;
        slangRequest->getSession(session.writeRef());
        List<ComPtr<slang::ITypeConformance>> typeConformanceComponents;
        List<slang::IComponentType*> componentsRawPtr;
        componentsRawPtr.add(linkedSlangProgram.get());
        auto reflection = slang::ProgramLayout::get(slangRequest);
        ComPtr<ISlangBlob> outDiagnostic;
        for (auto& conformance : request.typeConformances)
        {
            auto derivedType = reflection->findTypeByName(conformance.derivedTypeName.getBuffer());
            auto baseType = reflection->findTypeByName(conformance.baseTypeName.getBuffer());
            ComPtr<slang::ITypeConformance> conformanceComponentType;
            session->createTypeConformanceComponentType(
                derivedType,
                baseType,
                conformanceComponentType.writeRef(),
                conformance.idOverride,
                outDiagnostic.writeRef());
            typeConformanceComponents.add(conformanceComponentType);
            componentsRawPtr.add(conformanceComponentType);
        }
        ComPtr<slang::IComponentType> newProgram;
        session->createCompositeComponentType(
            componentsRawPtr.getBuffer(),
            componentsRawPtr.getCount(),
            newProgram.writeRef(),
            outDiagnostic.writeRef());
        linkedSlangProgram = newProgram;
    }
    out.set(linkedSlangProgram);
    return SLANG_OK;
}

static SlangResult compileProgram(
    slang::IGlobalSession* globalSession,
    const Options& options,
    const ShaderCompilerUtil::Input& input,
    const ShaderCompileRequest& request,
    ShaderCompilerUtil::Output& out)
{
    if (input.passThrough == SLANG_PASS_THROUGH_NONE)
    {
        return _compileProgramImpl(globalSession, options, input, request, out);
    }
    else
    {
        bool canUseSlangForPrecompile = false;
        switch (input.passThrough)
        {
        case SLANG_PASS_THROUGH_DXC:
        case SLANG_PASS_THROUGH_FXC:
            canUseSlangForPrecompile = true;
            break;
        default:
            break;
        }
        // If we are doing a HLSL pass-through compilation, then we can't rely
        // on the downstream compiler for the reflection information that
        // will drive all of our parameter binding. As such, we will first
        // compile with Slang to get reflection information, and then
        // compile in another pass using the desired downstream compiler
        // so that we can get the refleciton information we need.
        //
        ShaderCompilerUtil::Output slangOutput;
        if (canUseSlangForPrecompile)
        {
            ShaderCompilerUtil::Input slangInput = input;
            slangInput.sourceLanguage = SLANG_SOURCE_LANGUAGE_SLANG;
            slangInput.passThrough = SLANG_PASS_THROUGH_NONE;
            // TODO: we want to pass along a flag to skip codegen...


            SLANG_RETURN_ON_FAIL(
                _compileProgramImpl(globalSession, options, slangInput, request, slangOutput));
        }

        // Now we have what we need to be able to do the downstream compile better.
        //
        // TODO: We should be able to use the output from the Slang compilation
        // to fill in the actual entry points to be used for this compilation,
        // so that discovery of entry points via `[shader(...)]` attributes will work.
        //
        SLANG_RETURN_ON_FAIL(_compileProgramImpl(globalSession, options, input, request, out));

        out.m_requestDEPRECATED = slangOutput.m_requestDEPRECATED;
        // slangOutput.desc.slangGlobalScope and slangOutput.slangProgram are the same object, but
        // the latter is a ComPtr while the former isn't. Therefore we need to detach so that the
        // object doesn't get destroyed.
        SLANG_ASSERT(slangOutput.desc.slangGlobalScope == slangOutput.slangProgram.get());
        out.desc.slangGlobalScope = slangOutput.slangProgram.detach();
        slangOutput.m_requestDEPRECATED = nullptr;
        return SLANG_OK;
    }
}

// Helper for compileWithLayout
/* static */ SlangResult readSource(const String& inSourcePath, List<char>& outSourceText)
{
    // Read in the source code
    FILE* sourceFile = fopen(inSourcePath.getBuffer(), "rb");
    if (!sourceFile)
    {
        fprintf(stderr, "error: failed to open '%s' for reading\n", inSourcePath.getBuffer());
        return SLANG_FAIL;
    }
    fseek(sourceFile, 0, SEEK_END);
    size_t sourceSize = ftell(sourceFile);
    fseek(sourceFile, 0, SEEK_SET);

    outSourceText.setCount(sourceSize + 1);
    if (fread(outSourceText.getBuffer(), sourceSize, 1, sourceFile) != 1)
    {
        fprintf(stderr, "error: failed to read from '%s'\n", inSourcePath.getBuffer());
        return SLANG_FAIL;
    }
    fclose(sourceFile);
    outSourceText[sourceSize] = 0;

    return SLANG_OK;
}

/* static */ SlangResult ShaderCompilerUtil::compileWithLayout(
    slang::IGlobalSession* globalSession,
    const Options& options,
    const Input& input,
    ShaderCompilerUtil::OutputAndLayout& output)
{
    String sourcePath = options.sourcePath;
    auto shaderType = options.shaderType;

    List<char> sourceText;
    SLANG_RETURN_ON_FAIL(readSource(sourcePath, sourceText));

    if (input.sourceLanguage == SLANG_SOURCE_LANGUAGE_CPP ||
        input.sourceLanguage == SLANG_SOURCE_LANGUAGE_C)
    {
        // Add an include of the prelude
        ComPtr<ISlangBlob> prelude;
        globalSession->getLanguagePrelude(input.sourceLanguage, prelude.writeRef());

        String preludeString = StringUtil::getString(prelude);

        // Add the prelude
        StringBuilder builder;
        builder << preludeString << "\n";
        builder << UnownedStringSlice(sourceText.getBuffer(), sourceText.getCount());

        sourceText.setCount(builder.getLength());
        memcpy(sourceText.getBuffer(), builder.getBuffer(), builder.getLength());
    }

    output.sourcePath = sourcePath;

    auto& layout = output.layout;

    // Default the amount of renderTargets based on shader type
    switch (shaderType)
    {
    default:
        layout.numRenderTargets = 1;
        break;

    case Options::ShaderProgramType::Compute:
    case Options::ShaderProgramType::RayTracing:
        layout.numRenderTargets = 0;
        break;
    }

    // Deterministic random generator
    RefPtr<RandomGenerator> rand = RandomGenerator::create(0x34234);

    // Parse the layout
    layout.parse(rand, sourceText.getBuffer());

    // Setup SourceInfo
    ShaderCompileRequest::SourceInfo sourceInfo;
    sourceInfo.path = sourcePath.getBuffer();
    sourceInfo.dataBegin = sourceText.getBuffer();
    // Subtract 1 because it's zero terminated
    sourceInfo.dataEnd = sourceText.getBuffer() + sourceText.getCount() - 1;

    ShaderCompileRequest compileRequest;

    compileRequest.source = sourceInfo;

    // Now we will add the "default" entry point names/stages that
    // are appropriate to the pipeline type being targetted, *unless*
    // the options specify that we should leave out the default
    // entry points and instead rely on the Slang compiler's built-in
    // mechanisms for discovering entry points (e.g., `[shader(...)]`
    // attributes).
    //
    if (!options.dontAddDefaultEntryPoints)
    {
        switch (shaderType)
        {
        case Options::ShaderProgramType::Graphics:
        case Options::ShaderProgramType::GraphicsCompute:
            {
                ShaderCompileRequest::EntryPoint vertexEntryPoint;
                vertexEntryPoint.name = vertexEntryPointName;
                vertexEntryPoint.slangStage = SLANG_STAGE_VERTEX;
                compileRequest.entryPoints.add(vertexEntryPoint);

                ShaderCompileRequest::EntryPoint fragmentEntryPoint;
                fragmentEntryPoint.name = fragmentEntryPointName;
                fragmentEntryPoint.slangStage = SLANG_STAGE_FRAGMENT;
                compileRequest.entryPoints.add(fragmentEntryPoint);
            }
            break;
        case Options::ShaderProgramType::GraphicsTaskMeshCompute:
            {
                ShaderCompileRequest::EntryPoint taskEntryPoint;
                taskEntryPoint.name = taskEntryPointName;
                taskEntryPoint.slangStage = SLANG_STAGE_AMPLIFICATION;
                compileRequest.entryPoints.add(taskEntryPoint);
            }
            [[fallthrough]];
        case Options::ShaderProgramType::GraphicsMeshCompute:
            {
                ShaderCompileRequest::EntryPoint meshEntryPoint;
                meshEntryPoint.name = meshEntryPointName;
                meshEntryPoint.slangStage = SLANG_STAGE_MESH;
                compileRequest.entryPoints.add(meshEntryPoint);

                ShaderCompileRequest::EntryPoint fragmentEntryPoint;
                fragmentEntryPoint.name = fragmentEntryPointName;
                fragmentEntryPoint.slangStage = SLANG_STAGE_FRAGMENT;
                compileRequest.entryPoints.add(fragmentEntryPoint);
            }
            break;
        case Options::ShaderProgramType::RayTracing:
            {
                // Note: Current GPU ray tracing pipelines allow for an
                // almost arbitrary mix of entry points for different stages
                // to be used together (e.g., a single "program" might
                // have multiple any-hit shaders, multiple miss shaders, etc.)
                //
                // Rather than try to define a fixed set of entry point
                // names and stages that the testing will support, we will
                // instead rely on `[shader(...)]` annotations to tell us
                // what entry points are present in the input code.
            }
            break;
        default:
            {
                ShaderCompileRequest::EntryPoint computeEntryPoint;
                computeEntryPoint.name = computeEntryPointName;
                computeEntryPoint.slangStage = SLANG_STAGE_COMPUTE;
                compileRequest.entryPoints.add(computeEntryPoint);
            }
        }
    }
    compileRequest.globalSpecializationArgs = layout.globalSpecializationArgs;
    compileRequest.entryPointSpecializationArgs = layout.entryPointSpecializationArgs;
    for (auto conformance : layout.typeConformances)
    {
        ShaderCompileRequest::TypeConformance c;
        c.derivedTypeName = conformance.derivedTypeName;
        c.baseTypeName = conformance.baseTypeName;
        c.idOverride = conformance.idOverride;
        compileRequest.typeConformances.add(c);
    }
    return compileProgram(globalSession, options, input, compileRequest, output.output);
}

} // namespace renderer_test
