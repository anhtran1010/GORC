; ModuleID = 'dataracebench/DRB053-inneronly1-orig-no.c'
source_filename = "dataracebench/DRB053-inneronly1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x [20 x double]], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %8, i64 0, i64 0
  %10 = bitcast [20 x double]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 3200, i1 false)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %15, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 19
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [20 x [20 x double]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [20 x [20 x double]]* %8, i32* %6)
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %11, !llvm.loop !5

18:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [20 x [20 x double]]* nonnull align 8 dereferenceable(3200) %2, i32* nonnull align 4 dereferenceable(4) %3) #2 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [20 x [20 x double]]*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store [20 x [20 x double]]* %2, [20 x [20 x double]]** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load [20 x [20 x double]]*, [20 x [20 x double]]** %7, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 19, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 19, %22 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 1
  %35 = add nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %16, i64 0, i64 %38
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [20 x double], [20 x double]* %39, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %16, i64 0, i64 %45
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [20 x double], [20 x double]* %46, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fadd double %50, %43
  store double %51, double* %49, align 8
  br label %52

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %19)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
