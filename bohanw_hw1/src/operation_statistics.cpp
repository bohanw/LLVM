/*
 * File: mypass.c
 *
 * Description:
 *  This is a simple pass to compute dynamic operation statistics of instructions
 */

#include <stdio.h>
#include <stdlib.h>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include <fstream>
#include "llvm/IR/InstrTypes.h"
#include "llvm/Support/CFG.h"

//#include "../../include/mypass.h"
/* LLVM Header File
#include "llvm/Support/DataTypes.h"


*/

using namespace llvm;

namespace {
  struct mypass : public FunctionPass {
    static char ID;
    ProfileInfo* PI;
    mypass() : FunctionPass(ID) {}

    virtual bool runOnFunction(Function &F) {
      PI = &getAnalysis<ProfileInfo>();
      int intALUCnt = 0;
      int fltALUCnt = 0;
      int memCnt = 0;
      int brCnt = 0;
      int othersCnt = 0;
      int dynOpsCnt = 0;
      int biasedBr = 0;
      int unbiasedBr  =0;
      unsigned int ldCnt = 0;
      unsigned numSuccessor;
      //std::ofstream myfile;

      FILE* f;
      f= fopen("benchmark.opcstats","a");
      for(Function::iterator it = F.begin(); it != F.end();it++){
        if(PI->getExecutionCount(it) == -1.0)
            dynOpsCnt += 0;
        else {
          //foreach basic block
          unsigned totalWeight = 0;
          unsigned currWeight = 0;
          unsigned maxWeight = currWeight;
          double bias = 0.0;
          numSuccessor = it->getTerminator()->getNumSuccessors();
          if(numSuccessor > 0){
            for(succ_iterator SI = succ_begin(it); SI != succ_end(it);++SI){
              currWeight = PI->getEdgeWeight(PI->getEdge(it, *SI));
              totalWeight += currWeight;
              if(currWeight > maxWeight)
                maxWeight = currWeight;
            }
            bias = (double) maxWeight / (double) totalWeight;
            if(bias > 0.8) {
              biasedBr += PI->getExecutionCount(it);
            }
            else {
              unbiasedBr += PI->getExecutionCount(it);
            }
            
          }
          for(BasicBlock::iterator bbit = it->begin(); bbit != it->end();bbit++){
            // reachable BasicBlock
            
            switch(bbit->getOpcode()) {
              //Integer ALU
              case Instruction::Add: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Sub: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Mul: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::UDiv: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::SDiv: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::URem: { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Shl: { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::LShr: { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::AShr: { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::And : {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Or: {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Xor : { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::SRem : { 
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::ICmp : {
                intALUCnt += PI->getExecutionCount(it);
                break;
              }
              //Float ALU
              case Instruction::FAdd: {
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }
              case Instruction::FSub: { 
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }
              case Instruction::FMul: { 
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }
              case Instruction::FDiv: { 
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }
              case Instruction::FRem: {
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }
              case Instruction::FCmp: {
                fltALUCnt +=PI->getExecutionCount(it);
                break;
              }

              //Memory Operation
              case Instruction::Alloca: {
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Load: {
                ldCnt += PI->getExecutionCount(it);
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Store: { 
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::GetElementPtr: { 
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Fence: {
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::AtomicCmpXchg: {
                memCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::AtomicRMW: {
                memCnt += PI->getExecutionCount(it);
                break;
              }

              //Branch Instruction(TerminatorInst)
              case Instruction::Br : {
                brCnt += PI->getExecutionCount(it);
                break;
              }
              case Instruction::Switch: {
                brCnt+= PI->getExecutionCount(it);
                break;
              }
              case Instruction::IndirectBr: {
                brCnt += PI->getExecutionCount(it);
                break;
              }
              //Other
              default: 
                {
                  othersCnt += PI->getExecutionCount(it);
                  break;
                }
            }
            dynOpsCnt += PI->getExecutionCount(it);
          }
        }
      }

      double intFrac = 0, fltFrac = 0, memFrac = 0,biasedFrac = 0,unbiasedFrac = 0,othersFrac = 0;

      if(dynOpsCnt != 0){
        intFrac = (double) intALUCnt /  dynOpsCnt;
        fltFrac = (double)fltALUCnt / dynOpsCnt;
        memFrac = (double) memCnt / dynOpsCnt;
        biasedFrac = (double)biasedBr / dynOpsCnt;
        unbiasedFrac = (double) unbiasedBr / dynOpsCnt;
        othersFrac = (double) othersCnt/dynOpsCnt;
      }
      //*********Write to file

      fprintf(f, "%s, %5d, %5f, %5f, %5f, %5f, %5f, %5f\n", F.getName().data(), dynOpsCnt, intFrac, fltFrac, memFrac, biasedFrac,unbiasedFrac,othersFrac );
      
      fclose(f);
      //myfile.close();
      return true;
    }


    void getAnalysisUsage(AnalysisUsage &AU) const{
      AU.addRequired<ProfileInfo>();
    }
  };
}

char mypass::ID = 0;
static RegisterPass<mypass> X("mypass", "Hello World Pass", false, false);

