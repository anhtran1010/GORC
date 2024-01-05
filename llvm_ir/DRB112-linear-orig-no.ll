; ModuleID = 'dataracebench/DRB112-linear-orig-no.c'
source_filename = "dataracebench/DRB112-linear-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"c[50]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 100, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca double, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca double, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca double, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %42, %0
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 2.000000e+00
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %12, i64 %28
  store double %26, double* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 3.000000e+00
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %15, i64 %34
  store double %32, double* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sitofp i32 %36 to double
  %38 = fdiv double %37, 7.000000e+00
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %18, i64 %40
  store double %38, double* %41, align 8
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %19, !llvm.loop !5

45:                                               ; preds = %19
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, double*, i32*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i64 %17, double* %18, i32* %8, i64 %10, double* %12, i64 %14, double* %15)
  %46 = getelementptr inbounds double, double* %18, i64 50
  %47 = load double, double* %46, align 16
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %47)
  store i32 0, i32* %1, align 4
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, double* nonnull align 8 dereferenceable(8) %4, i32* nonnull align 4 dereferenceable(4) %5, i64 %6, double* nonnull align 8 dereferenceable(8) %7, i64 %8, double* nonnull align 8 dereferenceable(8) %9) #2 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca double*, align 8
  %19 = alloca i64, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store double* %4, double** %15, align 8
  store i32* %5, i32** %16, align 8
  store i64 %6, i64* %17, align 8
  store double* %7, double** %18, align 8
  store i64 %8, i64* %19, align 8
  store double* %9, double** %20, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load double*, double** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = load double*, double** %18, align 8
  %39 = load i64, i64* %19, align 8
  %40 = load double*, double** %20, align 8
  %41 = load i32, i32* %33, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = sub nsw i32 %42, 0
  %44 = sdiv i32 %43, 1
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %46 = load i32, i32* %23, align 4
  %47 = icmp slt i32 0, %46
  br i1 %47, label %48, label %110

48:                                               ; preds = %10
  %49 = load i32, i32* %36, align 4
  store i32 %49, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %50 = load i32, i32* %24, align 4
  store i32 %50, i32* %28, align 4
  store i32 1, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %52)
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %53, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %54, i32 34, i32* %30, i32* %27, i32* %28, i32* %29, i32 1, i32 1)
  %55 = load i32, i32* %28, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %24, align 4
  br label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %28, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %28, align 4
  %64 = load i32, i32* %27, align 4
  store i32 %64, i32* %21, align 4
  br label %65

65:                                               ; preds = %94, %62
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %28, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 %70, 1
  %72 = add nsw i32 0, %71
  store i32 %72, i32* %31, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul nsw i32 %74, 1
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %32, align 4
  %77 = load i32, i32* %31, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %38, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load i32, i32* %31, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %40, i64 %82
  %84 = load double, double* %83, align 8
  %85 = fmul double %80, %84
  %86 = load i32, i32* %32, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %35, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fadd double %89, %85
  store double %90, double* %88, align 8
  %91 = load i32, i32* %32, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %32, align 4
  br label %93

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %65

97:                                               ; preds = %65
  br label %98

98:                                               ; preds = %97
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %100)
  %101 = load i32, i32* %30, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %26, align 4
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  %107 = mul nsw i32 %106, 1
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %36, align 4
  br label %109

109:                                              ; preds = %103, %98
  br label %110

110:                                              ; preds = %109, %10
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
