; ModuleID = 'dataracebench/DRB090-static-local-orig-yes.c'
source_filename = "dataracebench/DRB090-static-local-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@main.tmp = internal global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [19 x i8] c"a[50]=%d b[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %14, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %17, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %18, !llvm.loop !5

34:                                               ; preds = %18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %7, i64 %12, i32* %14)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %7, i64 %16, i32* %17)
  %35 = getelementptr inbounds i32, i32* %14, i64 50
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds i32, i32* %17, i64 50
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  store i32 0, i32* %3, align 4
  %40 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %21, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = sub nsw i32 %25, 0
  %27 = sdiv i32 %26, 1
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 0, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %34, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %17, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 1
  %52 = add nsw i32 0, %51
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %23, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* @main.tmp, align 4
  %59 = load i32, i32* @main.tmp, align 4
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %23, i64 %61
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %45

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %70)
  br label %71

71:                                               ; preds = %68, %5
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %73)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %22, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = sub nsw i32 %26, 0
  %28 = sdiv i32 %27, 1
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %35, i32 34, i32* %20, i32* %17, i32* %18, i32* %19, i32 1, i32 1)
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %18, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %65, %43
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, 1
  %53 = add nsw i32 0, %52
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %24, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %21, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %24, i64 %62
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %71)
  br label %72

72:                                               ; preds = %69, %5
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %74)
  ret void
}

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
