; ModuleID = 'dataracebench/DRB170-nestedloops-orig-no.c'
source_filename = "dataracebench/DRB170-nestedloops-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [12 x [12 x [12 x double]]], align 16
  store i32 0, i32* %1, align 4
  store i32 3, i32* %5, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [12 x [12 x [12 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, [12 x [12 x [12 x double]]]* %7)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [12 x [12 x [12 x double]]]* nonnull align 8 dereferenceable(13824) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [12 x [12 x [12 x double]]]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store [12 x [12 x [12 x double]]]* %3, [12 x [12 x [12 x double]]]** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 11, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %22, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 11
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 11, %25 ], [ %27, %26 ]
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %70, %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 1
  %38 = add nsw i32 0, %37
  store i32 %38, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %65, %35
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 12
  br i1 %41, label %42, label %68

42:                                               ; preds = %39
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32, i32* %19, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double 6.000000e+00, %48
  store double %49, double* %17, align 8
  %50 = load double, double* %17, align 8
  %51 = fadd double %50, 4.000000e+00
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [12 x [12 x [12 x double]]], [12 x [12 x [12 x double]]]* %20, i64 0, i64 %53
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %54, i64 0, i64 %56
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [12 x double], [12 x double]* %57, i64 0, i64 %59
  store double %51, double* %60, align 8
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %43, !llvm.loop !5

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %39, !llvm.loop !7

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %31

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %22)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
