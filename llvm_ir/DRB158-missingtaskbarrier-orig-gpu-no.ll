; ModuleID = 'dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c'
source_filename = "dataracebench/DRB158-missingtaskbarrier-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@a = dso_local global float 0.000000e+00, align 4
@x = dso_local global [64 x float] zeroinitializer, align 16
@y = dso_local global [64 x float] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [20 x i8] c"Data Race Detected\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 64
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  store float 5.000000e+00, float* @a, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %10
  store float 0.000000e+00, float* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %13
  store float 3.000000e+00, float* %14, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %5, !llvm.loop !5

18:                                               ; preds = %5
  call void @__omp_offloading_10302_803f68_main_l30([64 x float]* @x) #4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fcmp une float %26, 3.000000e+00
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %36

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19, !llvm.loop !7

34:                                               ; preds = %19
  %35 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* @1, i32 %4)
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f68_main_l30([64 x float]* nonnull align 4 dereferenceable(256) %0) #1 {
  %2 = alloca [64 x float]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.anon, align 1
  %5 = alloca [1 x %struct.kmp_depend_info], align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.anon.0, align 1
  %8 = alloca [1 x %struct.kmp_depend_info], align 8
  %9 = alloca i64, align 8
  %10 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store [64 x float]* %0, [64 x float]** %2, align 8
  %11 = load [64 x float]*, [64 x float]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 64
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %10, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %17 = bitcast i8* %16 to %struct.kmp_task_t_with_privates*
  %18 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %17, i32 0, i32 1
  %20 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %19, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %5, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %24
  %26 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %22, i64 0
  %27 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i32 0, i32 0
  %28 = ptrtoint float* %25 to i64
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i32 0, i32 1
  store i64 4, i64* %29, align 8
  %30 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %26, i32 0, i32 2
  store i8 3, i8* %30, align 8
  store i64 1, i64* %6, align 8
  %31 = bitcast %struct.kmp_depend_info* %22 to i8*
  %32 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %10, i8* %16, i32 1, i8* %31, i32 0, i8* null)
  %33 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %10, i32 1, i64 48, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %34 = bitcast i8* %33 to %struct.kmp_task_t_with_privates.1*
  %35 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %34, i32 0, i32 1
  %37 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %36, i32 0, i32 0
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %8, i64 0, i64 0
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [64 x float], [64 x float]* %11, i64 0, i64 %41
  %43 = getelementptr %struct.kmp_depend_info, %struct.kmp_depend_info* %39, i64 0
  %44 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 0
  %45 = ptrtoint float* %42 to i64
  store i64 %45, i64* %44, align 8
  %46 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 1
  store i64 4, i64* %46, align 8
  %47 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %43, i32 0, i32 2
  store i8 3, i8* %47, align 8
  store i64 1, i64* %9, align 8
  %48 = bitcast %struct.kmp_depend_info* %39 to i8*
  %49 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* @1, i32 %10, i8* %33, i32 1, i8* %48, i32 0, i8* null)
  br label %50

50:                                               ; preds = %15
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %12, !llvm.loop !8

53:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 {
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
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !9)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  store i32 %12, i32* %3, align 4, !noalias !18
  store i32* %15, i32** %4, align 8, !noalias !18
  store i8* %20, i8** %5, align 8, !noalias !18
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !18
  store i8* %21, i8** %7, align 8, !noalias !18
  store %struct.anon* %18, %struct.anon** %8, align 8, !noalias !18
  %22 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !18
  %23 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !18
  %24 = load i8*, i8** %5, align 8, !noalias !18
  %25 = bitcast void (i8*, ...)* %23 to void (i8*, i32**)*
  call void %25(i8* %24, i32** %9) #4
  %26 = load i32*, i32** %9, align 8, !noalias !18
  %27 = load float, float* @a, align 4
  %28 = load i32, i32* %26, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fmul float %27, %31
  %33 = load i32, i32* %26, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %34
  store float %32, float* %35, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #4

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #2 {
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
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  store i32 %12, i32* %3, align 4, !noalias !28
  store i32* %15, i32** %4, align 8, !noalias !28
  store i8* %20, i8** %5, align 8, !noalias !28
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), void (i8*, ...)** %6, align 8, !noalias !28
  store i8* %21, i8** %7, align 8, !noalias !28
  store %struct.anon.0* %18, %struct.anon.0** %8, align 8, !noalias !28
  %22 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !28
  %23 = load void (i8*, ...)*, void (i8*, ...)** %6, align 8, !noalias !28
  %24 = load i8*, i8** %5, align 8, !noalias !28
  %25 = bitcast void (i8*, ...)* %23 to void (i8*, i32**)*
  call void %25(i8* %24, i32** %9) #4
  %26 = load i32*, i32** %9, align 8, !noalias !28
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load i32, i32* %26, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x float], [64 x float]* @y, i64 0, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fadd float %30, %34
  %36 = load i32, i32* %26, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [64 x float], [64 x float]* @x, i64 0, i64 %37
  store float %35, float* %38, align 4
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = !{!10}
!10 = distinct !{!10, !11, !".omp_outlined.: argument 0"}
!11 = distinct !{!11, !".omp_outlined."}
!12 = !{!13}
!13 = distinct !{!13, !11, !".omp_outlined.: argument 1"}
!14 = !{!15}
!15 = distinct !{!15, !11, !".omp_outlined.: argument 2"}
!16 = !{!17}
!17 = distinct !{!17, !11, !".omp_outlined.: argument 3"}
!18 = !{!10, !13, !15, !17}
!19 = !{!20}
!20 = distinct !{!20, !21, !".omp_outlined..1: argument 0"}
!21 = distinct !{!21, !".omp_outlined..1"}
!22 = !{!23}
!23 = distinct !{!23, !21, !".omp_outlined..1: argument 1"}
!24 = !{!25}
!25 = distinct !{!25, !21, !".omp_outlined..1: argument 2"}
!26 = !{!27}
!27 = distinct !{!27, !21, !".omp_outlined..1: argument 3"}
!28 = !{!20, !23, !25, !27}
