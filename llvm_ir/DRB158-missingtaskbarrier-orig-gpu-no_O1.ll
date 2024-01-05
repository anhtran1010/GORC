; ModuleID = 'dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c'
source_filename = "dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@a = dso_local local_unnamed_addr global float 0.000000e+00, align 4
@x = dso_local global [64 x float] zeroinitializer, align 16
@y = dso_local local_unnamed_addr global [64 x float] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@str = private unnamed_addr constant [19 x i8] c"Data Race Detected\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [1 x %struct.kmp_depend_info], align 8
  %2 = alloca [1 x %struct.kmp_depend_info], align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  store float 5.000000e+00, float* @a, align 4, !tbaa !4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) bitcast ([64 x float]* @x to i8*), i8 0, i64 256, i1 false)
  br label %30

4:                                                ; preds = %30
  %5 = bitcast [1 x %struct.kmp_depend_info]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5)
  %6 = bitcast [1 x %struct.kmp_depend_info]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6)
  %7 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1) #2
  %8 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %1, i64 0, i64 0, i32 0
  %9 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %1, i64 0, i64 0, i32 1
  %10 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %1, i64 0, i64 0, i32 2
  %11 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %2, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %2, i64 0, i64 0, i32 1
  %13 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %2, i64 0, i64 0, i32 2
  br label %14

14:                                               ; preds = %14, %4
  %15 = phi i64 [ 0, %4 ], [ %27, %14 ]
  %16 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %7, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #2
  %17 = getelementptr inbounds i8, i8* %16, i64 40
  %18 = bitcast i8* %17 to i32*
  %19 = trunc i64 %15 to i32
  store i32 %19, i32* %18, align 8, !tbaa !8
  %20 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %15
  %21 = ptrtoint float* %20 to i64
  store i64 %21, i64* %8, align 8, !tbaa !14
  store i64 4, i64* %9, align 8, !tbaa !17
  store i8 3, i8* %10, align 8, !tbaa !18
  %22 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %7, i8* %16, i32 1, i8* nonnull %5, i32 0, i8* null) #2
  %23 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %7, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)) #2
  %24 = getelementptr inbounds i8, i8* %23, i64 40
  %25 = bitcast i8* %24 to i32*
  store i32 %19, i32* %25, align 8, !tbaa !8
  store i64 %21, i64* %11, align 8, !tbaa !14
  store i64 4, i64* %12, align 8, !tbaa !17
  store i8 3, i8* %13, align 8, !tbaa !18
  %26 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %7, i8* %23, i32 1, i8* nonnull %6, i32 0, i8* null) #2
  %27 = add nuw nsw i64 %15, 1
  %28 = icmp eq i64 %27, 64
  br i1 %28, label %29, label %14, !llvm.loop !19

29:                                               ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6)
  br label %38

30:                                               ; preds = %0, %30
  %31 = phi i64 [ 0, %0 ], [ %33, %30 ]
  %32 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %31
  store float 3.000000e+00, float* %32, align 4, !tbaa !4
  %33 = add nuw nsw i64 %31, 1
  %34 = icmp eq i64 %33, 64
  br i1 %34, label %4, label %30, !llvm.loop !22

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, 64
  br i1 %37, label %45, label %38, !llvm.loop !23

38:                                               ; preds = %29, %35
  %39 = phi i64 [ 0, %29 ], [ %36, %35 ]
  %40 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !4
  %42 = fcmp une float %41, 3.000000e+00
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str, i64 0, i64 0))
  br label %47

45:                                               ; preds = %35
  %46 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* nonnull @1, i32 %3)
  br label %47

47:                                               ; preds = %43, %45
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #1 {
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 0
  %4 = load float, float* @a, align 4, !tbaa !4, !noalias !24
  %5 = load i32, i32* %3, align 4, !tbaa !27, !alias.scope !24
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %6
  %8 = load float, float* %7, align 4, !tbaa !4, !noalias !24
  %9 = fmul float %4, %8
  store float %9, float* %7, align 4, !tbaa !4, !noalias !24
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #1 {
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %1, i64 0, i32 1, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !27, !alias.scope !28
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %5
  %7 = load float, float* %6, align 4, !tbaa !4, !noalias !28
  %8 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %5
  %9 = load float, float* %8, align 4, !tbaa !4, !noalias !28
  %10 = fadd float %7, %9
  store float %10, float* %6, align 4, !tbaa !4, !noalias !28
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { nofree nounwind }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 40}
!9 = !{!"kmp_task_t_with_privates", !10, i64 0, !13, i64 40}
!10 = !{!"kmp_task_t", !11, i64 0, !11, i64 8, !12, i64 16, !6, i64 24, !6, i64 32}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!".kmp_privates.t", !12, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"kmp_depend_info", !16, i64 0, !16, i64 8, !6, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!15, !6, i64 16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !20, !21}
!23 = distinct !{!23, !20, !21}
!24 = !{!25}
!25 = distinct !{!25, !26, !".omp_outlined.: argument 0"}
!26 = distinct !{!26, !".omp_outlined."}
!27 = !{!12, !12, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !".omp_outlined..1: argument 0"}
!30 = distinct !{!30, !".omp_outlined..1"}
