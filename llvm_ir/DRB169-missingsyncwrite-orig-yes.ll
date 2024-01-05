; ModuleID = 'dataracebench/DRB169-missingsyncwrite-orig-yes.c'
source_filename = "dataracebench/DRB169-missingsyncwrite-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8 x double], align 16
  %6 = alloca [8 x [8 x [8 x double]]], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %38, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = sitofp i32 %19 to double
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %6, i64 0, i64 %22
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %23, i64 0, i64 %25
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x double], [8 x double]* %26, i64 0, i64 %28
  store double %20, double* %29, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15, !llvm.loop !5

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %11, !llvm.loop !7

37:                                               ; preds = %11
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %7, !llvm.loop !8

41:                                               ; preds = %7
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x double]*, [8 x [8 x [8 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x double]* %5, [8 x [8 x [8 x double]]]* %6)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x double], [8 x double]* %5, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %42, !llvm.loop !9

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [8 x double]* nonnull align 8 dereferenceable(64) %2, [8 x [8 x [8 x double]]]* nonnull align 8 dereferenceable(4096) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [8 x double]*, align 8
  %8 = alloca [8 x [8 x [8 x double]]]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [8 x double]* %2, [8 x double]** %7, align 8
  store [8 x [8 x [8 x double]]]* %3, [8 x [8 x [8 x double]]]** %8, align 8
  %18 = load [8 x double]*, [8 x double]** %7, align 8
  %19 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 5
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 5, %24 ], [ %26, %25 ]
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %105, %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 1
  %37 = add nsw i32 1, %36
  store i32 %37, i32* %17, align 4
  store i32 1, i32* %15, align 4
  br label %38

38:                                               ; preds = %100, %34
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 7
  br i1 %40, label %41, label %103

41:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %96, %41
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %99

45:                                               ; preds = %42
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %19, i64 0, i64 %47
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %48, i64 0, i64 %51
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x double], [8 x double]* %52, i64 0, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %19, i64 0, i64 %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %59, i64 0, i64 %62
  %64 = load i32, i32* %16, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x double], [8 x double]* %63, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fadd double %56, %67
  %69 = load i32, i32* %17, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %19, i64 0, i64 %71
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %72, i64 0, i64 %74
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x double], [8 x double]* %75, i64 0, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fadd double %68, %79
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %19, i64 0, i64 %83
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %84, i64 0, i64 %86
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x double], [8 x double]* %87, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fadd double %80, %91
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [8 x double], [8 x double]* %18, i64 0, i64 %94
  store double %92, double* %95, align 8
  br label %96

96:                                               ; preds = %45
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %42, !llvm.loop !10

99:                                               ; preds = %42
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %38, !llvm.loop !11

103:                                              ; preds = %38
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %30

108:                                              ; preds = %30
  br label %109

109:                                              ; preds = %108
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %21)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
