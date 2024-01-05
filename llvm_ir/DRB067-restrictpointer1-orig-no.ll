; ModuleID = 'dataracebench/DRB067-restrictpointer1-orig-no.c'
source_filename = "dataracebench/DRB067-restrictpointer1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(double* noalias %0, double* noalias %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = bitcast i64* %8 to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %11, double** %4, double** %5)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i64 %2, double** nonnull align 8 dereferenceable(8) %3, double** nonnull align 8 dereferenceable(8) %4) #1 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double**, align 8
  %10 = alloca double**, align 8
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
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store double** %3, double*** %9, align 8
  store double** %4, double*** %10, align 8
  %22 = bitcast i64* %8 to i32*
  %23 = load double**, double*** %9, align 8
  %24 = load double**, double*** %10, align 8
  %25 = load i32, i32* %22, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub i32 %27, -1
  %29 = udiv i32 %28, 1
  %30 = sub i32 %29, 1
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sle i32 0, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %36, i32 34, i32* %19, i32* %16, i32* %17, i32* %18, i32 1, i32 1)
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %64, %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = mul i32 %52, 1
  %54 = add i32 0, %53
  store i32 %54, i32* %20, align 4
  %55 = load double*, double** %23, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double 0.000000e+00, double* %58, align 8
  %59 = load double*, double** %24, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double 0.000000e+00, double* %62, align 8
  br label %63

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %47

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %70)
  br label %71

71:                                               ; preds = %68, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  store i32 0, i32* %1, align 4
  store i32 1000, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = call noalias align 16 i8* @malloc(i64 %7) #2
  %9 = bitcast i8* %8 to double*
  store double* %9, double** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = call noalias align 16 i8* @malloc(i64 %12) #2
  %14 = bitcast i8* %13 to double*
  store double* %14, double** %4, align 8
  %15 = load double*, double** %3, align 8
  %16 = load double*, double** %4, align 8
  %17 = load i32, i32* %2, align 4
  call void @foo(double* %15, double* %16, i32 %17)
  %18 = load double*, double** %3, align 8
  %19 = bitcast double* %18 to i8*
  call void @free(i8* %19) #2
  %20 = load double*, double** %4, align 8
  %21 = bitcast double* %20 to i8*
  call void @free(i8* %21) #2
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
