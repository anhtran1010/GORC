; ModuleID = 'dataracebench/DRB079-taskdep3-orig-no.c'
source_filename = "dataracebench/DRB079-taskdep3-orig-no.c"
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
%struct.anon.2 = type { i32*, i32* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"j=%d k=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"j==1 && k==1\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"dataracebench/DRB079-taskdep3-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable willreturn
define dso_local void @atomic_signal(i32* nocapture %0) local_unnamed_addr #0 {
  %2 = atomicrmw add i32* %0, i32 1 monotonic, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @atomic_wait(i32* nocapture readonly %0, i32 %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = call i32 @usleep(i32 100) #7
  %5 = load atomic i32, i32* %0 monotonic, align 4, !tbaa !4
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %3, label %7, !llvm.loop !8

7:                                                ; preds = %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @usleep(i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7
  store i32 0, i32* %1, align 4, !tbaa !4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #7
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, i32* nonnull %2, i32* nonnull %3)
  %7 = load i32, i32* %2, align 4, !tbaa !4
  %8 = load i32, i32* %3, align 4, !tbaa !4
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = icmp eq i32 %10, 1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #12
  unreachable

16:                                               ; preds = %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4) #4 {
  %6 = alloca [1 x %struct.kmp_depend_info], align 8
  %7 = alloca [1 x %struct.kmp_depend_info], align 8
  %8 = alloca [1 x %struct.kmp_depend_info], align 8
  %9 = load i32, i32* %0, align 4, !tbaa !4
  %10 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %5
  %13 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %9, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %14 = bitcast i8* %13 to i32***
  %15 = load i32**, i32*** %14, align 8, !tbaa !11
  store i32* %2, i32** %15, align 8, !tbaa.struct !15
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 0
  %17 = ptrtoint i32* %2 to i64
  store i64 %17, i64* %16, align 8, !tbaa !17
  %18 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 1
  store i64 4, i64* %18, align 8, !tbaa !20
  %19 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 2
  store i8 3, i8* %19, align 8, !tbaa !21
  %20 = bitcast [1 x %struct.kmp_depend_info]* %6 to i8*
  %21 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %9, i8* %13, i32 1, i8* nonnull %20, i32 0, i8* null)
  %22 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %9, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %23 = bitcast i8* %22 to i8**
  %24 = load i8*, i8** %23, align 8, !tbaa !11
  %25 = bitcast i8* %24 to i32**
  store i32* %3, i32** %25, align 8, !tbaa.struct !22
  %26 = getelementptr inbounds i8, i8* %24, i64 8
  %27 = bitcast i8* %26 to i32**
  store i32* %2, i32** %27, align 8, !tbaa.struct !15
  %28 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 0
  store i64 %17, i64* %28, align 8, !tbaa !17
  %29 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 1
  store i64 4, i64* %29, align 8, !tbaa !20
  %30 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 2
  store i8 1, i8* %30, align 8, !tbaa !21
  %31 = bitcast [1 x %struct.kmp_depend_info]* %7 to i8*
  %32 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %9, i8* %22, i32 1, i8* nonnull %31, i32 0, i8* null)
  %33 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %9, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %34 = bitcast i8* %33 to i8**
  %35 = load i8*, i8** %34, align 8, !tbaa !11
  %36 = bitcast i8* %35 to i32**
  store i32* %4, i32** %36, align 8, !tbaa.struct !22
  %37 = getelementptr inbounds i8, i8* %35, i64 8
  %38 = bitcast i8* %37 to i32**
  store i32* %2, i32** %38, align 8, !tbaa.struct !15
  %39 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 0
  store i64 %17, i64* %39, align 8, !tbaa !17
  %40 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 1
  store i64 4, i64* %40, align 8, !tbaa !20
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 2
  store i8 1, i8* %41, align 8, !tbaa !21
  %42 = bitcast [1 x %struct.kmp_depend_info]* %8 to i8*
  %43 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %9, i8* %33, i32 1, i8* nonnull %42, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %9)
  br label %44

44:                                               ; preds = %12, %5
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %9)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #6 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !11
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %5 = call i32 @usleep(i32 10000) #7, !noalias !23
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !26, !alias.scope !23
  store i32 1, i32* %7, align 4, !tbaa !4, !noalias !23
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #8 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !11
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !31, !alias.scope !28
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !28
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !33, !alias.scope !28
  store i32 %7, i32* %9, align 4, !tbaa !4, !noalias !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.3* noalias nocapture readonly %1) #8 {
  %3 = bitcast %struct.kmp_task_t_with_privates.3* %1 to %struct.anon.2**
  %4 = load %struct.anon.2*, %struct.anon.2** %3, align 8, !tbaa !11
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !31, !alias.scope !34
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !34
  %8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !33, !alias.scope !34
  store i32 %7, i32* %9, align 4, !tbaa !4, !noalias !34
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !37 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { noreturn nounwind }

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
!11 = !{!12, !14, i64 0}
!12 = !{!"kmp_task_t_with_privates", !13, i64 0}
!13 = !{!"kmp_task_t", !14, i64 0, !14, i64 8, !5, i64 16, !6, i64 24, !6, i64 32}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{i64 0, i64 8, !16}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"kmp_depend_info", !19, i64 0, !19, i64 8, !6, i64 16}
!19 = !{!"long", !6, i64 0}
!20 = !{!18, !19, i64 8}
!21 = !{!18, !6, i64 16}
!22 = !{i64 0, i64 8, !16, i64 8, i64 8, !16}
!23 = !{!24}
!24 = distinct !{!24, !25, !".omp_outlined..1: argument 0"}
!25 = distinct !{!25, !".omp_outlined..1"}
!26 = !{!27, !14, i64 0}
!27 = !{!"", !14, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !".omp_outlined..2: argument 0"}
!30 = distinct !{!30, !".omp_outlined..2"}
!31 = !{!32, !14, i64 8}
!32 = !{!"", !14, i64 0, !14, i64 8}
!33 = !{!32, !14, i64 0}
!34 = !{!35}
!35 = distinct !{!35, !36, !".omp_outlined..4: argument 0"}
!36 = distinct !{!36, !".omp_outlined..4"}
!37 = !{!38}
!38 = !{i64 2, i64 -1, i64 -1, i1 true}
