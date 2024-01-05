; ModuleID = 'dataracebench/DRB003-antidep2-orig-yes.c'
source_filename = "dataracebench/DRB003-antidep2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[10][10]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x [20 x double]], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 %21
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [20 x double], [20 x double]* %22, i64 0, i64 %24
  store double 5.000000e-01, double* %25, align 8
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %15, !llvm.loop !5

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %10, !llvm.loop !7

33:                                               ; preds = %10
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [20 x [20 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, [20 x [20 x double]]* %9)
  %34 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %9, i64 0, i64 10
  %35 = getelementptr inbounds [20 x double], [20 x double]* %34, i64 0, i64 10
  %36 = load double, double* %35, align 16
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %36)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [20 x [20 x double]]*, align 8
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
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store [20 x [20 x double]]* %3, [20 x [20 x double]]** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load [20 x [20 x double]]*, [20 x [20 x double]]** %8, align 8
  %22 = load i32, i32* %20, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 0
  %26 = sdiv i32 %25, 1
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 0, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %33, i32 34, i32* %17, i32* %14, i32* %15, i32* %16, i32 1, i32 1)
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %78, %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 1
  %51 = add nsw i32 0, %50
  store i32 %51, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %73, %48
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %21, i64 0, i64 %59
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [20 x double], [20 x double]* %60, i64 0, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %21, i64 0, i64 %66
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [20 x double], [20 x double]* %67, i64 0, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fadd double %71, %64
  store double %72, double* %70, align 8
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %52, !llvm.loop !8

76:                                               ; preds = %52
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %44

81:                                               ; preds = %44
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %84)
  br label %85

85:                                               ; preds = %82, %4
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
