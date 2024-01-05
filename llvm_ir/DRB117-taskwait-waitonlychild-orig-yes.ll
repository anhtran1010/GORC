; ModuleID = 'dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c'
source_filename = "dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.anon.0 = type { [2 x i32]*, [4 x i32]* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %1, align 4
  call void @__kmpc_push_num_threads(%struct.ident_t* @1, i32 %5, i32 2)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [4 x i32]*, [2 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [4 x i32]* %2, [2 x i32]* %3, i32* %4)
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [4 x i32]* nonnull align 4 dereferenceable(16) %2, [2 x i32]* nonnull align 4 dereferenceable(8) %3, i32* nonnull align 4 dereferenceable(4) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32]*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.anon, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store [4 x i32]* %2, [4 x i32]** %8, align 8
  store [2 x i32]* %3, [2 x i32]** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load [4 x i32]*, [4 x i32]** %8, align 8
  %21 = load [2 x i32]*, [2 x i32]** %9, align 8
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  call void @__kmpc_dispatch_init_4(%struct.ident_t* @1, i32 %24, i32 1073741859, i32 0, i32 3, i32 1, i32 1)
  br label %25

25:                                               ; preds = %47, %5
  %26 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* @1, i32 %24, i32* %16, i32* %13, i32* %14, i32* %15)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %43, %28
  %31 = load i32, i32* %11, align 4, !llvm.access.group !5
  %32 = load i32, i32* %14, align 4, !llvm.access.group !5
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4, !llvm.access.group !5
  %36 = mul nsw i32 %35, 1
  %37 = add nsw i32 0, %36
  store i32 %37, i32* %17, align 4, !llvm.access.group !5
  %38 = load i32, i32* %17, align 4, !llvm.access.group !5
  %39 = load i32, i32* %17, align 4, !llvm.access.group !5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %40
  store i32 %38, i32* %41, align 4, !llvm.access.group !5
  store i32 2, i32* %18, align 4, !llvm.access.group !5
  br label %42

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4, !llvm.access.group !5
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4, !llvm.access.group !5
  br label %30, !llvm.loop !6

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  br label %25

48:                                               ; preds = %25
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %24)
  %49 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %24)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store [2 x i32]* %21, [2 x i32]** %52, align 8
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  store [4 x i32]* %20, [4 x i32]** %53, align 8
  %54 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %24, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %55 = bitcast i8* %54 to %struct.kmp_task_t_with_privates.1*
  %56 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast %struct.anon* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %24, i8* %54)
  %61 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %24)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %63, %65
  store i32 %66, i32* %22, align 4
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %24)
  br label %67

67:                                               ; preds = %51, %48
  call void @__kmpc_barrier(%struct.ident_t* @3, i32 %24)
  ret void
}

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #2

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
  %8 = alloca %struct.anon.0*, align 8
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
  %17 = bitcast i8* %16 to %struct.anon.0*
  %18 = bitcast %struct.kmp_task_t_with_privates* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  store i32 %11, i32* %3, align 4, !noalias !17
  store i32* %14, i32** %4, align 8, !noalias !17
  store i8* null, i8** %5, align 8, !noalias !17
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !17
  store i8* %18, i8** %7, align 8, !noalias !17
  store %struct.anon.0* %17, %struct.anon.0** %8, align 8, !noalias !17
  %19 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !17
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 1
  %21 = load [4 x i32]*, [4 x i32]** %20, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 1
  %25 = load [4 x i32]*, [4 x i32]** %24, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %30 = load [2 x i32]*, [2 x i32]** %29, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  store i32 %28, i32* %31, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #4

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca %struct.anon.0, align 8
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
  %18 = bitcast i8* %17 to %struct.anon*
  %19 = bitcast %struct.kmp_task_t_with_privates.1* %13 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  store i32 %12, i32* %3, align 4, !noalias !27
  store i32* %15, i32** %4, align 8, !noalias !27
  store i8* null, i8** %5, align 8, !noalias !27
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !27
  store i8* %19, i8** %7, align 8, !noalias !27
  store %struct.anon* %18, %struct.anon** %8, align 8, !noalias !27
  %20 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !27
  %21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %23 = load [2 x i32]*, [2 x i32]** %22, align 8
  store [2 x i32]* %23, [2 x i32]** %21, align 8, !noalias !27
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 1
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %26 = load [4 x i32]*, [4 x i32]** %25, align 8
  store [4 x i32]* %26, [4 x i32]** %24, align 8, !noalias !27
  %27 = load i32, i32* %3, align 4, !noalias !27
  %28 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %27, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #4
  %29 = bitcast i8* %28 to %struct.kmp_task_t_with_privates*
  %30 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast %struct.anon.0* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false) #4
  %34 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %27, i8* %28) #4
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %36 = load [4 x i32]*, [4 x i32]** %35, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %40 = load [4 x i32]*, [4 x i32]** %39, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %40, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %45 = load [2 x i32]*, [2 x i32]** %44, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i64 0, i64 0
  store i32 %43, i32* %46, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #4

; Function Attrs: nounwind
declare !callback !28 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

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
!5 = distinct !{}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.parallel_accesses", !5}
!8 = !{!9}
!9 = distinct !{!9, !10, !".omp_outlined..2: argument 0"}
!10 = distinct !{!10, !".omp_outlined..2"}
!11 = !{!12}
!12 = distinct !{!12, !10, !".omp_outlined..2: argument 1"}
!13 = !{!14}
!14 = distinct !{!14, !10, !".omp_outlined..2: argument 2"}
!15 = !{!16}
!16 = distinct !{!16, !10, !".omp_outlined..2: argument 3"}
!17 = !{!9, !12, !14, !16}
!18 = !{!19}
!19 = distinct !{!19, !20, !".omp_outlined..1: argument 0"}
!20 = distinct !{!20, !".omp_outlined..1"}
!21 = !{!22}
!22 = distinct !{!22, !20, !".omp_outlined..1: argument 1"}
!23 = !{!24}
!24 = distinct !{!24, !20, !".omp_outlined..1: argument 2"}
!25 = !{!26}
!26 = distinct !{!26, !20, !".omp_outlined..1: argument 3"}
!27 = !{!19, !22, !24, !26}
!28 = !{!29}
!29 = !{i64 2, i64 -1, i64 -1, i1 true}
