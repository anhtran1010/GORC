; ModuleID = 'dataracebench/DRB049-fprintf-orig-no.c'
source_filename = "dataracebench/DRB049-fprintf-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"mytempfile.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Error in fopen()\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Error: unable to delete mytempfile.txt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1000 x i32], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1000 x i32], [1000 x i32]* %10, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %11, !llvm.loop !5

23:                                               ; preds = %11
  %24 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %8, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct._IO_FILE**, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, %struct._IO_FILE** %8, [1000 x i32]* %10)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %32 = call i32 @fclose(%struct._IO_FILE* %31)
  %33 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #3
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %30
  ret i32 0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, %struct._IO_FILE** nonnull align 8 dereferenceable(8) %3, [1000 x i32]* nonnull align 4 dereferenceable(4000) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca [1000 x i32]*, align 8
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
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %9, align 8
  store [1000 x i32]* %4, [1000 x i32]** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %23 = load [1000 x i32]*, [1000 x i32]** %10, align 8
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
  br i1 %30, label %31, label %67

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

45:                                               ; preds = %60, %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 1
  %52 = add nsw i32 0, %51
  store i32 %52, i32* %20, align 4
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x i32], [1000 x i32]* %23, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %66)
  br label %67

67:                                               ; preds = %64, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
