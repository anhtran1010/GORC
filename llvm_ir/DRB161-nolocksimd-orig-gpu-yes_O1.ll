; ModuleID = 'dataracebench/DRB161-nolocksimd-orig-gpu-yes.c'
source_filename = "dataracebench/DRB161-nolocksimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [8 x i32], align 16
  %2 = bitcast [8 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @3) #3
  call void @__kmpc_push_num_teams(%struct.ident_t* nonnull @3, i32 %3, i32 1, i32 1048) #3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* nonnull %1) #3
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %22, i64 %23, [8 x i32]* nonnull %2)
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
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, [8 x i32]* nocapture nonnull align 4 dereferenceable(32) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 19, i32* %7, align 4, !tbaa !4
  %12 = trunc i64 %2 to i32
  %13 = trunc i64 %3 to i32
  store i32 %12, i32* %6, align 4, !tbaa !4
  store i32 %13, i32* %7, align 4, !tbaa !4
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 1, i32* %8, align 4, !tbaa !4
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 0, i32* %9, align 4, !tbaa !4
  %16 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %16, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %17 = load i32, i32* %7, align 4, !tbaa !4
  %18 = icmp slt i32 %17, 19
  %19 = select i1 %18, i32 %17, i32 19
  store i32 %19, i32* %7, align 4, !tbaa !4
  %20 = load i32, i32* %6, align 4, !tbaa !4
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %36, label %22

22:                                               ; preds = %5, %33
  %23 = phi i32 [ %34, %33 ], [ %20, %5 ]
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ 0, %22 ], [ %31, %24 ]
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %25
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !4, !llvm.access.group !11
  %29 = add nsw <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>
  %30 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> %29, <4 x i32>* %30, align 4, !tbaa !4, !llvm.access.group !11
  %31 = add nuw i64 %25, 4
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %24, !llvm.loop !12

33:                                               ; preds = %24
  %34 = add i32 %23, 1
  %35 = icmp eq i32 %23, %19
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %16)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }

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
