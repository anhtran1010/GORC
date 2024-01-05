; ModuleID = 'dataracebench/DRB022-reductionmissing-var-yes.c'
source_filename = "dataracebench/DRB022-reductionmissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0.000000e+00, float* %9, align 4
  store i32 100, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* %19) #6
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = mul nuw i64 %23, %25
  %28 = alloca float, i64 %27, align 16
  store i64 %23, i64* %12, align 8
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %50, %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, %25
  %42 = getelementptr inbounds float, float* %28, i64 %41
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  store float 5.000000e-01, float* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34, !llvm.loop !5

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %29, !llvm.loop !7

53:                                               ; preds = %29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, float*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %10, i64 %23, i64 %25, float* %28, float* %9)
  %54 = load float, float* %9, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %55)
  store i32 0, i32* %3, align 4
  %57 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4, float* nonnull align 4 dereferenceable(4) %5, float* nonnull align 4 dereferenceable(4) %6) #3 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load float*, float** %13, align 8
  %32 = load float*, float** %14, align 8
  %33 = load i32, i32* %28, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = sub nsw i32 %34, 0
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %43, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %18, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %21, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %85, %51
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %62

62:                                               ; preds = %80, %58
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %28, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load i32, i32* %25, align 4
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, %30
  %70 = getelementptr inbounds float, float* %31, i64 %69
  %71 = load i32, i32* %26, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  store float %74, float* %24, align 4
  %75 = load float, float* %32, align 4
  %76 = load float, float* %24, align 4
  %77 = load float, float* %24, align 4
  %78 = fmul float %76, %77
  %79 = fadd float %75, %78
  store float %79, float* %32, align 4
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %26, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %26, align 4
  br label %62, !llvm.loop !8

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %54

88:                                               ; preds = %54
  br label %89

89:                                               ; preds = %88
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %91)
  br label %92

92:                                               ; preds = %89, %7
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }

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
