; ModuleID = 'dataracebench/DRB097-target-teams-distribute-orig-no.c'
source_filename = "dataracebench/DRB097-target-teams-distribute-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"sum=%f sum2=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 2560, i32* %4, align 4, !tbaa !4
  %8 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  store double 0.000000e+00, double* %5, align 8, !tbaa !8
  %9 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4
  store double 0.000000e+00, double* %6, align 8, !tbaa !8
  %10 = call i8* @llvm.stacksave()
  %11 = alloca [2560 x double], align 16
  %12 = getelementptr inbounds [2560 x double], [2560 x double]* %11, i64 0, i64 0
  %13 = load i32, i32* %4, align 4, !tbaa !4
  %14 = zext i32 %13 to i64
  %15 = alloca double, i64 %14, align 16
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = zext i32 %13 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = trunc i64 %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 5.000000e-01
  %24 = getelementptr inbounds [2560 x double], [2560 x double]* %11, i64 0, i64 %20
  store double %23, double* %24, align 8, !tbaa !8
  %25 = fdiv double %22, 3.000000e+00
  %26 = getelementptr inbounds double, double* %15, i64 %20
  store double %25, double* %26, align 8, !tbaa !8
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, %18
  br i1 %28, label %29, label %19, !llvm.loop !10

29:                                               ; preds = %19, %2
  %30 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30)
  %31 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @4) #4
  store i64 %14, i64* %3, align 8, !tbaa !13
  call void @__kmpc_push_num_teams(%struct.ident_t* nonnull @4, i32 %31, i32 10, i32 256) #4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @4, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64* nonnull %3, double* nonnull %5, i64 2560, double* nonnull %12, i64 %14, double* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* nonnull %4, double* nonnull %6, i64 2560, double* nonnull %12, i64 %14, double* nonnull %15)
  %32 = load double, double* %5, align 8, !tbaa !8
  %33 = load double, double* %6, align 8, !tbaa !8
  %34 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %32, double %33)
  call void @llvm.stackrestore(i8* %10)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2, double* nocapture nonnull align 8 dereferenceable(8) %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5, i64 %6, double* nonnull align 8 dereferenceable(8) %7) #3 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x i8*], align 8
  %16 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #4
  store double 0.000000e+00, double* %9, align 8, !tbaa !8
  %17 = load i32, i32* %2, align 4, !tbaa !4
  %18 = add i32 %17, 255
  %19 = lshr i32 %18, 8
  %20 = add nsw i32 %19, -1
  %21 = icmp sgt i32 %17, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %8
  %23 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #4
  store i32 0, i32* %10, align 4, !tbaa !4
  %24 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #4
  store i32 %20, i32* %11, align 4, !tbaa !4
  %25 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #4
  store i32 1, i32* %12, align 4, !tbaa !4
  %26 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #4
  store i32 0, i32* %13, align 4, !tbaa !4
  %27 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #4
  %28 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %28, i32 92, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %29 = load i32, i32* %11, align 4, !tbaa !4
  %30 = icmp ugt i32 %29, %20
  %31 = select i1 %30, i32 %20, i32 %29
  store i32 %31, i32* %11, align 4, !tbaa !4
  %32 = load i32, i32* %10, align 4, !tbaa !4
  %33 = add i32 %31, 1
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %22, %35
  %36 = phi i32 [ %38, %35 ], [ %32, %22 ]
  %37 = shl i32 %36, 8
  store i32 %37, i32* %14, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* nonnull %14, i32* nonnull %2, double* nonnull %9, i64 %4, double* nonnull %5, i64 %6, double* nonnull %7)
  %38 = add nuw i32 %36, 1
  %39 = load i32, i32* %11, align 4, !tbaa !4
  %40 = add i32 %39, 1
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #4
  br label %43

43:                                               ; preds = %42, %8
  %44 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #4
  %45 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %45) #4
  %46 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %46) #4
  %47 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #4
  %48 = bitcast [1 x i8*]* %15 to double**
  store double* %9, double** %48, align 8
  %49 = load i32, i32* %0, align 4, !tbaa !4
  %50 = bitcast [1 x i8*]* %15 to i8*
  %51 = call i32 @__kmpc_reduce(%struct.ident_t* nonnull @3, i32 %49, i32 1, i64 8, i8* nonnull %50, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func.2, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %51, label %69 [
    i32 1, label %52
    i32 2, label %56
  ]

52:                                               ; preds = %43
  %53 = load double, double* %3, align 8, !tbaa !8
  %54 = load double, double* %9, align 8, !tbaa !8
  %55 = fadd double %53, %54
  store double %55, double* %3, align 8, !tbaa !8
  br label %68

56:                                               ; preds = %43
  %57 = bitcast double* %3 to i64*
  %58 = load atomic i64, i64* %57 monotonic, align 8, !tbaa !8
  %59 = load double, double* %9, align 8, !tbaa !8
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i64 [ %58, %56 ], [ %66, %60 ]
  %62 = bitcast i64 %61 to double
  %63 = fadd double %59, %62
  %64 = bitcast double %63 to i64
  %65 = cmpxchg i64* %57, i64 %61, i64 %64 monotonic monotonic, align 8
  %66 = extractvalue { i64, i1 } %65, 0
  %67 = extractvalue { i64, i1 } %65, 1
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %52
  call void @__kmpc_end_reduce(%struct.ident_t* nonnull @3, i32 %49, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %69

69:                                               ; preds = %68, %43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, double* nocapture nonnull align 8 dereferenceable(8) %4, i64 %5, double* nocapture nonnull readonly align 8 dereferenceable(8) %6, i64 %7, double* nocapture nonnull readonly align 8 dereferenceable(8) %8) #3 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca [1 x i8*], align 8
  %16 = load i32, i32* %2, align 4, !tbaa !4
  %17 = add nsw i32 %16, 256
  %18 = load i32, i32* %3, align 4, !tbaa !4
  %19 = icmp slt i32 %17, %18
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = xor i32 %16, -1
  %22 = add i32 %20, %21
  %23 = icmp slt i32 %16, %20
  br i1 %23, label %24, label %73

24:                                               ; preds = %9
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #4
  store i32 0, i32* %10, align 4, !tbaa !4
  %26 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #4
  store i32 %22, i32* %11, align 4, !tbaa !4
  %27 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #4
  store i32 1, i32* %12, align 4, !tbaa !4
  %28 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #4
  store i32 0, i32* %13, align 4, !tbaa !4
  %29 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #4
  store double 0.000000e+00, double* %14, align 8, !tbaa !8
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @2, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %22
  %33 = select i1 %32, i32 %22, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = add i32 %33, 1
  %36 = load double, double* %14, align 8, !tbaa !8
  %37 = icmp ult i32 %34, %35
  br i1 %37, label %38, label %51

38:                                               ; preds = %24, %38
  %39 = phi i32 [ %49, %38 ], [ %34, %24 ]
  %40 = phi double [ %48, %38 ], [ %36, %24 ]
  %41 = add i32 %39, %16
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %6, i64 %42
  %44 = load double, double* %43, align 8, !tbaa !8
  %45 = getelementptr inbounds double, double* %8, i64 %42
  %46 = load double, double* %45, align 8, !tbaa !8
  %47 = fmul double %44, %46
  %48 = fadd double %40, %47
  %49 = add nuw i32 %39, 1
  %50 = icmp eq i32 %39, %33
  br i1 %50, label %51, label %38

51:                                               ; preds = %38, %24
  %52 = phi double [ %36, %24 ], [ %48, %38 ]
  store double %52, double* %14, align 8, !tbaa !8
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %30)
  %53 = bitcast [1 x i8*]* %15 to double**
  store double* %14, double** %53, align 8
  %54 = bitcast [1 x i8*]* %15 to i8*
  %55 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %30, i32 1, i64 8, i8* nonnull %54, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %55, label %72 [
    i32 1, label %56
    i32 2, label %60
  ]

56:                                               ; preds = %51
  %57 = load double, double* %4, align 8, !tbaa !8
  %58 = load double, double* %14, align 8, !tbaa !8
  %59 = fadd double %57, %58
  store double %59, double* %4, align 8, !tbaa !8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %30, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %72

60:                                               ; preds = %51
  %61 = bitcast double* %4 to i64*
  %62 = load atomic i64, i64* %61 monotonic, align 8, !tbaa !8
  %63 = load double, double* %14, align 8, !tbaa !8
  br label %64

64:                                               ; preds = %64, %60
  %65 = phi i64 [ %62, %60 ], [ %70, %64 ]
  %66 = bitcast i64 %65 to double
  %67 = fadd double %63, %66
  %68 = bitcast double %67 to i64
  %69 = cmpxchg i64* %61, i64 %65, i64 %68 monotonic monotonic, align 8
  %70 = extractvalue { i64, i1 } %69, 0
  %71 = extractvalue { i64, i1 } %69, 1
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %56, %51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #4
  br label %73

73:                                               ; preds = %72, %9
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to double**
  %4 = load double*, double** %3, align 8
  %5 = bitcast i8* %0 to double**
  %6 = load double*, double** %5, align 8
  %7 = load double, double* %6, align 8, !tbaa !8
  %8 = load double, double* %4, align 8, !tbaa !8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func.2(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to double**
  %4 = load double*, double** %3, align 8
  %5 = bitcast i8* %0 to double**
  %6 = load double*, double** %5, align 8
  %7 = load double, double* %6, align 8, !tbaa !8
  %8 = load double, double* %4, align 8, !tbaa !8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, double* nocapture nonnull align 8 dereferenceable(8) %3, i64 %4, double* nocapture nonnull readonly align 8 dereferenceable(8) %5, i64 %6, double* nocapture nonnull readonly align 8 dereferenceable(8) %7) #3 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca [1 x i8*], align 8
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = add nsw i32 %15, -1
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %8
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %9, align 4, !tbaa !4
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4
  store i32 %16, i32* %10, align 4, !tbaa !4
  %21 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4
  store i32 1, i32* %11, align 4, !tbaa !4
  %22 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4
  store i32 0, i32* %12, align 4, !tbaa !4
  %23 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #4
  store double 0.000000e+00, double* %13, align 8, !tbaa !8
  %24 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %24, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %25 = load i32, i32* %10, align 4, !tbaa !4
  %26 = icmp slt i32 %25, %15
  %27 = select i1 %26, i32 %25, i32 %16
  store i32 %27, i32* %10, align 4, !tbaa !4
  %28 = load i32, i32* %9, align 4, !tbaa !4
  %29 = load double, double* %13, align 8, !tbaa !8
  %30 = icmp sgt i32 %28, %27
  br i1 %30, label %46, label %31

31:                                               ; preds = %18
  %32 = sext i32 %28 to i64
  %33 = add i32 %27, 1
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ %32, %31 ], [ %43, %34 ]
  %36 = phi double [ %29, %31 ], [ %42, %34 ]
  %37 = getelementptr inbounds double, double* %5, i64 %35
  %38 = load double, double* %37, align 8, !tbaa !8
  %39 = getelementptr inbounds double, double* %7, i64 %35
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = fmul double %38, %40
  %42 = fadd double %36, %41
  %43 = add nsw i64 %35, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %33, %44
  br i1 %45, label %46, label %34

46:                                               ; preds = %34, %18
  %47 = phi double [ %29, %18 ], [ %42, %34 ]
  store double %47, double* %13, align 8, !tbaa !8
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %24)
  %48 = bitcast [1 x i8*]* %14 to double**
  store double* %13, double** %48, align 8
  %49 = bitcast [1 x i8*]* %14 to i8*
  %50 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %24, i32 1, i64 8, i8* nonnull %49, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func.4, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %50, label %67 [
    i32 1, label %51
    i32 2, label %55
  ]

51:                                               ; preds = %46
  %52 = load double, double* %3, align 8, !tbaa !8
  %53 = load double, double* %13, align 8, !tbaa !8
  %54 = fadd double %52, %53
  store double %54, double* %3, align 8, !tbaa !8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %24, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %67

55:                                               ; preds = %46
  %56 = bitcast double* %3 to i64*
  %57 = load atomic i64, i64* %56 monotonic, align 8, !tbaa !8
  %58 = load double, double* %13, align 8, !tbaa !8
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi i64 [ %57, %55 ], [ %65, %59 ]
  %61 = bitcast i64 %60 to double
  %62 = fadd double %58, %61
  %63 = bitcast double %62 to i64
  %64 = cmpxchg i64* %56, i64 %60, i64 %63 monotonic monotonic, align 8
  %65 = extractvalue { i64, i1 } %64, 0
  %66 = extractvalue { i64, i1 } %64, 1
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %51, %46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  br label %68

68:                                               ; preds = %67, %8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func.4(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to double**
  %4 = load double*, double** %3, align 8
  %5 = bitcast i8* %0 to double**
  %6 = load double*, double** %5, align 8
  %7 = load double, double* %6, align 8, !tbaa !8
  %8 = load double, double* %4, align 8, !tbaa !8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
