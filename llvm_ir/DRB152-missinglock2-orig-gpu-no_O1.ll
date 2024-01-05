; ModuleID = 'dataracebench/DRB152-missinglock2-orig-gpu-no.c'
source_filename = "dataracebench/DRB152-missinglock2-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.omp_lock_t, align 8
  %2 = alloca i32, align 4
  %3 = bitcast %struct.omp_lock_t* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %2, align 4, !tbaa !4
  call void @omp_init_lock(%struct.omp_lock_t* nonnull %1) #4
  %5 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @3) #4
  call void @__kmpc_push_num_teams(%struct.ident_t* nonnull @3, i32 %5, i32 1, i32 0) #4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* nonnull %1, i32* nonnull %2) #4
  call void @omp_destroy_lock(%struct.omp_lock_t* nonnull %1) #4
  %6 = load i32, i32* %2, align 4, !tbaa !4
  %7 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %2, i32* nonnull align 4 dereferenceable(4) %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4
  store i32 0, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 99, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  store i32 1, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 92, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !4
  %15 = icmp slt i32 %14, 99
  %16 = select i1 %15, i32 %14, i32 99
  store i32 %16, i32* %6, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %29, label %19

19:                                               ; preds = %4, %19
  %20 = phi i32 [ %27, %19 ], [ %16, %4 ]
  %21 = phi i32 [ %26, %19 ], [ %17, %4 ]
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = zext i32 %20 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %23, i64 %24, %struct.omp_lock_t* nonnull %2, i32* nonnull %3)
  %25 = load i32, i32* %7, align 4, !tbaa !4
  %26 = add nsw i32 %25, %21
  %27 = load i32, i32* %6, align 4, !tbaa !4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %19

29:                                               ; preds = %19, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %4, i32* nocapture nonnull align 4 dereferenceable(4) %5) #3 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  store i32 0, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4
  store i32 99, i32* %8, align 4, !tbaa !4
  %13 = trunc i64 %2 to i32
  %14 = trunc i64 %3 to i32
  store i32 %13, i32* %7, align 4, !tbaa !4
  store i32 %14, i32* %8, align 4, !tbaa !4
  %15 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #4
  store i32 1, i32* %9, align 4, !tbaa !4
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %10, align 4, !tbaa !4
  %17 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %17, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %18 = load i32, i32* %8, align 4, !tbaa !4
  %19 = icmp slt i32 %18, 99
  %20 = select i1 %19, i32 %18, i32 99
  store i32 %20, i32* %8, align 4, !tbaa !4
  %21 = load i32, i32* %7, align 4, !tbaa !4
  %22 = icmp sgt i32 %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %6, %23
  %24 = phi i32 [ %27, %23 ], [ %21, %6 ]
  call void @omp_set_lock(%struct.omp_lock_t* nonnull %4) #4
  %25 = load i32, i32* %5, align 4, !tbaa !4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4, !tbaa !4
  call void @omp_unset_lock(%struct.omp_lock_t* nonnull %4) #4
  %27 = add nsw i32 %24, 1
  %28 = load i32, i32* %8, align 4, !tbaa !4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %23, %6
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %17)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  ret void
}

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) local_unnamed_addr #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
