; ModuleID = 'dataracebench/DRB134-taskdep5-orig-omp45-yes.c'
source_filename = "dataracebench/DRB134-taskdep5-orig-omp45-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.anon, align 8
  %4 = alloca [1 x %struct.kmp_depend_info], align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.anon.0, align 8
  %7 = alloca [2 x %struct.kmp_depend_info], align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.anon.2, align 1
  %10 = alloca [1 x %struct.kmp_depend_info], align 8
  %11 = alloca i64, align 8
  %12 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %3, i32 0, i32 0
  store i32* %1, i32** %13, align 8
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %12, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates*
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast %struct.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %4, i64 0, i64 0
  %21 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %20, i64 0
  %22 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %21, i32 0, i32 0
  %23 = ptrtoint i32* %1 to i64
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %21, i32 0, i32 1
  store i64 4, i64* %24, align 8
  %25 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %21, i32 0, i32 2
  store i8 3, i8* %25, align 8
  store i64 1, i64* %5, align 8
  %26 = bitcast %struct.kmp_depend_info* %20 to i8*
  %27 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %12, i8* %14, i32 1, i8* %26, i32 0, i8* null)
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i32 0, i32 0
  store i32* %2, i32** %28, align 8
  %29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i32 0, i32 1
  store i32* %1, i32** %29, align 8
  %30 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %12, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*))
  %31 = bitcast i8* %30 to %struct.kmp_task_t_with_privates.1*
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast %struct.anon.0* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %7, i64 0, i64 0
  %37 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i64 0
  %38 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 0
  %39 = ptrtoint i32* %1 to i64
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 1
  store i64 4, i64* %40, align 8
  %41 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 2
  store i8 1, i8* %41, align 8
  %42 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i64 1
  %43 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %42, i32 0, i32 0
  %44 = ptrtoint i32* %2 to i64
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %42, i32 0, i32 1
  store i64 4, i64* %45, align 8
  %46 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %42, i32 0, i32 2
  store i8 3, i8* %46, align 8
  store i64 2, i64* %8, align 8
  %47 = bitcast %struct.kmp_depend_info* %36 to i8*
  %48 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %12, i8* %30, i32 2, i8* %47, i32 0, i8* null)
  %49 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %12, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*))
  %50 = bitcast i8* %49 to %struct.kmp_task_t_with_privates.3*
  %51 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %50, i32 0, i32 0
  %52 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %10, i64 0, i64 0
  %53 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %52, i64 0
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 0
  %55 = ptrtoint i32* %1 to i64
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 1
  store i64 4, i64* %56, align 8
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 2
  store i8 1, i8* %57, align 8
  store i64 1, i64* %11, align 8
  %58 = bitcast %struct.kmp_depend_info* %52 to i8*
  call void @__kmpc_omp_wait_deps(%struct.ident_t* @1, i32 %12, i32 1, i8* %58, i32 0, i8* null)
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* @1, i32 %12, i8* %49)
  %59 = call i32 @.omp_task_entry..4(i32 %12, %struct.kmp_task_t_with_privates.3* %50) #2
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* @1, i32 %12, i8* %49)
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %12)
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon*
  %18 = bitcast %struct.kmp_task_t_with_privates* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store i32 %11, i32* %3, align 4, !noalias !14
  store i32* %14, i32** %4, align 8, !noalias !14
  store i8* null, i8** %5, align 8, !noalias !14
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !14
  store i8* %18, i8** %7, align 8, !noalias !14
  store %struct.anon* %17, %struct.anon** %8, align 8, !noalias !14
  %19 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !14
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #2

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.0*
  %18 = bitcast %struct.kmp_task_t_with_privates.1* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store i32 %11, i32* %3, align 4, !noalias !24
  store i32* %14, i32** %4, align 8, !noalias !24
  store i8* null, i8** %5, align 8, !noalias !24
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !24
  store i8* %18, i8** %7, align 8, !noalias !24
  store %struct.anon.0* %17, %struct.anon.0** %8, align 8, !noalias !24
  %19 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !24
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.2*
  %18 = bitcast %struct.kmp_task_t_with_privates.3* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  store i32 %11, i32* %3, align 4, !noalias !34
  store i32* %14, i32** %4, align 8, !noalias !34
  store i8* null, i8** %5, align 8, !noalias !34
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !34
  store i8* %18, i8** %7, align 8, !noalias !34
  store %struct.anon.2* %17, %struct.anon.2** %8, align 8, !noalias !34
  %19 = load %struct.anon.2*, %struct.anon.2** %8, align 8, !noalias !34
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*) #2

; Function Attrs: nounwind
declare void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..6(i32* noalias %0, i32* noalias %1) #6 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @foo()
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %6)
  br label %10

10:                                               ; preds = %9, %2
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %6)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !35 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { convergent nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !".omp_outlined.: argument 0"}
!7 = distinct !{!7, !".omp_outlined."}
!8 = !{!9}
!9 = distinct !{!9, !7, !".omp_outlined.: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !".omp_outlined.: argument 2"}
!12 = !{!13}
!13 = distinct !{!13, !7, !".omp_outlined.: argument 3"}
!14 = !{!6, !9, !11, !13}
!15 = !{!16}
!16 = distinct !{!16, !17, !".omp_outlined..1: argument 0"}
!17 = distinct !{!17, !".omp_outlined..1"}
!18 = !{!19}
!19 = distinct !{!19, !17, !".omp_outlined..1: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !17, !".omp_outlined..1: argument 2"}
!22 = !{!23}
!23 = distinct !{!23, !17, !".omp_outlined..1: argument 3"}
!24 = !{!16, !19, !21, !23}
!25 = !{!26}
!26 = distinct !{!26, !27, !".omp_outlined..3: argument 0"}
!27 = distinct !{!27, !".omp_outlined..3"}
!28 = !{!29}
!29 = distinct !{!29, !27, !".omp_outlined..3: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !27, !".omp_outlined..3: argument 2"}
!32 = !{!33}
!33 = distinct !{!33, !27, !".omp_outlined..3: argument 3"}
!34 = !{!26, !29, !31, !33}
!35 = !{!36}
!36 = !{i64 2, i64 -1, i64 -1, i1 true}
