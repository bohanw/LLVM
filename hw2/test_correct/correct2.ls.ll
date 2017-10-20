; ModuleID = 'correct2.ls.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common global [100 x i32] zeroinitializer, align 16
@b = common global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"%d, %d, %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %ptra = alloca i32*, align 8
  store i32 0, i32* %retval
  store i32 0, i32* %x, align 4
  store i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i32 0), i32** %ptra, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 100
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %5 = load i32* %i, align 4
  %cmp4 = icmp sgt i32 %5, 999
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom5
  store i32 1, i32* %arrayidx6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %7 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 97), align 4
  %mul = mul nsw i32 %7, 3
  %add7 = add nsw i32 %mul, 2
  %8 = load i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32]* @b, i32 0, i64 %idxprom8
  store i32 %add7, i32* %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %if.end
  %9 = load i32* %i, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %10 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 97), align 4
  %11 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 98), align 4
  %12 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 99), align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %10, i32 %11, i32 %12)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
