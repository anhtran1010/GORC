; ModuleID = 'dataracebench/DRB095-doall2-taskloop-orig-yes.c'
source_filename = "dataracebench/DRB095-doall2-taskloop-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon = type { i32* }

@a = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1)
  %3 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !tbaa !4
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = load i32, i32* %0, align 4, !tbaa !4
  %5 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  call void @__kmpc_taskgroup(%struct.ident_t* nonnull @1, i32 %4)
  %8 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %4, i32 1, i64 80, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %9 = bitcast i8* %8 to i32***
  %10 = load i32**, i32*** %9, align 8, !tbaa !8
  store i32* %2, i32** %10, align 8, !tbaa.struct !13
  %11 = getelementptr inbounds i8, i8* %8, i64 40
  %12 = bitcast i8* %11 to i64*
  store i64 0, i64* %12, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, i8* %8, i64 48
  %14 = bitcast i8* %13 to i64*
  store i64 99, i64* %14, align 8, !tbaa !15
  %15 = getelementptr inbounds i8, i8* %8, i64 56
  %16 = bitcast i8* %15 to i64*
  store i64 1, i64* %16, align 8, !tbaa !15
  %17 = getelementptr inbounds i8, i8* %8, i64 72
  %18 = bitcast i8* %17 to i64*
  store i64 0, i64* %18, align 8
  call void @__kmpc_taskloop(%struct.ident_t* nonnull @1, i32 %4, i8* %8, i32 1, i64* nonnull %12, i64* nonnull %14, i64 1, i32 1, i32 0, i64 0, i8* null)
  call void @__kmpc_end_taskgroup(%struct.ident_t* nonnull @1, i32 %4)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %4)
  br label %19

19:                                               ; preds = %7, %3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %4)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_taskgroup(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_taskgroup(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 0, i32 5
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 0, i32 6
  %8 = load i64, i64* %7, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !21, !alias.scope !18
  %11 = shl i64 %6, 32
  %12 = ashr exact i64 %11, 32
  %13 = icmp ugt i64 %12, %8
  br i1 %13, label %28, label %14

14:                                               ; preds = %2, %25
  %15 = phi i64 [ %26, %25 ], [ %12, %2 ]
  store i32 0, i32* %10, align 4, !tbaa !4, !noalias !18
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %23, %16 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %15, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !4, !noalias !18
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4, !tbaa !4, !noalias !18
  %22 = load i32, i32* %10, align 4, !tbaa !4, !noalias !18
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4, !tbaa !4, !noalias !18
  %24 = icmp slt i32 %22, 99
  br i1 %24, label %16, label %25, !llvm.loop !23

25:                                               ; preds = %16
  %26 = add i64 %15, 1
  %27 = icmp ugt i64 %26, %8
  br i1 %27, label %28, label %14

28:                                               ; preds = %25, %2
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !26 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!10 = !{!"kmp_task_t", !11, i64 0, !11, i64 8, !5, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !5, i64 64, !11, i64 72}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{i64 0, i64 8, !14}
!14 = !{!11, !11, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!9, !12, i64 40}
!17 = !{!9, !12, i64 48}
!18 = !{!19}
!19 = distinct !{!19, !20, !".omp_outlined..1: argument 0"}
!20 = distinct !{!20, !".omp_outlined..1"}
!21 = !{!22, !11, i64 0}
!22 = !{!"", !11, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27}
!27 = !{i64 2, i64 -1, i64 -1, i1 true}
