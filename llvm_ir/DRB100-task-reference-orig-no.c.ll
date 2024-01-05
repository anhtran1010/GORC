; ModuleID = 'dataracebench/DRB100-task-reference-orig-no.cpp'
source_filename = "dataracebench/DRB100-task-reference-orig-no.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

@a = dso_local global [100 x i32] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z8gen_taskRi(i32* nonnull align 4 dereferenceable(4) %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.anon, align 1
  %4 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32* %0, i32** %2, align 8
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %4, i32 1, i64 48, i64 1, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates*
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %8, i32 0, i32 0
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %9, align 8
  %12 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %4, i8* %5)
  ret void
}

; Function Attrs: noinline uwtable
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

; Function Attrs: noinline norecurse uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %11, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %12, align 8
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %12, align 8
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 1
  %21 = bitcast %struct..kmp_privates.t* %20 to i8*
  %22 = bitcast %struct.kmp_task_t_with_privates* %14 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store i32 %13, i32* %3, align 4, !noalias !14
  store i32* %16, i32** %4, align 8, !noalias !14
  store i8* %21, i8** %5, align 8, !noalias !14
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !14
  store i8* %22, i8** %7, align 8, !noalias !14
  store %struct.anon* %19, %struct.anon** %8, align 8, !noalias !14
  %23 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !14
  %24 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !14
  %25 = load i8*, i8** %5, align 8, !noalias !14
  %26 = bitcast void (i8*, ...)* %24 to void (i8*, i32**)*
  call void %26(i8* %25, i32** %9) #3
  %27 = load i32*, i32** %9, align 8, !noalias !14
  store i32* %27, i32** %10, align 8, !noalias !14
  %28 = load i32*, i32** %10, align 8, !noalias !14
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %10, align 8, !noalias !14
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %33
  store i32 %30, i32* %34, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #3

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %2)
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %14, %6
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %3, !llvm.loop !15

27:                                               ; preds = %3
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #5 {
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  call void @_Z8gen_taskRi(i32* nonnull align 4 dereferenceable(4) %7)
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %13, !llvm.loop !17

20:                                               ; preds = %13
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %9)
  br label %21

21:                                               ; preds = %20, %3
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %9)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #6

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #6

; Function Attrs: nounwind
declare !callback !18 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
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
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19}
!19 = !{i64 2, i64 -1, i64 -1, i1 true}
