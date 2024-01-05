; ModuleID = 'dataracebench/DRB134-taskdep5-orig-omp45-yes.c'
source_filename = "dataracebench/DRB134-taskdep5-orig-omp45-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.anon.0 = type { i32*, i32* }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.kmp_depend_info], align 8
  %4 = alloca [2 x %struct.kmp_depend_info], align 8
  %5 = alloca [1 x %struct.kmp_depend_info], align 8
  %6 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  store i32 0, i32* %1, align 4, !tbaa !4
  %8 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 2, i32* %2, align 4, !tbaa !4
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %10 = bitcast i8* %9 to i32***
  %11 = load i32**, i32*** %10, align 8, !tbaa !8
  store i32* %1, i32** %11, align 8, !tbaa.struct !12
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 0
  %13 = ptrtoint i32* %1 to i64
  store i64 %13, i64* %12, align 8, !tbaa !14
  %14 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 1
  store i64 4, i64* %14, align 8, !tbaa !17
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 2
  store i8 3, i8* %15, align 8, !tbaa !18
  %16 = bitcast [1 x %struct.kmp_depend_info]* %3 to i8*
  %17 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %9, i32 1, i8* nonnull %16, i32 0, i8* null)
  %18 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*))
  %19 = bitcast i8* %18 to i8**
  %20 = load i8*, i8** %19, align 8, !tbaa !8
  %21 = bitcast i8* %20 to i32**
  store i32* %2, i32** %21, align 8, !tbaa.struct !19
  %22 = getelementptr inbounds i8, i8* %20, i64 8
  %23 = bitcast i8* %22 to i32**
  store i32* %1, i32** %23, align 8, !tbaa.struct !12
  %24 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 0
  store i64 %13, i64* %24, align 8, !tbaa !14
  %25 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 1
  store i64 4, i64* %25, align 8, !tbaa !17
  %26 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 2
  store i8 1, i8* %26, align 8, !tbaa !18
  %27 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 1, i32 0
  %28 = ptrtoint i32* %2 to i64
  store i64 %28, i64* %27, align 8, !tbaa !14
  %29 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 1, i32 1
  store i64 4, i64* %29, align 8, !tbaa !17
  %30 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %4, i64 0, i64 1, i32 2
  store i8 3, i8* %30, align 8, !tbaa !18
  %31 = bitcast [2 x %struct.kmp_depend_info]* %4 to i8*
  %32 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %18, i32 2, i8* nonnull %31, i32 0, i8* null)
  %33 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*))
  %34 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 0
  store i64 %13, i64* %34, align 8, !tbaa !14
  %35 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 1
  store i64 4, i64* %35, align 8, !tbaa !17
  %36 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 2
  store i8 1, i8* %36, align 8, !tbaa !18
  %37 = bitcast [1 x %struct.kmp_depend_info]* %5 to i8*
  call void @__kmpc_omp_wait_deps(%struct.ident_t* nonnull @1, i32 %6, i32 1, i8* nonnull %37, i32 0, i8* null)
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* nonnull @1, i32 %6, i8* %33)
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* nonnull @1, i32 %6, i8* %33)
  %38 = load i32, i32* %1, align 4, !tbaa !4
  %39 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %2, align 4, !tbaa !4
  %41 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* nonnull @1, i32 %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !23, !alias.scope !20
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !20
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4, !tbaa !4, !noalias !20
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !28, !alias.scope !25
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !25
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !30, !alias.scope !25
  %10 = load i32, i32* %9, align 4, !tbaa !4, !noalias !25
  %11 = sub nsw i32 %10, %7
  store i32 %11, i32* %9, align 4, !tbaa !4, !noalias !25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias nocapture readnone %1) #4 {
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..6(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #7 {
  %3 = load i32, i32* %0, align 4, !tbaa !4
  %4 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call void @foo()
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %3)
  br label %7

7:                                                ; preds = %6, %2
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %3)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !31 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !11, i64 0}
!9 = !{!"kmp_task_t_with_privates", !10, i64 0}
!10 = !{!"kmp_task_t", !11, i64 0, !11, i64 8, !5, i64 16, !6, i64 24, !6, i64 32}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{i64 0, i64 8, !13}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"kmp_depend_info", !16, i64 0, !16, i64 8, !6, i64 16}
!16 = !{!"long", !6, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!15, !6, i64 16}
!19 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!20 = !{!21}
!21 = distinct !{!21, !22, !".omp_outlined.: argument 0"}
!22 = distinct !{!22, !".omp_outlined."}
!23 = !{!24, !11, i64 0}
!24 = !{!"", !11, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !".omp_outlined..1: argument 0"}
!27 = distinct !{!27, !".omp_outlined..1"}
!28 = !{!29, !11, i64 8}
!29 = !{!"", !11, i64 0, !11, i64 8}
!30 = !{!29, !11, i64 0}
!31 = !{!32}
!32 = !{i64 2, i64 -1, i64 -1, i1 true}
