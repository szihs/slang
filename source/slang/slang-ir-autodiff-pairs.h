// slang-ir-autodiff-pairs.h
#pragma once

#include "slang-compiler.h"
#include "slang-ir-autodiff.h"
#include "slang-ir-clone.h"
#include "slang-ir-dce.h"
#include "slang-ir-eliminate-phis.h"
#include "slang-ir-inst-pass-base.h"
#include "slang-ir-insts.h"
#include "slang-ir-util.h"
#include "slang-ir.h"

namespace Slang
{

bool processPairTypes(AutoDiffSharedContext* context);

// Rewrites all uses of `DifferentialPairType` into `DifferentialPairUserCodeType` in the original
// func, so they are not to be confused with real mixed differential code generated by forward diff
// pass.
void rewriteDifferentialPairToUserCode(IRModule* module);

} // namespace Slang
