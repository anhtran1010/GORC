; ModuleID = 'dataracebench/DRB159-nobarrier-orig-gpu-no.c'
source_filename = "dataracebench/DRB159-nobarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global i32 0, align 4
@b = dso_local global [8 x i32] zeroinitializer, align 16
@c = dso_local global [8 x i32] zeroinitializer, align 16
@temp = dso_local global [8 x i32] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [22 x i8] c"expected %d real %d \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([8 x i32]* @b to i8*), i8 0, i64 32, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([8 x i32]* @temp to i8*), i8 0, i64 32, i1 false)
  br label %2

1:                                                ; preds = %2
  store i32 2, i32* @a, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x i32]* nonnull @temp, [8 x i32]* nonnull @b, [8 x i32]* nonnull @c, i32* nonnull @a) #3
  br label %10

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %5, %2 ]
  %4 = getelementptr inbounds [8 x i32], [8 x i32]* @c, i64 0, i64 %3
  store i32 2, i32* %4, align 4, !tbaa !4
  %5 = add nuw nsw i64 %3, 1
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %1, label %2, !llvm.loop !8

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, 8
  br i1 %9, label %17, label %10, !llvm.loop !11

10:                                               ; preds = %1, %7
  %11 = phi i64 [ 0, %1 ], [ %8, %7 ]
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* @b, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !4
  %14 = icmp eq i32 %13, -4
  br i1 %14, label %7, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 -4, i32 %13)
  br label %17

17:                                               ; preds = %7, %15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [8 x i32]* nocapture nonnull align 4 dereferenceable(32) %2, [8 x i32]* nocapture nonnull align 4 dereferenceable(32) %3, [8 x i32]* nocapture nonnull readonly align 4 dereferenceable(32) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast i32* %7 to i8*
  %16 = bitcast i32* %8 to i8*
  %17 = bitcast i32* %9 to i8*
  %18 = bitcast i32* %10 to i8*
  %19 = load i32, i32* %0, align 4, !tbaa !4
  %20 = bitcast i32* %11 to i8*
  %21 = bitcast i32* %12 to i8*
  %22 = bitcast i32* %13 to i8*
  %23 = bitcast i32* %14 to i8*
  br label %25

24:                                               ; preds = %66
  ret void

25:                                               ; preds = %6, %66
  %26 = phi i32 [ 0, %6 ], [ %67, %66 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 7, i32* %8, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 1, i32* %9, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 0, i32* %10, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %19, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %27 = load i32, i32* %8, align 4, !tbaa !4
  %28 = icmp slt i32 %27, 7
  %29 = select i1 %28, i32 %27, i32 7
  store i32 %29, i32* %8, align 4, !tbaa !4
  %30 = load i32, i32* %7, align 4, !tbaa !4
  %31 = icmp sgt i32 %30, %29
  br i1 %31, label %46, label %32

32:                                               ; preds = %25
  %33 = sext i32 %30 to i64
  %34 = add nsw i32 %29, 1
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ %33, %32 ], [ %43, %35 ]
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %36
  %40 = load i32, i32* %39, align 4, !tbaa !4
  %41 = add nsw i32 %40, %38
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %36
  store i32 %41, i32* %42, align 4, !tbaa !4
  %43 = add nsw i64 %36, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %34, %44
  br i1 %45, label %46, label %35

46:                                               ; preds = %35, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %19)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #3
  store i32 0, i32* %11, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #3
  store i32 7, i32* %12, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #3
  store i32 1, i32* %13, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #3
  store i32 0, i32* %14, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %19, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %47 = load i32, i32* %12, align 4, !tbaa !4
  %48 = icmp slt i32 %47, 7
  %49 = select i1 %48, i32 %47, i32 7
  store i32 %49, i32* %12, align 4, !tbaa !4
  %50 = load i32, i32* %11, align 4, !tbaa !4
  %51 = icmp sgt i32 %50, %49
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = sext i32 %50 to i64
  %54 = add nsw i32 %49, 1
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %53, %52 ], [ %63, %55 ]
  %57 = sub nsw i64 7, %56
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !4
  %60 = load i32, i32* %5, align 4, !tbaa !4
  %61 = mul nsw i32 %60, %59
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %57
  store i32 %61, i32* %62, align 4, !tbaa !4
  %63 = add nsw i64 %56, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %54, %64
  br i1 %65, label %66, label %55

66:                                               ; preds = %55, %46
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %19)
  %67 = add nuw nsw i32 %26, 1
  %68 = icmp eq i32 %67, 100
  br i1 %68, label %24, label %25, !llvm.loop !12
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

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
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
