; ModuleID = 'dataracebench/DRB070-simd1-orig-no.c'
source_filename = "dataracebench/DRB070-simd1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [100 x i32] zeroinitializer, align 16
@b = dso_local global [100 x i32] zeroinitializer, align 16
@c = dso_local global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %4, align 4, !llvm.access.group !5
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4, !llvm.access.group !5
  %11 = mul nsw i32 %10, 1
  %12 = add nsw i32 0, %11
  store i32 %12, i32* %5, align 4, !llvm.access.group !5
  %13 = load i32, i32* %5, align 4, !llvm.access.group !5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* @b, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4, !llvm.access.group !5
  %17 = load i32, i32* %5, align 4, !llvm.access.group !5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* @c, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !llvm.access.group !5
  %21 = mul nsw i32 %16, %20
  %22 = load i32, i32* %5, align 4, !llvm.access.group !5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %23
  store i32 %21, i32* %24, align 4, !llvm.access.group !5
  br label %25

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4, !llvm.access.group !5
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4, !llvm.access.group !5
  br label %6, !llvm.loop !6

29:                                               ; preds = %6
  store i32 100, i32* %2, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.parallel_accesses", !5}
!8 = !{!"llvm.loop.vectorize.enable", i1 true}
