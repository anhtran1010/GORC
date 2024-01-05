; ModuleID = 'dataracebench/DRB145-atomiccritical-orig-gpu-no.c'
source_filename = "dataracebench/DRB145-atomiccritical-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@var = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @4, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull @var) #3
  %1 = load i32, i32* @var, align 4, !tbaa !4
  %2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i8*], align 8
  %10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 0, i32* %4, align 4, !tbaa !4
  %11 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %5, align 4, !tbaa !4
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 99, i32* %6, align 4, !tbaa !4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 1, i32* %7, align 4, !tbaa !4
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %8, align 4, !tbaa !4
  %15 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %15, i32 92, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %16 = load i32, i32* %6, align 4, !tbaa !4
  %17 = icmp slt i32 %16, 99
  %18 = select i1 %17, i32 %16, i32 99
  store i32 %18, i32* %6, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp sgt i32 %19, %18
  br i1 %20, label %31, label %21

21:                                               ; preds = %3, %21
  %22 = phi i32 [ %29, %21 ], [ %18, %3 ]
  %23 = phi i32 [ %28, %21 ], [ %19, %3 ]
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = zext i32 %22 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %25, i64 %26, i32* nonnull %4)
  %27 = load i32, i32* %7, align 4, !tbaa !4
  %28 = add nsw i32 %27, %23
  %29 = load i32, i32* %6, align 4, !tbaa !4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %3
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %15)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  %32 = bitcast [1 x i8*]* %9 to i32**
  store i32* %4, i32** %32, align 8
  %33 = bitcast [1 x i8*]* %9 to i8*
  %34 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %15, i32 1, i64 8, i8* nonnull %33, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func.2, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %34, label %42 [
    i32 1, label %35
    i32 2, label %39
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4, !tbaa !4
  %37 = load i32, i32* %4, align 4, !tbaa !4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %2, align 4, !tbaa !4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %15, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4, !tbaa !4
  %41 = atomicrmw add i32* %2, i32 %40 monotonic, align 4
  br label %42

42:                                               ; preds = %39, %35, %31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, i32* nocapture nonnull align 4 dereferenceable(4) %4) #1 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i8*], align 8
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 99, i32* %7, align 4, !tbaa !4
  %14 = trunc i64 %2 to i32
  %15 = trunc i64 %3 to i32
  store i32 %14, i32* %6, align 4, !tbaa !4
  store i32 %15, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 1, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 0, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 0, i32* %10, align 4, !tbaa !4
  %19 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %19, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %20 = load i32, i32* %7, align 4, !tbaa !4
  %21 = icmp slt i32 %20, 99
  %22 = select i1 %21, i32 %20, i32 99
  store i32 %22, i32* %7, align 4, !tbaa !4
  %23 = load i32, i32* %6, align 4, !tbaa !4
  %24 = load i32, i32* %10, align 4, !tbaa !4
  %25 = icmp sgt i32 %23, %22
  %26 = add i32 %24, %22
  %27 = add i32 %26, 1
  %28 = sub i32 %27, %23
  %29 = select i1 %25, i32 %24, i32 %28
  store i32 %29, i32* %10, align 4, !tbaa !4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  %30 = bitcast [1 x i8*]* %11 to i32**
  store i32* %10, i32** %30, align 8
  %31 = bitcast [1 x i8*]* %11 to i8*
  %32 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @3, i32 %19, i32 1, i64 8, i8* nonnull %31, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %32, label %40 [
    i32 1, label %33
    i32 2, label %37
  ]

33:                                               ; preds = %5
  %34 = load i32, i32* %4, align 4, !tbaa !4
  %35 = load i32, i32* %10, align 4, !tbaa !4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4, !tbaa !4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @3, i32 %19, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %40

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4, !tbaa !4
  %39 = atomicrmw add i32* %4, i32 %38 monotonic, align 4
  br label %40

40:                                               ; preds = %37, %33, %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #4 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func.2(i8* nocapture readonly %0, i8* nocapture readonly %1) #4 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
