; ModuleID = 'dataracebench/DRB043-adi-parallel-no.c'
source_filename = "dataracebench/DRB043-adi-parallel-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [500 x [500 x double]]*, align 8
  %9 = alloca [500 x [500 x double]]*, align 8
  %10 = alloca [500 x [500 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 500, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %11 = call i8* @polybench_alloc_data(i64 250000, i32 8)
  %12 = bitcast i8* %11 to [500 x [500 x double]]*
  store [500 x [500 x double]]* %12, [500 x [500 x double]]** %8, align 8
  %13 = call i8* @polybench_alloc_data(i64 250000, i32 8)
  %14 = bitcast i8* %13 to [500 x [500 x double]]*
  store [500 x [500 x double]]* %14, [500 x [500 x double]]** %9, align 8
  %15 = call i8* @polybench_alloc_data(i64 250000, i32 8)
  %16 = bitcast i8* %15 to [500 x [500 x double]]*
  store [500 x [500 x double]]* %16, [500 x [500 x double]]** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %19 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %18, i64 0, i64 0
  %20 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %21 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %20, i64 0, i64 0
  %22 = load [500 x [500 x double]]*, [500 x [500 x double]]** %10, align 8
  %23 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %22, i64 0, i64 0
  call void @init_array(i32 %17, [500 x double]* %19, [500 x double]* %21, [500 x double]* %23)
  %24 = call i32 (...) @polybench_timer_start()
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %28 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %27, i64 0, i64 0
  %29 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %30 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %29, i64 0, i64 0
  %31 = load [500 x [500 x double]]*, [500 x [500 x double]]** %10, align 8
  %32 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %31, i64 0, i64 0
  call void @kernel_adi(i32 %25, i32 %26, [500 x double]* %28, [500 x double]* %30, [500 x double]* %32)
  %33 = call i32 (...) @polybench_timer_stop()
  %34 = call i32 (...) @polybench_timer_print()
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 42
  br i1 %36, label %37, label %47

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %46 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %45, i64 0, i64 0
  call void @print_array(i32 %44, [500 x double]* %46)
  br label %47

47:                                               ; preds = %43, %37, %2
  %48 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %49 = bitcast [500 x [500 x double]]* %48 to i8*
  call void @free(i8* %49) #5
  %50 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %51 = bitcast [500 x [500 x double]]* %50 to i8*
  call void @free(i8* %51) #5
  %52 = load [500 x [500 x double]]*, [500 x [500 x double]]** %10, align 8
  %53 = bitcast [500 x [500 x double]]* %52 to i8*
  call void @free(i8* %53) #5
  ret i32 0
}

declare dso_local i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 %0, [500 x double]* %1, [500 x double]* %2, [500 x double]* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [500 x double]*, align 8
  %7 = alloca [500 x double]*, align 8
  %8 = alloca [500 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store [500 x double]* %1, [500 x double]** %6, align 8
  store [500 x double]* %2, [500 x double]** %7, align 8
  store [500 x double]* %3, [500 x double]** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %5, [500 x double]** %6, [500 x double]** %7, [500 x double]** %8)
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

declare dso_local i32 @polybench_timer_start(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_adi(i32 %0, i32 %1, [500 x double]* %2, [500 x double]* %3, [500 x double]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [500 x double]*, align 8
  %9 = alloca [500 x double]*, align 8
  %10 = alloca [500 x double]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [500 x double]* %2, [500 x double]** %8, align 8
  store [500 x double]* %3, [500 x double]** %9, align 8
  store [500 x double]* %4, [500 x double]** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %18, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp sle i32 %15, 9
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), [500 x double]** %10, [500 x double]** %9, [500 x double]** %8)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [500 x double]** %8, [500 x double]** %10)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [500 x double]** %10, [500 x double]** %9, [500 x double]** %8)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), [500 x double]** %8, [500 x double]** %10)
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  br label %14, !llvm.loop !5

21:                                               ; preds = %14
  ret void
}

declare dso_local i32 @polybench_timer_stop(...) #1

declare dso_local i32 @polybench_timer_print(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 %0, [500 x double]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [500 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [500 x double]* %1, [500 x double]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load [500 x double]*, [500 x double]** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [500 x double], [500 x double]* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %25)
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 500
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = srem i32 %30, 20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12, !llvm.loop !7

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %7, !llvm.loop !8

44:                                               ; preds = %7
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3, [500 x double]** nonnull align 8 dereferenceable(8) %4, [500 x double]** nonnull align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [500 x double]**, align 8
  %11 = alloca [500 x double]**, align 8
  %12 = alloca [500 x double]**, align 8
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
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store [500 x double]** %3, [500 x double]*** %10, align 8
  store [500 x double]** %4, [500 x double]*** %11, align 8
  store [500 x double]** %5, [500 x double]*** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load [500 x double]**, [500 x double]*** %10, align 8
  %26 = load [500 x double]**, [500 x double]*** %11, align 8
  %27 = load [500 x double]**, [500 x double]*** %12, align 8
  %28 = load i32, i32* %24, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sub i32 %30, -1
  %32 = udiv i32 %31, 1
  %33 = sub i32 %32, 1
  store i32 %33, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sle i32 0, %34
  br i1 %35, label %36, label %127

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

50:                                               ; preds = %120, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %123

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = mul i32 %55, 1
  %57 = add i32 0, %56
  store i32 %57, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %58

58:                                               ; preds = %115, %54
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %24, align 4
  %61 = add nsw i32 %60, -1
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %118

63:                                               ; preds = %58
  %64 = load i32, i32* %23, align 4
  %65 = sitofp i32 %64 to double
  %66 = load i32, i32* %22, align 4
  %67 = add nsw i32 %66, 1
  %68 = sitofp i32 %67 to double
  %69 = fmul double %65, %68
  %70 = fadd double %69, 1.000000e+00
  %71 = load i32, i32* %24, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  %74 = load [500 x double]*, [500 x double]** %25, align 8
  %75 = load i32, i32* %23, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [500 x double], [500 x double]* %74, i64 %76
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [500 x double], [500 x double]* %77, i64 0, i64 %79
  store double %73, double* %80, align 8
  %81 = load i32, i32* %23, align 4
  %82 = sitofp i32 %81 to double
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, 2
  %85 = sitofp i32 %84 to double
  %86 = fmul double %82, %85
  %87 = fadd double %86, 2.000000e+00
  %88 = load i32, i32* %24, align 4
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %87, %89
  %91 = load [500 x double]*, [500 x double]** %26, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [500 x double], [500 x double]* %91, i64 %93
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [500 x double], [500 x double]* %94, i64 0, i64 %96
  store double %90, double* %97, align 8
  %98 = load i32, i32* %23, align 4
  %99 = sitofp i32 %98 to double
  %100 = load i32, i32* %22, align 4
  %101 = add nsw i32 %100, 3
  %102 = sitofp i32 %101 to double
  %103 = fmul double %99, %102
  %104 = fadd double %103, 3.000000e+00
  %105 = load i32, i32* %24, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  %108 = load [500 x double]*, [500 x double]** %27, align 8
  %109 = load i32, i32* %23, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [500 x double], [500 x double]* %108, i64 %110
  %112 = load i32, i32* %22, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [500 x double], [500 x double]* %111, i64 0, i64 %113
  store double %107, double* %114, align 8
  br label %115

115:                                              ; preds = %63
  %116 = load i32, i32* %22, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %22, align 4
  br label %58, !llvm.loop !9

118:                                              ; preds = %58
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %50

123:                                              ; preds = %50
  br label %124

124:                                              ; preds = %123
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %126)
  br label %127

127:                                              ; preds = %124, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, [500 x double]** nonnull align 8 dereferenceable(8) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3, [500 x double]** nonnull align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [500 x double]**, align 8
  %9 = alloca [500 x double]**, align 8
  %10 = alloca [500 x double]**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store [500 x double]** %2, [500 x double]*** %8, align 8
  store [500 x double]** %3, [500 x double]*** %9, align 8
  store [500 x double]** %4, [500 x double]*** %10, align 8
  %19 = load [500 x double]**, [500 x double]*** %8, align 8
  %20 = load [500 x double]**, [500 x double]*** %9, align 8
  %21 = load [500 x double]**, [500 x double]*** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 499, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %23, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %24, 499
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 499, %26 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %202, %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %205

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %37, 1
  %39 = add nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %40

40:                                               ; preds = %87, %36
  %41 = load i32, i32* %17, align 4
  %42 = icmp sle i32 %41, 499
  br i1 %42, label %43, label %90

43:                                               ; preds = %40
  %44 = load [500 x double]*, [500 x double]** %19, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [500 x double], [500 x double]* %44, i64 %46
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [500 x double], [500 x double]* %47, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load [500 x double]*, [500 x double]** %20, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [500 x double], [500 x double]* %52, i64 %54
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [500 x double], [500 x double]* %55, i64 0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load [500 x double]*, [500 x double]** %20, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [500 x double], [500 x double]* %60, i64 %62
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %59, %67
  %69 = load [500 x double]*, [500 x double]** %19, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [500 x double], [500 x double]* %69, i64 %71
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [500 x double], [500 x double]* %72, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fdiv double %68, %77
  %79 = fsub double %51, %78
  %80 = load [500 x double]*, [500 x double]** %19, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [500 x double], [500 x double]* %80, i64 %82
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [500 x double], [500 x double]* %83, i64 0, i64 %85
  store double %79, double* %86, align 8
  br label %87

87:                                               ; preds = %43
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %40, !llvm.loop !12

90:                                               ; preds = %40
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %139, %90
  %92 = load i32, i32* %17, align 4
  %93 = icmp sle i32 %92, 499
  br i1 %93, label %94, label %142

94:                                               ; preds = %91
  %95 = load [500 x double]*, [500 x double]** %21, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [500 x double], [500 x double]* %95, i64 %97
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [500 x double], [500 x double]* %98, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load [500 x double]*, [500 x double]** %21, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [500 x double], [500 x double]* %103, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [500 x double], [500 x double]* %106, i64 0, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load [500 x double]*, [500 x double]** %20, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [500 x double], [500 x double]* %112, i64 %114
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [500 x double], [500 x double]* %115, i64 0, i64 %117
  %119 = load double, double* %118, align 8
  %120 = fmul double %111, %119
  %121 = load [500 x double]*, [500 x double]** %19, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [500 x double], [500 x double]* %121, i64 %123
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [500 x double], [500 x double]* %124, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fdiv double %120, %129
  %131 = fsub double %102, %130
  %132 = load [500 x double]*, [500 x double]** %21, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [500 x double], [500 x double]* %132, i64 %134
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [500 x double], [500 x double]* %135, i64 0, i64 %137
  store double %131, double* %138, align 8
  br label %139

139:                                              ; preds = %94
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %91, !llvm.loop !13

142:                                              ; preds = %91
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %197, %142
  %144 = load i32, i32* %17, align 4
  %145 = icmp sle i32 %144, 497
  br i1 %145, label %146, label %200

146:                                              ; preds = %143
  %147 = load [500 x double]*, [500 x double]** %21, align 8
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [500 x double], [500 x double]* %147, i64 %149
  %151 = load i32, i32* %17, align 4
  %152 = sub nsw i32 498, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [500 x double], [500 x double]* %150, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load [500 x double]*, [500 x double]** %21, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [500 x double], [500 x double]* %156, i64 %158
  %160 = load i32, i32* %17, align 4
  %161 = sub nsw i32 498, %160
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [500 x double], [500 x double]* %159, i64 0, i64 %163
  %165 = load double, double* %164, align 8
  %166 = load [500 x double]*, [500 x double]** %20, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [500 x double], [500 x double]* %166, i64 %168
  %170 = load i32, i32* %17, align 4
  %171 = sub nsw i32 500, %170
  %172 = sub nsw i32 %171, 3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [500 x double], [500 x double]* %169, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = fmul double %165, %175
  %177 = fsub double %155, %176
  %178 = load [500 x double]*, [500 x double]** %19, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [500 x double], [500 x double]* %178, i64 %180
  %182 = load i32, i32* %17, align 4
  %183 = sub nsw i32 497, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [500 x double], [500 x double]* %181, i64 0, i64 %184
  %186 = load double, double* %185, align 8
  %187 = fdiv double %177, %186
  %188 = load [500 x double]*, [500 x double]** %21, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [500 x double], [500 x double]* %188, i64 %190
  %192 = load i32, i32* %17, align 4
  %193 = sub nsw i32 500, %192
  %194 = sub nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [500 x double], [500 x double]* %191, i64 0, i64 %195
  store double %187, double* %196, align 8
  br label %197

197:                                              ; preds = %146
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %143, !llvm.loop !14

200:                                              ; preds = %143
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %32

205:                                              ; preds = %32
  br label %206

206:                                              ; preds = %205
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %23)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %0, i32* noalias %1, [500 x double]** nonnull align 8 dereferenceable(8) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [500 x double]**, align 8
  %8 = alloca [500 x double]**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [500 x double]** %2, [500 x double]*** %7, align 8
  store [500 x double]** %3, [500 x double]*** %8, align 8
  %16 = load [500 x double]**, [500 x double]*** %7, align 8
  %17 = load [500 x double]**, [500 x double]*** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 499, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 499
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 499, %22 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %55, %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 1
  %35 = add nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load [500 x double]*, [500 x double]** %16, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [500 x double], [500 x double]* %36, i64 %38
  %40 = getelementptr inbounds [500 x double], [500 x double]* %39, i64 0, i64 499
  %41 = load double, double* %40, align 8
  %42 = load [500 x double]*, [500 x double]** %17, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [500 x double], [500 x double]* %42, i64 %44
  %46 = getelementptr inbounds [500 x double], [500 x double]* %45, i64 0, i64 499
  %47 = load double, double* %46, align 8
  %48 = fdiv double %41, %47
  %49 = load [500 x double]*, [500 x double]** %16, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [500 x double], [500 x double]* %49, i64 %51
  %53 = getelementptr inbounds [500 x double], [500 x double]* %52, i64 0, i64 499
  store double %48, double* %53, align 8
  br label %54

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %19)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %0, i32* noalias %1, [500 x double]** nonnull align 8 dereferenceable(8) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3, [500 x double]** nonnull align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [500 x double]**, align 8
  %9 = alloca [500 x double]**, align 8
  %10 = alloca [500 x double]**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store [500 x double]** %2, [500 x double]*** %8, align 8
  store [500 x double]** %3, [500 x double]*** %9, align 8
  store [500 x double]** %4, [500 x double]*** %10, align 8
  %19 = load [500 x double]**, [500 x double]*** %8, align 8
  %20 = load [500 x double]**, [500 x double]*** %9, align 8
  %21 = load [500 x double]**, [500 x double]*** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 499, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %23, i32 34, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %24, 499
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 499, %26 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %200, %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %203

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %37, 1
  %39 = add nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %40

40:                                               ; preds = %87, %36
  %41 = load i32, i32* %17, align 4
  %42 = icmp sle i32 %41, 499
  br i1 %42, label %43, label %90

43:                                               ; preds = %40
  %44 = load [500 x double]*, [500 x double]** %19, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [500 x double], [500 x double]* %44, i64 %46
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [500 x double], [500 x double]* %47, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load [500 x double]*, [500 x double]** %20, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [500 x double], [500 x double]* %52, i64 %54
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [500 x double], [500 x double]* %55, i64 0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load [500 x double]*, [500 x double]** %20, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [500 x double], [500 x double]* %60, i64 %62
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %59, %67
  %69 = load [500 x double]*, [500 x double]** %19, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [500 x double], [500 x double]* %69, i64 %72
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [500 x double], [500 x double]* %73, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fdiv double %68, %77
  %79 = fsub double %51, %78
  %80 = load [500 x double]*, [500 x double]** %19, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [500 x double], [500 x double]* %80, i64 %82
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [500 x double], [500 x double]* %83, i64 0, i64 %85
  store double %79, double* %86, align 8
  br label %87

87:                                               ; preds = %43
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %40, !llvm.loop !15

90:                                               ; preds = %40
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %139, %90
  %92 = load i32, i32* %17, align 4
  %93 = icmp sle i32 %92, 499
  br i1 %93, label %94, label %142

94:                                               ; preds = %91
  %95 = load [500 x double]*, [500 x double]** %21, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [500 x double], [500 x double]* %95, i64 %97
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [500 x double], [500 x double]* %98, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load [500 x double]*, [500 x double]** %21, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [500 x double], [500 x double]* %103, i64 %106
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [500 x double], [500 x double]* %107, i64 0, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load [500 x double]*, [500 x double]** %20, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [500 x double], [500 x double]* %112, i64 %114
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [500 x double], [500 x double]* %115, i64 0, i64 %117
  %119 = load double, double* %118, align 8
  %120 = fmul double %111, %119
  %121 = load [500 x double]*, [500 x double]** %19, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [500 x double], [500 x double]* %121, i64 %124
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [500 x double], [500 x double]* %125, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fdiv double %120, %129
  %131 = fsub double %102, %130
  %132 = load [500 x double]*, [500 x double]** %21, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [500 x double], [500 x double]* %132, i64 %134
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [500 x double], [500 x double]* %135, i64 0, i64 %137
  store double %131, double* %138, align 8
  br label %139

139:                                              ; preds = %94
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %91, !llvm.loop !16

142:                                              ; preds = %91
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %195, %142
  %144 = load i32, i32* %17, align 4
  %145 = icmp sle i32 %144, 497
  br i1 %145, label %146, label %198

146:                                              ; preds = %143
  %147 = load [500 x double]*, [500 x double]** %21, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 498, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [500 x double], [500 x double]* %147, i64 %150
  %152 = load i32, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [500 x double], [500 x double]* %151, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load [500 x double]*, [500 x double]** %21, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 500, %157
  %159 = sub nsw i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [500 x double], [500 x double]* %156, i64 %160
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [500 x double], [500 x double]* %161, i64 0, i64 %163
  %165 = load double, double* %164, align 8
  %166 = load [500 x double]*, [500 x double]** %20, align 8
  %167 = load i32, i32* %17, align 4
  %168 = sub nsw i32 497, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [500 x double], [500 x double]* %166, i64 %169
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [500 x double], [500 x double]* %170, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fmul double %165, %174
  %176 = fsub double %155, %175
  %177 = load [500 x double]*, [500 x double]** %19, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sub nsw i32 498, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [500 x double], [500 x double]* %177, i64 %180
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [500 x double], [500 x double]* %181, i64 0, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fdiv double %176, %185
  %187 = load [500 x double]*, [500 x double]** %21, align 8
  %188 = load i32, i32* %17, align 4
  %189 = sub nsw i32 498, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [500 x double], [500 x double]* %187, i64 %190
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [500 x double], [500 x double]* %191, i64 0, i64 %193
  store double %186, double* %194, align 8
  br label %195

195:                                              ; preds = %146
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %143, !llvm.loop !17

198:                                              ; preds = %143
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %11, align 4
  br label %32

203:                                              ; preds = %32
  br label %204

204:                                              ; preds = %203
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %23)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..4(i32* noalias %0, i32* noalias %1, [500 x double]** nonnull align 8 dereferenceable(8) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [500 x double]**, align 8
  %8 = alloca [500 x double]**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [500 x double]** %2, [500 x double]*** %7, align 8
  store [500 x double]** %3, [500 x double]*** %8, align 8
  %16 = load [500 x double]**, [500 x double]*** %7, align 8
  %17 = load [500 x double]**, [500 x double]*** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 499, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 499
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 499, %22 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %55, %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 1
  %35 = add nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load [500 x double]*, [500 x double]** %16, align 8
  %37 = getelementptr inbounds [500 x double], [500 x double]* %36, i64 499
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [500 x double], [500 x double]* %37, i64 0, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load [500 x double]*, [500 x double]** %17, align 8
  %43 = getelementptr inbounds [500 x double], [500 x double]* %42, i64 499
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [500 x double], [500 x double]* %43, i64 0, i64 %45
  %47 = load double, double* %46, align 8
  %48 = fdiv double %41, %47
  %49 = load [500 x double]*, [500 x double]** %16, align 8
  %50 = getelementptr inbounds [500 x double], [500 x double]* %49, i64 499
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [500 x double], [500 x double]* %50, i64 0, i64 %52
  store double %48, double* %53, align 8
  br label %54

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %28

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %19)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
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
!9 = distinct !{!9, !6}
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
