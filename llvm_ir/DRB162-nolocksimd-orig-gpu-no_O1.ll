; ModuleID = 'dataracebench/DRB162-nolocksimd-orig-gpu-no.c'
source_filename = "dataracebench/DRB162-nolocksimd-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [8 x i32], align 16
  %2 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @4) #3
  call void @__kmpc_push_num_teams(%struct.ident_t* nonnull @4, i32 %3, i32 1, i32 1048) #3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* nonnull %1) #3
  br label %5

4:                                                ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
  ret i32 0

5:                                                ; preds = %0, %12
  %6 = phi i64 [ 0, %0 ], [ %13, %12 ]
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !4
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %12

12:                                               ; preds = %5, %10
  %13 = add nuw nsw i64 %6, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %4, label %5, !llvm.loop !8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [8 x i32]* nonnull align 4 dereferenceable(32) %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 0, i32* %4, align 4, !tbaa !4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 19, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 1, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %12 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 92, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %13 = load i32, i32* %5, align 4, !tbaa !4
  %14 = icmp slt i32 %13, 19
  %15 = select i1 %14, i32 %13, i32 19
  store i32 %15, i32* %5, align 4, !tbaa !4
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %3, %18
  %19 = phi i32 [ %26, %18 ], [ %15, %3 ]
  %20 = phi i32 [ %25, %18 ], [ %16, %3 ]
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = zext i32 %19 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %22, i64 %23, [8 x i32]* nonnull %2)
  %24 = load i32, i32* %6, align 4, !tbaa !4
  %25 = add nsw i32 %24, %20
  %26 = load i32, i32* %5, align 4, !tbaa !4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %18

28:                                               ; preds = %18, %3
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %12)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, [8 x i32]* nonnull align 4 dereferenceable(32) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = bitcast [8 x i32]* %10 to i8*
  %12 = alloca [1 x i8*], align 8
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 19, i32* %7, align 4, !tbaa !4
  %15 = trunc i64 %2 to i32
  %16 = trunc i64 %3 to i32
  store i32 %15, i32* %6, align 4, !tbaa !4
  store i32 %16, i32* %7, align 4, !tbaa !4
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 1, i32* %8, align 4, !tbaa !4
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 0, i32* %9, align 4, !tbaa !4
  %19 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #3
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %22 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %22, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = icmp slt i32 %23, 19
  %25 = select i1 %24, i32 %23, i32 19
  store i32 %25, i32* %7, align 4, !tbaa !4
  %26 = load i32, i32* %6, align 4, !tbaa !4
  %27 = icmp sgt i32 %26, %25
  br i1 %27, label %42, label %28

28:                                               ; preds = %5, %39
  %29 = phi i32 [ %40, %39 ], [ %26, %5 ]
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %37, %30 ]
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %31
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 16, !tbaa !4, !llvm.access.group !11
  %35 = add nsw <4 x i32> %34, <i32 1, i32 1, i32 1, i32 1>
  %36 = bitcast i32* %32 to <4 x i32>*
  store <4 x i32> %35, <4 x i32>* %36, align 16, !tbaa !4, !llvm.access.group !11
  %37 = add nuw i64 %31, 4
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %30, !llvm.loop !12

39:                                               ; preds = %30
  %40 = add i32 %29, 1
  %41 = icmp eq i32 %29, %25
  br i1 %41, label %42, label %28

42:                                               ; preds = %39, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %22)
  %43 = bitcast [1 x i8*]* %12 to [8 x i32]**
  store [8 x i32]* %10, [8 x i32]** %43, align 8
  %44 = bitcast [1 x i8*]* %12 to i8*
  %45 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %22, i32 1, i64 8, i8* nonnull %44, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %45, label %68 [
    i32 1, label %46
    i32 2, label %58
  ]

46:                                               ; preds = %42
  %47 = getelementptr [8 x i32], [8 x i32]* %4, i64 0, i64 8
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi i32* [ %20, %46 ], [ %55, %48 ]
  %50 = phi i32* [ %21, %46 ], [ %54, %48 ]
  %51 = load i32, i32* %50, align 4, !tbaa !4
  %52 = load i32, i32* %49, align 4, !tbaa !4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %50, align 4, !tbaa !4
  %54 = getelementptr i32, i32* %50, i64 1
  %55 = getelementptr i32, i32* %49, i64 1
  %56 = icmp eq i32* %54, %47
  br i1 %56, label %57, label %48

57:                                               ; preds = %48
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %22, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %68

58:                                               ; preds = %42
  %59 = getelementptr [8 x i32], [8 x i32]* %4, i64 0, i64 8
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32* [ %20, %58 ], [ %66, %60 ]
  %62 = phi i32* [ %21, %58 ], [ %65, %60 ]
  %63 = load i32, i32* %61, align 4, !tbaa !4
  %64 = atomicrmw add i32* %62, i32 %63 monotonic, align 4
  %65 = getelementptr i32, i32* %62, i64 1
  %66 = getelementptr i32, i32* %61, i64 1
  %67 = icmp eq i32* %65, %59
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57, %42
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #4 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr i32, i32* %6, i64 8
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i32* [ %4, %2 ], [ %15, %8 ]
  %10 = phi i32* [ %6, %2 ], [ %14, %8 ]
  %11 = load i32, i32* %10, align 4, !tbaa !4
  %12 = load i32, i32* %9, align 4, !tbaa !4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %10, align 4, !tbaa !4
  %14 = getelementptr i32, i32* %10, i64 1
  %15 = getelementptr i32, i32* %9, i64 1
  %16 = icmp eq i32* %14, %7
  br i1 %16, label %17, label %8

17:                                               ; preds = %8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.parallel_accesses", !11}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
