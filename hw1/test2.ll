; ModuleID = 'test2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @f1(i32 %it) #0 {
entry:
  %it.addr = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 %it, i32* %it.addr, align 4
  %0 = load i32* %it.addr, align 4
  %1 = load i32* %it.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %d, align 4
  %2 = load i32* %d, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32* %a, align 4
  %1 = load i32* %b, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32* %b, align 4
  %cmp = icmp slt i32 %2, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32* %c, align 4
  %add1 = add nsw i32 %3, 1
  store i32 %add1, i32* %c, align 4
  %4 = load i32* %b, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %b, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32* %b, align 4
  %call = call i32 @f1(i32 %5)
  store i32 %call, i32* %a, align 4
  %6 = load i32* %c, align 4
  %7 = load i32* %a, align 4
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 %6, i32 %7)
  %8 = load i32* %c, align 4
  ret i32 %8
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
