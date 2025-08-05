#include "include/slang.h"
#include "include/slang-com-ptr.h"
#include <iostream>
#include <string>

using namespace slang;
using namespace Slang;

int main()
{
    ComPtr<IGlobalSession> globalSession;
    slang_createGlobalSession(SLANG_API_VERSION, globalSession.writeRef());
    
    TargetDesc targetDesc = {};
    targetDesc.format = SLANG_HLSL;
    targetDesc.profile = globalSession->findProfile("sm_5_0");
    
    SessionDesc sessionDesc = {};
    sessionDesc.targetCount = 1;
    sessionDesc.targets = &targetDesc;
    
    ComPtr<ISession> session;
    globalSession->createSession(sessionDesc, session.writeRef());
    
    // Load the test module from file
    ComPtr<IBlob> diagnosticBlob;
    auto module = session->loadModule("test-interface-reflection.slang", diagnosticBlob.writeRef());
    
    if (!module)
    {
        std::cout << "Failed to load module!" << std::endl;
        if (diagnosticBlob)
            std::cout << (const char*)diagnosticBlob->getBufferPointer() << std::endl;
        return 1;
    }
    
    std::cout << "Module loaded successfully" << std::endl;
    
    // Get the reflection
    auto reflection = module->getLayout();
    if (!reflection)
    {
        std::cout << "Could not get reflection" << std::endl;
        return 1;
    }
    
    // Find the Impl type
    TypeReflection* implType = reflection->findTypeByName("Impl");
    if (!implType)
    {
        std::cout << "Could not find type 'Impl'" << std::endl;
        return 1;
    }
    
    std::cout << "Found type 'Impl'" << std::endl;
    
    // Find the step function on the Impl type
    FunctionReflection* stepFunc = reflection->findFunctionByNameInType(implType, "step");
    if (!stepFunc)
    {
        std::cout << "Could not find function 'step' in type 'Impl'" << std::endl;
        return 1;
    }
    
    std::cout << "Found function 'step'" << std::endl;
    
    // Get the function name - this is where the bug occurs
    const char* funcName = stepFunc->getName();
    if (!funcName)
    {
        std::cout << "BUG REPRODUCED: Function name is NULL!" << std::endl;
        return 1;
    }
    
    std::cout << "Function name: " << funcName << std::endl;
    return 0;
}