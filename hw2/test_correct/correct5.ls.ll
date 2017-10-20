; ModuleID = 'correct5.ls.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common global [100 x i32] zeroinitializer, align 16
@b = common global [100 x i32] zeroinitializer, align 16
@c = common global [100 x i32] zeroinitializer, align 16
@d = common global [100 x i32] zeroinitializer, align 16
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
  %3 = load i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32]* @b, i32 0, i64 %idxprom1
  store i32 1, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %5 = load i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 100
  br i1 %cmp4, label %for.body5, label %for.end28

for.body5:                                        ; preds = %for.cond3
  %6 = load i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom6
  %7 = load i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %7, 95
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %8 = load i32* %i, align 4
  %add = add nsw i32 %8, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4
  %9 = load i32* %i, align 4
  %add11 = add nsw i32 %9, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32]* @b, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %10 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 97), align 4
  %mul = mul nsw i32 %10, 2
  %11 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 98), align 4
  %mul14 = mul nsw i32 %11, 3
  %add15 = add nsw i32 %mul, %mul14
  %12 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  %mul16 = mul nsw i32 %12, 4
  %add17 = add nsw i32 %add15, %mul16
  %add18 = add nsw i32 %add17, 10
  %13 = load i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32]* @c, i32 0, i64 %idxprom19
  store i32 %add18, i32* %arrayidx20, align 4
  %14 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 97), align 4
  %mul21 = mul nsw i32 %14, 2
  %15 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  %mul22 = mul nsw i32 %15, 3
  %add23 = add nsw i32 %mul21, %mul22
  %16 = load i32* %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32]* @d, i32 0, i64 %idxprom24
  store i32 %add23, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %17 = load i32* %i, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond3

for.end28:                                        ; preds = %for.cond3
  %18 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 97), align 4
  %19 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 98), align 4
  %20 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 99), align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %18, i32 %19, i32 %20)
  %21 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 97), align 4
  %22 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 98), align 4
  %23 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 99), align 4
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %21, i32 %22, i32 %23)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
