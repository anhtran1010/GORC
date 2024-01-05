; ModuleID = 'dataracebench/DRB043-adi-parallel-no.c'
source_filename = "dataracebench/DRB043-adi-parallel-no.c"
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
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca [500 x double]*, align 8
  %4 = alloca [500 x double]*, align 8
  %5 = alloca [500 x double]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [500 x double]*, align 8
  %8 = alloca [500 x double]*, align 8
  %9 = alloca [500 x double]*, align 8
  %10 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %11 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %12 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13)
  %14 = bitcast [500 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14)
  %15 = bitcast [500 x double]** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  %16 = bitcast [500 x double]** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16)
  store i32 500, i32* %6, align 4, !tbaa !4
  %17 = bitcast [500 x double]** %7 to i8**
  store i8* %10, i8** %17, align 8, !tbaa !8
  %18 = bitcast [500 x double]** %8 to i8**
  store i8* %11, i8** %18, align 8, !tbaa !8
  %19 = bitcast [500 x double]** %9 to i8**
  store i8* %12, i8** %19, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %6, [500 x double]** nonnull %7, [500 x double]** nonnull %8, [500 x double]** nonnull %9) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16)
  %20 = call i32 (...) @polybench_timer_start() #5
  %21 = bitcast [500 x double]** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21)
  %22 = bitcast [500 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22)
  %23 = bitcast [500 x double]** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23)
  %24 = bitcast [500 x double]** %3 to i8**
  store i8* %10, i8** %24, align 8, !tbaa !8
  %25 = bitcast [500 x double]** %4 to i8**
  store i8* %11, i8** %25, align 8, !tbaa !8
  %26 = bitcast [500 x double]** %5 to i8**
  store i8* %12, i8** %26, align 8, !tbaa !8
  br label %27

27:                                               ; preds = %27, %2
  %28 = phi i32 [ 0, %2 ], [ %29, %27 ]
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), [500 x double]** nonnull %5, [500 x double]** nonnull %4, [500 x double]** nonnull %3) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [500 x double]** nonnull %3, [500 x double]** nonnull %5) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [500 x double]** nonnull %5, [500 x double]** nonnull %4, [500 x double]** nonnull %3) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), [500 x double]** nonnull %3, [500 x double]** nonnull %5) #5
  %29 = add nuw nsw i32 %28, 1
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %27, !llvm.loop !10

31:                                               ; preds = %27
  %32 = bitcast i8* %10 to [500 x double]*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23)
  %33 = call i32 (...) @polybench_timer_stop() #5
  %34 = call i32 (...) @polybench_timer_print() #5
  %35 = icmp sgt i32 %0, 42
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load i8*, i8** %1, align 8, !tbaa !8
  %38 = load i8, i8* %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36, %59
  %41 = phi i64 [ %60, %59 ], [ 0, %36 ]
  %42 = mul nuw nsw i64 %41, 500
  br label %43

43:                                               ; preds = %56, %40
  %44 = phi i64 [ 0, %40 ], [ %57, %56 ]
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %46 = getelementptr inbounds [500 x double], [500 x double]* %32, i64 %41, i64 %44
  %47 = load double, double* %46, align 8, !tbaa !13
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %47) #8
  %49 = add nuw nsw i64 %44, %42
  %50 = trunc i64 %49 to i32
  %51 = urem i32 %50, 20
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %55 = call i32 @fputc(i32 10, %struct._IO_FILE* %54) #5
  br label %56

56:                                               ; preds = %53, %43
  %57 = add nuw nsw i64 %44, 1
  %58 = icmp eq i64 %57, 500
  br i1 %58, label %59, label %43, !llvm.loop !15

59:                                               ; preds = %56
  %60 = add nuw nsw i64 %41, 1
  %61 = icmp eq i64 %60, 500
  br i1 %61, label %62, label %40, !llvm.loop !16

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %64 = call i32 @fputc(i32 10, %struct._IO_FILE* %63) #5
  br label %65

65:                                               ; preds = %62, %36, %31
  call void @free(i8* %10) #5
  call void @free(i8* %11) #5
  call void @free(i8* %12) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_start(...) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_stop(...) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %6
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #5
  store i32 %12, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %19 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %19, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %20 = load i32, i32* %8, align 4, !tbaa !4
  %21 = icmp ugt i32 %20, %12
  %22 = select i1 %21, i32 %12, i32 %20
  store i32 %22, i32* %8, align 4, !tbaa !4
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = load i32, i32* %2, align 4
  %25 = sitofp i32 %24 to double
  %26 = icmp sgt i32 %24, 0
  %27 = icmp ugt i32 %23, %22
  br i1 %27, label %64, label %28

28:                                               ; preds = %14
  %29 = zext i32 %24 to i64
  br label %30

30:                                               ; preds = %28, %61
  %31 = phi i32 [ %62, %61 ], [ %23, %28 ]
  %32 = sitofp i32 %31 to double
  %33 = load [500 x double]*, [500 x double]** %3, align 8
  %34 = sext i32 %31 to i64
  %35 = load [500 x double]*, [500 x double]** %4, align 8
  %36 = load [500 x double]*, [500 x double]** %5, align 8
  br i1 %26, label %37, label %61

37:                                               ; preds = %30, %37
  %38 = phi i64 [ %39, %37 ], [ 0, %30 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = sitofp i32 %40 to double
  %42 = fmul double %32, %41
  %43 = fadd double %42, 1.000000e+00
  %44 = fdiv double %43, %25
  %45 = getelementptr inbounds [500 x double], [500 x double]* %33, i64 %34, i64 %38
  store double %44, double* %45, align 8, !tbaa !13
  %46 = trunc i64 %38 to i32
  %47 = add i32 %46, 2
  %48 = sitofp i32 %47 to double
  %49 = fmul double %32, %48
  %50 = fadd double %49, 2.000000e+00
  %51 = fdiv double %50, %25
  %52 = getelementptr inbounds [500 x double], [500 x double]* %35, i64 %34, i64 %38
  store double %51, double* %52, align 8, !tbaa !13
  %53 = trunc i64 %38 to i32
  %54 = add i32 %53, 3
  %55 = sitofp i32 %54 to double
  %56 = fmul double %32, %55
  %57 = fadd double %56, 3.000000e+00
  %58 = fdiv double %57, %25
  %59 = getelementptr inbounds [500 x double], [500 x double]* %36, i64 %34, i64 %38
  store double %58, double* %59, align 8, !tbaa !13
  %60 = icmp eq i64 %39, %29
  br i1 %60, label %61, label %37, !llvm.loop !17

61:                                               ; preds = %37, %30
  %62 = add i32 %31, 1
  %63 = icmp ugt i32 %62, %22
  br i1 %63, label %64, label %30

64:                                               ; preds = %61, %14
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  br label %65

65:                                               ; preds = %64, %6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !18 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 499, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %14 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %14, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %15 = load i32, i32* %7, align 4, !tbaa !4
  %16 = icmp slt i32 %15, 499
  %17 = select i1 %16, i32 %15, i32 499
  store i32 %17, i32* %7, align 4, !tbaa !4
  %18 = load i32, i32* %6, align 4, !tbaa !4
  %19 = load [500 x double]*, [500 x double]** %2, align 8
  %20 = load [500 x double]*, [500 x double]** %3, align 8
  %21 = load [500 x double]*, [500 x double]** %4, align 8
  %22 = icmp sgt i32 %18, %17
  br i1 %22, label %85, label %23

23:                                               ; preds = %5
  %24 = sext i32 %18 to i64
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %23, %80
  %27 = phi i64 [ 0, %23 ], [ %84, %80 ]
  %28 = phi i64 [ %24, %23 ], [ %81, %80 ]
  %29 = add i64 %27, %24
  %30 = getelementptr [500 x double], [500 x double]* %21, i64 %29, i64 0
  %31 = add i64 %27, %24
  %32 = getelementptr [500 x double], [500 x double]* %19, i64 %31, i64 0
  %33 = load double, double* %32, align 8
  br label %34

34:                                               ; preds = %26, %34
  %35 = phi double [ %33, %26 ], [ %43, %34 ]
  %36 = phi i64 [ 1, %26 ], [ %44, %34 ]
  %37 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %28, i64 %36
  %38 = load double, double* %37, align 8, !tbaa !13
  %39 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %28, i64 %36
  %40 = load double, double* %39, align 8, !tbaa !13
  %41 = fmul double %40, %40
  %42 = fdiv double %41, %35
  %43 = fsub double %38, %42
  store double %43, double* %37, align 8, !tbaa !13
  %44 = add nuw nsw i64 %36, 1
  %45 = icmp eq i64 %44, 500
  br i1 %45, label %46, label %34, !llvm.loop !20

46:                                               ; preds = %34
  %47 = load double, double* %30, align 8
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi double [ %47, %46 ], [ %60, %48 ]
  %50 = phi i64 [ 1, %46 ], [ %61, %48 ]
  %51 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %28, i64 %50
  %52 = load double, double* %51, align 8, !tbaa !13
  %53 = add nsw i64 %50, -1
  %54 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %28, i64 %50
  %55 = load double, double* %54, align 8, !tbaa !13
  %56 = fmul double %49, %55
  %57 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %28, i64 %53
  %58 = load double, double* %57, align 8, !tbaa !13
  %59 = fdiv double %56, %58
  %60 = fsub double %52, %59
  store double %60, double* %51, align 8, !tbaa !13
  %61 = add nuw nsw i64 %50, 1
  %62 = icmp eq i64 %61, 500
  br i1 %62, label %63, label %48, !llvm.loop !21

63:                                               ; preds = %48, %63
  %64 = phi i64 [ %78, %63 ], [ 0, %48 ]
  %65 = sub nuw nsw i64 498, %64
  %66 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %28, i64 %65
  %67 = load double, double* %66, align 8, !tbaa !13
  %68 = sub nuw nsw i64 497, %64
  %69 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %28, i64 %68
  %70 = load double, double* %69, align 8, !tbaa !13
  %71 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %28, i64 %68
  %72 = load double, double* %71, align 8, !tbaa !13
  %73 = fmul double %70, %72
  %74 = fsub double %67, %73
  %75 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %28, i64 %68
  %76 = load double, double* %75, align 8, !tbaa !13
  %77 = fdiv double %74, %76
  store double %77, double* %66, align 8, !tbaa !13
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 498
  br i1 %79, label %80, label %63, !llvm.loop !22

80:                                               ; preds = %63
  %81 = add nsw i64 %28, 1
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %25, %82
  %84 = add i64 %27, 1
  br i1 %83, label %85, label %26

85:                                               ; preds = %80, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5
  store i32 0, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 499, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 1, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !4
  %15 = icmp slt i32 %14, 499
  %16 = select i1 %15, i32 %14, i32 499
  store i32 %16, i32* %6, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = load [500 x double]*, [500 x double]** %2, align 8
  %19 = load [500 x double]*, [500 x double]** %3, align 8
  %20 = icmp sgt i32 %17, %16
  br i1 %20, label %34, label %21

21:                                               ; preds = %4
  %22 = sext i32 %17 to i64
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ %22, %21 ], [ %31, %24 ]
  %26 = getelementptr inbounds [500 x double], [500 x double]* %18, i64 %25, i64 499
  %27 = load double, double* %26, align 8, !tbaa !13
  %28 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %25, i64 499
  %29 = load double, double* %28, align 8, !tbaa !13
  %30 = fdiv double %27, %29
  store double %30, double* %26, align 8, !tbaa !13
  %31 = add nsw i64 %25, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %23, %32
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 499, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %14 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %14, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %15 = load i32, i32* %7, align 4, !tbaa !4
  %16 = icmp slt i32 %15, 499
  %17 = select i1 %16, i32 %15, i32 499
  store i32 %17, i32* %7, align 4, !tbaa !4
  %18 = load i32, i32* %6, align 4, !tbaa !4
  %19 = load [500 x double]*, [500 x double]** %2, align 8
  %20 = load [500 x double]*, [500 x double]** %3, align 8
  %21 = load [500 x double]*, [500 x double]** %4, align 8
  %22 = icmp sgt i32 %18, %17
  br i1 %22, label %79, label %23

23:                                               ; preds = %5
  %24 = sext i32 %18 to i64
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %23, %75
  %27 = phi i64 [ %24, %23 ], [ %76, %75 ]
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 1, %26 ], [ %40, %28 ]
  %30 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %29, i64 %27
  %31 = load double, double* %30, align 8, !tbaa !13
  %32 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %29, i64 %27
  %33 = load double, double* %32, align 8, !tbaa !13
  %34 = fmul double %33, %33
  %35 = add nsw i64 %29, -1
  %36 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %35, i64 %27
  %37 = load double, double* %36, align 8, !tbaa !13
  %38 = fdiv double %34, %37
  %39 = fsub double %31, %38
  store double %39, double* %30, align 8, !tbaa !13
  %40 = add nuw nsw i64 %29, 1
  %41 = icmp eq i64 %40, 500
  br i1 %41, label %42, label %28, !llvm.loop !23

42:                                               ; preds = %28, %42
  %43 = phi i64 [ %56, %42 ], [ 1, %28 ]
  %44 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %43, i64 %27
  %45 = load double, double* %44, align 8, !tbaa !13
  %46 = add nsw i64 %43, -1
  %47 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %46, i64 %27
  %48 = load double, double* %47, align 8, !tbaa !13
  %49 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %43, i64 %27
  %50 = load double, double* %49, align 8, !tbaa !13
  %51 = fmul double %48, %50
  %52 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %46, i64 %27
  %53 = load double, double* %52, align 8, !tbaa !13
  %54 = fdiv double %51, %53
  %55 = fsub double %45, %54
  store double %55, double* %44, align 8, !tbaa !13
  %56 = add nuw nsw i64 %43, 1
  %57 = icmp eq i64 %56, 500
  br i1 %57, label %58, label %42, !llvm.loop !24

58:                                               ; preds = %42, %58
  %59 = phi i64 [ %73, %58 ], [ 0, %42 ]
  %60 = sub nuw nsw i64 498, %59
  %61 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %60, i64 %27
  %62 = load double, double* %61, align 8, !tbaa !13
  %63 = sub nuw nsw i64 497, %59
  %64 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 %63, i64 %27
  %65 = load double, double* %64, align 8, !tbaa !13
  %66 = getelementptr inbounds [500 x double], [500 x double]* %20, i64 %63, i64 %27
  %67 = load double, double* %66, align 8, !tbaa !13
  %68 = fmul double %65, %67
  %69 = fsub double %62, %68
  %70 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 %60, i64 %27
  %71 = load double, double* %70, align 8, !tbaa !13
  %72 = fdiv double %69, %71
  store double %72, double* %61, align 8, !tbaa !13
  %73 = add nuw nsw i64 %59, 1
  %74 = icmp eq i64 %73, 498
  br i1 %74, label %75, label %58, !llvm.loop !25

75:                                               ; preds = %58
  %76 = add nsw i64 %27, 1
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %25, %77
  br i1 %78, label %79, label %26

79:                                               ; preds = %75, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5
  store i32 0, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 499, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 1, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !4
  %15 = icmp slt i32 %14, 499
  %16 = select i1 %15, i32 %14, i32 499
  store i32 %16, i32* %6, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = load [500 x double]*, [500 x double]** %2, align 8
  %19 = load [500 x double]*, [500 x double]** %3, align 8
  %20 = icmp sgt i32 %17, %16
  br i1 %20, label %34, label %21

21:                                               ; preds = %4
  %22 = sext i32 %17 to i64
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ %22, %21 ], [ %31, %24 ]
  %26 = getelementptr inbounds [500 x double], [500 x double]* %18, i64 499, i64 %25
  %27 = load double, double* %26, align 8, !tbaa !13
  %28 = getelementptr inbounds [500 x double], [500 x double]* %19, i64 499, i64 %25
  %29 = load double, double* %28, align 8, !tbaa !13
  %30 = fdiv double %27, %29
  store double %30, double* %26, align 8, !tbaa !13
  %31 = add nsw i64 %25, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %23, %32
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = !{!19}
!19 = !{i64 2, i64 -1, i64 -1, i1 true}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
