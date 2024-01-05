; ModuleID = 'dataracebench/DRB062-matrixvector2-orig-no.c'
source_filename = "dataracebench/DRB062-matrixvector2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local local_unnamed_addr global [1000 x [1000 x double]] zeroinitializer, align 16
@v = dso_local local_unnamed_addr global [1000 x double] zeroinitializer, align 16
@v_out = dso_local local_unnamed_addr global [1000 x double] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @mv() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = bitcast float* %2 to i8*
  store i32 0, i32* %1, align 4, !tbaa !4
  br label %5

5:                                                ; preds = %0, %5
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  store float 0.000000e+00, float* %2, align 4, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* nonnull %2, i32* nonnull %1)
  %6 = load float, float* %2, align 4, !tbaa !8
  %7 = fpext float %6 to double
  %8 = load i32, i32* %1, align 4, !tbaa !4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %9
  store double %7, double* %10, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  %11 = add nsw i32 %8, 1
  store i32 %11, i32* %1, align 4, !tbaa !4
  %12 = icmp slt i32 %8, 999
  br i1 %12, label %5, label %13, !llvm.loop !12

13:                                               ; preds = %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, float* nocapture nonnull align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca [1 x i8*], align 8
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %5, align 4, !tbaa !4
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 999, i32* %6, align 4, !tbaa !4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 1, i32* %7, align 4, !tbaa !4
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %8, align 4, !tbaa !4
  %15 = bitcast float* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store float 0.000000e+00, float* %9, align 4, !tbaa !8
  %16 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %16, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %17 = load i32, i32* %6, align 4, !tbaa !4
  %18 = icmp slt i32 %17, 999
  %19 = select i1 %18, i32 %17, i32 999
  store i32 %19, i32* %6, align 4, !tbaa !4
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = load float, float* %9, align 4, !tbaa !8
  %24 = icmp sgt i32 %20, %19
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = sext i32 %20 to i64
  %27 = add nsw i32 %19, 1
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %26, %25 ], [ %39, %28 ]
  %30 = phi float [ %23, %25 ], [ %38, %28 ]
  %31 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @a, i64 0, i64 %22, i64 %29
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = getelementptr inbounds [1000 x double], [1000 x double]* @v, i64 0, i64 %29
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = fmul double %32, %34
  %36 = fpext float %30 to double
  %37 = fadd double %35, %36
  %38 = fptrunc double %37 to float
  %39 = add nsw i64 %29, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %27, %40
  br i1 %41, label %42, label %28

42:                                               ; preds = %28, %4
  %43 = phi float [ %23, %4 ], [ %38, %28 ]
  store float %43, float* %9, align 4, !tbaa !8
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %16)
  %44 = bitcast [1 x i8*]* %10 to float**
  store float* %9, float** %44, align 8
  %45 = bitcast [1 x i8*]* %10 to i8*
  %46 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @2, i32 %16, i32 1, i64 8, i8* nonnull %45, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %46, label %63 [
    i32 1, label %47
    i32 2, label %51
  ]

47:                                               ; preds = %42
  %48 = load float, float* %2, align 4, !tbaa !8
  %49 = load float, float* %9, align 4, !tbaa !8
  %50 = fadd float %48, %49
  store float %50, float* %2, align 4, !tbaa !8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @2, i32 %16, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %63

51:                                               ; preds = %42
  %52 = bitcast float* %2 to i32*
  %53 = load atomic i32, i32* %52 monotonic, align 4, !tbaa !8
  %54 = load float, float* %9, align 4, !tbaa !8
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %53, %51 ], [ %61, %55 ]
  %57 = bitcast i32 %56 to float
  %58 = fadd float %54, %57
  %59 = bitcast float %58 to i32
  %60 = cmpxchg i32* %52, i32 %56, i32 %59 monotonic monotonic, align 4
  %61 = extractvalue { i32, i1 } %60, 0
  %62 = extractvalue { i32, i1 } %60, 1
  br i1 %62, label %63, label %55

63:                                               ; preds = %55, %47, %42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #4 {
  %3 = bitcast i8* %1 to float**
  %4 = load float*, float** %3, align 8
  %5 = bitcast i8* %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = load float, float* %6, align 4, !tbaa !8
  %8 = load float, float* %4, align 4, !tbaa !8
  %9 = fadd float %7, %8
  store float %9, float* %6, align 4, !tbaa !8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3
  %4 = bitcast float* %2 to i8*
  store i32 0, i32* %1, align 4, !tbaa !4
  br label %5

5:                                                ; preds = %5, %0
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  store float 0.000000e+00, float* %2, align 4, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* nonnull %2, i32* nonnull %1) #3
  %6 = load float, float* %2, align 4, !tbaa !8
  %7 = fpext float %6 to double
  %8 = load i32, i32* %1, align 4, !tbaa !4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %9
  store double %7, double* %10, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  %11 = add nsw i32 %8, 1
  store i32 %11, i32* %1, align 4, !tbaa !4
  %12 = icmp slt i32 %8, 999
  br i1 %12, label %5, label %13, !llvm.loop !12

13:                                               ; preds = %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }

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
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
