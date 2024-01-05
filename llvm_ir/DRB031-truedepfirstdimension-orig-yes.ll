; ModuleID = 'dataracebench/DRB031-truedepfirstdimension-orig-yes.c'
source_filename = "dataracebench/DRB031-truedepfirstdimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1000 x [1000 x double]], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %8, align 4
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %10, i64 0, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1000 x double], [1000 x double]* %23, i64 0, i64 %25
  store double 5.000000e-01, double* %26, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %16, !llvm.loop !5

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %11, !llvm.loop !7

34:                                               ; preds = %11
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1000 x [1000 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, i32* %9, [1000 x [1000 x double]]* %10)
  %35 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %10, i64 0, i64 500
  %36 = getelementptr inbounds [1000 x double], [1000 x double]* %35, i64 0, i64 500
  %37 = load double, double* %36, align 16
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %37)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, [1000 x [1000 x double]]* nonnull align 8 dereferenceable(8000000) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [1000 x [1000 x double]]*, align 8
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
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store [1000 x [1000 x double]]* %4, [1000 x [1000 x double]]** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %10, align 8
  %25 = load i32, i32* %22, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sdiv i32 %27, 1
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 1, %30
  br i1 %31, label %32, label %86

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

46:                                               ; preds = %79, %43
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 1
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %21, align 4
  store i32 1, i32* %20, align 4
  br label %54

54:                                               ; preds = %74, %50
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %21, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %24, i64 0, i64 %61
  %63 = load i32, i32* %20, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1000 x double], [1000 x double]* %62, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %24, i64 0, i64 %69
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1000 x double], [1000 x double]* %70, i64 0, i64 %72
  store double %67, double* %73, align 8
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %20, align 4
  br label %54, !llvm.loop !8

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %85)
  br label %86

86:                                               ; preds = %83, %5
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
