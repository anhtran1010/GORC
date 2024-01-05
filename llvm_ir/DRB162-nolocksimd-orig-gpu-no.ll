; ModuleID = 'dataracebench/DRB162-nolocksimd-orig-gpu-no.c'
source_filename = "dataracebench/DRB162-nolocksimd-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5, !llvm.loop !5

15:                                               ; preds = %5
  call void @__omp_offloading_10302_803ef6_main_l25([8 x i32]* %2) #2
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 20
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %16, !llvm.loop !7

35:                                               ; preds = %16
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803ef6_main_l25([8 x i32]* nonnull align 4 dereferenceable(32) %0) #1 {
  %2 = alloca [8 x i32]*, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @4)
  store [8 x i32]* %0, [8 x i32]** %2, align 8
  %4 = load [8 x i32]*, [8 x i32]** %2, align 8
  call void @__kmpc_push_num_teams(%struct.ident_t* @4, i32 %3, i32 1, i32 1048)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* %4)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [8 x i32]* nonnull align 4 dereferenceable(32) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [8 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store [8 x i32]* %2, [8 x i32]** %6, align 8
  %14 = load [8 x i32]*, [8 x i32]** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 19, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %16, i32 92, i32* %12, i32* %9, i32* %10, i32* %11, i32 1, i32 1)
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 19
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 19, %19 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %34, %22
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %31, i64 %33, [8 x i32]* %14)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %16)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, [8 x i32]* nonnull align 4 dereferenceable(32) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [1 x i8*], align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store [8 x i32]* %4, [8 x i32]** %10, align 8
  %23 = load [8 x i32]*, [8 x i32]** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 19, i32* %14, align 4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  store i32 %25, i32* %13, align 4
  store i32 %27, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i32 0, i32 0
  %29 = getelementptr i32, i32* %28, i64 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %31, %5
  %32 = phi i32* [ %28, %5 ], [ %33, %31 ]
  store i32 0, i32* %32, align 4
  %33 = getelementptr i32, i32* %32, i32 1
  %34 = icmp eq i32* %33, %29
  br i1 %34, label %35, label %31

35:                                               ; preds = %31, %5
  %36 = bitcast [8 x i32]* %23 to i32*
  %37 = bitcast [8 x i32]* %17 to i32*
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %39, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %40 = load i32, i32* %14, align 4
  %41 = icmp sgt i32 %40, 19
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %14, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 19, %42 ], [ %44, %43 ]
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %74, %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %56

56:                                               ; preds = %69, %52
  %57 = load i32, i32* %20, align 4, !llvm.access.group !8
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32, i32* %20, align 4, !llvm.access.group !8
  %61 = mul nsw i32 %60, 1
  %62 = add nsw i32 0, %61
  store i32 %62, i32* %21, align 4, !llvm.access.group !8
  %63 = load i32, i32* %21, align 4, !llvm.access.group !8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4, !llvm.access.group !8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4, !llvm.access.group !8
  br label %68

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %20, align 4, !llvm.access.group !8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4, !llvm.access.group !8
  br label %56, !llvm.loop !9

72:                                               ; preds = %56
  store i32 8, i32* %21, align 4
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %48

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %77
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %80)
  %81 = getelementptr inbounds [1 x i8*], [1 x i8*]* %22, i64 0, i64 0
  %82 = bitcast i32* %37 to i8*
  store i8* %82, i8** %81, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = bitcast [1 x i8*]* %22 to i8*
  %86 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %84, i32 1, i64 8, i8* %85, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %86, label %112 [
    i32 1, label %87
    i32 2, label %100
  ]

87:                                               ; preds = %78
  %88 = getelementptr i32, i32* %36, i64 8
  %89 = icmp eq i32* %36, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %90, %87
  %91 = phi i32* [ %37, %87 ], [ %97, %90 ]
  %92 = phi i32* [ %36, %87 ], [ %96, %90 ]
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %91, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %92, align 4
  %96 = getelementptr i32, i32* %92, i32 1
  %97 = getelementptr i32, i32* %91, i32 1
  %98 = icmp eq i32* %96, %88
  br i1 %98, label %99, label %90

99:                                               ; preds = %90, %87
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %84, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %112

100:                                              ; preds = %78
  %101 = getelementptr i32, i32* %36, i64 8
  %102 = icmp eq i32* %36, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %103, %100
  %104 = phi i32* [ %37, %100 ], [ %109, %103 ]
  %105 = phi i32* [ %36, %100 ], [ %108, %103 ]
  %106 = load i32, i32* %104, align 4
  %107 = atomicrmw add i32* %105, i32 %106 monotonic, align 4
  %108 = getelementptr i32, i32* %105, i32 1
  %109 = getelementptr i32, i32* %104, i32 1
  %110 = icmp eq i32* %108, %101
  br i1 %110, label %111, label %103

111:                                              ; preds = %103, %100
  br label %112

112:                                              ; preds = %111, %99, %78
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
  %15 = getelementptr i32, i32* %14, i64 8
  %16 = icmp eq i32* %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %2
  %18 = phi i32* [ %11, %2 ], [ %24, %17 ]
  %19 = phi i32* [ %14, %2 ], [ %23, %17 ]
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %18, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %19, align 4
  %23 = getelementptr i32, i32* %19, i32 1
  %24 = getelementptr i32, i32* %18, i32 1
  %25 = icmp eq i32* %23, %15
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #4

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #2

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #2

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.parallel_accesses", !8}
!11 = !{!"llvm.loop.vectorize.enable", i1 true}
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
