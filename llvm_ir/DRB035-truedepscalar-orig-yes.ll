; ModuleID = 'dataracebench/DRB035-truedepscalar-orig-yes.c'
source_filename = "dataracebench/DRB035-truedepscalar-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %7, align 4
  store i32 100, i32* %8, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, [100 x i32]* %9, i32* %7)
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* %9, i64 0, i64 50
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
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
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %22, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [100 x i32], [100 x i32]* %22, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %23, align 4
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
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

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
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
