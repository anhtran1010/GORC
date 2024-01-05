; ModuleID = 'dataracebench/DRB140-reduction-barrier-orig-yes.c'
source_filename = "dataracebench/DRB140-reduction-barrier-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2)
  ret i32 0
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
  %15 = alloca i32, align 4
  %16 = alloca [1 x i8*], align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__kmpc_master(%struct.ident_t* @1, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %17, align 4
  call void @__kmpc_end_master(%struct.ident_t* @1, i32 %19)
  br label %23

23:                                               ; preds = %22, %3
  store i32 0, i32* %10, align 4
  store i32 9, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %19, i32 34, i32* %13, i32* %10, i32* %11, i32* %12, i32 1, i32 1)
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %24, 9
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 9, %26 ], [ %28, %27 ]
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %44, %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %37, 1
  %39 = add nsw i32 0, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %19)
  %49 = getelementptr inbounds [1 x i8*], [1 x i8*]* %16, i64 0, i64 0
  %50 = bitcast i32* %14 to i8*
  store i8* %50, i8** %49, align 8
  %51 = bitcast [1 x i8*]* %16 to i8*
  %52 = call i32 @__kmpc_reduce(%struct.ident_t* @3, i32 %19, i32 1, i64 8, i8* %51, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %52, label %60 [
    i32 1, label %53
    i32 2, label %57
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %17, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @3, i32 %19, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  %59 = atomicrmw add i32* %17, i32 %58 monotonic, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @3, i32 %19, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %60

60:                                               ; preds = %57, %53, %48
  call void @__kmpc_barrier(%struct.ident_t* @4, i32 %19)
  %61 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %19)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %64)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %19)
  br label %66

66:                                               ; preds = %63, %60
  call void @__kmpc_barrier(%struct.ident_t* @5, i32 %19)
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_master(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare void @__kmpc_end_master(%struct.ident_t*, i32) #2

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
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
