; ModuleID = 'dataracebench/DRB058-jacobikernel-orig-no.c'
source_filename = "dataracebench/DRB058-jacobikernel-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@f = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@uold = dso_local global [200 x [200 x double]] zeroinitializer, align 16
@dx = dso_local global double 0.000000e+00, align 8
@dy = dso_local global double 0.000000e+00, align 8
@n = dso_local global i32 200, align 4
@m = dso_local global i32 200, align 4
@mits = dso_local global i32 1000, align 4
@tol = dso_local global double 1.000000e-10, align 8
@relax = dso_local global double 1.000000e+00, align 8
@alpha = dso_local global double 5.430000e-02, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [31 x i8] c"Total Number of Iterations:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Residual:%E\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @n, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dx, align 8
  %9 = load i32, i32* @m, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 2.000000e+00, %11
  store double %12, double* @dy, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %81, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @n, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %77, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @m, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %18
  %23 = load double, double* @dx, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sitofp i32 %25 to double
  %27 = fmul double %23, %26
  %28 = fadd double -1.000000e+00, %27
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = load double, double* @dy, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sitofp i32 %32 to double
  %34 = fmul double %30, %33
  %35 = fadd double -1.000000e+00, %34
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %38
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [200 x double], [200 x double]* %39, i64 0, i64 %41
  store double 0.000000e+00, double* %42, align 8
  %43 = load double, double* @alpha, align 8
  %44 = fmul double -1.000000e+00, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = fsub double 1.000000e+00, %48
  %50 = fmul double %44, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sitofp i32 %53 to double
  %55 = fsub double 1.000000e+00, %54
  %56 = fmul double %50, %55
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sitofp i32 %59 to double
  %61 = fsub double 1.000000e+00, %60
  %62 = fmul double 2.000000e+00, %61
  %63 = fsub double %56, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sitofp i32 %66 to double
  %68 = fsub double 1.000000e+00, %67
  %69 = fmul double 2.000000e+00, %68
  %70 = fsub double %63, %69
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %72
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [200 x double], [200 x double]* %73, i64 0, i64 %75
  store double %70, double* %76, align 8
  br label %77

77:                                               ; preds = %22
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %18, !llvm.loop !5

80:                                               ; preds = %18
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %13, !llvm.loop !7

84:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jacobi() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = load double, double* @relax, align 8
  store double %10, double* %1, align 8
  %11 = load i32, i32* @n, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sitofp i32 %12 to double
  %14 = fdiv double 2.000000e+00, %13
  store double %14, double* @dx, align 8
  %15 = load i32, i32* @m, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sitofp i32 %16 to double
  %18 = fdiv double 2.000000e+00, %17
  store double %18, double* @dy, align 8
  %19 = load double, double* @dx, align 8
  %20 = load double, double* @dx, align 8
  %21 = fmul double %19, %20
  %22 = fdiv double 1.000000e+00, %21
  store double %22, double* %7, align 8
  %23 = load double, double* @dy, align 8
  %24 = load double, double* @dy, align 8
  %25 = fmul double %23, %24
  %26 = fdiv double 1.000000e+00, %25
  store double %26, double* %8, align 8
  %27 = load double, double* @dx, align 8
  %28 = load double, double* @dx, align 8
  %29 = fmul double %27, %28
  %30 = fdiv double -2.000000e+00, %29
  %31 = load double, double* @dy, align 8
  %32 = load double, double* @dy, align 8
  %33 = fmul double %31, %32
  %34 = fdiv double 2.000000e+00, %33
  %35 = fsub double %30, %34
  %36 = load double, double* @alpha, align 8
  %37 = fsub double %35, %36
  store double %37, double* %9, align 8
  %38 = load double, double* @tol, align 8
  %39 = fmul double 1.000000e+01, %38
  store double %39, double* %5, align 8
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %44, %0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @mits, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  store double 0.000000e+00, double* %5, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @4, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*, double*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %5, double* %7, double* %8, double* %9, double* %1)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load double, double* %5, align 8
  %48 = call double @sqrt(double %47) #2
  %49 = load i32, i32* @n, align 4
  %50 = load i32, i32* @m, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %48, %52
  store double %53, double* %5, align 8
  br label %40, !llvm.loop !8

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load double, double* %5, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %57)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, double* nonnull align 8 dereferenceable(8) %2, double* nonnull align 8 dereferenceable(8) %3, double* nonnull align 8 dereferenceable(8) %4, double* nonnull align 8 dereferenceable(8) %5, double* nonnull align 8 dereferenceable(8) %6) #1 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  %41 = alloca [1 x i8*], align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store double* %2, double** %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store double* %6, double** %14, align 8
  %44 = load double*, double** %10, align 8
  %45 = load double*, double** %11, align 8
  %46 = load double*, double** %12, align 8
  %47 = load double*, double** %13, align 8
  %48 = load double*, double** %14, align 8
  %49 = load i32, i32* @n, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %50, 0
  %52 = sdiv i32 %51, 1
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 0, %54
  br i1 %55, label %56, label %108

56:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %59, i32 34, i32* %23, i32* %20, i32* %21, i32* %22, i32 1, i32 1)
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %18, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %21, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %20, align 4
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %101, %67
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = mul nsw i32 %75, 1
  %77 = add nsw i32 0, %76
  store i32 %77, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %78

78:                                               ; preds = %96, %74
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* @m, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %84
  %86 = load i32, i32* %25, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [200 x double], [200 x double]* %85, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load i32, i32* %24, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %91
  %93 = load i32, i32* %25, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [200 x double], [200 x double]* %92, i64 0, i64 %94
  store double %89, double* %95, align 8
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %25, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %25, align 4
  br label %78, !llvm.loop !9

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %70

104:                                              ; preds = %70
  br label %105

105:                                              ; preds = %104
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %107)
  br label %108

108:                                              ; preds = %105, %7
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  call void @__kmpc_barrier(%struct.ident_t* @2, i32 %110)
  %111 = load i32, i32* @n, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %29, align 4
  %113 = load i32, i32* %29, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sdiv i32 %114, 1
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %30, align 4
  store i32 1, i32* %31, align 4
  %117 = load i32, i32* %29, align 4
  %118 = icmp slt i32 1, %117
  br i1 %118, label %119, label %268

119:                                              ; preds = %108
  store i32 0, i32* %32, align 4
  %120 = load i32, i32* %30, align 4
  store i32 %120, i32* %33, align 4
  store i32 1, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store double 0.000000e+00, double* %39, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %121, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %122, i32 34, i32* %35, i32* %32, i32* %33, i32* %34, i32 1, i32 1)
  %123 = load i32, i32* %33, align 4
  %124 = load i32, i32* %30, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %30, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %33, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  store i32 %131, i32* %33, align 4
  %132 = load i32, i32* %32, align 4
  store i32 %132, i32* %27, align 4
  br label %133

133:                                              ; preds = %233, %130
  %134 = load i32, i32* %27, align 4
  %135 = load i32, i32* %33, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %236

137:                                              ; preds = %133
  %138 = load i32, i32* %27, align 4
  %139 = mul nsw i32 %138, 1
  %140 = add nsw i32 1, %139
  store i32 %140, i32* %36, align 4
  store i32 1, i32* %37, align 4
  br label %141

141:                                              ; preds = %228, %137
  %142 = load i32, i32* %37, align 4
  %143 = load i32, i32* @m, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %231

146:                                              ; preds = %141
  %147 = load double, double* %45, align 8
  %148 = load i32, i32* %36, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %150
  %152 = load i32, i32* %37, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [200 x double], [200 x double]* %151, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load i32, i32* %36, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %158
  %160 = load i32, i32* %37, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [200 x double], [200 x double]* %159, i64 0, i64 %161
  %163 = load double, double* %162, align 8
  %164 = fadd double %155, %163
  %165 = fmul double %147, %164
  %166 = load double, double* %46, align 8
  %167 = load i32, i32* %36, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %168
  %170 = load i32, i32* %37, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [200 x double], [200 x double]* %169, i64 0, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load i32, i32* %36, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %176
  %178 = load i32, i32* %37, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [200 x double], [200 x double]* %177, i64 0, i64 %180
  %182 = load double, double* %181, align 8
  %183 = fadd double %174, %182
  %184 = fmul double %166, %183
  %185 = fadd double %165, %184
  %186 = load double, double* %47, align 8
  %187 = load i32, i32* %36, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %188
  %190 = load i32, i32* %37, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [200 x double], [200 x double]* %189, i64 0, i64 %191
  %193 = load double, double* %192, align 8
  %194 = fmul double %186, %193
  %195 = fadd double %185, %194
  %196 = load i32, i32* %36, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %197
  %199 = load i32, i32* %37, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [200 x double], [200 x double]* %198, i64 0, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fsub double %195, %202
  %204 = load double, double* %47, align 8
  %205 = fdiv double %203, %204
  store double %205, double* %38, align 8
  %206 = load i32, i32* %36, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @uold, i64 0, i64 %207
  %209 = load i32, i32* %37, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [200 x double], [200 x double]* %208, i64 0, i64 %210
  %212 = load double, double* %211, align 8
  %213 = load double, double* %48, align 8
  %214 = load double, double* %38, align 8
  %215 = fmul double %213, %214
  %216 = fsub double %212, %215
  %217 = load i32, i32* %36, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %218
  %220 = load i32, i32* %37, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [200 x double], [200 x double]* %219, i64 0, i64 %221
  store double %216, double* %222, align 8
  %223 = load double, double* %39, align 8
  %224 = load double, double* %38, align 8
  %225 = load double, double* %38, align 8
  %226 = fmul double %224, %225
  %227 = fadd double %223, %226
  store double %227, double* %39, align 8
  br label %228

228:                                              ; preds = %146
  %229 = load i32, i32* %37, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %37, align 4
  br label %141, !llvm.loop !10

231:                                              ; preds = %141
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %27, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %27, align 4
  br label %133

236:                                              ; preds = %133
  br label %237

237:                                              ; preds = %236
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %238, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %239)
  %240 = getelementptr inbounds [1 x i8*], [1 x i8*]* %41, i64 0, i64 0
  %241 = bitcast double* %39 to i8*
  store i8* %241, i8** %240, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %242, align 4
  %244 = bitcast [1 x i8*]* %41 to i8*
  %245 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* @3, i32 %243, i32 1, i64 8, i8* %244, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var)
  switch i32 %245, label %267 [
    i32 1, label %246
    i32 2, label %250
  ]

246:                                              ; preds = %237
  %247 = load double, double* %44, align 8
  %248 = load double, double* %39, align 8
  %249 = fadd double %247, %248
  store double %249, double* %44, align 8
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* @3, i32 %243, [8 x i32]* @.gomp_critical_user_.reduction.var)
  br label %267

250:                                              ; preds = %237
  %251 = load double, double* %39, align 8
  %252 = bitcast double* %44 to i64*
  %253 = load atomic i64, i64* %252 monotonic, align 8
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi i64 [ %253, %250 ], [ %264, %254 ]
  %256 = bitcast double* %42 to i64*
  %257 = bitcast i64 %255 to double
  store double %257, double* %43, align 8
  %258 = load double, double* %43, align 8
  %259 = load double, double* %39, align 8
  %260 = fadd double %258, %259
  store double %260, double* %42, align 8
  %261 = load i64, i64* %256, align 8
  %262 = bitcast double* %44 to i64*
  %263 = cmpxchg i64* %262, i64 %255, i64 %261 monotonic monotonic, align 8
  %264 = extractvalue { i64, i1 } %263, 0
  %265 = extractvalue { i64, i1 } %263, 1
  br i1 %265, label %266, label %254

266:                                              ; preds = %254
  br label %267

267:                                              ; preds = %266, %246, %237
  br label %268

268:                                              ; preds = %267, %108
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) #3

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
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @initialize()
  call void @jacobi()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { convergent nounwind }
attributes #4 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
