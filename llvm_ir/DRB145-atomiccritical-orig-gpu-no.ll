; ModuleID = 'dataracebench/DRB145-atomiccritical-orig-gpu-no.c'
source_filename = "dataracebench/DRB145-atomiccritical-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@var = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @__omp_offloading_10302_803f01_main_l22(i32* @var) #2
  %2 = load i32, i32* @var, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f01_main_l22(i32* nonnull align 4 dereferenceable(4) %0) #1 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x i8*], align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 99, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 92, i32* %13, i32* %10, i32* %11, i32* %12, i32 1, i32 1)
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %19, 99
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 99, %21 ], [ %23, %22 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %36, %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %33, i64 %35, i32* %7)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %18)
  %42 = getelementptr inbounds [1 x i8*], [1 x i8*]* %15, i64 0, i64 0
  %43 = bitcast i32* %7 to i8*
  store i8* %43, i8** %42, align 8
  %44 = bitcast [1 x i8*]* %15 to i8*
  %45 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %18, i32 1, i64 8, i8* %44, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %45, label %53 [
    i32 1, label %46
    i32 2, label %50
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %16, align 4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %18, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = atomicrmw add i32* %16, i32 %51 monotonic, align 4
  br label %53

53:                                               ; preds = %50, %46, %41
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1 x i8*], align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 99, i32* %14, align 4
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  store i32 %22, i32* %13, align 4
  store i32 %24, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %26, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %27 = load i32, i32* %14, align 4
  %28 = icmp sgt i32 %27, 99
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 99, %29 ], [ %31, %30 ]
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %46, %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 1
  %42 = add nsw i32 0, %41
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %35

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %26)
  %51 = getelementptr inbounds [1 x i8*], [1 x i8*]* %19, i64 0, i64 0
  %52 = bitcast i32* %17 to i8*
  store i8* %52, i8** %51, align 8
  %53 = bitcast [1 x i8*]* %19 to i8*
  %54 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %26, i32 1, i64 8, i8* %53, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %54, label %62 [
    i32 1, label %55
    i32 2, label %59
  ]

55:                                               ; preds = %50
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %20, align 4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %26, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %17, align 4
  %61 = atomicrmw add i32* %20, i32 %60 monotonic, align 4
  br label %62

62:                                               ; preds = %59, %55, %50
  ret void
}

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
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #3 {
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
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  ret void
}

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
