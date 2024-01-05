; ModuleID = 'dataracebench/DRB015-outofbounds-var-yes.c'
source_filename = "dataracebench/DRB015-outofbounds-var-yes.c"
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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* %19) #5
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = mul nuw i64 %25, %27
  %30 = alloca double, i64 %29, align 16
  store i64 %25, i64* %12, align 8
  store i64 %27, i64* %13, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, i32* %10, i64 %25, i64 %27, double* %30)
  store i32 0, i32* %3, align 4
  %31 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i64 %4, i64 %5, double* nonnull align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store double* %6, double** %14, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load double*, double** %14, align 8
  %31 = load i32, i32* %26, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sdiv i32 %33, 1
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 1, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %41, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %21, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %86, %49
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  %58 = mul nsw i32 %57, 1
  %59 = add nsw i32 1, %58
  store i32 %59, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %60

60:                                               ; preds = %81, %56
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %27, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* %25, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %29
  %68 = getelementptr inbounds double, double* %30, i64 %67
  %69 = load i32, i32* %24, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %68, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load i32, i32* %25, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, %29
  %77 = getelementptr inbounds double, double* %30, i64 %76
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  store double %73, double* %80, align 8
  br label %81

81:                                               ; preds = %64
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %24, align 4
  br label %60, !llvm.loop !5

84:                                               ; preds = %60
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %52

89:                                               ; preds = %52
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %92)
  br label %93

93:                                               ; preds = %90, %7
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
