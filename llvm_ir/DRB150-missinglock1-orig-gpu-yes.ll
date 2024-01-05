; ModuleID = 'dataracebench/DRB150-missinglock1-orig-gpu-yes.c'
source_filename = "dataracebench/DRB150-missinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.omp_lock_t, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  call void @omp_init_lock(%struct.omp_lock_t* %2)
  call void @__omp_offloading_10302_803f23_main_l26(%struct.omp_lock_t* %2, i32* %3) #3
  call void @omp_destroy_lock(%struct.omp_lock_t* %2)
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  ret i32 0
}

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f23_main_l26(%struct.omp_lock_t* nonnull align 8 dereferenceable(8) %0, i32* nonnull align 4 dereferenceable(4) %1) #2 {
  %3 = alloca %struct.omp_lock_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.omp_lock_t* %0, %struct.omp_lock_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.omp_lock_t*, %struct.omp_lock_t** %3, align 8
  %6 = load i32*, i32** %4, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %5, i32* %6)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %2, i32* nonnull align 4 dereferenceable(4) %3) #2 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.omp_lock_t*, align 8
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
  store %struct.omp_lock_t* %2, %struct.omp_lock_t** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.omp_lock_t*, %struct.omp_lock_t** %7, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 99, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %19, i32 92, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 99
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 99, %22 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %37, %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %34, i64 %36, %struct.omp_lock_t* %16, i32* %17)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  br label %28

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %19)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %4, i32* nonnull align 4 dereferenceable(4) %5) #2 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.omp_lock_t*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.omp_lock_t* %4, %struct.omp_lock_t** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.omp_lock_t*, %struct.omp_lock_t** %11, align 8
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 99, i32* %16, align 4
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %10, align 8
  %25 = trunc i64 %24 to i32
  store i32 %23, i32* %15, align 4
  store i32 %25, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %27, i32 34, i32* %18, i32* %15, i32* %16, i32* %17, i32 1, i32 1)
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 99
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  br label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %16, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 99, %30 ], [ %32, %31 ]
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %47, %33
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %41, 1
  %43 = add nsw i32 0, %42
  store i32 %43, i32* %19, align 4
  call void @omp_set_lock(%struct.omp_lock_t* %20)
  %44 = load i32, i32* %21, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %21, align 4
  call void @omp_unset_lock(%struct.omp_lock_t* %20)
  br label %46

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %36

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %27)
  ret void
}

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #1

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #1

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
