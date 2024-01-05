; ModuleID = 'dataracebench/DRB107-taskgroup-orig-no.c'
source_filename = "dataracebench/DRB107-taskgroup-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"result=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"result==2\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"dataracebench/DRB107-taskgroup-orig-no.c\00", align 1
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
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2)
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %9

8:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

9:                                                ; preds = %7
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.anon, align 8
  %8 = alloca %struct.anon.0, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  call void @__kmpc_taskgroup(%struct.ident_t* @1, i32 %11)
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i32* %9, i32** %15, align 8
  %16 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %11, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %17 = bitcast i8* %16 to %struct.kmp_task_t_with_privates*
  %18 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast %struct.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %11, i8* %16)
  call void @__kmpc_end_taskgroup(%struct.ident_t* @1, i32 %11)
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 0
  store i32* %9, i32** %23, align 8
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %11, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast %struct.anon.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %11, i8* %24)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %11)
  br label %31

31:                                               ; preds = %14, %3
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %11)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_taskgroup(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_taskgroup(%struct.ident_t*, i32) #3

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
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #5

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
  %20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32 2, i32* %21, align 4
  ret i32 0
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !27 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

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
!28 = !{i64 2, i64 -1, i64 -1, i1 true}
