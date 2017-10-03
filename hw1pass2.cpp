#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/ADT/IndexedMap.h"
#include <map>
#include <sys/stat.h>
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/ProfileInfo.h"
#include "LAMP/LAMPLoadProfile.h"
#include "LAMP/LAMPProfiling.h"

using namespace llvm;

namespace {
  struct mypass: public ModulePass {
    static char ID;
    LAMPLoadProfile *LLP;
    ProfileInfo *PI;
    mypass() : ModulePass(ID) {}
    virtual bool runOnModule(Module &M) {
      LLP = &getAnalysis<LAMPLoadProfile>();
      PI = &getAnalysis<ProfileInfo>();
      std::map<unsigned int, Instruction*> InstructionMap = LLP->IdToInstMap; // Inst* -> InstId
      std::map<Instruction*, unsigned int> InstructionID = LLP->InstToIdMap; // InstID -> Inst*
      std::map<std::pair<Instruction*, Instruction*>*, unsigned int> dependenceMap = LLP->DepToTimesMap;
      std::map<unsigned int, float> dependenceFrac;  
      FILE* f;
      f= fopen("ldstats2.out","a");
      errs() << "LoadID\tDependenceFraction\n";
      for(Module::iterator f=M.begin(),fe=M.end();f!=fe;f++) 
	      for(Function::iterator b=f->begin(),be=f->end();b!=be;++b) 
		      for(BasicBlock::iterator i=b->begin(),ie=b->end();i!=ie;i++) 
			      if(isa<LoadInst>(i)) 
				      dependenceFrac[InstructionID[i]] = 0.0;
      for (std::map<std::pair<Instruction*, Instruction*>*, unsigned int>::iterator I = dependenceMap.begin(), E = dependenceMap.end(); I != E; I++) {
          Instruction *InstrA = I->first->first, *InstrB = I->first->second;
          //if(isa<LoadInst>(InstrA)) 
          if(InstrA->getOpcode() == Instruction::Load ){
		        //dependenceFrac[InstructionID[InstrA]] += ((bool)isa<StoreInst>(InstrB))*(I->second) / (PI->getExecutionCount(InstrA->getParent()));
            fprintf(f,"Load ID : %d Store ID : %d Dep Count : %d Total Execution: %1f\n",InstructionID[InstrA],InstructionID[InstrB],I->second, PI->getExecutionCount(InstrA->getParent()));

            dependenceFrac[InstructionID[InstrA]] +=  (I->second) / (PI->getExecutionCount(InstrA->getParent()));
           } 
      }
      for (std::map<unsigned int, float>::iterator I = dependenceFrac.begin(), E = dependenceFrac.end(); I != E; I++) 
        errs() << format("%ld\t%5f\n",I->first,I->second);

      fclose(f);
      return true;
    }
    void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.addRequired<LAMPLoadProfile>();
      AU.addRequired<ProfileInfo>();
    }
  };
}

char mypass::ID = 0;
static RegisterPass<mypass> X("mypass", "Memory Profiling Pass", false, false);
