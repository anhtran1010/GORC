; ModuleID = 'dataracebench/DRB058-jacobikernel-orig-no.c'
source_filename = "dataracebench/DRB058-jacobikernel-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@uold = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@dx = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@dy = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@n = dso_local local_unnamed_addr global i32 200, align 4
@m = dso_local local_unnamed_addr global i32 200, align 4
@mits = dso_local local_unnamed_addr global i32 1000, align 4
@tol = dso_local local_unnamed_addr global double 1.000000e-10, align 8
@relax = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@alpha = dso_local local_unnamed_addr global double 5.430000e-02, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [31 x i8] c"Total Number of Iterations:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Residual:%E\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @initialize() local_unnamed_addr #0 {
  %1 = load i32, i32* @n, align 4, !tbaa !4
  %2 = add nsw i32 %1, -1
  %3 = sitofp i32 %2 to double
  %4 = fdiv double 2.000000e+00, %3
  store double %4, double* @dx, align 8, !tbaa !8
  %5 = load i32, i32* @m, align 4, !tbaa !4
  %6 = add nsw i32 %5, -1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dy, align 8, !tbaa !8
  %9 = load double, double* @alpha, align 8
  %10 = fneg double %9
  %11 = icmp sgt i32 %5, 0
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %0
  %14 = zext i32 %5 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = zext i32 %1 to i64
  %17 = zext i32 %5 to i64
  br label %18

18:                                               ; preds = %13, %52
  %19 = phi i64 [ 0, %13 ], [ %53, %52 ]
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, -1
  %22 = sitofp i32 %21 to double
  %23 = fmul double %4, %22
  %24 = fadd double %23, -1.000000e+00
  %25 = fptosi double %24 to i32
  %26 = mul nsw i32 %25, %25
  %27 = sitofp i32 %26 to double
  %28 = fsub double 1.000000e+00, %27
  %29 = fmul double %28, %10
  %30 = fmul double %28, 2.000000e+00
  br i1 %11, label %31, label %52

31:                                               ; preds = %18
  %32 = getelementptr [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %19, i64 0
  %33 = bitcast double* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 %15, i1 false)
  br label %34

34:                                               ; preds = %31, %34
  %35 = phi i64 [ 0, %31 ], [ %50, %34 ]
  %36 = trunc i64 %35 to i32
  %37 = add i32 %36, -1
  %38 = sitofp i32 %37 to double
  %39 = fmul double %8, %38
  %40 = fadd double %39, -1.000000e+00
  %41 = fptosi double %40 to i32
  %42 = mul nsw i32 %41, %41
  %43 = sitofp i32 %42 to double
  %44 = fsub double 1.000000e+00, %43
  %45 = fmul double %44, %29
  %46 = fsub double %45, %30
  %47 = fmul double %44, 2.000000e+00
  %48 = fsub double %46, %47
  %49 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %19, i64 %35
  store double %48, double* %49, align 8, !tbaa !8
  %50 = add nuw nsw i64 %35, 1
  %51 = icmp eq i64 %50, %17
  br i1 %51, label %52, label %34, !llvm.loop !10

52:                                               ; preds = %34, %18
  %53 = add nuw nsw i64 %19, 1
  %54 = icmp eq i64 %53, %16
  br i1 %54, label %55, label %18, !llvm.loop !13

55:                                               ; preds = %52, %0
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @jacobi() local_unnamed_addr #2 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = bitcast double* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  %7 = bitcast double* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  %8 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  %9 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4
  %10 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4
  %11 = load double, double* @relax, align 8, !tbaa !8
  store double %11, double* %1, align 8, !tbaa !8
  %12 = load i32, i32* @n, align 4, !tbaa !4
  %13 = add nsw i32 %12, -1
  %14 = sitofp i32 %13 to double
  %15 = fdiv double 2.000000e+00, %14
  store double %15, double* @dx, align 8, !tbaa !8
  %16 = load i32, i32* @m, align 4, !tbaa !4
  %17 = add nsw i32 %16, -1
  %18 = sitofp i32 %17 to double
  %19 = fdiv double 2.000000e+00, %18
  store double %19, double* @dy, align 8, !tbaa !8
  %20 = fmul double %15, %15
  %21 = fdiv double 1.000000e+00, %20
  store double %21, double* %3, align 8, !tbaa !8
  %22 = fmul double %19, %19
  %23 = fdiv double 1.000000e+00, %22
  store double %23, double* %4, align 8, !tbaa !8
  %24 = fdiv double -2.000000e+00, %20
  %25 = fdiv double 2.000000e+00, %22
  %26 = fsub double %24, %25
  %27 = load double, double* @alpha, align 8, !tbaa !8
  %28 = fsub double %26, %27
  store double %28, double* %5, align 8, !tbaa !8
  %29 = load double, double* @tol, align 8, !tbaa !8
  %30 = fmul double %29, 1.000000e+01
  store double %30, double* %2, align 8, !tbaa !8
  %31 = load i32, i32* @mits, align 4, !tbaa !4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %45, label %33

33:                                               ; preds = %0, %33
  %34 = phi i32 [ %35, %33 ], [ 1, %0 ]
  store double 0.000000e+00, double* %2, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*, double*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* nonnull %2, double* nonnull %3, double* nonnull %4, double* nonnull %5, double* nonnull %1)
  %35 = add nuw nsw i32 %34, 1
  %36 = load double, double* %2, align 8, !tbaa !8
  %37 = call double @sqrt(double %36) #4
  %38 = load i32, i32* @n, align 4, !tbaa !4
  %39 = load i32, i32* @m, align 4, !tbaa !4
  %40 = mul nsw i32 %39, %38
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %37, %41
  store double %42, double* %2, align 8, !tbaa !8
  %43 = load i32, i32* @mits, align 4, !tbaa !4
  %44 = icmp slt i32 %34, %43
  br i1 %44, label %33, label %45, !llvm.loop !14

45:                                               ; preds = %33, %0
  %46 = phi i32 [ 1, %0 ], [ %35, %33 ]
  %47 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load double, double* %2, align 8, !tbaa !8
  %49 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %48)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, double* nocapture nonnull align 8 dereferenceable(8) %2, double* nocapture nonnull readonly align 8 dereferenceable(8) %3, double* nocapture nonnull readonly align 8 dereferenceable(8) %4, double* nocapture nonnull readonly align 8 dereferenceable(8) %5, double* nocapture nonnull readonly align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca [1 x i8*], align 8
  %18 = load i32, i32* @n, align 4, !tbaa !4
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %7
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #4
  store i32 %19, i32* %9, align 4, !tbaa !4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #4
  store i32 1, i32* %10, align 4, !tbaa !4
  %25 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #4
  store i32 0, i32* %11, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %27 = load i32, i32* %9, align 4, !tbaa !4
  %28 = icmp slt i32 %27, %18
  %29 = select i1 %28, i32 %27, i32 %19
  store i32 %29, i32* %9, align 4, !tbaa !4
  %30 = load i32, i32* %8, align 4, !tbaa !4
  %31 = load i32, i32* @m, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = icmp sgt i32 %30, %29
  br i1 %33, label %52, label %34

34:                                               ; preds = %21
  %35 = sext i32 %30 to i64
  %36 = zext i32 %31 to i64
  %37 = shl nuw nsw i64 %36, 3
  %38 = add i32 %29, 1
  %39 = sub i32 %38, %30
  br label %40

40:                                               ; preds = %34, %48
  %41 = phi i64 [ 0, %34 ], [ %49, %48 ]
  %42 = add nsw i64 %41, %35
  br i1 %32, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %42, i64 0
  %45 = bitcast double* %44 to i8*
  %46 = getelementptr [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %42, i64 0
  %47 = bitcast double* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 16 %45, i64 %37, i1 false)
  br label %48

48:                                               ; preds = %43, %40
  %49 = add nuw nsw i64 %41, 1
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %39, %50
  br i1 %51, label %52, label %40

52:                                               ; preds = %48, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4
  br label %53

53:                                               ; preds = %52, %7
  %54 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %54)
  %55 = load i32, i32* @n, align 4, !tbaa !4
  %56 = add nsw i32 %55, -3
  %57 = icmp sgt i32 %55, 2
  br i1 %57, label %58, label %144

58:                                               ; preds = %53
  %59 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %59) #4
  store i32 0, i32* %12, align 4, !tbaa !4
  %60 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %60) #4
  store i32 %56, i32* %13, align 4, !tbaa !4
  %61 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %61) #4
  store i32 1, i32* %14, align 4, !tbaa !4
  %62 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62) #4
  store i32 0, i32* %15, align 4, !tbaa !4
  %63 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %63) #4
  store double 0.000000e+00, double* %16, align 8, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %54, i32 34, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i32* nonnull %14, i32 1, i32 1)
  %64 = load i32, i32* %13, align 4, !tbaa !4
  %65 = icmp sgt i32 %64, %56
  %66 = select i1 %65, i32 %56, i32 %64
  store i32 %66, i32* %13, align 4, !tbaa !4
  %67 = load i32, i32* %12, align 4, !tbaa !4
  %68 = load i32, i32* @m, align 4
  %69 = icmp sgt i32 %68, 2
  %70 = load double, double* %16, align 8, !tbaa !8
  %71 = icmp sgt i32 %67, %66
  br i1 %71, label %122, label %72

72:                                               ; preds = %58
  %73 = add i32 %68, -1
  %74 = sext i32 %67 to i64
  %75 = add i32 %66, 1
  %76 = zext i32 %73 to i64
  br label %81

77:                                               ; preds = %86, %81
  %78 = phi double [ %83, %81 ], [ %120, %86 ]
  %79 = trunc i64 %84 to i32
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %122, label %81

81:                                               ; preds = %72, %77
  %82 = phi i64 [ %74, %72 ], [ %84, %77 ]
  %83 = phi double [ %70, %72 ], [ %78, %77 ]
  %84 = add nsw i64 %82, 1
  %85 = add nsw i64 %82, 2
  br i1 %69, label %86, label %77

86:                                               ; preds = %81, %86
  %87 = phi i64 [ %100, %86 ], [ 1, %81 ]
  %88 = phi double [ %120, %86 ], [ %83, %81 ]
  %89 = load double, double* %3, align 8, !tbaa !8
  %90 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %82, i64 %87
  %91 = load double, double* %90, align 8, !tbaa !8
  %92 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %85, i64 %87
  %93 = load double, double* %92, align 8, !tbaa !8
  %94 = fadd double %91, %93
  %95 = fmul double %89, %94
  %96 = load double, double* %4, align 8, !tbaa !8
  %97 = add nsw i64 %87, -1
  %98 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %84, i64 %97
  %99 = load double, double* %98, align 8, !tbaa !8
  %100 = add nuw nsw i64 %87, 1
  %101 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %84, i64 %100
  %102 = load double, double* %101, align 8, !tbaa !8
  %103 = fadd double %99, %102
  %104 = fmul double %96, %103
  %105 = fadd double %95, %104
  %106 = load double, double* %5, align 8, !tbaa !8
  %107 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %84, i64 %87
  %108 = load double, double* %107, align 8, !tbaa !8
  %109 = fmul double %106, %108
  %110 = fadd double %105, %109
  %111 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %84, i64 %87
  %112 = load double, double* %111, align 8, !tbaa !8
  %113 = fsub double %110, %112
  %114 = fdiv double %113, %106
  %115 = load double, double* %6, align 8, !tbaa !8
  %116 = fmul double %115, %114
  %117 = fsub double %108, %116
  %118 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %84, i64 %87
  store double %117, double* %118, align 8, !tbaa !8
  %119 = fmul double %114, %114
  %120 = fadd double %88, %119
  %121 = icmp eq i64 %100, %76
  br i1 %121, label %77, label %86, !llvm.loop !15

122:                                              ; preds = %77, %58
  %123 = phi double [ %70, %58 ], [ %78, %77 ]
  store double %123, double* %16, align 8, !tbaa !8
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %54)
  %124 = bitcast [1 x i8*]* %17 to double**
  store double* %16, double** %124, align 8
  %125 = bitcast [1 x i8*]* %17 to i8*
  %126 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %54, i32 1, i64 8, i8* nonnull %125, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %126, label %143 [
    i32 1, label %127
    i32 2, label %131
  ]

127:                                              ; preds = %122
  %128 = load double, double* %2, align 8, !tbaa !8
  %129 = load double, double* %16, align 8, !tbaa !8
  %130 = fadd double %128, %129
  store double %130, double* %2, align 8, !tbaa !8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %54, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %143

131:                                              ; preds = %122
  %132 = bitcast double* %2 to i64*
  %133 = load atomic i64, i64* %132 monotonic, align 8, !tbaa !8
  %134 = load double, double* %16, align 8, !tbaa !8
  br label %135

135:                                              ; preds = %135, %131
  %136 = phi i64 [ %133, %131 ], [ %141, %135 ]
  %137 = bitcast i64 %136 to double
  %138 = fadd double %134, %137
  %139 = bitcast double %138 to i64
  %140 = cmpxchg i64* %132, i64 %136, i64 %139 monotonic monotonic, align 8
  %141 = extractvalue { i64, i1 } %140, 0
  %142 = extractvalue { i64, i1 } %140, 1
  br i1 %142, label %143, label %135

143:                                              ; preds = %135, %127, %122
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %63) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %61) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %60) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59) #4
  br label %144

144:                                              ; preds = %143, %53
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #6 {
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
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = load i32, i32* @n, align 4, !tbaa !4
  %2 = add nsw i32 %1, -1
  %3 = sitofp i32 %2 to double
  %4 = fdiv double 2.000000e+00, %3
  store double %4, double* @dx, align 8, !tbaa !8
  %5 = load i32, i32* @m, align 4, !tbaa !4
  %6 = add nsw i32 %5, -1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dy, align 8, !tbaa !8
  %9 = load double, double* @alpha, align 8
  %10 = fneg double %9
  %11 = icmp sgt i32 %5, 0
  %12 = icmp sgt i32 %1, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %0
  %14 = zext i32 %5 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = zext i32 %1 to i64
  br label %17

17:                                               ; preds = %51, %13
  %18 = phi i64 [ 0, %13 ], [ %52, %51 ]
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, -1
  %21 = sitofp i32 %20 to double
  %22 = fmul double %4, %21
  %23 = fadd double %22, -1.000000e+00
  %24 = fptosi double %23 to i32
  %25 = mul nsw i32 %24, %24
  %26 = sitofp i32 %25 to double
  %27 = fsub double 1.000000e+00, %26
  %28 = fmul double %27, %10
  %29 = fmul double %27, 2.000000e+00
  br i1 %11, label %30, label %51

30:                                               ; preds = %17
  %31 = getelementptr [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %18, i64 0
  %32 = bitcast double* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 %15, i1 false) #4
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i64 [ 0, %30 ], [ %49, %33 ]
  %35 = trunc i64 %34 to i32
  %36 = add i32 %35, -1
  %37 = sitofp i32 %36 to double
  %38 = fmul double %8, %37
  %39 = fadd double %38, -1.000000e+00
  %40 = fptosi double %39 to i32
  %41 = mul nsw i32 %40, %40
  %42 = sitofp i32 %41 to double
  %43 = fsub double 1.000000e+00, %42
  %44 = fmul double %28, %43
  %45 = fsub double %44, %29
  %46 = fmul double %43, 2.000000e+00
  %47 = fsub double %45, %46
  %48 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %18, i64 %34
  store double %47, double* %48, align 8, !tbaa !8
  %49 = add nuw nsw i64 %34, 1
  %50 = icmp eq i64 %49, %14
  br i1 %50, label %51, label %33, !llvm.loop !10

51:                                               ; preds = %33, %17
  %52 = add nuw nsw i64 %18, 1
  %53 = icmp eq i64 %52, %16
  br i1 %53, label %54, label %17, !llvm.loop !13

54:                                               ; preds = %51, %0
  call void @jacobi()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { convergent nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }

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
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = !{!17}
!17 = !{i64 2, i64 -1, i64 -1, i1 true}
