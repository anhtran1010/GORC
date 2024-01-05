; ModuleID = 'dataracebench/DRB156-missingordered-orig-gpu-yes.c'
source_filename = "dataracebench/DRB156-missingordered-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@str = private unnamed_addr constant [18 x i8] c"Data Race Present\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x i32], align 16
  %2 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %2, i8 0, i64 400, i1 false)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* nonnull %1) #3
  br label %6

3:                                                ; preds = %6
  %4 = add nuw nsw i64 %7, 1
  %5 = icmp eq i64 %4, 100
  br i1 %5, label %14, label %6, !llvm.loop !4

6:                                                ; preds = %0, %3
  %7 = phi i64 [ 0, %0 ], [ %4, %3 ]
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !7
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %3, label %12

12:                                               ; preds = %6
  %13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %3, %12
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %2) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [100 x i32]* nonnull align 4 dereferenceable(400) %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 0, i32* %4, align 4, !tbaa !7
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 98, i32* %5, align 4, !tbaa !7
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 1, i32* %6, align 4, !tbaa !7
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %7, align 4, !tbaa !7
  %12 = load i32, i32* %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 92, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %13 = load i32, i32* %5, align 4, !tbaa !7
  %14 = icmp slt i32 %13, 98
  %15 = select i1 %14, i32 %13, i32 98
  store i32 %15, i32* %5, align 4, !tbaa !7
  %16 = load i32, i32* %4, align 4, !tbaa !7
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %28, label %18

18:                                               ; preds = %3, %18
  %19 = phi i32 [ %26, %18 ], [ %15, %3 ]
  %20 = phi i32 [ %25, %18 ], [ %16, %3 ]
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = zext i32 %19 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %22, i64 %23, [100 x i32]* nonnull %2)
  %24 = load i32, i32* %6, align 4, !tbaa !7
  %25 = add nsw i32 %24, %20
  %26 = load i32, i32* %5, align 4, !tbaa !7
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
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, [100 x i32]* nocapture nonnull align 4 dereferenceable(400) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 0, i32* %6, align 4, !tbaa !7
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 98, i32* %7, align 4, !tbaa !7
  %12 = trunc i64 %2 to i32
  %13 = trunc i64 %3 to i32
  store i32 %12, i32* %6, align 4, !tbaa !7
  store i32 %13, i32* %7, align 4, !tbaa !7
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 1, i32* %8, align 4, !tbaa !7
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 0, i32* %9, align 4, !tbaa !7
  %16 = load i32, i32* %0, align 4, !tbaa !7
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %16, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %17 = load i32, i32* %7, align 4, !tbaa !7
  %18 = icmp slt i32 %17, 98
  %19 = select i1 %18, i32 %17, i32 98
  store i32 %19, i32* %7, align 4, !tbaa !7
  %20 = load i32, i32* %6, align 4, !tbaa !7
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %35, label %22

22:                                               ; preds = %5
  %23 = sext i32 %20 to i64
  %24 = add nsw i32 %19, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr [100 x i32], [100 x i32]* %4, i64 0, i64 %23
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %22, %28
  %29 = phi i32 [ %27, %22 ], [ %32, %28 ]
  %30 = phi i64 [ %23, %22 ], [ %31, %28 ]
  %31 = add nsw i64 %30, 1
  %32 = add nsw i32 %29, 1
  %33 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %31
  store i32 %32, i32* %33, align 4, !tbaa !7
  %34 = icmp eq i64 %31, %25
  br i1 %34, label %35, label %28

35:                                               ; preds = %28, %5
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
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = distinct !{!4, !5, !6}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
