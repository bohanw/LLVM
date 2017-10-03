/*
 * File: mypass.cpp
 *
 * Description:
 *  This is a memory profile pass along with LAMP profiler
 */

#include <stdio.h>
#include <stdlib.h>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/DataLayout.h" //#include "llvm/Target/TargetData.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/Debug.h"
#include "llvm/ADT/IndexedMap.h"
#include <map>
#include <sstream>
#include <fstream>
#include <iostream>
#include <string>
#include <sys/stat.h>
#include "LAMP/LAMPProfiling.h"
#include "LAMP/LAMPLoadProfile.h"

//#include "../../include/mypass.h"
/* LLVM Header File
#include "llvm/Support/DataTypes.h"


*/

using namespace llvm;

namespace {
  struct mypass : public FunctionPass {
    static char ID;
    ProfileInfo* PI;
    LAMPLoadProfile *LLP;
    mypass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function &F) {
      PI = &getAnalysis<ProfileInfo>();
      LLP = &getAnalysis<LAMPLoadProfile>();

      //From LAMP LOAD PROFILE
      std::map<unsigned int, Instruction*> id_inst_map = LLP->IdToInstMap;   // Inst* -> InstId
      std::map<Instruction*, unsigned int> inst_id_map = LLP->InstToIdMap;   // InstID -> Inst*
      std::map<std::pair<Instruction*, Instruction*>*, unsigned int> dep_count_map = LLP->DepToTimesMap; 
      FILE * f;
      // NEW data structure
      //Mapping from ID to counts and fraction
      std::map<unsigned int, double> id_fraction_map;
      std::map<unsigned int, unsigned int> id_depcnt_map;
      std::map<unsigned int, unsigned int > id_count_map;

      unsigned int count = 0;

      //Count total load executions for each load instruction
      f = fopen("benchmark.ldstats","a");
        for (Function::iterator b = F.begin(),be = F.end(); b != be;++b) {
          if(PI->getExecutionCount(b) != -1.0) 
            for (BasicBlock::iterator i = b->begin(); i != b->end(); ++i){
              if(i->getOpcode() == Instruction::Load) {
                if(id_count_map.count(inst_id_map[i]) == 0)
                  id_count_map[inst_id_map[i]];
               
                id_count_map[inst_id_map[i]] += (unsigned int ) PI->getExecutionCount(b);

                if(id_fraction_map.count(inst_id_map[i]) == 0)
                  id_fraction_map[inst_id_map[i]];
              }
            }
          
        }

        //Get total depedency count of load instructions from DepToTimesMap
        for(std::map<std::pair<Instruction*, Instruction*>*,unsigned int>::iterator it = dep_count_map.begin();it!=dep_count_map.end();++it){
          Instruction* instA = it->first->first;
          //Instruction* instB = it->first->second;
          if(instA->getOpcode() == Instruction::Load) {
            count = it->second;
            id_depcnt_map[inst_id_map[instA]] += count;
          }
        }

        for(std::map<unsigned int, double>::iterator iter = id_fraction_map.begin();iter!=id_fraction_map.end();++iter){
          if(id_count_map[iter->first] == 0)
            id_fraction_map[iter->first] = 0;
          else 
            id_fraction_map[iter->first] = (double) id_depcnt_map[iter->first] / (double) id_count_map[iter->first];
        }

        //Print fractions to file
      for(std::map<unsigned int, double>::iterator it = id_fraction_map.begin();it!= id_fraction_map.end();++it){
        fprintf(f,"%1d, %5f\n",it->first,it->second);
      }    
      fclose(f);  
      return true;
    }


    void getAnalysisUsage(AnalysisUsage &AU) const{
      AU.addRequired<ProfileInfo>();
      AU.addRequired<LAMPLoadProfile>();
    }
  };
}

char mypass::ID = 0;
static RegisterPass<mypass> X("mypass", "LAMP Pass", false, false);

