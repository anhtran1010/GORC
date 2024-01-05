; ModuleID = 'dataracebench/DRB004-antidep2-var-yes.c'
source_filename = "dataracebench/DRB004-antidep2-var-yes.c"
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
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* %17) #5
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = mul nuw i64 %21, %23
  %26 = alloca double, i64 %25, align 16
  store i64 %21, i64* %10, align 8
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %48, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %38, %23
  %40 = getelementptr inbounds double, double* %26, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  store double 5.000000e-01, double* %43, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %32, !llvm.loop !5

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %27, !llvm.loop !7

51:                                               ; preds = %27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, i64 %21, i64 %23, double* %26)
  store i32 0, i32* %3, align 4
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5) #3 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca double*, align 8
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
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store double* %5, double** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load double*, double** %12, align 8
  %28 = load i32, i32* %24, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 %30, 0
  %32 = sdiv i32 %31, 1
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 0, %34
  br i1 %35, label %36, label %93

36:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %39, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %16, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %19, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %86, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %55, 1
  %57 = add nsw i32 0, %56
  store i32 %57, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %58

58:                                               ; preds = %81, %54
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %24, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* %23, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %26
  %67 = getelementptr inbounds double, double* %27, i64 %66
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = load i32, i32* %23, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, %26
  %75 = getelementptr inbounds double, double* %27, i64 %74
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fadd double %79, %71
  store double %80, double* %78, align 8
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %22, align 4
  br label %58, !llvm.loop !8

84:                                               ; preds = %58
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %50

89:                                               ; preds = %50
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %92)
  br label %93

93:                                               ; preds = %90, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{!10}
!10 = !{i64 2, i64 -1, i64 -1, i1 true}
