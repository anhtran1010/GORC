; ModuleID = 'dataracebench/DRB106-taskwaitmissing-orig-yes.c'
source_filename = "dataracebench/DRB106-taskwaitmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@input = dso_local global i32 10, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [42 x i8] c"Fib(%d)=%d (correct answer should be 55)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.anon, align 8
  %7 = alloca %struct.anon.0, align 8
  %8 = alloca i32, align 4
  %9 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  store i32* %4, i32** %15, align 8
  %16 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %9, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %17 = bitcast i8* %16 to %struct.kmp_task_t_with_privates*
  %18 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast %struct.anon* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 1
  %23 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %22, i32 0, i32 0
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %23, align 8
  %25 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %9, i8* %16)
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7, i32 0, i32 0
  store i32* %5, i32** %26, align 8
  %27 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %9, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %28 = bitcast i8* %27 to %struct.kmp_task_t_with_privates.1*
  %29 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast %struct.anon.0* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %33, i32 0, i32 0
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %34, align 8
  %36 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %9, i8* %27)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %9)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %14, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
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
  %28 = sub i32 %27, 1
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
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #3

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
  %28 = sub i32 %27, 2
  %29 = call i32 @fib(i32 %28) #3
  %30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %22, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32 %29, i32* %31, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %2)
  %3 = load i32, i32* @input, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..4(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #6 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @input, align 4
  %14 = call i32 @fib(i32 %13)
  store i32 %14, i32* %7, align 4
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %9)
  br label %15

15:                                               ; preds = %12, %3
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %9)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare !callback !25 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { convergent nounwind }
attributes #6 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!26 = !{i64 2, i64 -1, i64 -1, i1 true}
