#!/bin/bash

fname=$1
#source ./exec_info_input_1
if [ -f ./llvmprof.out ]; then
	rm llvmprof.out
fi

clang -emit-llvm -o $fname.bc -c ./src/$fname.c 
opt -insert-edge-profiling $fname.bc -o $fname.profile.bc 
llc $fname.profile.bc -o $fname.profile.s
g++ -o $fname.profile $fname.profile.s /opt/llvm/Release+Asserts/lib/libprofile_rt.so
./$fname.profile $2

opt -f -load  /home/bohanw/583/mypass/Release+Asserts/lib/mypass.so -profile-loader \
-profile-info-file=llvmprof.out -mypass $fname.bc > /dev/null

