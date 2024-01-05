; ModuleID = 'dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c'
source_filename = "dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.2 = type { i32* }
%struct.anon.4 = type { i32*, i32* }
%struct.anon.6 = type { i32*, i32* }
%struct.anon.8 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.5 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.7 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.9 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %4, i32* %2, i32* %3, i32* %5)
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5) #1 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.anon, align 8
  %14 = alloca [1 x %struct.kmp_depend_info], align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.anon.0, align 8
  %17 = alloca [1 x %struct.kmp_depend_info], align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.anon.2, align 8
  %20 = alloca [1 x %struct.kmp_depend_info], align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.anon.4, align 8
  %23 = alloca [2 x %struct.kmp_depend_info], align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.anon.6, align 8
  %26 = alloca [2 x %struct.kmp_depend_info], align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.anon.8, align 8
  %29 = alloca [1 x %struct.kmp_depend_info], align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %143

39:                                               ; preds = %6
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  store i32* %31, i32** %40, align 8
  %41 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %42 = bitcast i8* %41 to %struct.kmp_task_t_with_privates*
  %43 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast %struct.anon* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %14, i64 0, i64 0
  %48 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %47, i64 0
  %49 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 0
  %50 = ptrtoint i32* %31 to i64
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 1
  store i64 4, i64* %51, align 8
  %52 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 2
  store i8 3, i8* %52, align 8
  store i64 1, i64* %15, align 8
  %53 = bitcast %struct.kmp_depend_info* %47 to i8*
  %54 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %41, i32 1, i8* %53, i32 0, i8* null)
  %55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %16, i32 0, i32 0
  store i32* %32, i32** %55, align 8
  %56 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %57 = bitcast i8* %56 to %struct.kmp_task_t_with_privates.1*
  %58 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast %struct.anon.0* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 8, i1 false)
  %62 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %17, i64 0, i64 0
  %63 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %62, i64 0
  %64 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %63, i32 0, i32 0
  %65 = ptrtoint i32* %32 to i64
  store i64 %65, i64* %64, align 8
  %66 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %63, i32 0, i32 1
  store i64 4, i64* %66, align 8
  %67 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %63, i32 0, i32 2
  store i8 3, i8* %67, align 8
  store i64 1, i64* %18, align 8
  %68 = bitcast %struct.kmp_depend_info* %62 to i8*
  %69 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %56, i32 1, i8* %68, i32 0, i8* null)
  %70 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 0
  store i32* %33, i32** %70, align 8
  %71 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %72 = bitcast i8* %71 to %struct.kmp_task_t_with_privates.3*
  %73 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast %struct.anon.2* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  %77 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %20, i64 0, i64 0
  %78 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %77, i64 0
  %79 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %78, i32 0, i32 0
  %80 = ptrtoint i32* %33 to i64
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %78, i32 0, i32 1
  store i64 4, i64* %81, align 8
  %82 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %78, i32 0, i32 2
  store i8 3, i8* %82, align 8
  store i64 1, i64* %21, align 8
  %83 = bitcast %struct.kmp_depend_info* %77 to i8*
  %84 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %71, i32 1, i8* %83, i32 0, i8* null)
  %85 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %22, i32 0, i32 0
  store i32* %31, i32** %85, align 8
  %86 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %22, i32 0, i32 1
  store i32* %32, i32** %86, align 8
  %87 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..7 to i32 (i32, i8*)*))
  %88 = bitcast i8* %87 to %struct.kmp_task_t_with_privates.5*
  %89 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast %struct.anon.4* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %23, i64 0, i64 0
  %94 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %93, i64 0
  %95 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 0
  %96 = ptrtoint i32* %32 to i64
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 1
  store i64 4, i64* %97, align 8
  %98 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 2
  store i8 1, i8* %98, align 8
  %99 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %93, i64 1
  %100 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 0
  %101 = ptrtoint i32* %31 to i64
  store i64 %101, i64* %100, align 8
  %102 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 1
  store i64 4, i64* %102, align 8
  %103 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 2
  store i8 4, i8* %103, align 8
  store i64 2, i64* %24, align 8
  %104 = bitcast %struct.kmp_depend_info* %93 to i8*
  %105 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %87, i32 2, i8* %104, i32 0, i8* null)
  %106 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %25, i32 0, i32 0
  store i32* %31, i32** %106, align 8
  %107 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %25, i32 0, i32 1
  store i32* %33, i32** %107, align 8
  %108 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.7*)* @.omp_task_entry..9 to i32 (i32, i8*)*))
  %109 = bitcast i8* %108 to %struct.kmp_task_t_with_privates.7*
  %110 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast %struct.anon.6* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %26, i64 0, i64 0
  %115 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %114, i64 0
  %116 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %115, i32 0, i32 0
  %117 = ptrtoint i32* %33 to i64
  store i64 %117, i64* %116, align 8
  %118 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %115, i32 0, i32 1
  store i64 4, i64* %118, align 8
  %119 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %115, i32 0, i32 2
  store i8 1, i8* %119, align 8
  %120 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %114, i64 1
  %121 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %120, i32 0, i32 0
  %122 = ptrtoint i32* %31 to i64
  store i64 %122, i64* %121, align 8
  %123 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %120, i32 0, i32 1
  store i64 4, i64* %123, align 8
  %124 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %120, i32 0, i32 2
  store i8 4, i8* %124, align 8
  store i64 2, i64* %27, align 8
  %125 = bitcast %struct.kmp_depend_info* %114 to i8*
  %126 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %108, i32 2, i8* %125, i32 0, i8* null)
  %127 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %28, i32 0, i32 0
  store i32* %34, i32** %127, align 8
  %128 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %28, i32 0, i32 1
  store i32* %31, i32** %128, align 8
  %129 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %36, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.9*)* @.omp_task_entry..11 to i32 (i32, i8*)*))
  %130 = bitcast i8* %129 to %struct.kmp_task_t_with_privates.9*
  %131 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = bitcast %struct.anon.8* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false)
  %135 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %29, i64 0, i64 0
  %136 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %135, i64 0
  %137 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %136, i32 0, i32 0
  %138 = ptrtoint i32* %31 to i64
  store i64 %138, i64* %137, align 8
  %139 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %136, i32 0, i32 1
  store i64 4, i64* %139, align 8
  %140 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %136, i32 0, i32 2
  store i8 1, i8* %140, align 8
  store i64 1, i64* %30, align 8
  %141 = bitcast %struct.kmp_depend_info* %135 to i8*
  %142 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %36, i8* %129, i32 1, i8* %141, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %36)
  br label %143

143:                                              ; preds = %39, %6
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %36)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 {
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
  store i32 1, i32* %21, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #4

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 {
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
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32 2, i32* %21, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 {
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
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32 3, i32* %21, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..7(i32 %0, %struct.kmp_task_t_with_privates.5* noalias %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.4*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.5*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.5* %1, %struct.kmp_task_t_with_privates.5** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.5*, %struct.kmp_task_t_with_privates.5** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.4*
  %18 = bitcast %struct.kmp_task_t_with_privates.5* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  store i32 %11, i32* %3, align 4, !noalias !44
  store i32* %14, i32** %4, align 8, !noalias !44
  store i8* null, i8** %5, align 8, !noalias !44
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !44
  store i8* %18, i8** %7, align 8, !noalias !44
  store %struct.anon.4* %17, %struct.anon.4** %8, align 8, !noalias !44
  %19 = load %struct.anon.4*, %struct.anon.4** %8, align 8, !noalias !44
  %20 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..9(i32 %0, %struct.kmp_task_t_with_privates.7* noalias %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.7*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.7* %1, %struct.kmp_task_t_with_privates.7** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.7*, %struct.kmp_task_t_with_privates.7** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.6*
  %18 = bitcast %struct.kmp_task_t_with_privates.7* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  store i32 %11, i32* %3, align 4, !noalias !54
  store i32* %14, i32** %4, align 8, !noalias !54
  store i8* null, i8** %5, align 8, !noalias !54
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !54
  store i8* %18, i8** %7, align 8, !noalias !54
  store %struct.anon.6* %17, %struct.anon.6** %8, align 8, !noalias !54
  %19 = load %struct.anon.6*, %struct.anon.6** %8, align 8, !noalias !54
  %20 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..11(i32 %0, %struct.kmp_task_t_with_privates.9* noalias %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.9*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.9* %1, %struct.kmp_task_t_with_privates.9** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.9*, %struct.kmp_task_t_with_privates.9** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.8*
  %18 = bitcast %struct.kmp_task_t_with_privates.9* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  store i32 %11, i32* %3, align 4, !noalias !64
  store i32* %14, i32** %4, align 8, !noalias !64
  store i8* null, i8** %5, align 8, !noalias !64
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !64
  store i8* %18, i8** %7, align 8, !noalias !64
  store %struct.anon.8* %17, %struct.anon.8** %8, align 8, !noalias !64
  %19 = load %struct.anon.8*, %struct.anon.8** %8, align 8, !noalias !64
  %20 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32 %22, i32* %24, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !65 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !".omp_outlined..1: argument 0"}
!7 = distinct !{!7, !".omp_outlined..1"}
!8 = !{!9}
!9 = distinct !{!9, !7, !".omp_outlined..1: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !".omp_outlined..1: argument 2"}
!12 = !{!13}
!13 = distinct !{!13, !7, !".omp_outlined..1: argument 3"}
!14 = !{!6, !9, !11, !13}
!15 = !{!16}
!16 = distinct !{!16, !17, !".omp_outlined..2: argument 0"}
!17 = distinct !{!17, !".omp_outlined..2"}
!18 = !{!19}
!19 = distinct !{!19, !17, !".omp_outlined..2: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !17, !".omp_outlined..2: argument 2"}
!22 = !{!23}
!23 = distinct !{!23, !17, !".omp_outlined..2: argument 3"}
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
!36 = distinct !{!36, !37, !".omp_outlined..6: argument 0"}
!37 = distinct !{!37, !".omp_outlined..6"}
!38 = !{!39}
!39 = distinct !{!39, !37, !".omp_outlined..6: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !37, !".omp_outlined..6: argument 2"}
!42 = !{!43}
!43 = distinct !{!43, !37, !".omp_outlined..6: argument 3"}
!44 = !{!36, !39, !41, !43}
!45 = !{!46}
!46 = distinct !{!46, !47, !".omp_outlined..8: argument 0"}
!47 = distinct !{!47, !".omp_outlined..8"}
!48 = !{!49}
!49 = distinct !{!49, !47, !".omp_outlined..8: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !47, !".omp_outlined..8: argument 2"}
!52 = !{!53}
!53 = distinct !{!53, !47, !".omp_outlined..8: argument 3"}
!54 = !{!46, !49, !51, !53}
!55 = !{!56}
!56 = distinct !{!56, !57, !".omp_outlined..10: argument 0"}
!57 = distinct !{!57, !".omp_outlined..10"}
!58 = !{!59}
!59 = distinct !{!59, !57, !".omp_outlined..10: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !57, !".omp_outlined..10: argument 2"}
!62 = !{!63}
!63 = distinct !{!63, !57, !".omp_outlined..10: argument 3"}
!64 = !{!56, !59, !61, !63}
!65 = !{!66}
!66 = !{i64 2, i64 -1, i64 -1, i1 true}
