; ModuleID = 'dataracebench/DRB011-minusminus-orig-yes.c'
source_filename = "dataracebench/DRB011-minusminus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"numNodes2 = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [100 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = srem i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %22
  store i32 5, i32* %23, align 4
  br label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %10, i64 0, i64 %26
  store i32 -5, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %12, !llvm.loop !5

32:                                               ; preds = %12
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, [100 x i32]* %10, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [100 x i32]* nonnull align 4 dereferenceable(400) %3, i32* nonnull align 4 dereferenceable(4) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [100 x i32]*, align 8
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
  store [100 x i32]* %3, [100 x i32]** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load [100 x i32]*, [100 x i32]** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %21, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sub i32 %26, -1
  %28 = udiv i32 %27, 1
  %29 = sub i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %74

33:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %36, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %67, %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %17, align 4
  %50 = add i32 %49, 1
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul i32 %54, 1
  %56 = sub i32 %53, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x i32], [100 x i32]* %22, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* %23, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %23, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %47

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %73)
  br label %74

74:                                               ; preds = %71, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
