; ModuleID = 'dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c'
source_filename = "dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c"
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
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %4, !llvm.loop !5

14:                                               ; preds = %4
  call void @__omp_offloading_10302_803f32_main_l30([100 x i32]* %2) #2
  %15 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 97
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f32_main_l30([100 x i32]* nonnull align 4 dereferenceable(400) %0) #1 {
  %2 = alloca [100 x i32]*, align 8
  store [100 x i32]* %0, [100 x i32]** %2, align 8
  %3 = load [100 x i32]*, [100 x i32]** %2, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [100 x i32]* nonnull align 4 dereferenceable(400) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store [100 x i32]* %2, [100 x i32]** %6, align 8
  %14 = load [100 x i32]*, [100 x i32]** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 83, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %16, i32 92, i32* %12, i32* %9, i32* %10, i32* %11, i32 1, i32 1)
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 83
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 83, %19 ], [ %21, %20 ]
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %31, i64 %33, [100 x i32]* %14)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %7, align 4
  br label %25, !llvm.loop !7

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %16)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 100, i32* %13, align 4
  br label %43

43:                                               ; preds = %42, %39
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, [100 x i32]* nonnull align 4 dereferenceable(400) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [100 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store [100 x i32]* %4, [100 x i32]** %10, align 8
  %18 = load [100 x i32]*, [100 x i32]** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 83, i32* %14, align 4
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  store i32 %20, i32* %13, align 4
  store i32 %22, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %24, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %25, 83
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 83, %27 ], [ %29, %28 ]
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %51, %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 1
  %40 = add nsw i32 16, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = sub nsw i32 %41, 16
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [100 x i32], [100 x i32]* %18, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %33, !llvm.loop !10

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %24)
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 100, i32* %17, align 4
  br label %59

59:                                               ; preds = %58, %55
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
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 16}
!9 = !{!"llvm.loop.vectorize.enable", i1 true}
!10 = distinct !{!10, !8, !9}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
