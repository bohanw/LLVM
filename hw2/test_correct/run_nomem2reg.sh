#!/bin/bash
fname=$1
mode=$2 # Release or Debug
clang -emit-llvm -o $fname.bc -c $fname.c
opt -loop-simplify < $fname.bc > $fname.ls.bc
opt -insert-edge-profiling $fname.ls.bc -o $fname.profile.ls.bc
llc $fname.profile.ls.bc -o $fname.profile.ls.s
g++ -o $fname.profile $fname.profile.ls.s /opt/llvm-debug/Release+Debug+Asserts/lib/libprofile_rt.so
./$fname.profile

## Get Lamp profile
opt -load /home/bohanw/583/hw2/slicm/Release+Asserts/lib/slicm.so -lamp-insts -insert-lamp-profiling -insert-lamp-loop-profiling -insert-lamp-init < $fname.ls.bc > $fname.lamp.bc 
llc < $fname.lamp.bc > $fname.lamp.s
g++ -o $fname.lamp.exe $fname.lamp.s /home/bohanw/583/hw2/slicm/tools/lamp-profiler/lamp_hooks.o
./$fname.lamp.exe

## Run your pass
opt -basicaa -load /home/bohanw/583/hw2/slicm/Release+Asserts/lib/slicm.so -lamp-inst-cnt -lamp-map-loop -lamp-load-profile -profile-loader -profile-info-file=llvmprof.out -slicm   < $fname.ls.bc > $fname.slicm.bc 

## Compare original and modified IR
llvm-dis $fname.ls.bc
llvm-dis $fname.slicm.bc

## Generate executables and ensure that your modified IR generates correct output
llc $fname.bc -o $fname.s
g++ -o $fname $fname.s
llc $fname.slicm.bc -o $fname.slicm.s
g++ -o $fname.slicm $fname.slicm.s

### Generate DOT graph and covert to  pdf
opt -dot-cfg $fname.slicm.bc >& /dev/null
dot -Tpdf cfg.main.dot -o $fname.pdf

### Run MEM2REG pass
#opt -basicaa -load /home/bohanw/583/hw2/slicm/Release+Asserts/lib/slicm.so -lamp-inst-cnt -lamp-map-loop -lamp-load-profile -profile-loader  -profile-info-file=llvmprof.out  -mem2reg  < $fname.slicm.bc > $fname.slicm.mem2reg.bc 

#opt -dot-cfg $fname.slicm.mem2reg.bc >& /dev/null
#oot -Tpdf cfg.main.dot -o $fname.mem2reg.pdf
