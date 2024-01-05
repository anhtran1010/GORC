; ModuleID = 'dataracebench/DRB118-nestlock-orig-no.c'
source_filename = "dataracebench/DRB118-nestlock-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incr_a(%struct.pair* %0) #0 {
  %2 = alloca %struct.pair*, align 8
  store %struct.pair* %0, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %2, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incr_b(%struct.pair* %0) #0 {
  %2 = alloca %struct.pair*, align 8
  store %struct.pair* %0, %struct.pair** %2, align 8
  %3 = load %struct.pair*, %struct.pair** %2, align 8
  %4 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 2
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %4)
  %5 = load %struct.pair*, %struct.pair** %2, align 8
  %6 = getelementptr inbounds %struct.pair, %struct.pair* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.pair*, %struct.pair** %2, align 8
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 2
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %10)
  ret void
}

declare dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #1

declare dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1 x %struct.pair], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.pair, %struct.pair* %7, i32 0, i32 0
  store i32 0, i32* %8, align 16
  %9 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.pair, %struct.pair* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.pair, %struct.pair* %11, i32 0, i32 2
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %12)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %6)
  %13 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.pair, %struct.pair* %13, i32 0, i32 2
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %14)
  %15 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %6, i64 0, i64 0
  %16 = getelementptr inbounds %struct.pair, %struct.pair* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret i32 0
}

declare dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [1 x %struct.pair]* nonnull align 8 dereferenceable(16) %2) #2 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x %struct.pair]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store [1 x %struct.pair]* %2, [1 x %struct.pair]** %6, align 8
  %12 = load [1 x %struct.pair]*, [1 x %struct.pair]** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %14, i32 34, i32* %10, i32* %7, i32* %8, i32* %9, i32 1, i32 1)
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 1
  %17 = select i1 %16, i32 %15, i32 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %35, %3
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %34 [
    i32 0, label %25
    i32 1, label %32
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.pair, %struct.pair* %26, i32 0, i32 2
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %27)
  %28 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %12, i64 0, i64 0
  call void @incr_b(%struct.pair* %28)
  %29 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %12, i64 0, i64 0
  call void @incr_a(%struct.pair* %29)
  %30 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %12, i64 0, i64 0
  %31 = getelementptr inbounds %struct.pair, %struct.pair* %30, i32 0, i32 2
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %31)
  br label %34

32:                                               ; preds = %23
  %33 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %12, i64 0, i64 0
  call void @incr_b(%struct.pair* %33)
  br label %34

34:                                               ; preds = %32, %25, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %19

38:                                               ; preds = %19
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %14)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
