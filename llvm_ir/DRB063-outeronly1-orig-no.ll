; ModuleID = 'dataracebench/DRB063-outeronly1-orig-no.c'
source_filename = "dataracebench/DRB063-outeronly1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = dso_local global [100 x [100 x double]] zeroinitializer, align 16
@n = dso_local global i32 100, align 4
@m = dso_local global i32 100, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32, i32* @n, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 0
  %19 = sdiv i32 %18, 1
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %26, i32 34, i32* %13, i32* %10, i32* %11, i32* %12, i32 1, i32 1)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %70, %34
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %42, 1
  %44 = add nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %65, %41
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @m, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100 x double], [100 x double]* %53, i64 0, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %60
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [100 x double], [100 x double]* %61, i64 0, i64 %63
  store double %58, double* %64, align 8
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %45, !llvm.loop !5

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %37

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %75, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %76)
  br label %77

77:                                               ; preds = %74, %2
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  ret i32 0
}

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
