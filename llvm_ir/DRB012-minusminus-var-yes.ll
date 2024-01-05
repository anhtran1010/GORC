; ModuleID = 'dataracebench/DRB012-minusminus-var-yes.c'
source_filename = "dataracebench/DRB012-minusminus-var-yes.c"
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
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* %17) #5
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %42, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %24, i64 %35
  store i32 5, i32* %36, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %24, i64 %39
  store i32 -5, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %25, !llvm.loop !5

45:                                               ; preds = %25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, i64 %22, i32* %24, i32* %9)
  store i32 0, i32* %3, align 4
  %46 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5) #3 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
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
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %23, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub i32 %29, -1
  %31 = udiv i32 %30, 1
  %32 = sub i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %77

36:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %39, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ugt i32 %40, %41
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

50:                                               ; preds = %70, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = add i32 %52, 1
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 %57, 1
  %59 = sub i32 %56, %58
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %25, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %26, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %26, align 4
  br label %68

68:                                               ; preds = %65, %55
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %76)
  br label %77

77:                                               ; preds = %74, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

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
