PASSNAME=mypass
SRCCODE=simple
PROFILENAME=llvmprof.out

profile:
	clang -emit-llvm -o $(SRCCODE).bc -c $(SRCCODE).c ; 
	opt -insert-edge-profiling $(SRCCODE).bc -o $(SRCCODE).profile.bc ;
	llc $(SRCCODE).profile.bc -o $(SRCCODE).profile.s ;
	g++ -o $(SRCCODE).profile $(SRCCODE).profile.s /opt/llvm/Release+Asserts/lib/libprofile_rt.so ;
runpass:
	opt -f -load ../$(PASSNAME)/Release+Asserts/lib/$(PASSNAME).so -profile-loader -profile-info-file=$(PROFILENAME) -mypass $(SRCCODE).bc > /dev/null
clean:
	rm -rf $(SRCCODE).profile* $(SRCCODE).bc $(PROFILENAME)
