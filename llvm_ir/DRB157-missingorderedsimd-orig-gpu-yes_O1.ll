; ModuleID = 'dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c'
source_filename = "dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [100 x i32], align 16
  %2 = bitcast [100 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #3
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %2, i8 0, i64 400, i1 false)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @3, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* nonnull %1) #3
  %3 = getelementptr inbounds [100 x i32], [100 x i32]* %1, i64 0, i64 97
  %4 = load i32, i32* %3, align 4, !tbaa !4
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
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
  store i32 0, i32* %4, align 4, !tbaa !4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 83, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 1, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %12 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 92, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %13 = load i32, i32* %5, align 4, !tbaa !4
  %14 = icmp slt i32 %13, 83
  %15 = select i1 %14, i32 %13, i32 83
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %22, i64 %23, [100 x i32]* nonnull %2)
  %24 = load i32, i32* %6, align 4, !tbaa !4
  %25 = add nsw i32 %24, %20
  %26 = load i32, i32* %5, align 4, !tbaa !4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %18, !llvm.loop !8

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
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 83, i32* %7, align 4, !tbaa !4
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
  %18 = icmp slt i32 %17, 83
  %19 = select i1 %18, i32 %17, i32 83
  store i32 %19, i32* %7, align 4, !tbaa !4
  %20 = load i32, i32* %6, align 4, !tbaa !4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %59, label %22

22:                                               ; preds = %5
  %23 = sext i32 %20 to i64
  %24 = add nsw i32 %19, 1
  %25 = sub i32 %19, %20
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = icmp ult i32 %25, 15
  br i1 %28, label %47, label %29

29:                                               ; preds = %22
  %30 = and i64 %27, 8589934576
  %31 = add nsw i64 %30, %23
  %32 = getelementptr [100 x i32], [100 x i32]* %4, i64 0, i64 %23
  %33 = bitcast i32* %32 to <16 x i32>*
  %34 = load <16 x i32>, <16 x i32>* %33, align 4
  br label %35

35:                                               ; preds = %35, %29
  %36 = phi <16 x i32> [ %34, %29 ], [ %40, %35 ]
  %37 = phi i64 [ 0, %29 ], [ %43, %35 ]
  %38 = add i64 %37, %23
  %39 = add nsw i64 %38, 16
  %40 = add nsw <16 x i32> %36, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %41 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %39
  %42 = bitcast i32* %41 to <16 x i32>*
  store <16 x i32> %40, <16 x i32>* %42, align 4, !tbaa !4
  %43 = add nuw i64 %37, 16
  %44 = icmp eq i64 %43, %30
  br i1 %44, label %45, label %35, !llvm.loop !11

45:                                               ; preds = %35
  %46 = icmp eq i64 %27, %30
  br i1 %46, label %59, label %47

47:                                               ; preds = %22, %45
  %48 = phi i64 [ %23, %22 ], [ %31, %45 ]
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %56, %49 ], [ %48, %47 ]
  %51 = add nsw i64 %50, 16
  %52 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %50
  %53 = load i32, i32* %52, align 4, !tbaa !4
  %54 = add nsw i32 %53, 1
  %55 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %51
  store i32 %54, i32* %55, align 4, !tbaa !4
  %56 = add nsw i64 %50, 1
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %24, %57
  br i1 %58, label %59, label %49, !llvm.loop !13

59:                                               ; preds = %49, %45, %5
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
!9 = !{!"llvm.loop.vectorize.width", i32 16}
!10 = !{!"llvm.loop.vectorize.enable", i1 true}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
