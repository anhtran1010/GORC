; ModuleID = 'dataracebench/DRB115-forsimd-orig-yes.c'
source_filename = "dataracebench/DRB115-forsimd-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i32], align 16
  %9 = alloca [100 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %10, !llvm.loop !5

27:                                               ; preds = %10
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %6, i32* %7, [100 x i32]* %8, [100 x i32]* %9)
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %8, i64 0, i64 50
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, [100 x i32]* nonnull align 4 dereferenceable(400) %4, [100 x i32]* nonnull align 4 dereferenceable(400) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [100 x i32]*, align 8
  %12 = alloca [100 x i32]*, align 8
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
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store [100 x i32]* %4, [100 x i32]** %11, align 8
  store [100 x i32]* %5, [100 x i32]** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load [100 x i32]*, [100 x i32]** %11, align 8
  %26 = load [100 x i32]*, [100 x i32]** %12, align 8
  %27 = load i32, i32* %24, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %29, 0
  %31 = sdiv i32 %30, 1
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 0, %33
  br i1 %34, label %35, label %87

35:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %38, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %19, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %71, %46
  %50 = load i32, i32* %13, align 4, !llvm.access.group !7
  %51 = load i32, i32* %19, align 4, !llvm.access.group !7
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4, !llvm.access.group !7
  %55 = mul nsw i32 %54, 1
  %56 = add nsw i32 0, %55
  store i32 %56, i32* %22, align 4, !llvm.access.group !7
  %57 = load i32, i32* %22, align 4, !llvm.access.group !7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x i32], [100 x i32]* %25, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4, !llvm.access.group !7
  %61 = load i32, i32* %22, align 4, !llvm.access.group !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i32], [100 x i32]* %26, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4, !llvm.access.group !7
  %65 = add nsw i32 %60, %64
  %66 = load i32, i32* %22, align 4, !llvm.access.group !7
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [100 x i32], [100 x i32]* %25, i64 0, i64 %68
  store i32 %65, i32* %69, align 4, !llvm.access.group !7
  br label %70

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4, !llvm.access.group !7
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4, !llvm.access.group !7
  br label %49, !llvm.loop !8

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %77)
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 0
  %83 = sdiv i32 %82, 1
  %84 = mul nsw i32 %83, 1
  %85 = add nsw i32 0, %84
  store i32 %85, i32* %23, align 4
  br label %86

86:                                               ; preds = %80, %75
  br label %87

87:                                               ; preds = %86, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
