; ModuleID = 'dataracebench/DRB160-nobarrier-orig-gpu-yes.c'
source_filename = "dataracebench/DRB160-nobarrier-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global i32 0, align 4
@b = dso_local global [16 x i32] zeroinitializer, align 16
@c = dso_local global [16 x i32] zeroinitializer, align 16
@temp = dso_local global [16 x i32] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"index: %d val: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* @c, i64 0, i64 %14
  store i32 2, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* @temp, i64 0, i64 %17
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %6, !llvm.loop !5

22:                                               ; preds = %6
  store i32 2, i32* @a, align 4
  call void @__omp_offloading_10302_803efd_main_l36([16 x i32]* @temp, [16 x i32]* @b, [16 x i32]* @c, i32* @a) #2
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %31, %22
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 100
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %23, !llvm.loop !7

34:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* @b, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %35, !llvm.loop !8

56:                                               ; preds = %35
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803efd_main_l36([16 x i32]* nonnull align 4 dereferenceable(64) %0, [16 x i32]* nonnull align 4 dereferenceable(64) %1, [16 x i32]* nonnull align 4 dereferenceable(64) %2, i32* nonnull align 4 dereferenceable(4) %3) #1 {
  %5 = alloca [16 x i32]*, align 8
  %6 = alloca [16 x i32]*, align 8
  %7 = alloca [16 x i32]*, align 8
  %8 = alloca i32*, align 8
  store [16 x i32]* %0, [16 x i32]** %5, align 8
  store [16 x i32]* %1, [16 x i32]** %6, align 8
  store [16 x i32]* %2, [16 x i32]** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load [16 x i32]*, [16 x i32]** %5, align 8
  %10 = load [16 x i32]*, [16 x i32]** %6, align 8
  %11 = load [16 x i32]*, [16 x i32]** %7, align 8
  %12 = load i32*, i32** %8, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [16 x i32]*, [16 x i32]*, [16 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [16 x i32]* %9, [16 x i32]* %10, [16 x i32]* %11, i32* %12)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [16 x i32]* nonnull align 4 dereferenceable(64) %2, [16 x i32]* nonnull align 4 dereferenceable(64) %3, [16 x i32]* nonnull align 4 dereferenceable(64) %4, i32* nonnull align 4 dereferenceable(4) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i32]*, align 8
  %10 = alloca [16 x i32]*, align 8
  %11 = alloca [16 x i32]*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store [16 x i32]* %2, [16 x i32]** %9, align 8
  store [16 x i32]* %3, [16 x i32]** %10, align 8
  store [16 x i32]* %4, [16 x i32]** %11, align 8
  store i32* %5, i32** %12, align 8
  %28 = load [16 x i32]*, [16 x i32]** %9, align 8
  %29 = load [16 x i32]*, [16 x i32]** %10, align 8
  %30 = load [16 x i32]*, [16 x i32]** %11, align 8
  %31 = load i32*, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %109, %6
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 100
  br i1 %34, label %35, label %112

35:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  store i32 15, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %37, i32 92, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %38 = load i32, i32* %17, align 4
  %39 = icmp sgt i32 %38, 15
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %17, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 15, %40 ], [ %42, %41 ]
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %67, %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %51, 1
  %53 = add nsw i32 0, %52
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %29, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %57, %61
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %28, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %46

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %73)
  store i32 0, i32* %23, align 4
  store i32 15, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %75, i32 92, i32* %26, i32* %23, i32* %24, i32* %25, i32 1, i32 1)
  %76 = load i32, i32* %24, align 4
  %77 = icmp sgt i32 %76, 15
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %24, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 15, %78 ], [ %80, %79 ]
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %23, align 4
  store i32 %83, i32* %21, align 4
  br label %84

84:                                               ; preds = %102, %81
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i32, i32* %21, align 4
  %90 = mul nsw i32 %89, 1
  %91 = sub nsw i32 15, %90
  store i32 %91, i32* %27, align 4
  %92 = load i32, i32* %27, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %28, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %31, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %27, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %29, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %84

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %107, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %108)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %32, !llvm.loop !9

112:                                              ; preds = %32
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
