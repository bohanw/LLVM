#!/bin/bash
fname = $1
rm llvmprof.out # Otherwise your profile runs are added together

clang -emit-llvm -o $fname.bc -c $fname.c || { echo "Failed" ;exit 1;}
opt -loop-simplify < $fname.bc > $fname.ls.bc || {echo "fail to opt";exit 1;}
opt -insert-edge-profiling $fname.ls.bc -o $fname.profile.ls.bc 
llc $fname.profile.ls.bc -o $fname.profile.ls.s 
g++ -o $fname.profile $fname.profile.s /opt/llvm/Release+Asserts/lib/libprofile_rt.so
./$fname.profile $2


opt -load /home/bohanw/583/ldstats/Release+Asserts/lib/mypass.so -lamp-insts -insert-lamp-profiling -insert-lamp-loop-profiling -insert-lamp-init < $fname.ls.bc >  $fname.lamp.bc ||  {echo "Failed";exit 1;}
llc < $fname.lamp.bc > $fname.lamp.s || {echo "failed llc"; exit 1;}
g++ -o $fname.lamp.exe $fname.lamp.s /home/bohanw/583/ldstats/tools/lamp-profiler/lamp_hook.o || { echo "can't compile g++"; exit 1;}

./$fname.lamp.exe $2

echo "Done generating LAMP profile"

