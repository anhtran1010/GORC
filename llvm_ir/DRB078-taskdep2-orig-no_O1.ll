; ModuleID = 'dataracebench/DRB078-taskdep2-orig-no.c'
source_filename = "dataracebench/DRB078-taskdep2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.anon.0 = type { i32* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"i==2\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"dataracebench/DRB078-taskdep2-orig-no.c\00", align 1
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
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %1, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1)
  %3 = load i32, i32* %1, align 4, !tbaa !4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #11
  unreachable

6:                                                ; preds = %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2) #4 {
  %4 = alloca [1 x %struct.kmp_depend_info], align 8
  %5 = alloca [1 x %struct.kmp_depend_info], align 8
  %6 = load i32, i32* %0, align 4, !tbaa !4
  %7 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %11 = bitcast i8* %10 to i32***
  %12 = load i32**, i32*** %11, align 8, !tbaa !11
  store i32* %2, i32** %12, align 8, !tbaa.struct !15
  %13 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 0
  %14 = ptrtoint i32* %2 to i64
  store i64 %14, i64* %13, align 8, !tbaa !17
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 1
  store i64 4, i64* %15, align 8, !tbaa !20
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 2
  store i8 3, i8* %16, align 8, !tbaa !21
  %17 = bitcast [1 x %struct.kmp_depend_info]* %4 to i8*
  %18 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %10, i32 1, i8* nonnull %17, i32 0, i8* null)
  %19 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %20 = bitcast i8* %19 to i32***
  %21 = load i32**, i32*** %20, align 8, !tbaa !11
  store i32* %2, i32** %21, align 8, !tbaa.struct !15
  %22 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 0
  store i64 %14, i64* %22, align 8, !tbaa !17
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 1
  store i64 4, i64* %23, align 8, !tbaa !20
  %24 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 2
  store i8 3, i8* %24, align 8, !tbaa !21
  %25 = bitcast [1 x %struct.kmp_depend_info]* %5 to i8*
  %26 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %19, i32 1, i8* nonnull %25, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %6)
  br label %27

27:                                               ; preds = %9, %3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %6)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %5 = call i32 @usleep(i32 10000) #7, !noalias !22
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !25, !alias.scope !22
  store i32 1, i32* %7, align 4, !tbaa !4, !noalias !22
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
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !25, !alias.scope !27
  store i32 2, i32* %6, align 4, !tbaa !4, !noalias !27
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !30 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nofree norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #11 = { noreturn nounwind }

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
!22 = !{!23}
!23 = distinct !{!23, !24, !".omp_outlined..1: argument 0"}
!24 = distinct !{!24, !".omp_outlined..1"}
!25 = !{!26, !14, i64 0}
!26 = !{!"", !14, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !".omp_outlined..2: argument 0"}
!29 = distinct !{!29, !".omp_outlined..2"}
!30 = !{!31}
!31 = !{i64 2, i64 -1, i64 -1, i1 true}
