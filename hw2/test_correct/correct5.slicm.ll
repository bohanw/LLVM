; ModuleID = 'correct5.slicm.bc'
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
  %ld = alloca i32
  %dependents = alloca i32
  %dependents5 = alloca i32
  %dependents6 = alloca i32
  %ld9 = alloca i32
  %dependents10 = alloca i32
  %ld14 = alloca i32
  %dependents15 = alloca i32
  %ld18 = alloca i32
  %dependents19 = alloca i32
  %dependents20 = alloca i32
  %ld23 = alloca i32
  %dependents24 = alloca i32
  %dependents25 = alloca i32
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
  %5 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 97), align 4
  %mul = mul nsw i32 %5, 2
  %6 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 98), align 4
  %mul14 = mul nsw i32 %6, 3
  %add15 = add nsw i32 %mul, %mul14
  %7 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  %mul16 = mul nsw i32 %7, 4
  %add17 = add nsw i32 %add15, %mul16
  %add18 = add nsw i32 %add17, 10
  %8 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 97), align 4
  %mul21 = mul nsw i32 %8, 2
  %9 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  %mul22 = mul nsw i32 %9, 3
  %add23 = add nsw i32 %mul21, %mul22
  %flag = alloca i1
  store i1 false, i1* %flag
  %flag7 = alloca i1
  store i1 false, i1* %flag7
  %flag11 = alloca i1
  store i1 false, i1* %flag11
  %flag16 = alloca i1
  store i1 false, i1* %flag16
  %flag21 = alloca i1
  store i1 false, i1* %flag21
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc26, %for.end
  %10 = load i32* %i, align 4
  %cmp4 = icmp slt i32 %10, 100
  br i1 %cmp4, label %for.body5, label %for.end28

for.body5:                                        ; preds = %for.cond3
  %11 = load i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom6
  %12 = load i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %12, 95
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %13 = load i32* %i, align 4
  %add = add nsw i32 %13, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [100 x i32]* @a, i32 0, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4
  %14 = load i32* %i, align 4
  %add11 = add nsw i32 %14, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32]* @b, i32 0, i64 %idxprom12
  store i32 0, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %loadflag13 = load i1* %flag11
  br i1 %loadflag13, label %if.end.split12, label %if.end.split12.split

if.end.split12:                                   ; preds = %if.end
  %15 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 97), align 4
  store i32 %15, i32* %ld14
  %16 = mul nsw i32 %5, 2
  store i32 %16, i32* %dependents15
  store i1 false, i1* %flag11
  br label %if.end.split12.split

if.end.split12.split:                             ; preds = %if.end.split12, %if.end
  %dummy = add i32 0, 0
  %loadflag17 = load i1* %flag16
  br i1 %loadflag17, label %if.end.split12.split.split, label %if.end.split12.split.split.split

if.end.split12.split.split:                       ; preds = %if.end.split12.split
  %17 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 98), align 4
  store i32 %17, i32* %ld18
  %18 = mul nsw i32 %6, 3
  store i32 %18, i32* %dependents19
  %19 = add nsw i32 %mul, %mul14
  store i32 %19, i32* %dependents20
  store i1 false, i1* %flag16
  br label %if.end.split12.split.split.split

if.end.split12.split.split.split:                 ; preds = %if.end.split12.split.split, %if.end.split12.split
  %dummy1 = add i32 0, 0
  %loadflag = load i1* %flag
  br i1 %loadflag, label %if.end.split, label %if.end.split.split

if.end.split:                                     ; preds = %if.end.split12.split.split.split
  %20 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  store i32 %20, i32* %ld
  %21 = mul nsw i32 %7, 4
  store i32 %21, i32* %dependents
  %22 = add nsw i32 %add15, %mul16
  store i32 %22, i32* %dependents5
  %23 = add nsw i32 %add17, 10
  store i32 %23, i32* %dependents6
  store i1 false, i1* %flag
  br label %if.end.split.split

if.end.split.split:                               ; preds = %if.end.split, %if.end.split12.split.split.split
  %dummy2 = add i32 0, 0
  %24 = load i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32]* @c, i32 0, i64 %idxprom19
  store i32 %add18, i32* %arrayidx20, align 4
  %loadflag8 = load i1* %flag7
  br i1 %loadflag8, label %if.end.split.split.split, label %if.end.split.split.split.split

if.end.split.split.split:                         ; preds = %if.end.split.split
  %25 = load i32* getelementptr inbounds ([100 x i32]* @b, i32 0, i64 97), align 4
  store i32 %25, i32* %ld9
  %26 = mul nsw i32 %8, 2
  store i32 %26, i32* %dependents10
  store i1 false, i1* %flag7
  br label %if.end.split.split.split.split

if.end.split.split.split.split:                   ; preds = %if.end.split.split.split, %if.end.split.split
  %dummy3 = add i32 0, 0
  %loadflag22 = load i1* %flag21
  br i1 %loadflag22, label %if.end.split.split.split.split.split, label %if.end.split.split.split.split.split.split

if.end.split.split.split.split.split:             ; preds = %if.end.split.split.split.split
  %27 = load i32* getelementptr inbounds ([100 x i32]* @a, i32 0, i64 99), align 4
  store i32 %27, i32* %ld23
  %28 = mul nsw i32 %9, 3
  store i32 %28, i32* %dependents24
  %29 = add nsw i32 %mul21, %mul22
  store i32 %29, i32* %dependents25
  store i1 false, i1* %flag21
  br label %if.end.split.split.split.split.split.split

if.end.split.split.split.split.split.split:       ; preds = %if.end.split.split.split.split.split, %if.end.split.split.split.split
  %dummy4 = add i32 0, 0
  %30 = load i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32]* @d, i32 0, i64 %idxprom24
  store i32 %add23, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %if.end.split.split.split.split.split.split
  %31 = load i32* %i, align 4
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond3

for.end28:                                        ; preds = %for.cond3
  %32 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 97), align 4
  %33 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 98), align 4
  %34 = load i32* getelementptr inbounds ([100 x i32]* @c, i32 0, i64 99), align 4
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %32, i32 %33, i32 %34)
  %35 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 97), align 4
  %36 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 98), align 4
  %37 = load i32* getelementptr inbounds ([100 x i32]* @d, i32 0, i64 99), align 4
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str, i32 0, i32 0), i32 %35, i32 %36, i32 %37)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"="true" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
