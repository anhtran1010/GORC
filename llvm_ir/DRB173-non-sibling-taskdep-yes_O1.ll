; ModuleID = 'dataracebench/DRB173-non-sibling-taskdep-yes.c'
source_filename = "dataracebench/DRB173-non-sibling-taskdep-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates.4 = type { %struct.kmp_task_t }
%struct.anon.3 = type { i32* }
%struct.kmp_task_t_with_privates.5 = type { %struct.kmp_task_t }
%struct.anon.2 = type { i32* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"a=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 0, i32* %1, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1)
  %3 = load i32, i32* %1, align 4, !tbaa !4
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca [1 x %struct.kmp_depend_info], align 8
  %5 = alloca [1 x %struct.kmp_depend_info], align 8
  %6 = load i32, i32* %0, align 4, !tbaa !4
  %7 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %11 = bitcast i8* %10 to i32***
  %12 = load i32**, i32*** %11, align 8, !tbaa !8
  store i32* %2, i32** %12, align 8, !tbaa.struct !12
  %13 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 0
  %14 = ptrtoint i32* %2 to i64
  store i64 %14, i64* %13, align 8, !tbaa !14
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 1
  store i64 4, i64* %15, align 8, !tbaa !17
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0, i32 2
  store i8 3, i8* %16, align 8, !tbaa !18
  %17 = bitcast [1 x %struct.kmp_depend_info]* %4 to i8*
  %18 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %10, i32 1, i8* nonnull %17, i32 0, i8* null)
  %19 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..7 to i32 (i32, i8*)*))
  %20 = bitcast i8* %19 to i32***
  %21 = load i32**, i32*** %20, align 8, !tbaa !8
  store i32* %2, i32** %21, align 8, !tbaa.struct !12
  %22 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 0
  store i64 %14, i64* %22, align 8, !tbaa !14
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 1
  store i64 4, i64* %23, align 8, !tbaa !17
  %24 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 2
  store i8 3, i8* %24, align 8, !tbaa !18
  %25 = bitcast [1 x %struct.kmp_depend_info]* %5 to i8*
  %26 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %6, i8* %19, i32 1, i8* nonnull %25, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %6)
  br label %27

27:                                               ; preds = %9, %3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %6)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !22, !alias.scope !19
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !19
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4, !tbaa !4, !noalias !19
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #6 {
  %3 = alloca [1 x %struct.kmp_depend_info], align 8
  %4 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon**
  %5 = load %struct.anon*, %struct.anon** %4, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %6 = bitcast [1 x %struct.kmp_depend_info]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6)
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %5, i64 0, i32 0
  %8 = load i32*, i32** %7, align 8, !tbaa !22, !alias.scope !24
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #5, !noalias !24
  %10 = bitcast i8* %9 to i32***
  %11 = load i32**, i32*** %10, align 8, !tbaa !8, !noalias !24
  store i32* %8, i32** %11, align 8, !tbaa.struct !12, !noalias !24
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 0
  %13 = ptrtoint i32* %8 to i64
  store i64 %13, i64* %12, align 8, !tbaa !14, !noalias !24
  %14 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 1
  store i64 4, i64* %14, align 8, !tbaa !17, !noalias !24
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 2
  store i8 3, i8* %15, align 8, !tbaa !18, !noalias !24
  %16 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %0, i8* %9, i32 1, i8* nonnull %6, i32 0, i8* null) #5, !noalias !24
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..6(i32 %0, %struct.kmp_task_t_with_privates.4* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.4* %1 to %struct.anon.3**
  %4 = load %struct.anon.3*, %struct.anon.3** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !22, !alias.scope !27
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !27
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4, !tbaa !4, !noalias !27
  ret i32 0
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..7(i32 %0, %struct.kmp_task_t_with_privates.5* noalias nocapture readonly %1) #6 {
  %3 = alloca [1 x %struct.kmp_depend_info], align 8
  %4 = bitcast %struct.kmp_task_t_with_privates.5* %1 to %struct.anon.2**
  %5 = load %struct.anon.2*, %struct.anon.2** %4, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %6 = bitcast [1 x %struct.kmp_depend_info]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6)
  %7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5, i64 0, i32 0
  %8 = load i32*, i32** %7, align 8, !tbaa !22, !alias.scope !30
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.4*)* @.omp_task_entry..6 to i32 (i32, i8*)*)) #5, !noalias !30
  %10 = bitcast i8* %9 to i32***
  %11 = load i32**, i32*** %10, align 8, !tbaa !8, !noalias !30
  store i32* %8, i32** %11, align 8, !tbaa.struct !12, !noalias !30
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 0
  %13 = ptrtoint i32* %8 to i64
  store i64 %13, i64* %12, align 8, !tbaa !14, !noalias !30
  %14 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 1
  store i64 4, i64* %14, align 8, !tbaa !17, !noalias !30
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %3, i64 0, i64 0, i32 2
  store i8 3, i8* %15, align 8, !tbaa !18, !noalias !30
  %16 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %0, i8* %9, i32 1, i8* nonnull %6, i32 0, i8* null) #5, !noalias !30
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6)
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !33 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 0, i32* %1, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1) #5
  %3 = load i32, i32* %1, align 4, !tbaa !4
  %4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  ret i32 0
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
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
!19 = !{!20}
!20 = distinct !{!20, !21, !".omp_outlined..2: argument 0"}
!21 = distinct !{!21, !".omp_outlined..2"}
!22 = !{!23, !11, i64 0}
!23 = !{!"", !11, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !".omp_outlined..1: argument 0"}
!26 = distinct !{!26, !".omp_outlined..1"}
!27 = !{!28}
!28 = distinct !{!28, !29, !".omp_outlined..5: argument 0"}
!29 = distinct !{!29, !".omp_outlined..5"}
!30 = !{!31}
!31 = distinct !{!31, !32, !".omp_outlined..4: argument 0"}
!32 = distinct !{!32, !".omp_outlined..4"}
!33 = !{!34}
!34 = !{i64 2, i64 -1, i64 -1, i1 true}
