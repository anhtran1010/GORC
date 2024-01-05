; ModuleID = 'dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c'
source_filename = "dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
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
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  %4 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.anon, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  call void @__kmpc_taskgroup(%struct.ident_t* @1, i32 %9)
  %13 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %9, i32 1, i64 80, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %14 = bitcast i8* %13 to %struct.kmp_task_t_with_privates*
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 6
  store i64 9999, i64* %17, align 8
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 7
  store i64 1, i64* %18, align 8
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 9
  %20 = bitcast i8** %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  %21 = load i64, i64* %18, align 8
  call void @__kmpc_taskloop(%struct.ident_t* @1, i32 %9, i8* %13, i32 1, i64* %16, i64* %17, i64 %21, i32 1, i32 0, i64 0, i8* null)
  call void @__kmpc_end_taskgroup(%struct.ident_t* @1, i32 %9)
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %9)
  br label %22

22:                                               ; preds = %12, %2
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %9)
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
  %17 = alloca i32, align 4
  %18 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %17, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %18, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %18, align 8
  %21 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.anon*
  %26 = bitcast %struct.kmp_task_t_with_privates* %20 to i8*
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %21, i32 0, i32 9
  %36 = load i8*, i8** %35, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store i32 %19, i32* %3, align 4, !noalias !16
  store i32* %22, i32** %4, align 8, !noalias !16
  store i8* null, i8** %5, align 8, !noalias !16
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !16
  store i8* %26, i8** %7, align 8, !noalias !16
  store i64 %28, i64* %8, align 8, !noalias !16
  store i64 %30, i64* %9, align 8, !noalias !16
  store i64 %32, i64* %10, align 8, !noalias !16
  store i32 %34, i32* %11, align 4, !noalias !16
  store i8* %36, i8** %12, align 8, !noalias !16
  store %struct.anon* %25, %struct.anon** %13, align 8, !noalias !16
  %37 = load %struct.anon*, %struct.anon** %13, align 8, !noalias !16
  %38 = load i64, i64* %8, align 8, !noalias !16
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %16, align 4, !noalias !16
  br label %40

40:                                               ; preds = %45, %2
  %41 = load i32, i32* %16, align 4, !noalias !16
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8, !noalias !16
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %16, align 4, !noalias !16
  %47 = sdiv i32 %46, 100
  store i32 %47, i32* %14, align 4, !noalias !16
  %48 = load i32, i32* %16, align 4, !noalias !16
  %49 = load i32, i32* %16, align 4, !noalias !16
  %50 = sdiv i32 %49, 100
  %51 = mul nsw i32 %50, 100
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %15, align 4, !noalias !16
  %53 = load i32, i32* %14, align 4, !noalias !16
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %54
  %56 = load i32, i32* %15, align 4, !noalias !16
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %16, align 4, !noalias !16
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %16, align 4, !noalias !16
  br label %40

63:                                               ; preds = %40
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !17 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!14 = !{!15}
!15 = distinct !{!15, !7, !".omp_outlined..1: argument 4"}
!16 = !{!6, !9, !11, !13, !15}
!17 = !{!18}
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
