; ModuleID = 'dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c'
source_filename = "dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c"
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
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.anon.2 = type { i32* }
%struct.kmp_task_t_with_privates.5 = type { %struct.kmp_task_t }
%struct.anon.4 = type { i32*, i32* }
%struct.kmp_task_t_with_privates.7 = type { %struct.kmp_task_t }
%struct.anon.6 = type { i32*, i32* }
%struct.kmp_task_t_with_privates.9 = type { %struct.kmp_task_t }
%struct.anon.8 = type { i32*, i32* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #5
  %6 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #5
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %1, i32* nonnull %2, i32* nonnull %4)
  %9 = load i32, i32* %4, align 4, !tbaa !4
  %10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5) #2 {
  %7 = alloca [1 x %struct.kmp_depend_info], align 8
  %8 = alloca [1 x %struct.kmp_depend_info], align 8
  %9 = alloca [1 x %struct.kmp_depend_info], align 8
  %10 = alloca [2 x %struct.kmp_depend_info], align 8
  %11 = alloca [2 x %struct.kmp_depend_info], align 8
  %12 = alloca [1 x %struct.kmp_depend_info], align 8
  %13 = load i32, i32* %0, align 4, !tbaa !4
  %14 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %6
  %17 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %18 = bitcast i8* %17 to i32***
  %19 = load i32**, i32*** %18, align 8, !tbaa !8
  store i32* %2, i32** %19, align 8, !tbaa.struct !12
  %20 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 0
  %21 = ptrtoint i32* %2 to i64
  store i64 %21, i64* %20, align 8, !tbaa !14
  %22 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 1
  store i64 4, i64* %22, align 8, !tbaa !17
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %7, i64 0, i64 0, i32 2
  store i8 3, i8* %23, align 8, !tbaa !18
  %24 = bitcast [1 x %struct.kmp_depend_info]* %7 to i8*
  %25 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %17, i32 1, i8* nonnull %24, i32 0, i8* null)
  %26 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %27 = bitcast i8* %26 to i32***
  %28 = load i32**, i32*** %27, align 8, !tbaa !8
  store i32* %3, i32** %28, align 8, !tbaa.struct !12
  %29 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 0
  %30 = ptrtoint i32* %3 to i64
  store i64 %30, i64* %29, align 8, !tbaa !14
  %31 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 1
  store i64 4, i64* %31, align 8, !tbaa !17
  %32 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0, i32 2
  store i8 3, i8* %32, align 8, !tbaa !18
  %33 = bitcast [1 x %struct.kmp_depend_info]* %8 to i8*
  %34 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %26, i32 1, i8* nonnull %33, i32 0, i8* null)
  %35 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %36 = bitcast i8* %35 to i32***
  %37 = load i32**, i32*** %36, align 8, !tbaa !8
  store i32* %4, i32** %37, align 8, !tbaa.struct !12
  %38 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %9, i64 0, i64 0, i32 0
  %39 = ptrtoint i32* %4 to i64
  store i64 %39, i64* %38, align 8, !tbaa !14
  %40 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %9, i64 0, i64 0, i32 1
  store i64 4, i64* %40, align 8, !tbaa !17
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %9, i64 0, i64 0, i32 2
  store i8 3, i8* %41, align 8, !tbaa !18
  %42 = bitcast [1 x %struct.kmp_depend_info]* %9 to i8*
  %43 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %35, i32 1, i8* nonnull %42, i32 0, i8* null)
  %44 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..7 to i32 (i32, i8*)*))
  %45 = bitcast i8* %44 to i8**
  %46 = load i8*, i8** %45, align 8, !tbaa !8
  %47 = bitcast i8* %46 to i32**
  store i32* %2, i32** %47, align 8, !tbaa.struct !19
  %48 = getelementptr inbounds i8, i8* %46, i64 8
  %49 = bitcast i8* %48 to i32**
  store i32* %3, i32** %49, align 8, !tbaa.struct !12
  %50 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 0, i32 0
  store i64 %30, i64* %50, align 8, !tbaa !14
  %51 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 0, i32 1
  store i64 4, i64* %51, align 8, !tbaa !17
  %52 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 0, i32 2
  store i8 1, i8* %52, align 8, !tbaa !18
  %53 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 1, i32 0
  store i64 %21, i64* %53, align 8, !tbaa !14
  %54 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 1, i32 1
  store i64 4, i64* %54, align 8, !tbaa !17
  %55 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %10, i64 0, i64 1, i32 2
  store i8 4, i8* %55, align 8, !tbaa !18
  %56 = bitcast [2 x %struct.kmp_depend_info]* %10 to i8*
  %57 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %44, i32 2, i8* nonnull %56, i32 0, i8* null)
  %58 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.7*)* @.omp_task_entry..9 to i32 (i32, i8*)*))
  %59 = bitcast i8* %58 to i8**
  %60 = load i8*, i8** %59, align 8, !tbaa !8
  %61 = bitcast i8* %60 to i32**
  store i32* %2, i32** %61, align 8, !tbaa.struct !19
  %62 = getelementptr inbounds i8, i8* %60, i64 8
  %63 = bitcast i8* %62 to i32**
  store i32* %4, i32** %63, align 8, !tbaa.struct !12
  %64 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 0, i32 0
  store i64 %39, i64* %64, align 8, !tbaa !14
  %65 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 0, i32 1
  store i64 4, i64* %65, align 8, !tbaa !17
  %66 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 0, i32 2
  store i8 1, i8* %66, align 8, !tbaa !18
  %67 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 1, i32 0
  store i64 %21, i64* %67, align 8, !tbaa !14
  %68 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 1, i32 1
  store i64 4, i64* %68, align 8, !tbaa !17
  %69 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %11, i64 0, i64 1, i32 2
  store i8 4, i8* %69, align 8, !tbaa !18
  %70 = bitcast [2 x %struct.kmp_depend_info]* %11 to i8*
  %71 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %58, i32 2, i8* nonnull %70, i32 0, i8* null)
  %72 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %13, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.9*)* @.omp_task_entry..11 to i32 (i32, i8*)*))
  %73 = bitcast i8* %72 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !8
  %75 = bitcast i8* %74 to i32**
  store i32* %5, i32** %75, align 8, !tbaa.struct !19
  %76 = getelementptr inbounds i8, i8* %74, i64 8
  %77 = bitcast i8* %76 to i32**
  store i32* %2, i32** %77, align 8, !tbaa.struct !12
  %78 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %12, i64 0, i64 0, i32 0
  store i64 %21, i64* %78, align 8, !tbaa !14
  %79 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %12, i64 0, i64 0, i32 1
  store i64 4, i64* %79, align 8, !tbaa !17
  %80 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %12, i64 0, i64 0, i32 2
  store i8 1, i8* %80, align 8, !tbaa !18
  %81 = bitcast [1 x %struct.kmp_depend_info]* %12 to i8*
  %82 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @1, i32 %13, i8* %72, i32 1, i8* nonnull %81, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %13)
  br label %83

83:                                               ; preds = %16, %6
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %13)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !23, !alias.scope !20
  store i32 1, i32* %6, align 4, !tbaa !4, !noalias !20
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !23, !alias.scope !25
  store i32 2, i32* %6, align 4, !tbaa !4, !noalias !25
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.3* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.3* %1 to %struct.anon.2**
  %4 = load %struct.anon.2*, %struct.anon.2** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %5 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4, i64 0, i32 0
  %6 = load i32*, i32** %5, align 8, !tbaa !23, !alias.scope !28
  store i32 3, i32* %6, align 4, !tbaa !4, !noalias !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..7(i32 %0, %struct.kmp_task_t_with_privates.5* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.5* %1 to %struct.anon.4**
  %4 = load %struct.anon.4*, %struct.anon.4** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %5 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !34, !alias.scope !31
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !31
  %8 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !36, !alias.scope !31
  %10 = load i32, i32* %9, align 4, !tbaa !4, !noalias !31
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 4, !tbaa !4, !noalias !31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..9(i32 %0, %struct.kmp_task_t_with_privates.7* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.7* %1 to %struct.anon.6**
  %4 = load %struct.anon.6*, %struct.anon.6** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %5 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !34, !alias.scope !37
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !37
  %8 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !36, !alias.scope !37
  %10 = load i32, i32* %9, align 4, !tbaa !4, !noalias !37
  %11 = add nsw i32 %10, %7
  store i32 %11, i32* %9, align 4, !tbaa !4, !noalias !37
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry..11(i32 %0, %struct.kmp_task_t_with_privates.9* noalias nocapture readonly %1) #4 {
  %3 = bitcast %struct.kmp_task_t_with_privates.9* %1 to %struct.anon.8**
  %4 = load %struct.anon.8*, %struct.anon.8** %3, align 8, !tbaa !8
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %5 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %4, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8, !tbaa !34, !alias.scope !40
  %7 = load i32, i32* %6, align 4, !tbaa !4, !noalias !40
  %8 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %4, i64 0, i32 0
  %9 = load i32*, i32** %8, align 8, !tbaa !36, !alias.scope !40
  store i32 %7, i32* %9, align 4, !tbaa !4, !noalias !40
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !43 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!21 = distinct !{!21, !22, !".omp_outlined..1: argument 0"}
!22 = distinct !{!22, !".omp_outlined..1"}
!23 = !{!24, !11, i64 0}
!24 = !{!"", !11, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !".omp_outlined..2: argument 0"}
!27 = distinct !{!27, !".omp_outlined..2"}
!28 = !{!29}
!29 = distinct !{!29, !30, !".omp_outlined..4: argument 0"}
!30 = distinct !{!30, !".omp_outlined..4"}
!31 = !{!32}
!32 = distinct !{!32, !33, !".omp_outlined..6: argument 0"}
!33 = distinct !{!33, !".omp_outlined..6"}
!34 = !{!35, !11, i64 8}
!35 = !{!"", !11, i64 0, !11, i64 8}
!36 = !{!35, !11, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !".omp_outlined..8: argument 0"}
!39 = distinct !{!39, !".omp_outlined..8"}
!40 = !{!41}
!41 = distinct !{!41, !42, !".omp_outlined..10: argument 0"}
!42 = distinct !{!42, !".omp_outlined..10"}
!43 = !{!44}
!44 = !{i64 2, i64 -1, i64 -1, i1 true}
