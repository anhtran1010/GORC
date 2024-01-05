; ModuleID = 'dataracebench/DRB155-missingordered-orig-gpu-no.c'
source_filename = "dataracebench/DRB155-missingordered-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Data Race Present\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5, !llvm.loop !5

15:                                               ; preds = %5
  call void @__omp_offloading_10302_803f38_main_l28([100 x i32]* %2) #3
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %33

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %16, !llvm.loop !7

32:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f38_main_l28([100 x i32]* nonnull align 4 dereferenceable(400) %0) #1 {
  %2 = alloca [100 x i32]*, align 8
  store [100 x i32]* %0, [100 x i32]** %2, align 8
  %3 = load [100 x i32]*, [100 x i32]** %2, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x i32]* %3)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, [100 x i32]* nonnull align 4 dereferenceable(400) %2) #1 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [100 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store [100 x i32]* %2, [100 x i32]** %6, align 8
  %14 = load [100 x i32]*, [100 x i32]** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 98, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  call void @__kmpc_dispatch_init_4(%struct.ident_t* @1, i32 %16, i32 66, i32 0, i32 98, i32 1, i32 1)
  br label %17

17:                                               ; preds = %44, %3
  %18 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* @1, i32 %16, i32* %12, i32* %9, i32* %10, i32* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %40, %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 1
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %13, align 4
  call void @__kmpc_ordered(%struct.ident_t* @1, i32 %16)
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [100 x i32], [100 x i32]* %14, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  call void @__kmpc_end_ordered(%struct.ident_t* @1, i32 %16)
  br label %39

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* @1, i32 %16)
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43
  br label %17

45:                                               ; preds = %17
  ret void
}

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

; Function Attrs: convergent nounwind
declare void @__kmpc_ordered(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_ordered(%struct.ident_t*, i32) #2

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { nounwind }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
