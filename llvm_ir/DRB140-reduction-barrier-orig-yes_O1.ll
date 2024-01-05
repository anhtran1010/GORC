; ModuleID = 'dataracebench/DRB140-reduction-barrier-orig-yes.c'
source_filename = "dataracebench/DRB140-reduction-barrier-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i8*], align 8
  %10 = load i32, i32* %0, align 4, !tbaa !4
  %11 = call i32 @__kmpc_master(%struct.ident_t* nonnull @1, i32 %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %2, align 4, !tbaa !4
  call void @__kmpc_end_master(%struct.ident_t* nonnull @1, i32 %10)
  br label %14

14:                                               ; preds = %13, %3
  %15 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 0, i32* %4, align 4, !tbaa !4
  %16 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 9, i32* %5, align 4, !tbaa !4
  %17 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 1, i32* %6, align 4, !tbaa !4
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %19 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #3
  store i32 0, i32* %8, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %10, i32 34, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = icmp slt i32 %20, 9
  %22 = select i1 %21, i32 %20, i32 9
  store i32 %22, i32* %5, align 4, !tbaa !4
  %23 = load i32, i32* %4, align 4, !tbaa !4
  %24 = load i32, i32* %8, align 4, !tbaa !4
  %25 = icmp slt i32 %22, %23
  br i1 %25, label %40, label %26

26:                                               ; preds = %14
  %27 = sub i32 %22, %23
  %28 = xor i32 %23, -1
  %29 = add i32 %22, %28
  %30 = zext i32 %29 to i33
  %31 = zext i32 %27 to i33
  %32 = mul i33 %30, %31
  %33 = lshr i33 %32, 1
  %34 = trunc i33 %33 to i32
  %35 = add i32 %23, 1
  %36 = mul i32 %27, %35
  %37 = add i32 %24, %23
  %38 = add i32 %37, %36
  %39 = add i32 %38, %34
  br label %40

40:                                               ; preds = %26, %14
  %41 = phi i32 [ %24, %14 ], [ %39, %26 ]
  store i32 %41, i32* %8, align 4, !tbaa !4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %10)
  %42 = bitcast [1 x i8*]* %9 to i32**
  store i32* %8, i32** %42, align 8
  %43 = bitcast [1 x i8*]* %9 to i8*
  %44 = call i32 @__kmpc_reduce(%struct.ident_t* nonnull @3, i32 %10, i32 1, i64 8, i8* nonnull %43, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %44, label %53 [
    i32 1, label %45
    i32 2, label %49
  ]

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4, !tbaa !4
  %47 = load i32, i32* %8, align 4, !tbaa !4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %2, align 4, !tbaa !4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4, !tbaa !4
  %51 = atomicrmw add i32* %2, i32 %50 monotonic, align 4
  br label %52

52:                                               ; preds = %45, %49
  call void @__kmpc_end_reduce(%struct.ident_t* nonnull @3, i32 %10, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %53

53:                                               ; preds = %52, %40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @4, i32 %10)
  %54 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %10)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %2, align 4, !tbaa !4
  %58 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %10)
  br label %59

59:                                               ; preds = %56, %53
  call void @__kmpc_barrier(%struct.ident_t* nonnull @5, i32 %10)
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_master(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_end_master(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

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
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
