; ModuleID = 'dataracebench/DRB155-missingordered-orig-gpu-no.c'
source_filename = "dataracebench/DRB155-missingordered-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Data Race Present\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x i32], align 16
  %2 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %2, i8 0, i64 400, i1 false)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* nonnull %1) #3
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
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [100 x i32]* nocapture nonnull align 4 dereferenceable(400) %2) #2 {
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
  call void @__kmpc_dispatch_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 66, i32 0, i32 98, i32 1, i32 1)
  %13 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %12, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %18

15:                                               ; preds = %24, %18
  %16 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %12, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %3, %15
  %19 = load i32, i32* %4, align 4, !tbaa !7
  %20 = load i32, i32* %5, align 4, !tbaa !7
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %15, label %22

22:                                               ; preds = %18
  %23 = sext i32 %19 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ %23, %22 ], [ %26, %24 ]
  %26 = add nsw i64 %25, 1
  call void @__kmpc_ordered(%struct.ident_t* nonnull @1, i32 %12)
  %27 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %25
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %26
  store i32 %29, i32* %30, align 4, !tbaa !7
  call void @__kmpc_end_ordered(%struct.ident_t* nonnull @1, i32 %12)
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* nonnull @1, i32 %12)
  %31 = load i32, i32* %5, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %24, label %15

34:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_ordered(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_ordered(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }

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
