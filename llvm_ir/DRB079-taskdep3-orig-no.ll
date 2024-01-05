; ModuleID = 'dataracebench/DRB079-taskdep3-orig-no.c'
source_filename = "dataracebench/DRB079-taskdep3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"j=%d k=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"j==1 && k==1\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"dataracebench/DRB079-taskdep3-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atomic_signal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = atomicrmw add i32* %3, i32 1 monotonic, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atomic_wait(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %10, %2
  %7 = call i32 @usleep(i32 100)
  %8 = load i32*, i32** %3, align 8
  %9 = load atomic i32, i32* %8 monotonic, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %6, label %14, !llvm.loop !5

14:                                               ; preds = %10
  ret void
}

declare dso_local i32 @usleep(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i32* %3, i32* %4)
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10, %0
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

15:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.anon, align 8
  %12 = alloca [1 x %struct.kmp_depend_info], align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.anon.0, align 8
  %15 = alloca [1 x %struct.kmp_depend_info], align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.anon.2, align 8
  %18 = alloca [1 x %struct.kmp_depend_info], align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32* %20, i32** %28, align 8
  %29 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %24, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %30 = bitcast i8* %29 to %struct.kmp_task_t_with_privates*
  %31 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast %struct.anon* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %12, i64 0, i64 0
  %36 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %35, i64 0
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 0
  %38 = ptrtoint i32* %20 to i64
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 1
  store i64 4, i64* %39, align 8
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 2
  store i8 3, i8* %40, align 8
  store i64 1, i64* %13, align 8
  %41 = bitcast %struct.kmp_depend_info* %35 to i8*
  %42 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %24, i8* %29, i32 1, i8* %41, i32 0, i8* null)
  %43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %14, i32 0, i32 0
  store i32* %21, i32** %43, align 8
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %14, i32 0, i32 1
  store i32* %20, i32** %44, align 8
  %45 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %24, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %46 = bitcast i8* %45 to %struct.kmp_task_t_with_privates.1*
  %47 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast %struct.anon.0* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %15, i64 0, i64 0
  %52 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %51, i64 0
  %53 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %52, i32 0, i32 0
  %54 = ptrtoint i32* %20 to i64
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %52, i32 0, i32 1
  store i64 4, i64* %55, align 8
  %56 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %52, i32 0, i32 2
  store i8 1, i8* %56, align 8
  store i64 1, i64* %16, align 8
  %57 = bitcast %struct.kmp_depend_info* %51 to i8*
  %58 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %24, i8* %45, i32 1, i8* %57, i32 0, i8* null)
  %59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %17, i32 0, i32 0
  store i32* %22, i32** %59, align 8
  %60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %17, i32 0, i32 1
  store i32* %20, i32** %60, align 8
  %61 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %24, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..5 to i32 (i32, i8*)*))
  %62 = bitcast i8* %61 to %struct.kmp_task_t_with_privates.3*
  %63 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast %struct.anon.2* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %18, i64 0, i64 0
  %68 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %67, i64 0
  %69 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 0
  %70 = ptrtoint i32* %20 to i64
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 1
  store i64 4, i64* %71, align 8
  %72 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %68, i32 0, i32 2
  store i8 1, i8* %72, align 8
  store i64 1, i64* %19, align 8
  %73 = bitcast %struct.kmp_depend_info* %67 to i8*
  %74 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %24, i8* %61, i32 1, i8* %73, i32 0, i8* null)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %24)
  br label %75

75:                                               ; preds = %27, %5
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %24)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #3

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store i32 %11, i32* %3, align 4, !noalias !16
  store i32* %14, i32** %4, align 8, !noalias !16
  store i8* null, i8** %5, align 8, !noalias !16
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !16
  store i8* %18, i8** %7, align 8, !noalias !16
  store %struct.anon* %17, %struct.anon** %8, align 8, !noalias !16
  %19 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !16
  %20 = call i32 @usleep(i32 10000) #5
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32 1, i32* %22, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #5

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  store i32 %11, i32* %3, align 4, !noalias !26
  store i32* %14, i32** %4, align 8, !noalias !26
  store i8* null, i8** %5, align 8, !noalias !26
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !26
  store i8* %18, i8** %7, align 8, !noalias !26
  store %struct.anon.0* %17, %struct.anon.0** %8, align 8, !noalias !26
  %19 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !26
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32 %22, i32* %24, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..5(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  store i32 %11, i32* %3, align 4, !noalias !36
  store i32* %14, i32** %4, align 8, !noalias !36
  store i8* null, i8** %5, align 8, !noalias !36
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !36
  store i8* %18, i8** %7, align 8, !noalias !36
  store %struct.anon.2* %17, %struct.anon.2** %8, align 8, !noalias !36
  %19 = load %struct.anon.2*, %struct.anon.2** %8, align 8, !noalias !36
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %19, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32 %22, i32* %24, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !37 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = distinct !{!8, !9, !".omp_outlined..1: argument 0"}
!9 = distinct !{!9, !".omp_outlined..1"}
!10 = !{!11}
!11 = distinct !{!11, !9, !".omp_outlined..1: argument 1"}
!12 = !{!13}
!13 = distinct !{!13, !9, !".omp_outlined..1: argument 2"}
!14 = !{!15}
!15 = distinct !{!15, !9, !".omp_outlined..1: argument 3"}
!16 = !{!8, !11, !13, !15}
!17 = !{!18}
!18 = distinct !{!18, !19, !".omp_outlined..2: argument 0"}
!19 = distinct !{!19, !".omp_outlined..2"}
!20 = !{!21}
!21 = distinct !{!21, !19, !".omp_outlined..2: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !19, !".omp_outlined..2: argument 2"}
!24 = !{!25}
!25 = distinct !{!25, !19, !".omp_outlined..2: argument 3"}
!26 = !{!18, !21, !23, !25}
!27 = !{!28}
!28 = distinct !{!28, !29, !".omp_outlined..4: argument 0"}
!29 = distinct !{!29, !".omp_outlined..4"}
!30 = !{!31}
!31 = distinct !{!31, !29, !".omp_outlined..4: argument 1"}
!32 = !{!33}
!33 = distinct !{!33, !29, !".omp_outlined..4: argument 2"}
!34 = !{!35}
!35 = distinct !{!35, !29, !".omp_outlined..4: argument 3"}
!36 = !{!28, !31, !33, !35}
!37 = !{!38}
!38 = !{i64 2, i64 -1, i64 -1, i1 true}
