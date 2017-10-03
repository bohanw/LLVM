; ModuleID = 'hello.profile.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EdgeProfCounters = internal global [5 x i32] zeroinitializer

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %newargc = call i32 @llvm_start_edge_profiling(i32 0, i8** null, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 0), i32 5)
  %OldFuncCounter = load i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 0)
  %NewFuncCounter = add i32 %OldFuncCounter, 1
  store i32 %NewFuncCounter, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 0)
  store i32 0, i32* %retval
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32* %a, align 4
  %1 = load i32* %b, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %c, align 4
  %OldFuncCounter1 = load i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 1)
  %NewFuncCounter2 = add i32 %OldFuncCounter1, 1
  store i32 %NewFuncCounter2, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32* %b, align 4
  %cmp = icmp slt i32 %2, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %OldFuncCounter3 = load i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 2)
  %NewFuncCounter4 = add i32 %OldFuncCounter3, 1
  store i32 %NewFuncCounter4, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 2)
  %3 = load i32* %c, align 4
  %add1 = add nsw i32 %3, 1
  store i32 %add1, i32* %c, align 4
  %4 = load i32* %b, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %b, align 4
  %OldFuncCounter7 = load i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 4)
  %NewFuncCounter8 = add i32 %OldFuncCounter7, 1
  store i32 %NewFuncCounter8, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %OldFuncCounter5 = load i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 3)
  %NewFuncCounter6 = add i32 %OldFuncCounter5, 1
  store i32 %NewFuncCounter6, i32* getelementptr inbounds ([5 x i32]* @EdgeProfCounters, i32 0, i32 3)
  %5 = load i32* %c, align 4
  ret i32 %5
}

declare i32 @llvm_start_edge_profiling(i32, i8**, i32*, i32)

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
