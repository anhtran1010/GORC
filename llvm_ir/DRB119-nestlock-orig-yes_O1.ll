; ModuleID = 'dataracebench/DRB119-nestlock-orig-yes.c'
source_filename = "dataracebench/DRB119-nestlock-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @incr_a(%struct.pair* nocapture %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pair, %struct.pair* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8, !tbaa !4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @incr_b(%struct.pair* nocapture %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pair, %struct.pair* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !11
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* %2, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = alloca [1 x %struct.pair], align 16
  %4 = bitcast [1 x %struct.pair]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5
  %5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %3, i64 0, i64 0, i32 0
  store i32 0, i32* %5, align 16, !tbaa !4
  %6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %3, i64 0, i64 0, i32 1
  store i32 0, i32* %6, align 4, !tbaa !11
  %7 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %3, i64 0, i64 0, i32 2
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* nonnull %7) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* nonnull %3)
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* nonnull %7) #5
  %8 = load i32, i32* %6, align 4, !tbaa !11
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4, !tbaa !12
  store i32 1, i32* %5, align 4, !tbaa !12
  store i32 1, i32* %6, align 4, !tbaa !12
  store i32 0, i32* %7, align 4, !tbaa !12
  %8 = load i32, i32* %0, align 4, !tbaa !12
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %8, i32 34, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %9 = load i32, i32* %5, align 4, !tbaa !12
  %10 = icmp slt i32 %9, 1
  %11 = select i1 %10, i32 %9, i32 1
  store i32 %11, i32* %5, align 4, !tbaa !12
  %12 = load i32, i32* %4, align 4, !tbaa !12
  %13 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, i32 1
  %14 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, i32 2
  %15 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, i32 1
  %16 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, i32 0
  %17 = icmp sgt i32 %12, %11
  br i1 %17, label %32, label %18

18:                                               ; preds = %3, %28
  %19 = phi i32 [ %29, %28 ], [ %12, %3 ]
  switch i32 %19, label %28 [
    i32 0, label %20
    i32 1, label %25
  ]

20:                                               ; preds = %18
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* nonnull %14) #5
  %21 = load i32, i32* %15, align 4, !tbaa !11
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %15, align 4, !tbaa !11
  %23 = load i32, i32* %16, align 8, !tbaa !4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %16, align 8, !tbaa !4
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* nonnull %14) #5
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %13, align 4, !tbaa !11
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %13, align 4, !tbaa !11
  br label %28

28:                                               ; preds = %18, %20, %25
  %29 = add nsw i32 %19, 1
  %30 = load i32, i32* %5, align 4, !tbaa !12
  %31 = icmp slt i32 %19, %30
  br i1 %31, label %18, label %32

32:                                               ; preds = %28, %3
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %8)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

declare dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) local_unnamed_addr #3

declare dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

declare dso_local void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"", !6, i64 0, !6, i64 4, !9, i64 8}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omp_nest_lock_t", !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!5, !6, i64 4}
!12 = !{!6, !6, i64 0}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
