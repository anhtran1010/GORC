; ModuleID = 'dataracebench/DRB097-target-teams-distribute-orig-no.c'
source_filename = "dataracebench/DRB097-target-teams-distribute-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"sum=%f sum2=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2560, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca double, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca double, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 2.000000e+00
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %18, i64 %31
  store double %29, double* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %34, 3.000000e+00
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %21, i64 %37
  store double %35, double* %38, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %22, !llvm.loop !5

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = bitcast i64* %14 to i32*
  store i32 %43, i32* %44, align 4
  %45 = load i64, i64* %14, align 8
  call void @__omp_offloading_10302_803f70_main_l65(double* %9, i64 %45, i64 %16, double* %18, i64 %20, double* %21) #3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %8, double* %10, i64 %16, double* %18, i64 %20, double* %21)
  %46 = load double, double* %9, align 8
  %47 = load double, double* %10, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %46, double %47)
  store i32 0, i32* %3, align 4
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f70_main_l65(double* nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, double* nonnull align 8 dereferenceable(8) %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5) #2 {
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double*, align 8
  %13 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @4)
  store double* %0, double** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store double* %3, double** %10, align 8
  store i64 %4, i64* %11, align 8
  store double* %5, double** %12, align 8
  %14 = load double*, double** %7, align 8
  %15 = bitcast i64* %8 to i32*
  %16 = load i64, i64* %9, align 8
  %17 = load double*, double** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load double*, double** %12, align 8
  call void @__kmpc_push_num_teams(%struct.ident_t* @4, i32 %13, i32 10, i32 256)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @4, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %15, double* %14, i64 %16, double* %17, i64 %18, double* %19)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, double* nonnull align 8 dereferenceable(8) %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5, i64 %6, double* nonnull align 8 dereferenceable(8) %7) #2 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double*, align 8
  %15 = alloca i64, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [1 x i8*], align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store double* %3, double** %12, align 8
  store i64 %4, i64* %13, align 8
  store double* %5, double** %14, align 8
  store i64 %6, i64* %15, align 8
  store double* %7, double** %16, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load double*, double** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load double*, double** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load double*, double** %16, align 8
  store double 0.000000e+00, double* %17, align 8
  %37 = load i32, i32* %31, align 4
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = sub i32 %38, -255
  %40 = udiv i32 %39, 256
  %41 = sub i32 %40, 1
  store i32 %41, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %8
  store i32 0, i32* %23, align 4
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %47, i32 92, i32* %26, i32* %23, i32* %24, i32* %25, i32 1, i32 1)
  %48 = load i32, i32* %24, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %21, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %24, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %24, align 4
  %57 = load i32, i32* %23, align 4
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %68, %55
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %24, align 4
  %61 = add i32 %60, 1
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %18, align 4
  %65 = mul i32 %64, 256
  %66 = add i32 0, %65
  store i32 %66, i32* %27, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %27, i32* %31, double* %17, i64 %33, double* %34, i64 %35, double* %36)
  br label %67

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %18, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %58

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %74)
  br label %75

75:                                               ; preds = %72, %8
  %76 = getelementptr inbounds [1 x i8*], [1 x i8*]* %28, i64 0, i64 0
  %77 = bitcast double* %17 to i8*
  store i8* %77, i8** %76, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = bitcast [1 x i8*]* %28 to i8*
  %81 = call i32 @__kmpc_reduce(%struct.ident_t* @3, i32 %79, i32 1, i64 8, i8* %80, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %81, label %103 [
    i32 1, label %82
    i32 2, label %86
  ]

82:                                               ; preds = %75
  %83 = load double, double* %32, align 8
  %84 = load double, double* %17, align 8
  %85 = fadd double %83, %84
  store double %85, double* %32, align 8
  call void @__kmpc_end_reduce(%struct.ident_t* @3, i32 %79, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %103

86:                                               ; preds = %75
  %87 = load double, double* %17, align 8
  %88 = bitcast double* %32 to i64*
  %89 = load atomic i64, i64* %88 monotonic, align 8
  br label %90

90:                                               ; preds = %90, %86
  %91 = phi i64 [ %89, %86 ], [ %100, %90 ]
  %92 = bitcast double* %29 to i64*
  %93 = bitcast i64 %91 to double
  store double %93, double* %30, align 8
  %94 = load double, double* %30, align 8
  %95 = load double, double* %17, align 8
  %96 = fadd double %94, %95
  store double %96, double* %29, align 8
  %97 = load i64, i64* %92, align 8
  %98 = bitcast double* %32 to i64*
  %99 = cmpxchg i64* %98, i64 %91, i64 %97 monotonic monotonic, align 8
  %100 = extractvalue { i64, i1 } %99, 0
  %101 = extractvalue { i64, i1 } %99, 1
  br i1 %101, label %102, label %90

102:                                              ; preds = %90
  call void @__kmpc_end_reduce(%struct.ident_t* @3, i32 %79, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %103

103:                                              ; preds = %102, %82, %75
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, double* nonnull align 8 dereferenceable(8) %4, i64 %5, double* nonnull align 8 dereferenceable(8) %6, i64 %7, double* nonnull align 8 dereferenceable(8) %8) #2 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i64, align 8
  %16 = alloca double*, align 8
  %17 = alloca i64, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca [1 x i8*], align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store double* %4, double** %14, align 8
  store i64 %5, i64* %15, align 8
  store double* %6, double** %16, align 8
  store i64 %7, i64* %17, align 8
  store double* %8, double** %18, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load double*, double** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load double*, double** %16, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load double*, double** %18, align 8
  %41 = load i32, i32* %34, align 4
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %34, align 4
  %43 = add nsw i32 %42, 256
  %44 = load i32, i32* %35, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %9
  %47 = load i32, i32* %34, align 4
  %48 = add nsw i32 %47, 256
  br label %51

49:                                               ; preds = %9
  %50 = load i32, i32* %35, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %48, %46 ], [ %50, %49 ]
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sub i32 %53, %54
  %56 = sub i32 %55, 1
  %57 = add i32 %56, 1
  %58 = udiv i32 %57, 1
  %59 = sub i32 %58, 1
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %21, align 4
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %135

64:                                               ; preds = %51
  store i32 0, i32* %25, align 4
  %65 = load i32, i32* %23, align 4
  store i32 %65, i32* %26, align 4
  store i32 1, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store double 0.000000e+00, double* %29, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @2, i32 %67, i32 34, i32* %28, i32* %25, i32* %26, i32* %27, i32 1, i32 1)
  %68 = load i32, i32* %26, align 4
  %69 = load i32, i32* %23, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %23, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %26, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  store i32 %76, i32* %26, align 4
  %77 = load i32, i32* %25, align 4
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %100, %75
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %26, align 4
  %81 = add i32 %80, 1
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %19, align 4
  %86 = mul i32 %85, 1
  %87 = add i32 %84, %86
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %38, i64 %89
  %91 = load double, double* %90, align 8
  %92 = load i32, i32* %30, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %40, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fmul double %91, %95
  %97 = load double, double* %29, align 8
  %98 = fadd double %97, %96
  store double %98, double* %29, align 8
  br label %99

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %19, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %78

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %106)
  %107 = getelementptr inbounds [1 x i8*], [1 x i8*]* %31, i64 0, i64 0
  %108 = bitcast double* %29 to i8*
  store i8* %108, i8** %107, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = bitcast [1 x i8*]* %31 to i8*
  %112 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %110, i32 1, i64 8, i8* %111, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %112, label %134 [
    i32 1, label %113
    i32 2, label %117
  ]

113:                                              ; preds = %104
  %114 = load double, double* %36, align 8
  %115 = load double, double* %29, align 8
  %116 = fadd double %114, %115
  store double %116, double* %36, align 8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %110, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %134

117:                                              ; preds = %104
  %118 = load double, double* %29, align 8
  %119 = bitcast double* %36 to i64*
  %120 = load atomic i64, i64* %119 monotonic, align 8
  br label %121

121:                                              ; preds = %121, %117
  %122 = phi i64 [ %120, %117 ], [ %131, %121 ]
  %123 = bitcast double* %32 to i64*
  %124 = bitcast i64 %122 to double
  store double %124, double* %33, align 8
  %125 = load double, double* %33, align 8
  %126 = load double, double* %29, align 8
  %127 = fadd double %125, %126
  store double %127, double* %32, align 8
  %128 = load i64, i64* %123, align 8
  %129 = bitcast double* %36 to i64*
  %130 = cmpxchg i64* %129, i64 %122, i64 %128 monotonic monotonic, align 8
  %131 = extractvalue { i64, i1 } %130, 0
  %132 = extractvalue { i64, i1 } %130, 1
  br i1 %132, label %133, label %121

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %113, %104
  br label %135

135:                                              ; preds = %134, %51
  ret void
}

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
  %11 = bitcast i8* %10 to double*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = load double, double* %11, align 8
  %17 = fadd double %15, %16
  store double %17, double* %14, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

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
  %11 = bitcast i8* %10 to double*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = load double, double* %11, align 8
  %17 = fadd double %15, %16
  store double %17, double* %14, align 8
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) #5

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #3

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, double* nonnull align 8 dereferenceable(8) %3, i64 %4, double* nonnull align 8 dereferenceable(8) %5, i64 %6, double* nonnull align 8 dereferenceable(8) %7) #2 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double*, align 8
  %15 = alloca i64, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca [1 x i8*], align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store double* %3, double** %12, align 8
  store i64 %4, i64* %13, align 8
  store double* %5, double** %14, align 8
  store i64 %6, i64* %15, align 8
  store double* %7, double** %16, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load double*, double** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load double*, double** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load double*, double** %16, align 8
  %37 = load i32, i32* %31, align 4
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = sub nsw i32 %38, 0
  %40 = sdiv i32 %39, 1
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  %45 = load i32, i32* %20, align 4
  store i32 %45, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store double 0.000000e+00, double* %26, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %47, i32 34, i32* %25, i32* %22, i32* %23, i32* %24, i32 1, i32 1)
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %20, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %23, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %22, align 4
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %78, %55
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %23, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %63, 1
  %65 = add nsw i32 0, %64
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %27, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %34, i64 %67
  %69 = load double, double* %68, align 8
  %70 = load i32, i32* %27, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %36, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %69, %73
  %75 = load double, double* %26, align 8
  %76 = fadd double %75, %74
  store double %76, double* %26, align 8
  br label %77

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %83, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %84)
  %85 = getelementptr inbounds [1 x i8*], [1 x i8*]* %28, i64 0, i64 0
  %86 = bitcast double* %26 to i8*
  store i8* %86, i8** %85, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = bitcast [1 x i8*]* %28 to i8*
  %90 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %88, i32 1, i64 8, i8* %89, void (i8*, i8*)* @.omp.reduction.reduction_func.4, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %90, label %112 [
    i32 1, label %91
    i32 2, label %95
  ]

91:                                               ; preds = %82
  %92 = load double, double* %32, align 8
  %93 = load double, double* %26, align 8
  %94 = fadd double %92, %93
  store double %94, double* %32, align 8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %88, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %112

95:                                               ; preds = %82
  %96 = load double, double* %26, align 8
  %97 = bitcast double* %32 to i64*
  %98 = load atomic i64, i64* %97 monotonic, align 8
  br label %99

99:                                               ; preds = %99, %95
  %100 = phi i64 [ %98, %95 ], [ %109, %99 ]
  %101 = bitcast double* %29 to i64*
  %102 = bitcast i64 %100 to double
  store double %102, double* %30, align 8
  %103 = load double, double* %30, align 8
  %104 = load double, double* %26, align 8
  %105 = fadd double %103, %104
  store double %105, double* %29, align 8
  %106 = load i64, i64* %101, align 8
  %107 = bitcast double* %32 to i64*
  %108 = cmpxchg i64* %107, i64 %100, i64 %106 monotonic monotonic, align 8
  %109 = extractvalue { i64, i1 } %108, 0
  %110 = extractvalue { i64, i1 } %108, 1
  br i1 %110, label %111, label %99

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %91, %82
  br label %113

113:                                              ; preds = %112, %8
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.4(i8* %0, i8* %1) #4 {
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
  %11 = bitcast i8* %10 to double*
  %12 = getelementptr inbounds [1 x i8*], [1 x i8*]* %6, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to double*
  %15 = load double, double* %14, align 8
  %16 = load double, double* %11, align 8
  %17 = fadd double %15, %16
  store double %17, double* %14, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
