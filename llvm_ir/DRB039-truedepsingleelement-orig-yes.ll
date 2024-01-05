; ModuleID = 'dataracebench/DRB039-truedepsingleelement-orig-yes.c'
source_filename = "dataracebench/DRB039-truedepsingleelement-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"a[500]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1000 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %6, align 4
  %9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %9, align 16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %6, [1000 x i32]* %8)
  %10 = getelementptr inbounds [1000 x i32], [1000 x i32]* %8, i64 0, i64 500
  %11 = load i32, i32* %10, align 16
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [1000 x i32]* nonnull align 4 dereferenceable(4000) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [1000 x i32]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store [1000 x i32]* %3, [1000 x i32]** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load [1000 x i32]*, [1000 x i32]** %8, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub nsw i32 %22, 0
  %24 = sdiv i32 %23, 1
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 0, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %31, i32 34, i32* %17, i32* %14, i32* %15, i32* %16, i32 1, i32 1)
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %61, %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 1
  %49 = add nsw i32 0, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [1000 x i32], [1000 x i32]* %20, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [1000 x i32], [1000 x i32]* %20, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = add nsw i32 %53, %55
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [1000 x i32], [1000 x i32]* %20, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %66, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %67)
  br label %68

68:                                               ; preds = %65, %4
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
