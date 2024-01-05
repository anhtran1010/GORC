; ModuleID = 'dataracebench/DRB057-jacobiinitialize-orig-no.c'
source_filename = "dataracebench/DRB057-jacobiinitialize-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@f = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@uold = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@dx = dso_local global double 0.000000e+00, align 8
@dy = dso_local global double 0.000000e+00, align 8
@n = dso_local global i32 200, align 4
@m = dso_local global i32 200, align 4
@alpha = dso_local global double 5.430000e-02, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @n, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dx, align 8
  %9 = load i32, i32* @m, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 2.000000e+00, %11
  store double %12, double* @dy, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %19 = load i32, i32* @n, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 0
  %22 = sdiv i32 %21, 1
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 0, %24
  br i1 %25, label %26, label %119

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %28, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %29, i32 34, i32* %13, i32* %10, i32* %11, i32* %12, i32 1, i32 1)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %112, %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %115

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 1
  %47 = add nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %107, %44
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @m, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %110

52:                                               ; preds = %48
  %53 = load double, double* @dx, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sitofp i32 %55 to double
  %57 = fmul double %53, %56
  %58 = fadd double -1.000000e+00, %57
  %59 = fptosi double %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load double, double* @dy, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sitofp i32 %62 to double
  %64 = fmul double %60, %63
  %65 = fadd double -1.000000e+00, %64
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %68
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [200 x double], [200 x double]* %69, i64 0, i64 %71
  store double 0.000000e+00, double* %72, align 8
  %73 = load double, double* @alpha, align 8
  %74 = fmul double -1.000000e+00, %73
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sitofp i32 %77 to double
  %79 = fsub double 1.000000e+00, %78
  %80 = fmul double %74, %79
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sitofp i32 %83 to double
  %85 = fsub double 1.000000e+00, %84
  %86 = fmul double %80, %85
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sitofp i32 %89 to double
  %91 = fsub double 1.000000e+00, %90
  %92 = fmul double 2.000000e+00, %91
  %93 = fsub double %86, %92
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sitofp i32 %96 to double
  %98 = fsub double 1.000000e+00, %97
  %99 = fmul double 2.000000e+00, %98
  %100 = fsub double %93, %99
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %102
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [200 x double], [200 x double]* %103, i64 0, i64 %105
  store double %100, double* %106, align 8
  br label %107

107:                                              ; preds = %52
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %48, !llvm.loop !5

110:                                              ; preds = %48
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %40

115:                                              ; preds = %40
  br label %116

116:                                              ; preds = %115
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %117, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %118)
  br label %119

119:                                              ; preds = %116, %2
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @initialize()
  ret i32 0
}

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
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
