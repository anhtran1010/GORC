; ModuleID = 'dataracebench/DRB122-taskundeferred-orig-no.c'
source_filename = "dataracebench/DRB122-taskundeferred-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  store i32 0, i32* %3, align 4, !tbaa !4
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, i32* nonnull %3)
  %7 = load i32, i32* %3, align 4, !tbaa !4
  %8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %5, align 4, !tbaa !4
  store i32 0, i32* %6, align 4, !tbaa !4
  store i32 1, i32* %7, align 4, !tbaa !4
  store i32 0, i32* %8, align 4, !tbaa !4
  %9 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %9, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %10 = load i32, i32* %6, align 4, !tbaa !4
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 0
  store i32 %12, i32* %6, align 4, !tbaa !4
  %13 = load i32, i32* %5, align 4, !tbaa !4
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %36, label %15

15:                                               ; preds = %4, %32
  %16 = phi i32 [ %33, %32 ], [ %13, %4 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4, !tbaa !4
  br label %19

19:                                               ; preds = %18, %19
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @2, i32 %9, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %21 = bitcast i8* %20 to i32***
  %22 = load i32**, i32*** %21, align 8, !tbaa !8
  store i32* %3, i32** %22, align 8, !tbaa.struct !12
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* nonnull @2, i32 %9, i8* %20)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %23 = bitcast i8* %20 to %struct.anon**
  %24 = load %struct.anon*, %struct.anon** %23, align 8, !tbaa !8, !alias.scope !14
  call void @llvm.experimental.noalias.scope.decl(metadata !17) #3
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i64 0, i32 0
  %26 = load i32*, i32** %25, align 8, !tbaa !20, !alias.scope !17, !noalias !14
  %27 = load i32, i32* %26, align 4, !tbaa !4, !noalias !22
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4, !tbaa !4, !noalias !22
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* nonnull @2, i32 %9, i8* %20)
  %29 = load i32, i32* %2, align 4, !tbaa !4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4, !tbaa !4
  %31 = icmp slt i32 %29, 9
  br i1 %31, label %19, label %32, !llvm.loop !23

32:                                               ; preds = %19, %15
  %33 = add nsw i32 %16, 1
  %34 = load i32, i32* %6, align 4, !tbaa !4
  %35 = icmp slt i32 %16, %34
  br i1 %35, label %15, label %36

36:                                               ; preds = %32, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %9)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !20, !alias.scope !26
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !26
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4, !tbaa !4, !noalias !26
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !29 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!8 = !{!9, !11, i64 0}
!9 = !{!"kmp_task_t_with_privates", !10, i64 0}
!10 = !{!"kmp_task_t", !11, i64 0, !11, i64 8, !5, i64 16, !6, i64 24, !6, i64 32}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{i64 0, i64 8, !13}
!13 = !{!11, !11, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16, !".omp_task_entry.: argument 0"}
!16 = distinct !{!16, !".omp_task_entry."}
!17 = !{!18}
!18 = distinct !{!18, !19, !".omp_outlined..1: argument 0"}
!19 = distinct !{!19, !".omp_outlined..1"}
!20 = !{!21, !11, i64 0}
!21 = !{!"", !11, i64 0}
!22 = !{!18, !15}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27}
!27 = distinct !{!27, !28, !".omp_outlined..1: argument 0"}
!28 = distinct !{!28, !".omp_outlined..1"}
!29 = !{!30}
!30 = !{i64 2, i64 -1, i64 -1, i1 true}
