; ModuleID = 'dataracebench/DRB024-simdtruedep-orig-yes.c'
source_filename = "dataracebench/DRB024-simdtruedep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i=%d a[%d]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %30, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %16, !llvm.loop !5

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 0
  %38 = sdiv i32 %37, 1
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 0, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %14, align 4, !llvm.access.group !7
  %45 = load i32, i32* %12, align 4, !llvm.access.group !7
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4, !llvm.access.group !7
  %50 = mul nsw i32 %49, 1
  %51 = add nsw i32 0, %50
  store i32 %51, i32* %15, align 4, !llvm.access.group !7
  %52 = load i32, i32* %15, align 4, !llvm.access.group !7
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !llvm.access.group !7
  %56 = load i32, i32* %15, align 4, !llvm.access.group !7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !llvm.access.group !7
  %60 = add nsw i32 %55, %59
  %61 = load i32, i32* %15, align 4, !llvm.access.group !7
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %63
  store i32 %60, i32* %64, align 4, !llvm.access.group !7
  br label %65

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4, !llvm.access.group !7
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4, !llvm.access.group !7
  br label %43, !llvm.loop !8

69:                                               ; preds = %43
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 0
  %72 = sdiv i32 %71, 1
  %73 = mul nsw i32 %72, 1
  %74 = add nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %33
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %76, !llvm.loop !11

91:                                               ; preds = %76
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.parallel_accesses", !7}
!10 = !{!"llvm.loop.vectorize.enable", i1 true}
!11 = distinct !{!11, !6}
