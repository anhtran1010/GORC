; ModuleID = 'dataracebench/DRB062-matrixvector2-orig-no.c'
source_filename = "dataracebench/DRB062-matrixvector2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global [1000 x [1000 x double]] zeroinitializer, align 16
@v = dso_local global [1000 x double] zeroinitializer, align 16
@v_out = dso_local global [1000 x double] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %13, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1000
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  store float 0.000000e+00, float* %3, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* %3, i32* %1)
  %8 = load float, float* %3, align 4
  %9 = fpext float %8 to double
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %11
  store double %9, double* %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %4, !llvm.loop !5

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, float* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x i8*], align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load float*, float** %7, align 8
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 999, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %23, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 999
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 999, %26 ], [ %28, %27 ]
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %57, %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 1
  %39 = add nsw i32 0, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %21, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @a, i64 0, i64 %41
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000 x double], [1000 x double]* %42, i64 0, i64 %44
  %46 = load double, double* %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1000 x double], [1000 x double]* @v, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fmul double %46, %50
  %52 = load float, float* %15, align 4
  %53 = fpext float %52 to double
  %54 = fadd double %53, %51
  %55 = fptrunc double %54 to float
  store float %55, float* %15, align 4
  br label %56

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %32

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %23)
  %62 = getelementptr inbounds [1 x i8*], [1 x i8*]* %17, i64 0, i64 0
  %63 = bitcast float* %15 to i8*
  store i8* %63, i8** %62, align 8
  %64 = bitcast [1 x i8*]* %17 to i8*
  %65 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @2, i32 %23, i32 1, i64 8, i8* %64, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %65, label %87 [
    i32 1, label %66
    i32 2, label %70
  ]

66:                                               ; preds = %61
  %67 = load float, float* %20, align 4
  %68 = load float, float* %15, align 4
  %69 = fadd float %67, %68
  store float %69, float* %20, align 4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @2, i32 %23, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %87

70:                                               ; preds = %61
  %71 = load float, float* %15, align 4
  %72 = bitcast float* %20 to i32*
  %73 = load atomic i32, i32* %72 monotonic, align 4
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i32 [ %73, %70 ], [ %84, %74 ]
  %76 = bitcast float* %18 to i32*
  %77 = bitcast i32 %75 to float
  store float %77, float* %19, align 4
  %78 = load float, float* %19, align 4
  %79 = load float, float* %15, align 4
  %80 = fadd float %78, %79
  store float %80, float* %18, align 4
  %81 = load i32, i32* %76, align 4
  %82 = bitcast float* %20 to i32*
  %83 = cmpxchg i32* %82, i32 %75, i32 %81 monotonic monotonic, align 4
  %84 = extractvalue { i32, i1 } %83, 0
  %85 = extractvalue { i32, i1 } %83, 1
  br i1 %85, label %86, label %74

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %66, %61
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to [1 x i8*]*
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to [1 x i8*]*
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to float*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to float*
  %15 = load float, float* %14, align 4
  %16 = load float, float* %11, align 4
  %17 = fadd float %15, %16
  store float %17, float* %14, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @mv()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
