; ModuleID = 'dataracebench/DRB026-targetparallelfor-orig-yes.c'
source_filename = "dataracebench/DRB026-targetparallelfor-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1000 x i32], align 16
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %19, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1000 x i32], [1000 x i32]* %8, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %10, !llvm.loop !5

22:                                               ; preds = %10
  %23 = load i32, i32* %7, align 4
  %24 = bitcast i64* %9 to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %9, align 8
  call void @__omp_offloading_10302_803e81_main_l61(i64 %25, [1000 x i32]* %8) #2
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803e81_main_l61(i64 %0, [1000 x i32]* nonnull align 4 dereferenceable(4000) %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca [1000 x i32]*, align 8
  store i64 %0, i64* %3, align 8
  store [1000 x i32]* %1, [1000 x i32]** %4, align 8
  %5 = bitcast i64* %3 to i32*
  %6 = load [1000 x i32]*, [1000 x i32]** %4, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, [1000 x i32]* %6)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [1000 x i32]* nonnull align 4 dereferenceable(4000) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1000 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store [1000 x i32]* %3, [1000 x i32]** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load [1000 x i32]*, [1000 x i32]** %8, align 8
  %21 = load i32, i32* %19, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %23, 0
  %25 = sdiv i32 %24, 1
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 0, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %32, i32 34, i32* %17, i32* %14, i32* %15, i32* %16, i32 1, i32 1)
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %61, %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, 1
  %50 = add nsw i32 0, %49
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x i32], [1000 x i32]* %20, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [1000 x i32], [1000 x i32]* %20, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %43

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %67)
  br label %68

68:                                               ; preds = %65, %4
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
