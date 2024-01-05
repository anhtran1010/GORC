; ModuleID = 'dataracebench/DRB038-truedepseconddimension-var-yes.c'
source_filename = "dataracebench/DRB038-truedepseconddimension-var-yes.c"
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
  store i32 1000, i32* %8, align 4
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
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %36, %21
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %10, i64 %25, i64 %27, double* %30, i32* %6)
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %31, !llvm.loop !5

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  %40 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5, i32* nonnull align 4 dereferenceable(4) %6) #3 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double*, align 8
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
  store i64 %4, i64* %12, align 8
  store double* %5, double** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load double*, double** %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %25, align 4
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sdiv i32 %32, 1
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 1, %35
  br i1 %36, label %37, label %83

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

51:                                               ; preds = %76, %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 1, %57
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %29, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %60, %27
  %62 = getelementptr inbounds double, double* %28, i64 %61
  %63 = load i32, i32* %24, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, double* %62, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load i32, i32* %29, align 4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %27
  %71 = getelementptr inbounds double, double* %28, i64 %70
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double %67, double* %74, align 8
  br label %75

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %51

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %82)
  br label %83

83:                                               ; preds = %80, %7
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
