; ModuleID = 'dataracebench/DRB095-doall2-taskloop-orig-yes.c'
source_filename = "dataracebench/DRB095-doall2-taskloop-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %3)
  %4 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.anon, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i32* %9, i32** %15, align 8
  call void @__kmpc_taskgroup(%struct.ident_t* @1, i32 %11)
  %16 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %11, i32 1, i64 80, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %17 = bitcast i8* %16 to %struct.kmp_task_t_with_privates*
  %18 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast %struct.anon* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 6
  store i64 99, i64* %23, align 8
  %24 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 7
  store i64 1, i64* %24, align 8
  %25 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %18, i32 0, i32 9
  %26 = bitcast i8** %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 8, i1 false)
  %27 = load i64, i64* %24, align 8
  call void @__kmpc_taskloop(%struct.ident_t* @1, i32 %11, i8* %16, i32 1, i64* %22, i64* %23, i64 %27, i32 1, i32 0, i64 0, i8* null)
  call void @__kmpc_end_taskgroup(%struct.ident_t* @1, i32 %11)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %11)
  br label %28

28:                                               ; preds = %14, %3
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %11)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_taskgroup(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_taskgroup(%struct.ident_t*, i32) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.anon*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %16, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %17, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %17, align 8
  %20 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.anon*
  %25 = bitcast %struct.kmp_task_t_with_privates* %19 to i8*
  %26 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %20, i32 0, i32 9
  %35 = load i8*, i8** %34, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store i32 %18, i32* %3, align 4, !noalias !16
  store i32* %21, i32** %4, align 8, !noalias !16
  store i8* null, i8** %5, align 8, !noalias !16
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !16
  store i8* %25, i8** %7, align 8, !noalias !16
  store i64 %27, i64* %8, align 8, !noalias !16
  store i64 %29, i64* %9, align 8, !noalias !16
  store i64 %31, i64* %10, align 8, !noalias !16
  store i32 %33, i32* %11, align 4, !noalias !16
  store i8* %35, i8** %12, align 8, !noalias !16
  store %struct.anon* %24, %struct.anon** %13, align 8, !noalias !16
  %36 = load %struct.anon*, %struct.anon** %13, align 8, !noalias !16
  %37 = load i64, i64* %8, align 8, !noalias !16
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4, !noalias !16
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  br label %41

41:                                               ; preds = %62, %2
  %42 = load i32, i32* %15, align 4, !noalias !16
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %9, align 8, !noalias !16
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4, !noalias !16
  store i32 %47, i32* %14, align 4, !noalias !16
  store i32 0, i32* %40, align 4
  br label %48

48:                                               ; preds = %51, %46
  %49 = load i32, i32* %40, align 4
  %50 = icmp slt i32 %49, 100
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4, !noalias !16
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %53
  %55 = load i32, i32* %40, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100 x i32], [100 x i32]* %54, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %40, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %40, align 4
  br label %48, !llvm.loop !17

62:                                               ; preds = %48
  %63 = load i32, i32* %15, align 4, !noalias !16
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4, !noalias !16
  br label %41

65:                                               ; preds = %41
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !19 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!6 = distinct !{!6, !7, !".omp_outlined..1: argument 0"}
!7 = distinct !{!7, !".omp_outlined..1"}
!8 = !{!9}
!9 = distinct !{!9, !7, !".omp_outlined..1: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !".omp_outlined..1: argument 2"}
!12 = !{!13}
!13 = distinct !{!13, !7, !".omp_outlined..1: argument 3"}
!14 = !{!15}
!15 = distinct !{!15, !7, !".omp_outlined..1: argument 4"}
!16 = !{!6, !9, !11, !13, !15}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20}
!20 = !{i64 2, i64 -1, i64 -1, i1 true}
