; ModuleID = 'dataracebench/DRB154-missinglock3-orig-gpu-no.c'
source_filename = "dataracebench/DRB154-missinglock3-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.omp_lock_t, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  call void @omp_init_lock(%struct.omp_lock_t* %2)
  call void @__omp_offloading_10302_803f1e_main_l23(i32* %3, %struct.omp_lock_t* %2) #3
  call void @omp_destroy_lock(%struct.omp_lock_t* %2)
  %4 = load i32, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0
}

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f1e_main_l23(i32* nonnull align 4 dereferenceable(4) %0, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %1) #2 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.omp_lock_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.omp_lock_t* %1, %struct.omp_lock_t** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %4, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %6, i32* %5)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %2, i32* nonnull align 4 dereferenceable(4) %3) #2 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.omp_lock_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x i8*], align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.omp_lock_t* %2, %struct.omp_lock_t** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.omp_lock_t*, %struct.omp_lock_t** %7, align 8
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 99, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %21, i32 92, i32* %15, i32* %12, i32* %13, i32* %14, i32 1, i32 1)
  %22 = load i32, i32* %13, align 4
  %23 = icmp sgt i32 %22, 99
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 99, %24 ], [ %26, %25 ]
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %41, %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %35, 1
  %37 = add nsw i32 0, %36
  store i32 %37, i32* %16, align 4
  call void @omp_set_lock(%struct.omp_lock_t* %18)
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  call void @omp_unset_lock(%struct.omp_lock_t* %18)
  br label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %30

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %21)
  %46 = getelementptr inbounds [1 x i8*], [1 x i8*]* %17, i64 0, i64 0
  %47 = bitcast i32* %9 to i8*
  store i8* %47, i8** %46, align 8
  %48 = bitcast [1 x i8*]* %17 to i8*
  %49 = call i32 @__kmpc_reduce(%struct.ident_t* @2, i32 %21, i32 1, i64 8, i8* %48, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %49, label %57 [
    i32 1, label %50
    i32 2, label %54
  ]

50:                                               ; preds = %45
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %19, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %21, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = atomicrmw add i32* %19, i32 %55 monotonic, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %21, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %57

57:                                               ; preds = %54, %50, %45
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #1

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 {
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
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
