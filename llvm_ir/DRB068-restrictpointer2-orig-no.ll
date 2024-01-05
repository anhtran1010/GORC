; ModuleID = 'dataracebench/DRB068-restrictpointer2-orig-no.c'
source_filename = "dataracebench/DRB068-restrictpointer2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"skip the execution due to malloc failures.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, i32** %6, i32** %7, i32** %8)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32** nonnull align 8 dereferenceable(8) %3, i32** nonnull align 8 dereferenceable(8) %4, i32** nonnull align 8 dereferenceable(8) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
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
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32** %5, i32*** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32**, i32*** %10, align 8
  %25 = load i32**, i32*** %11, align 8
  %26 = load i32**, i32*** %12, align 8
  %27 = load i32, i32* %23, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %37, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %16, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %19, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %72, %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %22, align 4
  %56 = load i32*, i32** %25, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %26, align 8
  %62 = load i32, i32* %22, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = load i32*, i32** %24, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %48

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %78)
  br label %79

79:                                               ; preds = %76, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = call noalias align 16 i8* @malloc(i64 %8) #2
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %49

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias align 16 i8* @malloc(i64 %19) #2
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %49

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias align 16 i8* @malloc(i64 %30) #2
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %49

38:                                               ; preds = %27
  %39 = load i32, i32* %2, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  call void @foo(i32 %39, i32* %40, i32* %41, i32* %42)
  %43 = load i32*, i32** %3, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #2
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast i32* %45 to i8*
  call void @free(i8* %46) #2
  %47 = load i32*, i32** %5, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #2
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %38, %35, %24, %13
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
