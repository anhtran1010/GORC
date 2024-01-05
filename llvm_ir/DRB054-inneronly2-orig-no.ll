; ModuleID = 'dataracebench/DRB054-inneronly2-orig-no.c'
source_filename = "dataracebench/DRB054-inneronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 100, i32* %4, align 4
  store i32 100, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = mul nuw i64 %10, %12
  %15 = alloca double, i64 %14, align 16
  store i64 %10, i64* %7, align 8
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %41, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sitofp i32 %28 to double
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, %12
  %33 = getelementptr inbounds double, double* %15, i64 %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  store double %29, double* %36, align 8
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %21, !llvm.loop !5

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %16, !llvm.loop !7

44:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %50, %44
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, i64 %10, i64 %12, double* %15, i32* %2)
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %45, !llvm.loop !8

53:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  %54 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5, i32* nonnull align 4 dereferenceable(4) %6) #2 {
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
  br i1 %36, label %37, label %84

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

51:                                               ; preds = %77, %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %21, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %56, 1
  %58 = add nsw i32 1, %57
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %29, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, %27
  %63 = getelementptr inbounds double, double* %28, i64 %62
  %64 = load i32, i32* %24, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load i32, i32* %29, align 4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %27
  %72 = getelementptr inbounds double, double* %28, i64 %71
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  store double %68, double* %75, align 8
  br label %76

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %51

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %83)
  br label %84

84:                                               ; preds = %81, %7
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !9 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
