; ModuleID = 'dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c'
source_filename = "dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %4, !llvm.loop !5

14:                                               ; preds = %4
  call void @__omp_offloading_10302_803f03_main_l30([64 x i32]* %2) #2
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 63
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f03_main_l30([64 x i32]* nonnull align 4 dereferenceable(256) %0) #1 {
  %2 = alloca [64 x i32]*, align 8
  store [64 x i32]* %0, [64 x i32]** %2, align 8
  %3 = load [64 x i32]*, [64 x i32]** %2, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [64 x i32]* %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [64 x i32]* nonnull align 4 dereferenceable(256) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store [64 x i32]* %2, [64 x i32]** %6, align 8
  %14 = load [64 x i32]*, [64 x i32]** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 99, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %16, i32 92, i32* %12, i32* %9, i32* %10, i32* %11, i32 1, i32 1)
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 99
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 99, %19 ], [ %21, %20 ]
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %31, i64 %33, [64 x i32]* %14)
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
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, [64 x i32]* nonnull align 4 dereferenceable(256) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [64 x i32]*, align 8
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store [64 x i32]* %4, [64 x i32]** %10, align 8
  %21 = load [64 x i32]*, [64 x i32]** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 99, i32* %14, align 4
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  store i32 %23, i32* %13, align 4
  store i32 %25, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %27, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %28 = load i32, i32* %14, align 4
  %29 = icmp sgt i32 %28, 99
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 99, %30 ], [ %32, %31 ]
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %62, %33
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 1
  %43 = add nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %57, %40
  %45 = load i32, i32* %19, align 4, !llvm.access.group !7
  %46 = icmp slt i32 %45, 64
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4, !llvm.access.group !7
  %49 = mul nsw i32 %48, 1
  %50 = add nsw i32 0, %49
  store i32 %50, i32* %20, align 4, !llvm.access.group !7
  %51 = load i32, i32* %20, align 4, !llvm.access.group !7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4, !llvm.access.group !7
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4, !llvm.access.group !7
  br label %56

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %19, align 4, !llvm.access.group !7
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %19, align 4, !llvm.access.group !7
  br label %44, !llvm.loop !8

60:                                               ; preds = %44
  store i32 64, i32* %20, align 4
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %27)
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!7 = distinct !{}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.parallel_accesses", !7}
!10 = !{!"llvm.loop.vectorize.enable", i1 true}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
