; ModuleID = 'dataracebench/DRB149-missingdata1-orig-gpu-no.c'
source_filename = "dataracebench/DRB149-missingdata1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local local_unnamed_addr global i32* null, align 8
@b = dso_local local_unnamed_addr global i32* null, align 8
@c = dso_local local_unnamed_addr global i32* null, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@str = private unnamed_addr constant [10 x i8] c"Data Race\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call noalias align 16 dereferenceable_or_null(400) i8* @malloc(i64 400) #4
  store i8* %4, i8** bitcast (i32** @a to i8**), align 8, !tbaa !4
  %5 = call noalias align 16 dereferenceable_or_null(40000) i8* @malloc(i64 40000) #4
  store i8* %5, i8** bitcast (i32** @b to i8**), align 8, !tbaa !4
  %6 = call noalias align 16 dereferenceable_or_null(400) i8* @malloc(i64 400) #4
  store i8* %6, i8** bitcast (i32** @c to i8**), align 8, !tbaa !4
  %7 = bitcast i8* %5 to i32*
  %8 = bitcast i8* %4 to i32*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %6, i8 0, i64 400, i1 false)
  br label %9

9:                                                ; preds = %0, %22
  %10 = phi i64 [ 0, %0 ], [ %24, %22 ]
  %11 = mul nuw nsw i64 %10, 100
  br label %26

12:                                               ; preds = %22
  %13 = load i32*, i32** @c, align 8, !tbaa !4
  %14 = load i32*, i32** @b, align 8, !tbaa !4
  %15 = load i32*, i32** @a, align 8, !tbaa !4
  %16 = bitcast i32** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16)
  %17 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  %18 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
  store i32* %13, i32** %1, align 8, !tbaa !4
  store i32* %14, i32** %2, align 8, !tbaa !4
  store i32* %15, i32** %3, align 8, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32** nonnull %1, i32** nonnull %2, i32** nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18)
  %19 = load i32*, i32** @c, align 8, !tbaa !4
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = icmp eq i32 %20, 100
  br i1 %21, label %32, label %42

22:                                               ; preds = %26
  %23 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 1, i32* %23, align 4, !tbaa !8
  %24 = add nuw nsw i64 %10, 1
  %25 = icmp eq i64 %24, 100
  br i1 %25, label %12, label %9, !llvm.loop !10

26:                                               ; preds = %9, %26
  %27 = phi i64 [ 0, %9 ], [ %30, %26 ]
  %28 = add nuw nsw i64 %27, %11
  %29 = getelementptr inbounds i32, i32* %7, i64 %28
  store i32 1, i32* %29, align 4, !tbaa !8
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, 100
  br i1 %31, label %22, label %26, !llvm.loop !13

32:                                               ; preds = %12, %36
  %33 = phi i64 [ %34, %36 ], [ 0, %12 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = icmp eq i64 %34, 100
  br i1 %35, label %45, label %36, !llvm.loop !14

36:                                               ; preds = %32
  %37 = getelementptr inbounds i32, i32* %19, i64 %34
  %38 = load i32, i32* %37, align 4, !tbaa !8
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %32, label %40, !llvm.loop !14

40:                                               ; preds = %36
  %41 = icmp ult i64 %33, 99
  br label %42

42:                                               ; preds = %40, %12
  %43 = phi i1 [ true, %12 ], [ %41, %40 ]
  %44 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  br label %47

45:                                               ; preds = %32
  %46 = icmp ult i64 %33, 99
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i1 [ %43, %42 ], [ %46, %45 ]
  %49 = phi i32 [ 1, %42 ], [ 0, %45 ]
  br i1 %48, label %54, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** bitcast (i32** @a to i8**), align 8, !tbaa !4
  call void @free(i8* %51) #4
  %52 = load i8*, i8** bitcast (i32** @b to i8**), align 8, !tbaa !4
  call void @free(i8* %52) #4
  %53 = load i8*, i8** bitcast (i32** @c to i8**), align 8, !tbaa !4
  call void @free(i8* %53) #4
  br label %54

54:                                               ; preds = %47, %50
  %55 = phi i32 [ 0, %50 ], [ %49, %47 ]
  ret i32 %55
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32** nonnull align 8 dereferenceable(8) %2, i32** nonnull align 8 dereferenceable(8) %3, i32** nonnull align 8 dereferenceable(8) %4) #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 0, i32* %6, align 4, !tbaa !8
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  store i32 99, i32* %7, align 4, !tbaa !8
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4
  store i32 1, i32* %8, align 4, !tbaa !8
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4
  store i32 0, i32* %9, align 4, !tbaa !8
  %14 = load i32, i32* %0, align 4, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %14, i32 92, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %15 = load i32, i32* %7, align 4, !tbaa !8
  %16 = icmp slt i32 %15, 99
  %17 = select i1 %16, i32 %15, i32 99
  store i32 %17, i32* %7, align 4, !tbaa !8
  %18 = load i32, i32* %6, align 4, !tbaa !8
  %19 = icmp sgt i32 %18, %17
  br i1 %19, label %30, label %20

20:                                               ; preds = %5, %20
  %21 = phi i32 [ %28, %20 ], [ %17, %5 ]
  %22 = phi i32 [ %27, %20 ], [ %18, %5 ]
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = zext i32 %21 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32**, i32**, i32**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %24, i64 %25, i32** nonnull %2, i32** nonnull %3, i32** nonnull %4)
  %26 = load i32, i32* %8, align 4, !tbaa !8
  %27 = add nsw i32 %26, %22
  %28 = load i32, i32* %7, align 4, !tbaa !8
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %20

30:                                               ; preds = %20, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i64 %2, i64 %3, i32** nocapture nonnull readonly align 8 dereferenceable(8) %4, i32** nocapture nonnull readonly align 8 dereferenceable(8) %5, i32** nocapture nonnull readonly align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4
  store i32 0, i32* %8, align 4, !tbaa !8
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4
  store i32 99, i32* %9, align 4, !tbaa !8
  %14 = trunc i64 %2 to i32
  %15 = trunc i64 %3 to i32
  store i32 %14, i32* %8, align 4, !tbaa !8
  store i32 %15, i32* %9, align 4, !tbaa !8
  %16 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 1, i32* %10, align 4, !tbaa !8
  %17 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 0, i32* %11, align 4, !tbaa !8
  %18 = load i32, i32* %0, align 4, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %18, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %19 = load i32, i32* %9, align 4, !tbaa !8
  %20 = icmp slt i32 %19, 99
  %21 = select i1 %20, i32 %19, i32 99
  store i32 %21, i32* %9, align 4, !tbaa !8
  %22 = load i32, i32* %8, align 4, !tbaa !8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp sgt i32 %22, %21
  br i1 %26, label %50, label %27

27:                                               ; preds = %7
  %28 = sext i32 %22 to i64
  br label %29

29:                                               ; preds = %27, %33
  %30 = phi i64 [ %28, %27 ], [ %34, %33 ]
  %31 = mul nsw i64 %30, 100
  %32 = getelementptr inbounds i32, i32* %25, i64 %30
  br label %38

33:                                               ; preds = %38
  %34 = add nsw i64 %30, 1
  %35 = load i32, i32* %9, align 4, !tbaa !8
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %30, %36
  br i1 %37, label %29, label %50

38:                                               ; preds = %29, %38
  %39 = phi i64 [ 0, %29 ], [ %48, %38 ]
  %40 = add nsw i64 %39, %31
  %41 = getelementptr inbounds i32, i32* %23, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = getelementptr inbounds i32, i32* %24, i64 %39
  %44 = load i32, i32* %43, align 4, !tbaa !8
  %45 = mul nsw i32 %44, %42
  %46 = load i32, i32* %32, align 4, !tbaa !8
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %32, align 4, !tbaa !8
  %48 = add nuw nsw i64 %39, 1
  %49 = icmp eq i64 %48, 100
  br i1 %49, label %33, label %38, !llvm.loop !15

50:                                               ; preds = %33, %7
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = !{!17}
!17 = !{i64 2, i64 -1, i64 -1, i1 true}
