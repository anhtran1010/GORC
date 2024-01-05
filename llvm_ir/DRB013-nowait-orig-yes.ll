; ModuleID = 'dataracebench/DRB013-nowait-orig-yes.c'
source_filename = "dataracebench/DRB013-nowait-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  store i32 5, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %21, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %11, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %12, !llvm.loop !5

24:                                               ; preds = %12
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %4, i64 %9, i32* %11, i32* %7, i32* %3)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %1, align 4
  %27 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %27)
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5, i32* nonnull align 4 dereferenceable(4) %6) #2 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %25, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = sub nsw i32 %31, 0
  %33 = sdiv i32 %32, 1
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 0, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %40, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %18, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %21, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %70, %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 0, %57
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %28, align 4
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %27, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 5
  %65 = add nsw i32 %59, %64
  %66 = load i32, i32* %24, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %27, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %51

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %76)
  br label %77

77:                                               ; preds = %74, %7
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @__kmpc_single(%struct.ident_t* @2, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds i32, i32* %27, i64 9
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %29, align 4
  call void @__kmpc_end_single(%struct.ident_t* @2, i32 %79)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  call void @__kmpc_barrier(%struct.ident_t* @3, i32 %88)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
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
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
