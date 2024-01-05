; ModuleID = 'dataracebench/DRB149-missingdata1-orig-gpu-no.c'
source_filename = "dataracebench/DRB149-missingdata1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local global i32* null, align 8
@b = dso_local global i32* null, align 8
@c = dso_local global i32* null, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Data Race\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call noalias align 16 i8* @malloc(i64 400) #3
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** @a, align 8
  %7 = call noalias align 16 i8* @malloc(i64 40000) #3
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** @b, align 8
  %9 = call noalias align 16 i8* @malloc(i64 400) #3
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @c, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %38, %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %26, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32*, i32** @b, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 %21, 100
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %15, !llvm.loop !5

29:                                               ; preds = %15
  %30 = load i32*, i32** @a, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 1, i32* %33, align 4
  %34 = load i32*, i32** @c, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %11, !llvm.loop !7

41:                                               ; preds = %11
  %42 = load i32*, i32** @c, align 8
  %43 = load i32*, i32** @b, align 8
  %44 = load i32*, i32** @a, align 8
  call void @__omp_offloading_10302_803f6a_main_l36(i32* %42, i32* %43, i32* %44) #3
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %58, %41
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 100
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32*, i32** @c, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 100
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %68

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %45, !llvm.loop !8

61:                                               ; preds = %45
  %62 = load i32*, i32** @a, align 8
  %63 = bitcast i32* %62 to i8*
  call void @free(i8* %63) #3
  %64 = load i32*, i32** @b, align 8
  %65 = bitcast i32* %64 to i8*
  call void @free(i8* %65) #3
  %66 = load i32*, i32** @c, align 8
  %67 = bitcast i32* %66 to i8*
  call void @free(i8* %67) #3
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f6a_main_l36(i32* %0, i32* %1, i32* %2) #2 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32** %4, i32** %5, i32** %6)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32** nonnull align 8 dereferenceable(8) %2, i32** nonnull align 8 dereferenceable(8) %3, i32** nonnull align 8 dereferenceable(8) %4) #2 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32** %4, i32*** %10, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = load i32**, i32*** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 99, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %22, i32 92, i32* %16, i32* %13, i32* %14, i32* %15, i32 1, i32 1)
  %23 = load i32, i32* %14, align 4
  %24 = icmp sgt i32 %23, 99
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 99, %25 ], [ %27, %26 ]
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %40, %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32**, i32**, i32**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i64 %37, i64 %39, i32** %18, i32** %19, i32** %20)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %31

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %22)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i64 %2, i64 %3, i32** nonnull align 8 dereferenceable(8) %4, i32** nonnull align 8 dereferenceable(8) %5, i32** nonnull align 8 dereferenceable(8) %6) #2 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %23 = load i32**, i32*** %12, align 8
  %24 = load i32**, i32*** %13, align 8
  %25 = load i32**, i32*** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 99, i32* %18, align 4
  %26 = load i64, i64* %10, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  store i32 %27, i32* %17, align 4
  store i32 %29, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %31, i32 34, i32* %20, i32* %17, i32* %18, i32* %19, i32 1, i32 1)
  %32 = load i32, i32* %18, align 4
  %33 = icmp sgt i32 %32, 99
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  br label %37

35:                                               ; preds = %7
  %36 = load i32, i32* %18, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 99, %34 ], [ %36, %35 ]
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %77, %37
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = mul nsw i32 %45, 1
  %47 = add nsw i32 0, %46
  store i32 %47, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %48

48:                                               ; preds = %72, %44
  %49 = load i32, i32* %22, align 4
  %50 = icmp slt i32 %49, 100
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32*, i32** %24, align 8
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %21, align 4
  %55 = mul nsw i32 %54, 100
  %56 = add nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %25, align 8
  %61 = load i32, i32* %22, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i32*, i32** %23, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %22, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  br label %48, !llvm.loop !9

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %40

80:                                               ; preds = %40
  br label %81

81:                                               ; preds = %80
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %31)
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
