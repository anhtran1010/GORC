; ModuleID = 'dataracebench/DRB176-fib-taskdep-no.c'
source_filename = "dataracebench/DRB176-fib-taskdep-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.3 = type { i32*, i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }
%struct.kmp_task_t_with_privates.4 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"fib(%i) = %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.anon, align 8
  %8 = alloca [1 x %struct.kmp_depend_info], align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.anon.0, align 8
  %11 = alloca [1 x %struct.kmp_depend_info], align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.anon.3, align 8
  %14 = alloca [2 x %struct.kmp_depend_info], align 8
  %15 = alloca i64, align 8
  %16 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %2, align 4
  br label %82

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i32* %4, i32** %22, align 8
  %23 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %16, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %24 = bitcast i8* %23 to %struct.kmp_task_t_with_privates*
  %25 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast %struct.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %24, i32 0, i32 1
  %30 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %29, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0
  %33 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i64 0
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 0
  %35 = ptrtoint i32* %4 to i64
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 1
  store i64 4, i64* %36, align 8
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 2
  store i8 3, i8* %37, align 8
  store i64 1, i64* %9, align 8
  %38 = bitcast %struct.kmp_depend_info* %32 to i8*
  %39 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %16, i8* %23, i32 1, i8* %38, i32 0, i8* null)
  %40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0
  store i32* %5, i32** %40, align 8
  %41 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %16, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %42 = bitcast i8* %41 to %struct.kmp_task_t_with_privates.1*
  %43 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast %struct.anon.0* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %42, i32 0, i32 1
  %48 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %47, i32 0, i32 0
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %11, i64 0, i64 0
  %51 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %50, i64 0
  %52 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 0
  %53 = ptrtoint i32* %5 to i64
  store i64 %53, i64* %52, align 8
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 1
  store i64 4, i64* %54, align 8
  %55 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i32 0, i32 2
  store i8 3, i8* %55, align 8
  store i64 1, i64* %12, align 8
  %56 = bitcast %struct.kmp_depend_info* %50 to i8*
  %57 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %16, i8* %41, i32 1, i8* %56, i32 0, i8* null)
  %58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 0
  store i32* %6, i32** %58, align 8
  %59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 1
  store i32* %4, i32** %59, align 8
  %60 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %13, i32 0, i32 2
  store i32* %5, i32** %60, align 8
  %61 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %16, i32 1, i64 40, i64 24, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.4*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %62 = bitcast i8* %61 to %struct.kmp_task_t_with_privates.4*
  %63 = getelementptr inbounds %struct.kmp_task_t_with_privates.4, %struct.kmp_task_t_with_privates.4* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast %struct.anon.3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  %67 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %14, i64 0, i64 0
  %68 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i64 0
  %69 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 0
  %70 = ptrtoint i32* %4 to i64
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 1
  store i64 4, i64* %71, align 8
  %72 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 2
  store i8 1, i8* %72, align 8
  %73 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i64 1
  %74 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %73, i32 0, i32 0
  %75 = ptrtoint i32* %5 to i64
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %73, i32 0, i32 1
  store i64 4, i64* %76, align 8
  %77 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %73, i32 0, i32 2
  store i8 1, i8* %77, align 8
  store i64 2, i64* %15, align 8
  %78 = bitcast %struct.kmp_depend_info* %67 to i8*
  %79 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %16, i8* %61, i32 2, i8* %78, i32 0, i8* null)
  %80 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %16)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %21, %19
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #1 {
  %3 = alloca %struct..kmp_privates.t*, align 8
  %4 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %3, align 8
  %6 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %5, i32 0, i32 0
  %7 = load i32**, i32*** %4, align 8
  store i32* %6, i32** %7, align 8
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %11, align 8
  %14 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 1
  %20 = bitcast %struct..kmp_privates.t* %19 to i8*
  %21 = bitcast %struct.kmp_task_t_with_privates* %13 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store i32 %12, i32* %3, align 4, !noalias !14
  store i32* %15, i32** %4, align 8, !noalias !14
  store i8* %20, i8** %5, align 8, !noalias !14
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !14
  store i8* %21, i8** %7, align 8, !noalias !14
  store %struct.anon* %18, %struct.anon** %8, align 8, !noalias !14
  %22 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !14
  %23 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !14
  %24 = load i8*, i8** %5, align 8, !noalias !14
  %25 = bitcast void (i8*, ...)* %23 to void (i8*, i32**)*
  call void %25(i8* %24, i32** %9) #3
  %26 = load i32*, i32** %9, align 8, !noalias !14
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @fib(i32 %28) #3
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32 %29, i32* %31, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #1 {
  %3 = alloca %struct..kmp_privates.t.2*, align 8
  %4 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %3, align 8
  store i32** %1, i32*** %4, align 8
  %5 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %3, align 8
  %6 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %5, i32 0, i32 0
  %7 = load i32**, i32*** %4, align 8
  store i32* %6, i32** %7, align 8
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.0*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %10, align 4
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %11, align 8
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %11, align 8
  %14 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.anon.0*
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %13, i32 0, i32 1
  %20 = bitcast %struct..kmp_privates.t.2* %19 to i8*
  %21 = bitcast %struct.kmp_task_t_with_privates.1* %13 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store i32 %12, i32* %3, align 4, !noalias !24
  store i32* %15, i32** %4, align 8, !noalias !24
  store i8* %20, i8** %5, align 8, !noalias !24
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !24
  store i8* %21, i8** %7, align 8, !noalias !24
  store %struct.anon.0* %18, %struct.anon.0** %8, align 8, !noalias !24
  %22 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !24
  %23 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !24
  %24 = load i8*, i8** %5, align 8, !noalias !24
  %25 = bitcast void (i8*, ...)* %23 to void (i8*, i32**)*
  call void %25(i8* %24, i32** %9) #3
  %26 = load i32*, i32** %9, align 8, !noalias !24
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 2
  %29 = call i32 @fib(i32 %28) #3
  %30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %22, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32 %29, i32* %31, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.4* noalias %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.3*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.4*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.4* %1, %struct.kmp_task_t_with_privates.4** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.4*, %struct.kmp_task_t_with_privates.4** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.4, %struct.kmp_task_t_with_privates.4* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.3*
  %18 = bitcast %struct.kmp_task_t_with_privates.4* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  store i32 %11, i32* %3, align 4, !noalias !34
  store i32* %14, i32** %4, align 8, !noalias !34
  store i8* null, i8** %5, align 8, !noalias !34
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !34
  store i8* %18, i8** %7, align 8, !noalias !34
  store %struct.anon.3* %17, %struct.anon.3** %8, align 8, !noalias !34
  %19 = load %struct.anon.3*, %struct.anon.3** %8, align 8, !noalias !34
  %20 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %19, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %19, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32 %26, i32* %28, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #10
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %9, %2
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* %6)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..6(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #7 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %14, i32 34, i32* %10, i32* %7, i32* %8, i32* %9, i32 1, i32 1)
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  %17 = select i1 %16, i32 %15, i32 0
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %30 [
    i32 0, label %25
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @fib(i32 %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %23
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %19

34:                                               ; preds = %19
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %14)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @printf(i8*, ...) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !35 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { convergent nounwind }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly willreturn }

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
!26 = distinct !{!26, !27, !".omp_outlined..4: argument 0"}
!27 = distinct !{!27, !".omp_outlined..4"}
!28 = !{!29}
!29 = distinct !{!29, !27, !".omp_outlined..4: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !27, !".omp_outlined..4: argument 2"}
!32 = !{!33}
!33 = distinct !{!33, !27, !".omp_outlined..4: argument 3"}
!34 = !{!26, !29, !31, !33}
!35 = !{!36}
!36 = !{i64 2, i64 -1, i64 -1, i1 true}
