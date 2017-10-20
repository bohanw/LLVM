; ModuleID = 'correct3.slicm.bc'
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
  %4 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 97), align 4
  %flag = alloca i1
  store i1 false, i1* %flag
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.end
  %5 = load i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 100
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  %6 = load i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom4
  %7 = load i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %7, 95
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom7
  store i32 1, i32* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %loadflag = load i1* %flag
  br i1 %loadflag, label %if.end.split, label %if.end.split.split

if.end.split:                                     ; preds = %if.end
  br label %if.end.split.split

if.end.split.split:                               ; preds = %if.end.split, %if.end
  %dummy = add i32 0, 0
  %9 = load i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32]* @b, i32 0, i64 %idxprom9
  store i32 %4, i32* %arrayidx10, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %if.end.split.split
  %10 = load i32* %i, align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond1

for.end13:                                        ; preds = %for.cond1
  %11 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 97), align 4
  %12 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 98), align 4
  %13 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 99), align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %12, i32 %13)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
