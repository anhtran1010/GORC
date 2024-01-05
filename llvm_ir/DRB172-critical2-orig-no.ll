; ModuleID = 'dataracebench/DRB172-critical2-orig-no.c'
source_filename = "dataracebench/DRB172-critical2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x double], align 16
  %4 = alloca [10 x double], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sitofp i32 %9 to double
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x double], [10 x double]* %4, i64 0, i64 %12
  store double %10, double* %13, align 8
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %5, !llvm.loop !5

17:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %27, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x double], [10 x double]* %3, i64 0, i64 %25
  store double %23, double* %26, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %18, !llvm.loop !7

30:                                               ; preds = %18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [10 x double]*, [10 x double]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [10 x double]* %3, [10 x double]* %4)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x double], [10 x double]* %4, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x double], [10 x double]* %3, i64 0, i64 %40
  %42 = load double, double* %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %38, double %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %31, !llvm.loop !8

47:                                               ; preds = %31
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [10 x double]* nonnull align 8 dereferenceable(80) %2, [10 x double]* nonnull align 8 dereferenceable(80) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [10 x double]*, align 8
  %8 = alloca [10 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [10 x double]* %2, [10 x double]** %7, align 8
  store [10 x double]* %3, [10 x double]** %8, align 8
  %17 = load [10 x double]*, [10 x double]** %7, align 8
  %18 = load [10 x double]*, [10 x double]** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 9, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 9
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 9, %23 ], [ %25, %24 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %47, %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 1
  %36 = add nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [10 x double], [10 x double]* %18, i64 0, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fadd double %44, %40
  store double %45, double* %43, align 8
  br label %46

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %29

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %20)
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %20)
  call void @__kmpc_critical(%struct.ident_t* @3, i32 %20, [8 x i32]* @.gomp_critical_user_.var)
  %52 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 9
  %53 = load double, double* %52, align 8
  %54 = fadd double %53, 1.000000e+00
  store double %54, double* %52, align 8
  call void @__kmpc_end_critical(%struct.ident_t* @3, i32 %20, [8 x i32]* @.gomp_critical_user_.var)
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %20)
  %55 = call i32 @__kmpc_single(%struct.ident_t* @3, i32 %20)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 9
  %59 = load double, double* %58, align 8
  %60 = fsub double %59, 1.000000e+00
  %61 = getelementptr inbounds [10 x double], [10 x double]* %17, i64 0, i64 9
  store double %60, double* %61, align 8
  call void @__kmpc_end_single(%struct.ident_t* @3, i32 %20)
  br label %62

62:                                               ; preds = %57, %51
  call void @__kmpc_barrier(%struct.ident_t* @5, i32 %20)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
