; ModuleID = 'dataracebench/DRB013-nowait-orig-yes.c'
source_filename = "dataracebench/DRB013-nowait-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  store i32 1000, i32* %2, align 4, !tbaa !4
  %6 = call i8* @llvm.stacksave()
  %7 = alloca [1000 x i32], align 16
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 5, i32* %3, align 4, !tbaa !4
  %9 = load i32, i32* %2, align 4, !tbaa !4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = zext i32 %9 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %17, %13 ]
  %15 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 %14
  %16 = trunc i64 %14 to i32
  store i32 %16, i32* %15, align 4, !tbaa !4
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %19, label %13, !llvm.loop !8

19:                                               ; preds = %13, %0
  %20 = getelementptr inbounds [1000 x i32], [1000 x i32]* %7, i64 0, i64 0
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %2, i64 1000, i32* nonnull %20, i32* nonnull %3, i32* nonnull %1)
  %21 = load i32, i32* %1, align 4, !tbaa !4
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  call void @llvm.stackrestore(i8* %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i64 %3, i32* nocapture nonnull align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull align 4 dereferenceable(4) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = add nsw i32 %12, -1
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %7
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 %13, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4
  store i32 1, i32* %10, align 4, !tbaa !4
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %11, align 4, !tbaa !4
  %20 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %20, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %21 = load i32, i32* %9, align 4, !tbaa !4
  %22 = icmp slt i32 %21, %12
  %23 = select i1 %22, i32 %21, i32 %13
  store i32 %23, i32* %9, align 4, !tbaa !4
  %24 = load i32, i32* %8, align 4, !tbaa !4
  %25 = icmp sgt i32 %24, %23
  br i1 %25, label %39, label %26

26:                                               ; preds = %15
  %27 = sext i32 %24 to i64
  %28 = add i32 %23, 1
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %27, %26 ], [ %36, %29 ]
  %31 = load i32, i32* %5, align 4, !tbaa !4
  %32 = getelementptr inbounds i32, i32* %4, i64 %30
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = mul nsw i32 %33, 5
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %32, align 4, !tbaa !4
  %36 = add nsw i64 %30, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %28, %37
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  br label %40

40:                                               ; preds = %39, %7
  %41 = load i32, i32* %0, align 4, !tbaa !4
  %42 = call i32 @__kmpc_single(%struct.ident_t* nonnull @2, i32 %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds i32, i32* %4, i64 9
  %46 = load i32, i32* %45, align 4, !tbaa !4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4, !tbaa !4
  call void @__kmpc_end_single(%struct.ident_t* nonnull @2, i32 %41)
  br label %48

48:                                               ; preds = %44, %40
  call void @__kmpc_barrier(%struct.ident_t* nonnull @3, i32 %41)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
