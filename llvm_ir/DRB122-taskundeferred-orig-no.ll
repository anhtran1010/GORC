; ModuleID = 'dataracebench/DRB122-taskundeferred-orig-no.c'
source_filename = "dataracebench/DRB122-taskundeferred-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %7, i32* %6)
  %8 = load i32, i32* %6, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.anon, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %18, i32 34, i32* %12, i32* %9, i32* %10, i32* %11, i32 1, i32 1)
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %20, i32 %19, i32 0
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %47, %4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %46 [
    i32 0, label %29
  ]

29:                                               ; preds = %27
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  store i32* %16, i32** %34, align 8
  %35 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @2, i32 %18, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %36 = bitcast i8* %35 to %struct.kmp_task_t_with_privates*
  %37 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast %struct.anon* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* @2, i32 %18, i8* %35)
  %41 = call i32 @.omp_task_entry.(i32 %18, %struct.kmp_task_t_with_privates* %36) #3
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* @2, i32 %18, i8* %35)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %30, !llvm.loop !5

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %23

50:                                               ; preds = %23
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %18)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 {
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
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*) #3

; Function Attrs: nounwind
declare void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !17 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
