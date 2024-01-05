; ModuleID = 'dataracebench/DRB055-jacobi2d-parallel-no.c'
source_filename = "dataracebench/DRB055-jacobi2d-parallel-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca [500 x double]*, align 8
  %4 = alloca [500 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [500 x double]*, align 8
  %8 = alloca [500 x double]*, align 8
  %9 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %10 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %11 = bitcast i8* %9 to [500 x double]*
  %12 = bitcast i8* %10 to [500 x double]*
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13)
  %14 = bitcast [500 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14)
  %15 = bitcast [500 x double]** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  store i32 500, i32* %6, align 4, !tbaa !4
  %16 = bitcast [500 x double]** %7 to i8**
  store i8* %9, i8** %16, align 8, !tbaa !8
  %17 = bitcast [500 x double]** %8 to i8**
  store i8* %10, i8** %17, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %6, [500 x double]** nonnull %7, [500 x double]** nonnull %8) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  %18 = call i32 (...) @polybench_timer_start() #5
  %19 = bitcast [500 x double]** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19)
  %20 = bitcast [500 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast [500 x double]** %3 to i8**
  store i8* %9, i8** %21, align 8, !tbaa !8
  %22 = bitcast [500 x double]** %4 to i8**
  store i8* %10, i8** %22, align 8, !tbaa !8
  %23 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  br label %25

24:                                               ; preds = %25
  store i32 2, i32* %5, align 4, !tbaa !4
  br label %49

25:                                               ; preds = %25, %2
  %26 = phi i64 [ 1, %2 ], [ %33, %25 ]
  %27 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 1, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !10
  %29 = add nsw i64 %26, -1
  %30 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 1, i64 %29
  %31 = load double, double* %30, align 8, !tbaa !10
  %32 = fadd double %28, %31
  %33 = add nuw nsw i64 %26, 1
  %34 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 1, i64 %33
  %35 = load double, double* %34, align 8, !tbaa !10
  %36 = fadd double %32, %35
  %37 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 2, i64 %26
  %38 = load double, double* %37, align 8, !tbaa !10
  %39 = fadd double %36, %38
  %40 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 0, i64 %26
  %41 = load double, double* %40, align 8, !tbaa !10
  %42 = fadd double %39, %41
  %43 = fmul double %42, 2.000000e-01
  %44 = getelementptr inbounds [500 x double], [500 x double]* %12, i64 1, i64 %26
  store double %43, double* %44, align 8, !tbaa !10
  %45 = icmp eq i64 %33, 499
  br i1 %45, label %24, label %25, !llvm.loop !12

46:                                               ; preds = %141
  %47 = load [500 x double]*, [500 x double]** %4, align 8, !tbaa !8
  %48 = load [500 x double]*, [500 x double]** %3, align 8, !tbaa !8
  br label %144

49:                                               ; preds = %141, %24
  %50 = phi i32 [ 2, %24 ], [ %142, %141 ]
  %51 = icmp slt i32 %50, 29
  br i1 %51, label %52, label %101

52:                                               ; preds = %49
  %53 = shl nsw i32 %50, 1
  %54 = or i32 %53, 1
  %55 = srem i32 %54, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = icmp slt i32 %54, 0
  %59 = add i32 %53, 3
  %60 = select i1 %58, i32 %54, i32 %59
  %61 = sdiv i32 %60, 3
  %62 = icmp slt i32 %50, -746
  %63 = add nsw i32 %53, 1492
  %64 = sdiv i32 %63, 3
  %65 = sub i32 -1490, %53
  %66 = sdiv i32 %65, -3
  %67 = load [500 x double]*, [500 x double]** %3, align 8
  %68 = mul nsw i32 %50, -2
  %69 = add i32 %68, 2
  %70 = load [500 x double]*, [500 x double]** %4, align 8
  %71 = select i1 %62, i32 %66, i32 %64
  %72 = icmp sgt i32 %61, %71
  br i1 %72, label %101, label %73

73:                                               ; preds = %57, %73
  %74 = phi i32 [ %99, %73 ], [ %61, %57 ]
  %75 = mul nsw i32 %74, 3
  %76 = add i32 %69, %75
  %77 = sdiv i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [500 x double], [500 x double]* %67, i64 1, i64 %78
  %80 = load double, double* %79, align 8, !tbaa !10
  %81 = add nsw i32 %77, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [500 x double], [500 x double]* %67, i64 1, i64 %82
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = fadd double %80, %84
  %86 = add nsw i32 %77, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [500 x double], [500 x double]* %67, i64 1, i64 %87
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = fadd double %85, %89
  %91 = getelementptr inbounds [500 x double], [500 x double]* %67, i64 2, i64 %78
  %92 = load double, double* %91, align 8, !tbaa !10
  %93 = fadd double %90, %92
  %94 = getelementptr inbounds [500 x double], [500 x double]* %67, i64 0, i64 %78
  %95 = load double, double* %94, align 8, !tbaa !10
  %96 = fadd double %93, %95
  %97 = fmul double %96, 2.000000e-01
  %98 = getelementptr inbounds [500 x double], [500 x double]* %70, i64 1, i64 %78
  store double %97, double* %98, align 8, !tbaa !10
  %99 = add i32 %74, 1
  %100 = icmp eq i32 %74, %71
  br i1 %100, label %101, label %73, !llvm.loop !15

101:                                              ; preds = %73, %57, %52, %49
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* nonnull %5, [500 x double]** nonnull %4, [500 x double]** nonnull %3) #5
  %102 = load i32, i32* %5, align 4, !tbaa !4
  %103 = icmp sgt i32 %102, 498
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  %105 = shl nsw i32 %102, 1
  %106 = or i32 %105, 1
  %107 = srem i32 %106, 3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %104
  %110 = icmp slt i32 %102, 496
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = sub i32 992, %105
  %113 = sdiv i32 %112, -3
  br label %117

114:                                              ; preds = %109
  %115 = add nsw i32 %105, -990
  %116 = sdiv i32 %115, 3
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ]
  %119 = icmp slt i32 %102, -249
  %120 = add nsw i32 %105, 499
  %121 = sdiv i32 %120, 3
  %122 = sub i32 -497, %105
  %123 = sdiv i32 %122, -3
  %124 = load [500 x double]*, [500 x double]** %4, align 8
  %125 = mul nsw i32 %102, -2
  %126 = add i32 %125, 995
  %127 = load [500 x double]*, [500 x double]** %3, align 8
  %128 = select i1 %119, i32 %123, i32 %121
  %129 = icmp sgt i32 %118, %128
  br i1 %129, label %141, label %130

130:                                              ; preds = %117, %130
  %131 = phi i32 [ %139, %130 ], [ %118, %117 ]
  %132 = mul nsw i32 %131, 3
  %133 = add i32 %126, %132
  %134 = sdiv i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [500 x double], [500 x double]* %124, i64 498, i64 %135
  %137 = load double, double* %136, align 8, !tbaa !10
  %138 = getelementptr inbounds [500 x double], [500 x double]* %127, i64 498, i64 %135
  store double %137, double* %138, align 8, !tbaa !10
  %139 = add i32 %131, 1
  %140 = icmp eq i32 %131, %128
  br i1 %140, label %141, label %130, !llvm.loop !16

141:                                              ; preds = %130, %117, %104, %101
  %142 = add nsw i32 %102, 1
  store i32 %142, i32* %5, align 4, !tbaa !4
  %143 = icmp slt i32 %102, 525
  br i1 %143, label %49, label %46, !llvm.loop !17

144:                                              ; preds = %144, %46
  %145 = phi i64 [ 20, %46 ], [ %150, %144 ]
  %146 = add nsw i64 %145, -19
  %147 = getelementptr inbounds [500 x double], [500 x double]* %47, i64 498, i64 %146
  %148 = load double, double* %147, align 8, !tbaa !10
  %149 = getelementptr inbounds [500 x double], [500 x double]* %48, i64 498, i64 %146
  store double %148, double* %149, align 8, !tbaa !10
  %150 = add nuw nsw i64 %145, 1
  %151 = icmp eq i64 %150, 518
  br i1 %151, label %152, label %144, !llvm.loop !18

152:                                              ; preds = %144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20)
  %153 = call i32 (...) @polybench_timer_stop() #5
  %154 = call i32 (...) @polybench_timer_print() #5
  %155 = icmp sgt i32 %0, 42
  br i1 %155, label %156, label %185

156:                                              ; preds = %152
  %157 = load i8*, i8** %1, align 8, !tbaa !8
  %158 = load i8, i8* %157, align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %156, %179
  %161 = phi i64 [ %180, %179 ], [ 0, %156 ]
  %162 = mul nuw nsw i64 %161, 500
  br label %163

163:                                              ; preds = %176, %160
  %164 = phi i64 [ 0, %160 ], [ %177, %176 ]
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %166 = getelementptr inbounds [500 x double], [500 x double]* %11, i64 %161, i64 %164
  %167 = load double, double* %166, align 8, !tbaa !10
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %167) #8
  %169 = add nuw nsw i64 %164, %162
  %170 = trunc i64 %169 to i32
  %171 = urem i32 %170, 20
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %163
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %175 = call i32 @fputc(i32 10, %struct._IO_FILE* %174) #5
  br label %176

176:                                              ; preds = %173, %163
  %177 = add nuw nsw i64 %164, 1
  %178 = icmp eq i64 %177, 500
  br i1 %178, label %179, label %163, !llvm.loop !19

179:                                              ; preds = %176
  %180 = add nuw nsw i64 %161, 1
  %181 = icmp eq i64 %180, 500
  br i1 %181, label %182, label %160, !llvm.loop !20

182:                                              ; preds = %179
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %184 = call i32 @fputc(i32 10, %struct._IO_FILE* %183) #5
  br label %185

185:                                              ; preds = %182, %156, %152
  call void @free(i8* %9) #5
  call void @free(i8* %10) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_start(...) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_stop(...) local_unnamed_addr #2

declare dso_local i32 @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  store i32 %11, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %18 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %18, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %19 = load i32, i32* %7, align 4, !tbaa !4
  %20 = icmp ugt i32 %19, %11
  %21 = select i1 %20, i32 %11, i32 %19
  store i32 %21, i32* %7, align 4, !tbaa !4
  %22 = load i32, i32* %6, align 4, !tbaa !4
  %23 = load i32, i32* %2, align 4
  %24 = sitofp i32 %23 to double
  %25 = icmp sgt i32 %23, 0
  %26 = icmp ugt i32 %22, %21
  br i1 %26, label %56, label %27

27:                                               ; preds = %13
  %28 = zext i32 %23 to i64
  br label %29

29:                                               ; preds = %27, %53
  %30 = phi i32 [ %54, %53 ], [ %22, %27 ]
  %31 = sitofp i32 %30 to double
  %32 = load [500 x double]*, [500 x double]** %3, align 8
  %33 = sext i32 %30 to i64
  %34 = load [500 x double]*, [500 x double]** %4, align 8
  br i1 %25, label %35, label %53

35:                                               ; preds = %29, %35
  %36 = phi i64 [ %51, %35 ], [ 0, %29 ]
  %37 = trunc i64 %36 to i32
  %38 = add i32 %37, 2
  %39 = sitofp i32 %38 to double
  %40 = fmul double %31, %39
  %41 = fadd double %40, 2.000000e+00
  %42 = fdiv double %41, %24
  %43 = getelementptr inbounds [500 x double], [500 x double]* %32, i64 %33, i64 %36
  store double %42, double* %43, align 8, !tbaa !10
  %44 = trunc i64 %36 to i32
  %45 = add i32 %44, 3
  %46 = sitofp i32 %45 to double
  %47 = fmul double %31, %46
  %48 = fadd double %47, 3.000000e+00
  %49 = fdiv double %48, %24
  %50 = getelementptr inbounds [500 x double], [500 x double]* %34, i64 %33, i64 %36
  store double %49, double* %50, align 8, !tbaa !10
  %51 = add nuw nsw i64 %36, 1
  %52 = icmp eq i64 %51, %28
  br i1 %52, label %53, label %35, !llvm.loop !21

53:                                               ; preds = %35, %29
  %54 = add i32 %30, 1
  %55 = icmp ugt i32 %54, %21
  br i1 %55, label %56, label %29

56:                                               ; preds = %53, %13
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5
  br label %57

57:                                               ; preds = %56, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !22 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = shl nsw i32 %10, 1
  %12 = icmp slt i32 %10, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = sub nuw nsw i32 -2, %11
  %15 = sdiv i32 %14, -3
  br label %19

16:                                               ; preds = %5
  %17 = add nsw i32 %11, 4
  %18 = sdiv i32 %17, 3
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = add nsw i32 %10, -9
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  br i1 %12, label %24, label %27

24:                                               ; preds = %23
  %25 = sub nuw nsw i32 -2, %11
  %26 = sdiv i32 %25, -3
  br label %30

27:                                               ; preds = %23
  %28 = add nsw i32 %11, 4
  %29 = sdiv i32 %28, 3
  br label %30

30:                                               ; preds = %19, %24, %27
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ], [ %21, %19 ]
  %32 = icmp slt i32 %10, -249
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = sub i32 -496, %11
  %35 = sdiv i32 %34, -3
  br label %39

36:                                               ; preds = %30
  %37 = add nsw i32 %11, 498
  %38 = sdiv i32 %37, 3
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  %41 = icmp slt i32 %40, %10
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  br i1 %32, label %43, label %46

43:                                               ; preds = %42
  %44 = sub i32 -496, %11
  %45 = sdiv i32 %44, -3
  br label %49

46:                                               ; preds = %42
  %47 = add nsw i32 %11, 498
  %48 = sdiv i32 %47, 3
  br label %49

49:                                               ; preds = %39, %43, %46
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ], [ %10, %39 ]
  %51 = sub i32 %50, %31
  %52 = icmp slt i32 %50, %31
  br i1 %52, label %144, label %53

53:                                               ; preds = %49
  %54 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %54) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %55 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %55) #5
  store i32 %51, i32* %7, align 4, !tbaa !4
  %56 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %57 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %58 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %58, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %59 = load i32, i32* %7, align 4, !tbaa !4
  %60 = icmp ugt i32 %59, %51
  %61 = select i1 %60, i32 %51, i32 %59
  store i32 %61, i32* %7, align 4, !tbaa !4
  %62 = load i32, i32* %6, align 4, !tbaa !4
  %63 = load [500 x double]*, [500 x double]** %4, align 8
  %64 = load i32, i32* %2, align 4
  %65 = mul nsw i32 %64, -2
  %66 = load [500 x double]*, [500 x double]** %3, align 8
  %67 = shl nsw i32 %64, 1
  %68 = icmp ugt i32 %62, %61
  br i1 %68, label %143, label %69

69:                                               ; preds = %53
  %70 = shl i32 %64, 1
  %71 = add i32 %70, 2
  %72 = add i32 %31, %62
  %73 = mul i32 %72, -2
  %74 = add i32 %73, %71
  br label %75

75:                                               ; preds = %69, %136
  %76 = phi i32 [ %74, %69 ], [ %142, %136 ]
  %77 = phi i32 [ %62, %69 ], [ %140, %136 ]
  %78 = sext i32 %76 to i64
  %79 = add i32 %77, %31
  %80 = mul nsw i32 %79, 3
  %81 = add nsw i32 %65, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 1
  %84 = load double, double* %83, align 8, !tbaa !10
  %85 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 0
  %86 = load double, double* %85, align 8, !tbaa !10
  %87 = fadd double %84, %86
  %88 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 2
  %89 = load double, double* %88, align 8, !tbaa !10
  %90 = fadd double %87, %89
  %91 = add nsw i32 %81, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %92, i64 1
  %94 = load double, double* %93, align 8, !tbaa !10
  %95 = fadd double %90, %94
  %96 = add nsw i32 %81, -1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %97, i64 1
  %99 = load double, double* %98, align 8, !tbaa !10
  %100 = fadd double %95, %99
  %101 = fmul double %100, 2.000000e-01
  %102 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %82, i64 1
  store double %101, double* %102, align 8, !tbaa !10
  %103 = mul nsw i32 %79, -2
  %104 = add nsw i32 %67, %103
  %105 = add nsw i32 %104, 498
  %106 = shl nsw i32 %79, 1
  %107 = add nsw i32 %65, %106
  %108 = sext i32 %107 to i64
  %109 = sext i32 %105 to i64
  br label %110

110:                                              ; preds = %75, %110
  %111 = phi i64 [ %78, %75 ], [ %134, %110 ]
  %112 = add nsw i64 %111, %108
  %113 = add nsw i64 %112, -1
  %114 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %97, i64 %113
  %115 = load double, double* %114, align 8, !tbaa !10
  %116 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %97, i64 %113
  store double %115, double* %116, align 8, !tbaa !10
  %117 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 %112
  %118 = load double, double* %117, align 8, !tbaa !10
  %119 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 %113
  %120 = load double, double* %119, align 8, !tbaa !10
  %121 = fadd double %118, %120
  %122 = add nuw nsw i64 %112, 1
  %123 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %82, i64 %122
  %124 = load double, double* %123, align 8, !tbaa !10
  %125 = fadd double %121, %124
  %126 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %92, i64 %112
  %127 = load double, double* %126, align 8, !tbaa !10
  %128 = fadd double %125, %127
  %129 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %97, i64 %112
  %130 = load double, double* %129, align 8, !tbaa !10
  %131 = fadd double %128, %130
  %132 = fmul double %131, 2.000000e-01
  %133 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %82, i64 %112
  store double %132, double* %133, align 8, !tbaa !10
  %134 = add nsw i64 %111, 1
  %135 = icmp slt i64 %111, %109
  br i1 %135, label %110, label %136, !llvm.loop !24

136:                                              ; preds = %110
  %137 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %97, i64 498
  %138 = load double, double* %137, align 8, !tbaa !10
  %139 = getelementptr inbounds [500 x double], [500 x double]* %63, i64 %97, i64 498
  store double %138, double* %139, align 8, !tbaa !10
  %140 = add i32 %77, 1
  %141 = icmp ugt i32 %140, %61
  %142 = add i32 %76, -2
  br i1 %141, label %143, label %75

143:                                              ; preds = %136, %53
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %58)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %55) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %54) #5
  br label %144

144:                                              ; preds = %143, %49
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = !{!23}
!23 = !{i64 2, i64 -1, i64 -1, i1 true}
!24 = distinct !{!24, !13, !14}
