; ModuleID = 'dataracebench/DRB050-functionparameter-orig-no.c'
source_filename = "dataracebench/DRB050-functionparameter-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@o1 = dso_local global [100 x double] zeroinitializer, align 16
@c = dso_local global [100 x double] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo1(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %6, double** %5, double** %4)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, double** nonnull align 8 dereferenceable(8) %3, double** nonnull align 8 dereferenceable(8) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca double**, align 8
  %10 = alloca double**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store double** %3, double*** %9, align 8
  store double** %4, double*** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load double**, double*** %9, align 8
  %24 = load double**, double*** %10, align 8
  %25 = load i32, i32* %22, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 0
  %28 = sdiv i32 %27, 1
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %35, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %17, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 1
  %53 = add nsw i32 0, %52
  store i32 %53, i32* %20, align 4
  %54 = load double*, double** %23, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = fmul double 5.000000e-01, %58
  store double %59, double* %21, align 8
  %60 = load double, double* %21, align 8
  %61 = load double*, double** %24, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  br label %65

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %46

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %72)
  br label %73

73:                                               ; preds = %70, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo1(double* getelementptr inbounds ([100 x double], [100 x double]* @o1, i64 0, i64 0), double* getelementptr inbounds ([100 x double], [100 x double]* @c, i64 0, i64 0), i32 100)
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
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
