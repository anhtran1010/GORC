; ModuleID = 'dataracebench/DRB055-jacobi2d-parallel-no.c'
source_filename = "dataracebench/DRB055-jacobi2d-parallel-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [500 x [500 x double]]*, align 8
  %9 = alloca [500 x [500 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 500, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %10 = call i8* @polybench_alloc_data(i64 250000, i32 8)
  %11 = bitcast i8* %10 to [500 x [500 x double]]*
  store [500 x [500 x double]]* %11, [500 x [500 x double]]** %8, align 8
  %12 = call i8* @polybench_alloc_data(i64 250000, i32 8)
  %13 = bitcast i8* %12 to [500 x [500 x double]]*
  store [500 x [500 x double]]* %13, [500 x [500 x double]]** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %16 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %15, i64 0, i64 0
  %17 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %18 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %17, i64 0, i64 0
  call void @init_array(i32 %14, [500 x double]* %16, [500 x double]* %18)
  %19 = call i32 (...) @polybench_timer_start()
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %23 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %22, i64 0, i64 0
  %24 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %25 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %24, i64 0, i64 0
  call void @kernel_jacobi_2d_imper(i32 %20, i32 %21, [500 x double]* %23, [500 x double]* %25)
  %26 = call i32 (...) @polybench_timer_stop()
  %27 = call i32 (...) @polybench_timer_print()
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 42
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %39 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* %38, i64 0, i64 0
  call void @print_array(i32 %37, [500 x double]* %39)
  br label %40

40:                                               ; preds = %36, %30, %2
  %41 = load [500 x [500 x double]]*, [500 x [500 x double]]** %8, align 8
  %42 = bitcast [500 x [500 x double]]* %41 to i8*
  call void @free(i8* %42) #5
  %43 = load [500 x [500 x double]]*, [500 x [500 x double]]** %9, align 8
  %44 = bitcast [500 x [500 x double]]* %43 to i8*
  call void @free(i8* %44) #5
  ret i32 0
}

declare dso_local i8* @polybench_alloc_data(i64, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_array(i32 %0, [500 x double]* %1, [500 x double]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [500 x double]*, align 8
  %6 = alloca [500 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store [500 x double]* %1, [500 x double]** %5, align 8
  store [500 x double]* %2, [500 x double]** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %4, [500 x double]** %5, [500 x double]** %6)
  br label %12

12:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @polybench_timer_start(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_jacobi_2d_imper(i32 %0, i32 %1, [500 x double]* %2, [500 x double]* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [500 x double]*, align 8
  %8 = alloca [500 x double]*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [500 x double]* %2, [500 x double]** %7, align 8
  store [500 x double]* %3, [500 x double]** %8, align 8
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %58, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sle i32 %13, 498
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load [500 x double]*, [500 x double]** %7, align 8
  %17 = getelementptr inbounds [500 x double], [500 x double]* %16, i64 1
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [500 x double], [500 x double]* %17, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load [500 x double]*, [500 x double]** %7, align 8
  %23 = getelementptr inbounds [500 x double], [500 x double]* %22, i64 1
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [500 x double], [500 x double]* %23, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fadd double %21, %28
  %30 = load [500 x double]*, [500 x double]** %7, align 8
  %31 = getelementptr inbounds [500 x double], [500 x double]* %30, i64 1
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [500 x double], [500 x double]* %31, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fadd double %29, %36
  %38 = load [500 x double]*, [500 x double]** %7, align 8
  %39 = getelementptr inbounds [500 x double], [500 x double]* %38, i64 2
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [500 x double], [500 x double]* %39, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fadd double %37, %43
  %45 = load [500 x double]*, [500 x double]** %7, align 8
  %46 = getelementptr inbounds [500 x double], [500 x double]* %45, i64 0
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [500 x double], [500 x double]* %46, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fadd double %44, %50
  %52 = fmul double 2.000000e-01, %51
  %53 = load [500 x double]*, [500 x double]** %8, align 8
  %54 = getelementptr inbounds [500 x double], [500 x double]* %53, i64 1
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [500 x double], [500 x double]* %54, i64 0, i64 %56
  store double %52, double* %57, align 8
  br label %58

58:                                               ; preds = %15
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %12, !llvm.loop !5

61:                                               ; preds = %12
  store i32 2, i32* %11, align 4
  br label %62

62:                                               ; preds = %289, %61
  %63 = load i32, i32* %11, align 4
  %64 = icmp sle i32 %63, 525
  br i1 %64, label %65, label %292

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp sle i32 %66, 28
  br i1 %67, label %68, label %204

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %70, 1
  %72 = srem i32 %71, 3
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %203

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 %76, 1
  %78 = mul nsw i32 %77, 3
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 %82, 1
  %84 = sub nsw i32 0, %83
  %85 = sdiv i32 %84, 3
  %86 = sub nsw i32 0, %85
  br label %94

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  %91 = add nsw i32 %90, 3
  %92 = sub nsw i32 %91, 1
  %93 = sdiv i32 %92, 3
  br label %94

94:                                               ; preds = %87, %80
  %95 = phi i32 [ %86, %80 ], [ %93, %87 ]
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %199, %94
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 %99, 1492
  %101 = mul nsw i32 %100, 3
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 %105, 1492
  %107 = sub nsw i32 0, %106
  %108 = add nsw i32 %107, 3
  %109 = sub nsw i32 %108, 1
  %110 = sdiv i32 %109, 3
  %111 = sub nsw i32 0, %110
  br label %117

112:                                              ; preds = %96
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 %114, 1492
  %116 = sdiv i32 %115, 3
  br label %117

117:                                              ; preds = %112, %103
  %118 = phi i32 [ %111, %103 ], [ %116, %112 ]
  %119 = icmp sle i32 %97, %118
  br i1 %119, label %120, label %202

120:                                              ; preds = %117
  %121 = load [500 x double]*, [500 x double]** %7, align 8
  %122 = getelementptr inbounds [500 x double], [500 x double]* %121, i64 1
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 -2, %123
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 3, %125
  %127 = add nsw i32 %124, %126
  %128 = add nsw i32 %127, 2
  %129 = sdiv i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [500 x double], [500 x double]* %122, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load [500 x double]*, [500 x double]** %7, align 8
  %134 = getelementptr inbounds [500 x double], [500 x double]* %133, i64 1
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 -2, %135
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 3, %137
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 2
  %141 = sdiv i32 %140, 3
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [500 x double], [500 x double]* %134, i64 0, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fadd double %132, %145
  %147 = load [500 x double]*, [500 x double]** %7, align 8
  %148 = getelementptr inbounds [500 x double], [500 x double]* %147, i64 1
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 -2, %149
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 3, %151
  %153 = add nsw i32 %150, %152
  %154 = add nsw i32 %153, 2
  %155 = sdiv i32 %154, 3
  %156 = add nsw i32 1, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [500 x double], [500 x double]* %148, i64 0, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fadd double %146, %159
  %161 = load [500 x double]*, [500 x double]** %7, align 8
  %162 = getelementptr inbounds [500 x double], [500 x double]* %161, i64 2
  %163 = load i32, i32* %11, align 4
  %164 = mul nsw i32 -2, %163
  %165 = load i32, i32* %9, align 4
  %166 = mul nsw i32 3, %165
  %167 = add nsw i32 %164, %166
  %168 = add nsw i32 %167, 2
  %169 = sdiv i32 %168, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [500 x double], [500 x double]* %162, i64 0, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fadd double %160, %172
  %174 = load [500 x double]*, [500 x double]** %7, align 8
  %175 = getelementptr inbounds [500 x double], [500 x double]* %174, i64 0
  %176 = load i32, i32* %11, align 4
  %177 = mul nsw i32 -2, %176
  %178 = load i32, i32* %9, align 4
  %179 = mul nsw i32 3, %178
  %180 = add nsw i32 %177, %179
  %181 = add nsw i32 %180, 2
  %182 = sdiv i32 %181, 3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [500 x double], [500 x double]* %175, i64 0, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fadd double %173, %185
  %187 = fmul double 2.000000e-01, %186
  %188 = load [500 x double]*, [500 x double]** %8, align 8
  %189 = getelementptr inbounds [500 x double], [500 x double]* %188, i64 1
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 -2, %190
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 3, %192
  %194 = add nsw i32 %191, %193
  %195 = add nsw i32 %194, 2
  %196 = sdiv i32 %195, 3
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [500 x double], [500 x double]* %189, i64 0, i64 %197
  store double %187, double* %198, align 8
  br label %199

199:                                              ; preds = %120
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %96, !llvm.loop !7

202:                                              ; preds = %117
  br label %203

203:                                              ; preds = %202, %68
  br label %204

204:                                              ; preds = %203, %65
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %11, [500 x double]** %8, [500 x double]** %7)
  %205 = load i32, i32* %11, align 4
  %206 = icmp sge i32 %205, 499
  br i1 %206, label %207, label %288

207:                                              ; preds = %204
  %208 = load i32, i32* %11, align 4
  %209 = mul nsw i32 2, %208
  %210 = add nsw i32 %209, 1
  %211 = srem i32 %210, 3
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %287

213:                                              ; preds = %207
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 2, %214
  %216 = add nsw i32 %215, -992
  %217 = mul nsw i32 %216, 3
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 2, %220
  %222 = add nsw i32 %221, -992
  %223 = sub nsw i32 0, %222
  %224 = sdiv i32 %223, 3
  %225 = sub nsw i32 0, %224
  br label %233

226:                                              ; preds = %213
  %227 = load i32, i32* %11, align 4
  %228 = mul nsw i32 2, %227
  %229 = add nsw i32 %228, -992
  %230 = add nsw i32 %229, 3
  %231 = sub nsw i32 %230, 1
  %232 = sdiv i32 %231, 3
  br label %233

233:                                              ; preds = %226, %219
  %234 = phi i32 [ %225, %219 ], [ %232, %226 ]
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %283, %233
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %11, align 4
  %238 = mul nsw i32 2, %237
  %239 = add nsw i32 %238, 499
  %240 = mul nsw i32 %239, 3
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 2, %243
  %245 = add nsw i32 %244, 499
  %246 = sub nsw i32 0, %245
  %247 = add nsw i32 %246, 3
  %248 = sub nsw i32 %247, 1
  %249 = sdiv i32 %248, 3
  %250 = sub nsw i32 0, %249
  br label %256

251:                                              ; preds = %235
  %252 = load i32, i32* %11, align 4
  %253 = mul nsw i32 2, %252
  %254 = add nsw i32 %253, 499
  %255 = sdiv i32 %254, 3
  br label %256

256:                                              ; preds = %251, %242
  %257 = phi i32 [ %250, %242 ], [ %255, %251 ]
  %258 = icmp sle i32 %236, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %256
  %260 = load [500 x double]*, [500 x double]** %8, align 8
  %261 = getelementptr inbounds [500 x double], [500 x double]* %260, i64 498
  %262 = load i32, i32* %11, align 4
  %263 = mul nsw i32 -2, %262
  %264 = load i32, i32* %9, align 4
  %265 = mul nsw i32 3, %264
  %266 = add nsw i32 %263, %265
  %267 = add nsw i32 %266, 995
  %268 = sdiv i32 %267, 3
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 0, i64 %269
  %271 = load double, double* %270, align 8
  %272 = load [500 x double]*, [500 x double]** %7, align 8
  %273 = getelementptr inbounds [500 x double], [500 x double]* %272, i64 498
  %274 = load i32, i32* %11, align 4
  %275 = mul nsw i32 -2, %274
  %276 = load i32, i32* %9, align 4
  %277 = mul nsw i32 3, %276
  %278 = add nsw i32 %275, %277
  %279 = add nsw i32 %278, 995
  %280 = sdiv i32 %279, 3
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [500 x double], [500 x double]* %273, i64 0, i64 %281
  store double %271, double* %282, align 8
  br label %283

283:                                              ; preds = %259
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %235, !llvm.loop !8

286:                                              ; preds = %256
  br label %287

287:                                              ; preds = %286, %207
  br label %288

288:                                              ; preds = %287, %204
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %62, !llvm.loop !9

292:                                              ; preds = %62
  store i32 20, i32* %9, align 4
  br label %293

293:                                              ; preds = %310, %292
  %294 = load i32, i32* %9, align 4
  %295 = icmp sle i32 %294, 517
  br i1 %295, label %296, label %313

296:                                              ; preds = %293
  %297 = load [500 x double]*, [500 x double]** %8, align 8
  %298 = getelementptr inbounds [500 x double], [500 x double]* %297, i64 498
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, -19
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [500 x double], [500 x double]* %298, i64 0, i64 %301
  %303 = load double, double* %302, align 8
  %304 = load [500 x double]*, [500 x double]** %7, align 8
  %305 = getelementptr inbounds [500 x double], [500 x double]* %304, i64 498
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, -19
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [500 x double], [500 x double]* %305, i64 0, i64 %308
  store double %303, double* %309, align 8
  br label %310

310:                                              ; preds = %296
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %9, align 4
  br label %293, !llvm.loop !10

313:                                              ; preds = %293
  ret void
}

declare dso_local i32 @polybench_timer_stop(...) #1

declare dso_local i32 @polybench_timer_print(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_array(i32 %0, [500 x double]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [500 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [500 x double]* %1, [500 x double]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load [500 x double]*, [500 x double]** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [500 x double], [500 x double]* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [500 x double], [500 x double]* %21, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %3, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %12, !llvm.loop !11

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7, !llvm.loop !12

45:                                               ; preds = %7
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3, [500 x double]** nonnull align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [500 x double]**, align 8
  %10 = alloca [500 x double]**, align 8
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
  store i32* %2, i32** %8, align 8
  store [500 x double]** %3, [500 x double]*** %9, align 8
  store [500 x double]** %4, [500 x double]*** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load [500 x double]**, [500 x double]*** %9, align 8
  %24 = load [500 x double]**, [500 x double]*** %10, align 8
  %25 = load i32, i32* %22, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub i32 %27, -1
  %29 = udiv i32 %28, 1
  %30 = sub i32 %29, 1
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp sle i32 0, %31
  br i1 %32, label %33, label %107

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

47:                                               ; preds = %100, %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = mul i32 %52, 1
  %54 = add i32 0, %53
  store i32 %54, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %55

55:                                               ; preds = %95, %51
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %22, align 4
  %58 = add nsw i32 %57, -1
  %59 = icmp sle i32 %56, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = load i32, i32* %21, align 4
  %62 = sitofp i32 %61 to double
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, 2
  %65 = sitofp i32 %64 to double
  %66 = fmul double %62, %65
  %67 = fadd double %66, 2.000000e+00
  %68 = load i32, i32* %22, align 4
  %69 = sitofp i32 %68 to double
  %70 = fdiv double %67, %69
  %71 = load [500 x double]*, [500 x double]** %23, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [500 x double], [500 x double]* %71, i64 %73
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [500 x double], [500 x double]* %74, i64 0, i64 %76
  store double %70, double* %77, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sitofp i32 %78 to double
  %80 = load i32, i32* %20, align 4
  %81 = add nsw i32 %80, 3
  %82 = sitofp i32 %81 to double
  %83 = fmul double %79, %82
  %84 = fadd double %83, 3.000000e+00
  %85 = load i32, i32* %22, align 4
  %86 = sitofp i32 %85 to double
  %87 = fdiv double %84, %86
  %88 = load [500 x double]*, [500 x double]** %24, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [500 x double], [500 x double]* %88, i64 %90
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [500 x double], [500 x double]* %91, i64 0, i64 %93
  store double %87, double* %94, align 8
  br label %95

95:                                               ; preds = %60
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %20, align 4
  br label %55, !llvm.loop !13

98:                                               ; preds = %55
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %47

103:                                              ; preds = %47
  br label %104

104:                                              ; preds = %103
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %106)
  br label %107

107:                                              ; preds = %104, %5
  ret void
}

declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..1(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, [500 x double]** nonnull align 8 dereferenceable(8) %3, [500 x double]** nonnull align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [500 x double]**, align 8
  %10 = alloca [500 x double]**, align 8
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
  %22 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store [500 x double]** %3, [500 x double]*** %9, align 8
  store [500 x double]** %4, [500 x double]*** %10, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load [500 x double]**, [500 x double]*** %9, align 8
  %25 = load [500 x double]**, [500 x double]*** %10, align 8
  %26 = load i32, i32* %23, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 2
  %29 = mul nsw i32 %28, 3
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i32, i32* %23, align 4
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %33, 2
  %35 = sub nsw i32 0, %34
  %36 = sdiv i32 %35, 3
  %37 = sub nsw i32 0, %36
  br label %45

38:                                               ; preds = %5
  %39 = load i32, i32* %23, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 2
  %42 = add nsw i32 %41, 3
  %43 = sub nsw i32 %42, 1
  %44 = sdiv i32 %43, 3
  br label %45

45:                                               ; preds = %38, %31
  %46 = phi i32 [ %37, %31 ], [ %44, %38 ]
  %47 = load i32, i32* %23, align 4
  %48 = add nsw i32 %47, -9
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load i32, i32* %23, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 2
  %54 = mul nsw i32 %53, 3
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %23, align 4
  %58 = mul nsw i32 2, %57
  %59 = add nsw i32 %58, 2
  %60 = sub nsw i32 0, %59
  %61 = sdiv i32 %60, 3
  %62 = sub nsw i32 0, %61
  br label %70

63:                                               ; preds = %50
  %64 = load i32, i32* %23, align 4
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %65, 2
  %67 = add nsw i32 %66, 3
  %68 = sub nsw i32 %67, 1
  %69 = sdiv i32 %68, 3
  br label %70

70:                                               ; preds = %63, %56
  %71 = phi i32 [ %62, %56 ], [ %69, %63 ]
  br label %75

72:                                               ; preds = %45
  %73 = load i32, i32* %23, align 4
  %74 = add nsw i32 %73, -9
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ %71, %70 ], [ %74, %72 ]
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %23, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 498
  %80 = mul nsw i32 %79, 3
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* %23, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 498
  %86 = sub nsw i32 0, %85
  %87 = add nsw i32 %86, 3
  %88 = sub nsw i32 %87, 1
  %89 = sdiv i32 %88, 3
  %90 = sub nsw i32 0, %89
  br label %96

91:                                               ; preds = %75
  %92 = load i32, i32* %23, align 4
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 498
  %95 = sdiv i32 %94, 3
  br label %96

96:                                               ; preds = %91, %82
  %97 = phi i32 [ %90, %82 ], [ %95, %91 ]
  %98 = load i32, i32* %23, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %23, align 4
  %102 = mul nsw i32 2, %101
  %103 = add nsw i32 %102, 498
  %104 = mul nsw i32 %103, 3
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i32, i32* %23, align 4
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %108, 498
  %110 = sub nsw i32 0, %109
  %111 = add nsw i32 %110, 3
  %112 = sub nsw i32 %111, 1
  %113 = sdiv i32 %112, 3
  %114 = sub nsw i32 0, %113
  br label %120

115:                                              ; preds = %100
  %116 = load i32, i32* %23, align 4
  %117 = mul nsw i32 2, %116
  %118 = add nsw i32 %117, 498
  %119 = sdiv i32 %118, 3
  br label %120

120:                                              ; preds = %115, %106
  %121 = phi i32 [ %114, %106 ], [ %119, %115 ]
  br label %124

122:                                              ; preds = %96
  %123 = load i32, i32* %23, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub i32 %126, %127
  %129 = add i32 %128, 1
  %130 = udiv i32 %129, 1
  %131 = sub i32 %130, 1
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %429

136:                                              ; preds = %124
  store i32 0, i32* %17, align 4
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* @1, i32 %139, i32 34, i32* %20, i32* %17, i32* %18, i32* %19, i32 1, i32 1)
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* %15, align 4
  br label %147

145:                                              ; preds = %136
  %146 = load i32, i32* %18, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %17, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %422, %147
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ule i32 %151, %152
  br i1 %153, label %154, label %425

154:                                              ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %11, align 4
  %157 = mul i32 %156, 1
  %158 = add i32 %155, %157
  store i32 %158, i32* %22, align 4
  %159 = load [500 x double]*, [500 x double]** %25, align 8
  %160 = load i32, i32* %23, align 4
  %161 = mul nsw i32 -2, %160
  %162 = load i32, i32* %22, align 4
  %163 = mul nsw i32 3, %162
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [500 x double], [500 x double]* %159, i64 %165
  %167 = getelementptr inbounds [500 x double], [500 x double]* %166, i64 0, i64 1
  %168 = load double, double* %167, align 8
  %169 = load [500 x double]*, [500 x double]** %25, align 8
  %170 = load i32, i32* %23, align 4
  %171 = mul nsw i32 -2, %170
  %172 = load i32, i32* %22, align 4
  %173 = mul nsw i32 3, %172
  %174 = add nsw i32 %171, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [500 x double], [500 x double]* %169, i64 %175
  %177 = getelementptr inbounds [500 x double], [500 x double]* %176, i64 0, i64 0
  %178 = load double, double* %177, align 8
  %179 = fadd double %168, %178
  %180 = load [500 x double]*, [500 x double]** %25, align 8
  %181 = load i32, i32* %23, align 4
  %182 = mul nsw i32 -2, %181
  %183 = load i32, i32* %22, align 4
  %184 = mul nsw i32 3, %183
  %185 = add nsw i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [500 x double], [500 x double]* %180, i64 %186
  %188 = getelementptr inbounds [500 x double], [500 x double]* %187, i64 0, i64 2
  %189 = load double, double* %188, align 8
  %190 = fadd double %179, %189
  %191 = load [500 x double]*, [500 x double]** %25, align 8
  %192 = load i32, i32* %23, align 4
  %193 = mul nsw i32 -2, %192
  %194 = load i32, i32* %22, align 4
  %195 = mul nsw i32 3, %194
  %196 = add nsw i32 %193, %195
  %197 = add nsw i32 1, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [500 x double], [500 x double]* %191, i64 %198
  %200 = getelementptr inbounds [500 x double], [500 x double]* %199, i64 0, i64 1
  %201 = load double, double* %200, align 8
  %202 = fadd double %190, %201
  %203 = load [500 x double]*, [500 x double]** %25, align 8
  %204 = load i32, i32* %23, align 4
  %205 = mul nsw i32 -2, %204
  %206 = load i32, i32* %22, align 4
  %207 = mul nsw i32 3, %206
  %208 = add nsw i32 %205, %207
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [500 x double], [500 x double]* %203, i64 %210
  %212 = getelementptr inbounds [500 x double], [500 x double]* %211, i64 0, i64 1
  %213 = load double, double* %212, align 8
  %214 = fadd double %202, %213
  %215 = fmul double 2.000000e-01, %214
  %216 = load [500 x double]*, [500 x double]** %24, align 8
  %217 = load i32, i32* %23, align 4
  %218 = mul nsw i32 -2, %217
  %219 = load i32, i32* %22, align 4
  %220 = mul nsw i32 3, %219
  %221 = add nsw i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [500 x double], [500 x double]* %216, i64 %222
  %224 = getelementptr inbounds [500 x double], [500 x double]* %223, i64 0, i64 1
  store double %215, double* %224, align 8
  %225 = load i32, i32* %23, align 4
  %226 = mul nsw i32 2, %225
  %227 = load i32, i32* %22, align 4
  %228 = mul nsw i32 -2, %227
  %229 = add nsw i32 %226, %228
  %230 = add nsw i32 %229, 2
  store i32 %230, i32* %21, align 4
  br label %231

231:                                              ; preds = %396, %154
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %23, align 4
  %234 = mul nsw i32 2, %233
  %235 = load i32, i32* %22, align 4
  %236 = mul nsw i32 -2, %235
  %237 = add nsw i32 %234, %236
  %238 = add nsw i32 %237, 498
  %239 = icmp sle i32 %232, %238
  br i1 %239, label %240, label %399

240:                                              ; preds = %231
  %241 = load [500 x double]*, [500 x double]** %24, align 8
  %242 = load i32, i32* %23, align 4
  %243 = mul nsw i32 -2, %242
  %244 = load i32, i32* %22, align 4
  %245 = mul nsw i32 3, %244
  %246 = add nsw i32 %243, %245
  %247 = add nsw i32 %246, -1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [500 x double], [500 x double]* %241, i64 %248
  %250 = load i32, i32* %23, align 4
  %251 = mul nsw i32 -2, %250
  %252 = load i32, i32* %22, align 4
  %253 = mul nsw i32 2, %252
  %254 = add nsw i32 %251, %253
  %255 = load i32, i32* %21, align 4
  %256 = add nsw i32 %254, %255
  %257 = add nsw i32 %256, -1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [500 x double], [500 x double]* %249, i64 0, i64 %258
  %260 = load double, double* %259, align 8
  %261 = load [500 x double]*, [500 x double]** %25, align 8
  %262 = load i32, i32* %23, align 4
  %263 = mul nsw i32 -2, %262
  %264 = load i32, i32* %22, align 4
  %265 = mul nsw i32 3, %264
  %266 = add nsw i32 %263, %265
  %267 = add nsw i32 %266, -1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %268
  %270 = load i32, i32* %23, align 4
  %271 = mul nsw i32 -2, %270
  %272 = load i32, i32* %22, align 4
  %273 = mul nsw i32 2, %272
  %274 = add nsw i32 %271, %273
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %274, %275
  %277 = add nsw i32 %276, -1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [500 x double], [500 x double]* %269, i64 0, i64 %278
  store double %260, double* %279, align 8
  %280 = load [500 x double]*, [500 x double]** %25, align 8
  %281 = load i32, i32* %23, align 4
  %282 = mul nsw i32 -2, %281
  %283 = load i32, i32* %22, align 4
  %284 = mul nsw i32 3, %283
  %285 = add nsw i32 %282, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [500 x double], [500 x double]* %280, i64 %286
  %288 = load i32, i32* %23, align 4
  %289 = mul nsw i32 -2, %288
  %290 = load i32, i32* %22, align 4
  %291 = mul nsw i32 2, %290
  %292 = add nsw i32 %289, %291
  %293 = load i32, i32* %21, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [500 x double], [500 x double]* %287, i64 0, i64 %295
  %297 = load double, double* %296, align 8
  %298 = load [500 x double]*, [500 x double]** %25, align 8
  %299 = load i32, i32* %23, align 4
  %300 = mul nsw i32 -2, %299
  %301 = load i32, i32* %22, align 4
  %302 = mul nsw i32 3, %301
  %303 = add nsw i32 %300, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [500 x double], [500 x double]* %298, i64 %304
  %306 = load i32, i32* %23, align 4
  %307 = mul nsw i32 -2, %306
  %308 = load i32, i32* %22, align 4
  %309 = mul nsw i32 2, %308
  %310 = add nsw i32 %307, %309
  %311 = load i32, i32* %21, align 4
  %312 = add nsw i32 %310, %311
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [500 x double], [500 x double]* %305, i64 0, i64 %314
  %316 = load double, double* %315, align 8
  %317 = fadd double %297, %316
  %318 = load [500 x double]*, [500 x double]** %25, align 8
  %319 = load i32, i32* %23, align 4
  %320 = mul nsw i32 -2, %319
  %321 = load i32, i32* %22, align 4
  %322 = mul nsw i32 3, %321
  %323 = add nsw i32 %320, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [500 x double], [500 x double]* %318, i64 %324
  %326 = load i32, i32* %23, align 4
  %327 = mul nsw i32 -2, %326
  %328 = load i32, i32* %22, align 4
  %329 = mul nsw i32 2, %328
  %330 = add nsw i32 %327, %329
  %331 = load i32, i32* %21, align 4
  %332 = add nsw i32 %330, %331
  %333 = add nsw i32 1, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [500 x double], [500 x double]* %325, i64 0, i64 %334
  %336 = load double, double* %335, align 8
  %337 = fadd double %317, %336
  %338 = load [500 x double]*, [500 x double]** %25, align 8
  %339 = load i32, i32* %23, align 4
  %340 = mul nsw i32 -2, %339
  %341 = load i32, i32* %22, align 4
  %342 = mul nsw i32 3, %341
  %343 = add nsw i32 %340, %342
  %344 = add nsw i32 1, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [500 x double], [500 x double]* %338, i64 %345
  %347 = load i32, i32* %23, align 4
  %348 = mul nsw i32 -2, %347
  %349 = load i32, i32* %22, align 4
  %350 = mul nsw i32 2, %349
  %351 = add nsw i32 %348, %350
  %352 = load i32, i32* %21, align 4
  %353 = add nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [500 x double], [500 x double]* %346, i64 0, i64 %354
  %356 = load double, double* %355, align 8
  %357 = fadd double %337, %356
  %358 = load [500 x double]*, [500 x double]** %25, align 8
  %359 = load i32, i32* %23, align 4
  %360 = mul nsw i32 -2, %359
  %361 = load i32, i32* %22, align 4
  %362 = mul nsw i32 3, %361
  %363 = add nsw i32 %360, %362
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [500 x double], [500 x double]* %358, i64 %365
  %367 = load i32, i32* %23, align 4
  %368 = mul nsw i32 -2, %367
  %369 = load i32, i32* %22, align 4
  %370 = mul nsw i32 2, %369
  %371 = add nsw i32 %368, %370
  %372 = load i32, i32* %21, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [500 x double], [500 x double]* %366, i64 0, i64 %374
  %376 = load double, double* %375, align 8
  %377 = fadd double %357, %376
  %378 = fmul double 2.000000e-01, %377
  %379 = load [500 x double]*, [500 x double]** %24, align 8
  %380 = load i32, i32* %23, align 4
  %381 = mul nsw i32 -2, %380
  %382 = load i32, i32* %22, align 4
  %383 = mul nsw i32 3, %382
  %384 = add nsw i32 %381, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [500 x double], [500 x double]* %379, i64 %385
  %387 = load i32, i32* %23, align 4
  %388 = mul nsw i32 -2, %387
  %389 = load i32, i32* %22, align 4
  %390 = mul nsw i32 2, %389
  %391 = add nsw i32 %388, %390
  %392 = load i32, i32* %21, align 4
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [500 x double], [500 x double]* %386, i64 0, i64 %394
  store double %378, double* %395, align 8
  br label %396

396:                                              ; preds = %240
  %397 = load i32, i32* %21, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %21, align 4
  br label %231, !llvm.loop !16

399:                                              ; preds = %231
  %400 = load [500 x double]*, [500 x double]** %24, align 8
  %401 = load i32, i32* %23, align 4
  %402 = mul nsw i32 -2, %401
  %403 = load i32, i32* %22, align 4
  %404 = mul nsw i32 3, %403
  %405 = add nsw i32 %402, %404
  %406 = add nsw i32 %405, -1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [500 x double], [500 x double]* %400, i64 %407
  %409 = getelementptr inbounds [500 x double], [500 x double]* %408, i64 0, i64 498
  %410 = load double, double* %409, align 8
  %411 = load [500 x double]*, [500 x double]** %25, align 8
  %412 = load i32, i32* %23, align 4
  %413 = mul nsw i32 -2, %412
  %414 = load i32, i32* %22, align 4
  %415 = mul nsw i32 3, %414
  %416 = add nsw i32 %413, %415
  %417 = add nsw i32 %416, -1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [500 x double], [500 x double]* %411, i64 %418
  %420 = getelementptr inbounds [500 x double], [500 x double]* %419, i64 0, i64 498
  store double %410, double* %420, align 8
  br label %421

421:                                              ; preds = %399
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %11, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %11, align 4
  br label %150

425:                                              ; preds = %150
  br label %426

426:                                              ; preds = %425
  %427 = load i32*, i32** %6, align 8
  %428 = load i32, i32* %427, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %428)
  br label %429

429:                                              ; preds = %426, %124
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{!15}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
!16 = distinct !{!16, !6}
