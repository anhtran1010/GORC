; ModuleID = 'dataracebench/DRB121-reduction-orig-no.c'
source_filename = "dataracebench/DRB121-reduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 @omp_get_max_threads()
  store i32 %12, i32* %8, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %9, i32* %10, i32* %6)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 20, %14
  %16 = icmp ne i32 %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 20, %22
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* %11, align 4
  ret i32 %26
}

declare dso_local i32 @omp_get_max_threads() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [1 x i8*], align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [1 x i8*], align 8
  %30 = alloca [1 x i8*], align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 4, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %35, i32 34, i32* %17, i32* %14, i32* %15, i32* %16, i32 1, i32 1)
  %36 = load i32, i32* %15, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  br label %41

39:                                               ; preds = %5
  %40 = load i32, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 4, %38 ], [ %40, %39 ]
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %56, %41
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, 1
  %51 = add nsw i32 0, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %44

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %35)
  %61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %20, i64 0, i64 0
  %62 = bitcast i32* %18 to i8*
  store i8* %62, i8** %61, align 8
  %63 = bitcast [1 x i8*]* %20 to i8*
  %64 = call i32 @__kmpc_reduce(%struct.ident_t* @2, i32 %35, i32 1, i64 8, i8* %63, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %64, label %72 [
    i32 1, label %65
    i32 2, label %69
  ]

65:                                               ; preds = %60
  %66 = load i32, i32* %31, align 4
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %31, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %35, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %18, align 4
  %71 = atomicrmw add i32* %31, i32 %70 monotonic, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %35, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %72

72:                                               ; preds = %69, %65, %60
  call void @__kmpc_barrier(%struct.ident_t* @3, i32 %35)
  store i32 0, i32* %23, align 4
  store i32 4, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %35, i32 34, i32* %26, i32* %23, i32* %24, i32* %25, i32 1, i32 1)
  %73 = load i32, i32* %24, align 4
  %74 = icmp sgt i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %24, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 4, %75 ], [ %77, %76 ]
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %23, align 4
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %93, %78
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %24, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, i32* %21, align 4
  %87 = mul nsw i32 %86, 1
  %88 = add nsw i32 0, %87
  store i32 %88, i32* %28, align 4
  %89 = load i32, i32* %28, align 4
  %90 = load i32, i32* %27, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %27, align 4
  br label %92

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %81

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %35)
  %98 = getelementptr inbounds [1 x i8*], [1 x i8*]* %29, i64 0, i64 0
  %99 = bitcast i32* %27 to i8*
  store i8* %99, i8** %98, align 8
  %100 = bitcast [1 x i8*]* %29 to i8*
  %101 = call i32 @__kmpc_reduce(%struct.ident_t* @2, i32 %35, i32 1, i64 8, i8* %100, void (i8*, i8*)* @.omp.reduction.reduction_func.1, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %101, label %109 [
    i32 1, label %102
    i32 2, label %106
  ]

102:                                              ; preds = %97
  %103 = load i32, i32* %32, align 4
  %104 = load i32, i32* %27, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %32, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %35, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %109

106:                                              ; preds = %97
  %107 = load i32, i32* %27, align 4
  %108 = atomicrmw add i32* %32, i32 %107 monotonic, align 4
  call void @__kmpc_end_reduce(%struct.ident_t* @2, i32 %35, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %109

109:                                              ; preds = %106, %102, %97
  call void @__kmpc_barrier(%struct.ident_t* @3, i32 %35)
  %110 = load i32, i32* %31, align 4
  %111 = load i32, i32* %32, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %11, align 4
  %113 = getelementptr inbounds [1 x i8*], [1 x i8*]* %30, i64 0, i64 0
  %114 = bitcast i32* %11 to i8*
  store i8* %114, i8** %113, align 8
  %115 = bitcast [1 x i8*]* %30 to i8*
  %116 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @2, i32 %35, i32 1, i64 8, i8* %115, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %116, label %124 [
    i32 1, label %117
    i32 2, label %121
  ]

117:                                              ; preds = %109
  %118 = load i32, i32* %33, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %33, align 4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @2, i32 %35, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %124

121:                                              ; preds = %109
  %122 = load i32, i32* %11, align 4
  %123 = atomicrmw add i32* %33, i32 %122 monotonic, align 4
  br label %124

124:                                              ; preds = %121, %117, %109
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to [1 x i8*]*
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to [1 x i8*]*
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #5

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.1(i8* %0, i8* %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to [1 x i8*]*
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to [1 x i8*]*
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to [1 x i8*]*
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to [1 x i8*]*
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %8, i64 0, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
