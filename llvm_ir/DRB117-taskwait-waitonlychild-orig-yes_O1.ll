; ModuleID = 'dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c'
source_filename = "dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.anon = type { [2 x i32]*, [4 x i32]* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %5 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #3
  %6 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #3
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  call void @__kmpc_push_num_threads(%struct.ident_t* nonnull @1, i32 %4, i32 2)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [4 x i32]*, [2 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [4 x i32]* nonnull %1, [2 x i32]* nonnull %2, i32* nonnull %3)
  %8 = load i32, i32* %3, align 4, !tbaa !4
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [4 x i32]* nonnull align 4 dereferenceable(16) %2, [2 x i32]* nonnull align 4 dereferenceable(8) %3, i32* nocapture nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 3, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 1, i32* %8, align 4, !tbaa !4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 0, i32* %9, align 4, !tbaa !4
  %14 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_dispatch_init_4(%struct.ident_t* nonnull @1, i32 %14, i32 1073741859, i32 0, i32 3, i32 1, i32 1)
  %15 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %14, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %20

17:                                               ; preds = %27, %20
  %18 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %14, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %5, %17
  %21 = load i32, i32* %6, align 4, !tbaa !4
  %22 = load i32, i32* %7, align 4, !tbaa !4, !llvm.access.group !8
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %17, label %24

24:                                               ; preds = %20
  %25 = sext i32 %21 to i64
  %26 = add i32 %22, 1
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ %25, %24 ], [ %31, %27 ]
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %28
  %30 = trunc i64 %28 to i32
  store i32 %30, i32* %29, align 4, !tbaa !4, !llvm.access.group !8
  %31 = add nsw i64 %28, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %26, %32
  br i1 %33, label %17, label %27, !llvm.loop !9

34:                                               ; preds = %17, %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %14)
  %35 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %14)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %14, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %39 = bitcast i8* %38 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !11
  %41 = bitcast i8* %40 to [2 x i32]**
  store [2 x i32]* %3, [2 x i32]** %41, align 8, !tbaa.struct !15
  %42 = getelementptr inbounds i8, i8* %40, i64 8
  %43 = bitcast i8* %42 to [4 x i32]**
  store [4 x i32]* %2, [4 x i32]** %43, align 8, !tbaa.struct !17
  %44 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %14, i8* %38)
  %45 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* nonnull @1, i32 %14)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %47 = load i32, i32* %46, align 4, !tbaa !4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %49 = load i32, i32* %48, align 4, !tbaa !4
  %50 = add nsw i32 %49, %47
  store i32 %50, i32* %4, align 4, !tbaa !4
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %14)
  br label %51

51:                                               ; preds = %37, %34
  call void @__kmpc_barrier(%struct.ident_t* nonnull @3, i32 %14)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #5 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !11
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 1
  %6 = load [4 x i32]*, [4 x i32]** %5, align 8, !tbaa !21, !alias.scope !18
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %8 = load i32, i32* %7, align 8, !tbaa !4, !noalias !18
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %10 = load i32, i32* %9, align 4, !tbaa !4, !noalias !18
  %11 = add nsw i32 %10, %8
  %12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %13 = load [2 x i32]*, [2 x i32]** %12, align 8, !tbaa !23, !alias.scope !18
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %11, i32* %14, align 4, !tbaa !4, !noalias !18
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #6 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !11
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %6 = load [2 x i32]*, [2 x i32]** %5, align 8, !tbaa !23, !alias.scope !24
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 1
  %8 = load [4 x i32]*, [4 x i32]** %7, align 8, !tbaa !21, !alias.scope !24
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %0, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #3, !noalias !24
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !11, !noalias !24
  %12 = bitcast i8* %11 to [2 x i32]**
  store [2 x i32]* %6, [2 x i32]** %12, align 8, !tbaa.struct !15, !noalias !24
  %13 = getelementptr inbounds i8, i8* %11, i64 8
  %14 = bitcast i8* %13 to [4 x i32]**
  store [4 x i32]* %8, [4 x i32]** %14, align 8, !tbaa.struct !17, !noalias !24
  %15 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %0, i8* %9) #3, !noalias !24
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %17 = load i32, i32* %16, align 16, !tbaa !4, !noalias !24
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %19 = load i32, i32* %18, align 4, !tbaa !4, !noalias !24
  %20 = add nsw i32 %19, %17
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %20, i32* %21, align 4, !tbaa !4, !noalias !24
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !27 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!8 = distinct !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.parallel_accesses", !8}
!11 = !{!12, !14, i64 0}
!12 = !{!"kmp_task_t_with_privates", !13, i64 0}
!13 = !{!"kmp_task_t", !14, i64 0, !14, i64 8, !5, i64 16, !6, i64 24, !6, i64 32}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{i64 0, i64 8, !16, i64 8, i64 8, !16}
!16 = !{!14, !14, i64 0}
!17 = !{i64 0, i64 8, !16}
!18 = !{!19}
!19 = distinct !{!19, !20, !".omp_outlined..2: argument 0"}
!20 = distinct !{!20, !".omp_outlined..2"}
!21 = !{!22, !14, i64 8}
!22 = !{!"", !14, i64 0, !14, i64 8}
!23 = !{!22, !14, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !".omp_outlined..1: argument 0"}
!26 = distinct !{!26, !".omp_outlined..1"}
!27 = !{!28}
!28 = !{i64 2, i64 -1, i64 -1, i1 true}
