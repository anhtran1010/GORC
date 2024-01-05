; ModuleID = 'dataracebench/DRB176-fib-taskdep-no.c'
source_filename = "dataracebench/DRB176-fib-taskdep-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates.4 = type { %struct.kmp_task_t }
%struct.anon.3 = type { i32*, i32*, i32* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"fib(%i) = %i\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fib(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.kmp_depend_info], align 8
  %6 = alloca [1 x %struct.kmp_depend_info], align 8
  %7 = alloca [2 x %struct.kmp_depend_info], align 8
  %8 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  %12 = icmp slt i32 %0, 2
  br i1 %12, label %54, label %13

13:                                               ; preds = %1
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %8, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %15 = bitcast i8* %14 to i32***
  %16 = load i32**, i32*** %15, align 8, !tbaa !4
  store i32* %2, i32** %16, align 8, !tbaa.struct !12
  %17 = getelementptr inbounds i8, i8* %14, i64 40
  %18 = bitcast i8* %17 to i32*
  store i32 %0, i32* %18, align 8, !tbaa !14
  %19 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 0
  %20 = ptrtoint i32* %2 to i64
  store i64 %20, i64* %19, align 8, !tbaa !15
  %21 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 1
  store i64 4, i64* %21, align 8, !tbaa !18
  %22 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0, i32 2
  store i8 3, i8* %22, align 8, !tbaa !19
  %23 = bitcast [1 x %struct.kmp_depend_info]* %5 to i8*
  %24 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %8, i8* %14, i32 1, i8* nonnull %23, i32 0, i8* null)
  %25 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %8, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %26 = bitcast i8* %25 to i32***
  %27 = load i32**, i32*** %26, align 8, !tbaa !4
  store i32* %3, i32** %27, align 8, !tbaa.struct !12
  %28 = getelementptr inbounds i8, i8* %25, i64 40
  %29 = bitcast i8* %28 to i32*
  store i32 %0, i32* %29, align 8, !tbaa !14
  %30 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 0
  %31 = ptrtoint i32* %3 to i64
  store i64 %31, i64* %30, align 8, !tbaa !15
  %32 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 1
  store i64 4, i64* %32, align 8, !tbaa !18
  %33 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %6, i64 0, i64 0, i32 2
  store i8 3, i8* %33, align 8, !tbaa !19
  %34 = bitcast [1 x %struct.kmp_depend_info]* %6 to i8*
  %35 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %8, i8* %25, i32 1, i8* nonnull %34, i32 0, i8* null)
  %36 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %8, i32 1, i64 40, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.4*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %37 = bitcast i8* %36 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !20
  %39 = bitcast i8* %38 to i32**
  store i32* %4, i32** %39, align 8, !tbaa.struct !22
  %40 = getelementptr inbounds i8, i8* %38, i64 8
  %41 = bitcast i8* %40 to i32**
  store i32* %2, i32** %41, align 8, !tbaa.struct !23
  %42 = getelementptr inbounds i8, i8* %38, i64 16
  %43 = bitcast i8* %42 to i32**
  store i32* %3, i32** %43, align 8, !tbaa.struct !12
  %44 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 0
  store i64 %20, i64* %44, align 8, !tbaa !15
  %45 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 1
  store i64 4, i64* %45, align 8, !tbaa !18
  %46 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 2
  store i8 1, i8* %46, align 8, !tbaa !19
  %47 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 1, i32 0
  store i64 %31, i64* %47, align 8, !tbaa !15
  %48 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 1, i32 1
  store i64 4, i64* %48, align 8, !tbaa !18
  %49 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 1, i32 2
  store i8 1, i8* %49, align 8, !tbaa !19
  %50 = bitcast [2 x %struct.kmp_depend_info]* %7 to i8*
  %51 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %8, i8* %36, i32 2, i8* nonnull %50, i32 0, i8* null)
  %52 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* nonnull @1, i32 %8)
  %53 = load i32, i32* %4, align 4, !tbaa !24
  br label %54

54:                                               ; preds = %1, %13
  %55 = phi i32 [ %53, %13 ], [ %0, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  ret i32 %55
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !4
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !24, !alias.scope !25, !noalias !28
  %7 = add nsw i32 %6, -1
  %8 = call i32 @fib(i32 %7) #3, !noalias !30
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !31, !alias.scope !28, !noalias !25
  store i32 %8, i32* %10, align 4, !tbaa !24, !noalias !30
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !4
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %1, i64 0, i32 1, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !24, !alias.scope !33, !noalias !36
  %7 = add nsw i32 %6, -2
  %8 = call i32 @fib(i32 %7) #3, !noalias !38
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !31, !alias.scope !36, !noalias !33
  store i32 %8, i32* %10, align 4, !tbaa !24, !noalias !38
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.4* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.4* %1 to %struct.anon.3**
  %4 = load %struct.anon.3*, %struct.anon.3** %3, align 8, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !42, !alias.scope !39
  %7 = load i32, i32* %6, align 4, !tbaa !24, !noalias !39
  %8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i64 0, i32 2
  %9 = load i32*, i32** %8, align 8, !tbaa !44, !alias.scope !39
  %10 = load i32, i32* %9, align 4, !tbaa !24, !noalias !39
  %11 = add nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4, i64 0, i32 0
  %13 = load i32*, i32** %12, align 8, !tbaa !45, !alias.scope !39
  store i32 %11, i32* %13, align 4, !tbaa !24, !noalias !39
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #3
  store i32 10, i32* %3, align 4, !tbaa !24
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !13
  %9 = call i64 @strtol(i8* nocapture nonnull %8, i8** null, i32 10) #3
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4, !tbaa !24
  br label %11

11:                                               ; preds = %6, %2
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #3
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..6(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2) #6 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4, !tbaa !24
  store i32 0, i32* %5, align 4, !tbaa !24
  store i32 1, i32* %6, align 4, !tbaa !24
  store i32 0, i32* %7, align 4, !tbaa !24
  %8 = load i32, i32* %0, align 4, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %8, i32 34, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %9 = load i32, i32* %5, align 4, !tbaa !24
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %10, i32 %9, i32 0
  store i32 %11, i32* %5, align 4, !tbaa !24
  %12 = load i32, i32* %4, align 4, !tbaa !24
  %13 = icmp sgt i32 %12, %11
  br i1 %13, label %25, label %14

14:                                               ; preds = %3, %21
  %15 = phi i32 [ %22, %21 ], [ %12, %3 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4, !tbaa !24
  %19 = call i32 @fib(i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %14
  %22 = add nsw i32 %15, 1
  %23 = load i32, i32* %5, align 4, !tbaa !24
  %24 = icmp slt i32 %15, %23
  br i1 %24, label %14, label %25

25:                                               ; preds = %21, %3
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %8)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !46 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #8

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !7, i64 0}
!5 = !{!"kmp_task_t_with_privates", !6, i64 0, !11, i64 40}
!6 = !{!"kmp_task_t", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24, !8, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!".kmp_privates.t", !10, i64 0}
!12 = !{i64 0, i64 8, !13}
!13 = !{!7, !7, i64 0}
!14 = !{!5, !10, i64 40}
!15 = !{!16, !17, i64 0}
!16 = !{!"kmp_depend_info", !17, i64 0, !17, i64 8, !8, i64 16}
!17 = !{!"long", !8, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!16, !8, i64 16}
!20 = !{!21, !7, i64 0}
!21 = !{!"kmp_task_t_with_privates", !6, i64 0}
!22 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13}
!23 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!24 = !{!10, !10, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !".omp_outlined.: argument 0"}
!27 = distinct !{!27, !".omp_outlined."}
!28 = !{!29}
!29 = distinct !{!29, !27, !".omp_outlined.: argument 1"}
!30 = !{!26, !29}
!31 = !{!32, !7, i64 0}
!32 = !{!"", !7, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !".omp_outlined..1: argument 0"}
!35 = distinct !{!35, !".omp_outlined..1"}
!36 = !{!37}
!37 = distinct !{!37, !35, !".omp_outlined..1: argument 1"}
!38 = !{!34, !37}
!39 = !{!40}
!40 = distinct !{!40, !41, !".omp_outlined..4: argument 0"}
!41 = distinct !{!41, !".omp_outlined..4"}
!42 = !{!43, !7, i64 8}
!43 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!44 = !{!43, !7, i64 16}
!45 = !{!43, !7, i64 0}
!46 = !{!47}
!47 = !{i64 2, i64 -1, i64 -1, i1 true}
