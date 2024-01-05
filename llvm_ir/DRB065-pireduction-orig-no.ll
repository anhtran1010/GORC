; ModuleID = 'dataracebench/DRB065-pireduction-orig-no.c'
source_filename = "dataracebench/DRB065-pireduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"PI=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 5.000000e-09, double* %9, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %9, double* %6)
  %10 = load double, double* %6, align 8
  %11 = fmul double %10, 4.000000e+00
  %12 = load double, double* %9, align 8
  %13 = fmul double %11, %12
  store double %13, double* %6, align 8
  %14 = load double, double* %6, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %14)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, double* nonnull align 8 dereferenceable(8) %2, double* nonnull align 8 dereferenceable(8) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca [1 x i8*], align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %21 = load double*, double** %7, align 8
  %22 = load double*, double** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 199999999, i64* %12, align 8
  store i64 1, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store double 0.000000e+00, double* %16, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  call void @__kmpc_for_static_init_8(%struct.ident_t* @1, i32 %24, i32 34, i32* %14, i64* %11, i64* %12, i64* %13, i64 1, i64 1)
  %25 = load i64, i64* %12, align 8
  %26 = icmp sgt i64 %25, 199999999
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %30

28:                                               ; preds = %4
  %29 = load i64, i64* %12, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i64 [ 199999999, %27 ], [ %29, %28 ]
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %54, %30
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = mul nsw i64 %38, 1
  %40 = add nsw i64 0, %39
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = sitofp i64 %41 to double
  %43 = fadd double %42, 5.000000e-01
  %44 = load double, double* %21, align 8
  %45 = fmul double %43, %44
  store double %45, double* %15, align 8
  %46 = load double, double* %15, align 8
  %47 = load double, double* %15, align 8
  %48 = fmul double %46, %47
  %49 = fadd double %48, 1.000000e+00
  %50 = fdiv double 1.000000e+00, %49
  %51 = load double, double* %16, align 8
  %52 = fadd double %51, %50
  store double %52, double* %16, align 8
  br label %53

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %33

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %24)
  %59 = getelementptr inbounds [1 x i8*], [1 x i8*]* %18, i64 0, i64 0
  %60 = bitcast double* %16 to i8*
  store i8* %60, i8** %59, align 8
  %61 = bitcast [1 x i8*]* %18 to i8*
  %62 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @2, i32 %24, i32 1, i64 8, i8* %61, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %62, label %84 [
    i32 1, label %63
    i32 2, label %67
  ]

63:                                               ; preds = %58
  %64 = load double, double* %22, align 8
  %65 = load double, double* %16, align 8
  %66 = fadd double %64, %65
  store double %66, double* %22, align 8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @2, i32 %24, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %84

67:                                               ; preds = %58
  %68 = load double, double* %16, align 8
  %69 = bitcast double* %22 to i64*
  %70 = load atomic i64, i64* %69 monotonic, align 8
  br label %71

71:                                               ; preds = %71, %67
  %72 = phi i64 [ %70, %67 ], [ %81, %71 ]
  %73 = bitcast double* %19 to i64*
  %74 = bitcast i64 %72 to double
  store double %74, double* %20, align 8
  %75 = load double, double* %20, align 8
  %76 = load double, double* %16, align 8
  %77 = fadd double %75, %76
  store double %77, double* %19, align 8
  %78 = load i64, i64* %73, align 8
  %79 = bitcast double* %22 to i64*
  %80 = cmpxchg i64* %79, i64 %72, i64 %78 monotonic monotonic, align 8
  %81 = extractvalue { i64, i1 } %80, 0
  %82 = extractvalue { i64, i1 } %80, 1
  br i1 %82, label %83, label %71

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %63, %58
  ret void
}

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64)

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
  %11 = bitcast i8* %10 to double*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = load double, double* %11, align 8
  %17 = fadd double %15, %16
  store double %17, double* %14, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { convergent nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
