; ModuleID = 'dataracebench/DRB091-threadprivate2-orig-no.c'
source_filename = "dataracebench/DRB091-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4
@sum1 = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"dataracebench/DRB091-threadprivate2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %2, align 4
  store i32 0, i32* %4, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i32* %4, i32* @sum0)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* @sum1, align 4
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* @sum1, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %5, !llvm.loop !5

16:                                               ; preds = %5
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @sum1, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @sum1, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

25:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i32* nonnull align 4 dereferenceable(4) %4) #1 {
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
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = icmp ne i64 %24, ptrtoint (i32* @sum0 to i64)
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %23, align 4
  store i32 %27, i32* @sum0, align 4
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %30)
  %31 = load i32, i32* %21, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, 0
  %34 = sdiv i32 %33, 1
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %28
  store i32 0, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %41, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %17, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %64, %49
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %57, 1
  %59 = add nsw i32 0, %58
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* @sum0, align 4
  %61 = load i32, i32* %20, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* @sum0, align 4
  br label %63

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %70)
  br label %71

71:                                               ; preds = %68, %28
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  call void @__kmpc_barrier(%struct.ident_t* @1, i32 %73)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  call void @__kmpc_critical(%struct.ident_t* @3, i32 %75, [8 x i32]* @.gomp_critical_user_.var)
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* @sum0, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %22, align 4
  call void @__kmpc_end_critical(%struct.ident_t* @3, i32 %75, [8 x i32]* @.gomp_critical_user_.var)
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #2

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW4sum0() #6 comdat {
  ret i32* @sum0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { nounwind }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

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
