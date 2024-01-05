; ModuleID = 'dataracebench/DRB021-reductionmissing-orig-yes.c'
source_filename = "dataracebench/DRB021-reductionmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x [100 x float]], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0.000000e+00, float* %9, align 4
  store i32 100, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %11, i64 0, i64 %23
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x float], [100 x float]* %24, i64 0, i64 %26
  store float 5.000000e-01, float* %27, align 4
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %17, !llvm.loop !5

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %12, !llvm.loop !7

35:                                               ; preds = %12
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x [100 x float]]*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %10, [100 x [100 x float]]* %11, float* %9)
  %36 = load float, float* %9, align 4
  %37 = fpext float %36 to double
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %37)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [100 x [100 x float]]* nonnull align 4 dereferenceable(40000) %3, float* nonnull align 4 dereferenceable(4) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [100 x [100 x float]]*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store [100 x [100 x float]]* %3, [100 x [100 x float]]** %9, align 8
  store float* %4, float** %10, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load [100 x [100 x float]]*, [100 x [100 x float]]** %9, align 8
  %26 = load float*, float** %10, align 8
  %27 = load i32, i32* %24, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %85

34:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %37, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %17, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %78, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %56

56:                                               ; preds = %73, %52
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %24, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %25, i64 0, i64 %62
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x float], [100 x float]* %63, i64 0, i64 %65
  %67 = load float, float* %66, align 4
  store float %67, float* %20, align 4
  %68 = load float, float* %26, align 4
  %69 = load float, float* %20, align 4
  %70 = load float, float* %20, align 4
  %71 = fmul float %69, %70
  %72 = fadd float %68, %71
  store float %72, float* %26, align 4
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %22, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %22, align 4
  br label %56, !llvm.loop !8

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %48

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %84)
  br label %85

85:                                               ; preds = %82, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !6}
!9 = !{!10}
!10 = !{i64 2, i64 -1, i64 -1, i1 true}
