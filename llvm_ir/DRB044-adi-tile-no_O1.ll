; ModuleID = 'dataracebench/DRB044-adi-tile-no.c'
source_filename = "dataracebench/DRB044-adi-tile-no.c"
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
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [500 x double]*, align 8
  %5 = alloca [500 x double]*, align 8
  %6 = alloca [500 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [500 x double]*, align 8
  %9 = alloca [500 x double]*, align 8
  %10 = alloca [500 x double]*, align 8
  %11 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %12 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %13 = call i8* @polybench_alloc_data(i64 250000, i32 8) #5
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14)
  %15 = bitcast [500 x double]** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15)
  %16 = bitcast [500 x double]** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16)
  %17 = bitcast [500 x double]** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17)
  store i32 500, i32* %7, align 4, !tbaa !4
  %18 = bitcast [500 x double]** %8 to i8**
  store i8* %11, i8** %18, align 8, !tbaa !8
  %19 = bitcast [500 x double]** %9 to i8**
  store i8* %12, i8** %19, align 8, !tbaa !8
  %20 = bitcast [500 x double]** %10 to i8**
  store i8* %13, i8** %20, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %7, [500 x double]** nonnull %8, [500 x double]** nonnull %9, [500 x double]** nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17)
  %21 = call i32 (...) @polybench_timer_start() #5
  %22 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22)
  %23 = bitcast [500 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23)
  %24 = bitcast [500 x double]** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = bitcast [500 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  store i32 500, i32* %3, align 4, !tbaa !4
  %26 = bitcast [500 x double]** %4 to i8**
  store i8* %11, i8** %26, align 8, !tbaa !8
  %27 = bitcast [500 x double]** %5 to i8**
  store i8* %12, i8** %27, align 8, !tbaa !8
  %28 = bitcast [500 x double]** %6 to i8**
  store i8* %13, i8** %28, align 8, !tbaa !8
  br label %29

29:                                               ; preds = %38, %2
  %30 = phi i32 [ 0, %2 ], [ %39, %38 ]
  %31 = load i32, i32* %3, align 4, !tbaa !4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* nonnull %3, [500 x double]** nonnull %6, [500 x double]** nonnull %5, [500 x double]** nonnull %4) #5
  br label %34

34:                                               ; preds = %33, %29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %3, [500 x double]** nonnull %4, [500 x double]** nonnull %6) #5
  %35 = load i32, i32* %3, align 4, !tbaa !4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**, [500 x double]**)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* nonnull %3, [500 x double]** nonnull %6, [500 x double]** nonnull %5, [500 x double]** nonnull %4) #5
  br label %38

38:                                               ; preds = %37, %34
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [500 x double]**, [500 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %3, [500 x double]** nonnull %4, [500 x double]** nonnull %6) #5
  %39 = add nuw nsw i32 %30, 1
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %29, !llvm.loop !10

41:                                               ; preds = %38
  %42 = bitcast i8* %11 to [500 x double]*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25)
  %43 = call i32 (...) @polybench_timer_stop() #5
  %44 = call i32 (...) @polybench_timer_print() #5
  %45 = icmp sgt i32 %0, 42
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load i8*, i8** %1, align 8, !tbaa !8
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %46, %69
  %51 = phi i64 [ %70, %69 ], [ 0, %46 ]
  %52 = mul nuw nsw i64 %51, 500
  br label %53

53:                                               ; preds = %66, %50
  %54 = phi i64 [ 0, %50 ], [ %67, %66 ]
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %56 = getelementptr inbounds [500 x double], [500 x double]* %42, i64 %51, i64 %54
  %57 = load double, double* %56, align 8, !tbaa !13
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %57) #9
  %59 = add nuw nsw i64 %54, %52
  %60 = trunc i64 %59 to i32
  %61 = urem i32 %60, 20
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %65 = call i32 @fputc(i32 10, %struct._IO_FILE* %64) #5
  br label %66

66:                                               ; preds = %63, %53
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, 500
  br i1 %68, label %69, label %53, !llvm.loop !15

69:                                               ; preds = %66
  %70 = add nuw nsw i64 %51, 1
  %71 = icmp eq i64 %70, 500
  br i1 %71, label %72, label %50, !llvm.loop !16

72:                                               ; preds = %69
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %74 = call i32 @fputc(i32 10, %struct._IO_FILE* %73) #5
  br label %75

75:                                               ; preds = %72, %46, %41
  call void @free(i8* %11) #5
  call void @free(i8* %12) #5
  call void @free(i8* %13) #5
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = sub i32 16, %11
  %15 = sdiv i32 %14, -16
  br label %19

16:                                               ; preds = %6
  %17 = add nsw i32 %11, -1
  %18 = sdiv i32 %17, 16
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %168

22:                                               ; preds = %19
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 %20, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %27, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %28 = load i32, i32* %8, align 4, !tbaa !4
  %29 = icmp ugt i32 %28, %20
  %30 = select i1 %29, i32 %20, i32 %28
  store i32 %30, i32* %8, align 4, !tbaa !4
  %31 = load i32, i32* %7, align 4, !tbaa !4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 1
  %34 = add nsw i32 %32, -1
  %35 = sdiv i32 %34, 16
  %36 = sub i32 16, %32
  %37 = sdiv i32 %36, -16
  %38 = add nsw i32 %32, -1
  %39 = sitofp i32 %32 to double
  %40 = icmp ugt i32 %31, %30
  br i1 %40, label %167, label %41

41:                                               ; preds = %22
  %42 = shl i32 %31, 4
  %43 = add i32 %32, -1
  %44 = select i1 %33, i32 %37, i32 %35
  %45 = icmp slt i32 %44, 0
  %46 = insertelement <2 x double> poison, double %39, i32 0
  %47 = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %41, %163
  %49 = phi i32 [ %42, %41 ], [ %166, %163 ]
  %50 = phi i32 [ %31, %41 ], [ %164, %163 ]
  %51 = sext i32 %49 to i64
  %52 = shl nsw i32 %50, 4
  %53 = or i32 %52, 15
  %54 = icmp slt i32 %53, %38
  %55 = select i1 %54, i32 %53, i32 %38
  %56 = icmp sgt i32 %52, %55
  %57 = sext i32 %55 to i64
  br i1 %45, label %163, label %58

58:                                               ; preds = %48, %160
  %59 = phi i32 [ %161, %160 ], [ 0, %48 ]
  %60 = shl i32 %59, 4
  %61 = or i32 %60, 15
  %62 = call i32 @llvm.smin.i32(i32 %61, i32 %43)
  %63 = mul i32 %59, -16
  %64 = or i32 %63, 1
  %65 = add i32 %62, %64
  %66 = shl i32 %59, 4
  %67 = or i32 %66, 15
  %68 = call i32 @llvm.smin.i32(i32 %67, i32 %43)
  %69 = mul i32 %59, -16
  %70 = add i32 %68, %69
  %71 = shl nsw i32 %59, 4
  %72 = or i32 %71, 15
  %73 = icmp slt i32 %72, %38
  %74 = select i1 %73, i32 %72, i32 %38
  %75 = sub nsw i32 1, %71
  %76 = add i32 %75, %74
  %77 = icmp slt i32 %74, %71
  %78 = icmp eq i32 %76, 0
  br i1 %56, label %160, label %79

79:                                               ; preds = %58
  %80 = icmp ult i32 %65, 2
  %81 = add i32 %66, %70
  %82 = icmp slt i32 %81, %66
  %83 = select i1 %80, i1 true, i1 %82
  %84 = and i32 %65, -2
  %85 = insertelement <2 x i32> poison, i32 %71, i32 0
  %86 = shufflevector <2 x i32> %85, <2 x i32> poison, <2 x i32> zeroinitializer
  %87 = icmp eq i32 %65, %84
  br label %88

88:                                               ; preds = %79, %157
  %89 = phi i64 [ %158, %157 ], [ %51, %79 ]
  br i1 %77, label %157, label %90

90:                                               ; preds = %88
  %91 = trunc i64 %89 to i32
  %92 = sitofp i32 %91 to double
  %93 = load [500 x double]*, [500 x double]** %3, align 8
  %94 = load [500 x double]*, [500 x double]** %4, align 8
  %95 = load [500 x double]*, [500 x double]** %5, align 8
  br i1 %78, label %157, label %96

96:                                               ; preds = %90
  br i1 %83, label %131, label %97

97:                                               ; preds = %96
  %98 = insertelement <2 x double> poison, double %92, i32 0
  %99 = shufflevector <2 x double> %98, <2 x double> poison, <2 x i32> zeroinitializer
  br label %100

100:                                              ; preds = %100, %97
  %101 = phi i32 [ 0, %97 ], [ %127, %100 ]
  %102 = phi <2 x i32> [ <i32 0, i32 1>, %97 ], [ %128, %100 ]
  %103 = add <2 x i32> %102, %86
  %104 = add nsw <2 x i32> %103, <i32 1, i32 1>
  %105 = sitofp <2 x i32> %104 to <2 x double>
  %106 = fmul <2 x double> %99, %105
  %107 = fadd <2 x double> %106, <double 1.000000e+00, double 1.000000e+00>
  %108 = fdiv <2 x double> %107, %47
  %109 = extractelement <2 x i32> %103, i32 0
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [500 x double], [500 x double]* %93, i64 %89, i64 %110
  %112 = bitcast double* %111 to <2 x double>*
  store <2 x double> %108, <2 x double>* %112, align 8, !tbaa !13, !llvm.access.group !17
  %113 = add nsw <2 x i32> %103, <i32 2, i32 2>
  %114 = sitofp <2 x i32> %113 to <2 x double>
  %115 = fmul <2 x double> %99, %114
  %116 = fadd <2 x double> %115, <double 2.000000e+00, double 2.000000e+00>
  %117 = fdiv <2 x double> %116, %47
  %118 = getelementptr inbounds [500 x double], [500 x double]* %94, i64 %89, i64 %110
  %119 = bitcast double* %118 to <2 x double>*
  store <2 x double> %117, <2 x double>* %119, align 8, !tbaa !13, !llvm.access.group !17
  %120 = add nsw <2 x i32> %103, <i32 3, i32 3>
  %121 = sitofp <2 x i32> %120 to <2 x double>
  %122 = fmul <2 x double> %99, %121
  %123 = fadd <2 x double> %122, <double 3.000000e+00, double 3.000000e+00>
  %124 = fdiv <2 x double> %123, %47
  %125 = getelementptr inbounds [500 x double], [500 x double]* %95, i64 %89, i64 %110
  %126 = bitcast double* %125 to <2 x double>*
  store <2 x double> %124, <2 x double>* %126, align 8, !tbaa !13, !llvm.access.group !17
  %127 = add nuw i32 %101, 2
  %128 = add <2 x i32> %102, <i32 2, i32 2>
  %129 = icmp eq i32 %127, %84
  br i1 %129, label %130, label %100, !llvm.loop !18

130:                                              ; preds = %100
  br i1 %87, label %157, label %131

131:                                              ; preds = %96, %130
  %132 = phi i32 [ 0, %96 ], [ %84, %130 ]
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi i32 [ %155, %133 ], [ %132, %131 ]
  %135 = add i32 %134, %71
  %136 = add nsw i32 %135, 1
  %137 = sitofp i32 %136 to double
  %138 = fmul double %92, %137
  %139 = fadd double %138, 1.000000e+00
  %140 = fdiv double %139, %39
  %141 = sext i32 %135 to i64
  %142 = getelementptr inbounds [500 x double], [500 x double]* %93, i64 %89, i64 %141
  store double %140, double* %142, align 8, !tbaa !13, !llvm.access.group !17
  %143 = add nsw i32 %135, 2
  %144 = sitofp i32 %143 to double
  %145 = fmul double %92, %144
  %146 = fadd double %145, 2.000000e+00
  %147 = fdiv double %146, %39
  %148 = getelementptr inbounds [500 x double], [500 x double]* %94, i64 %89, i64 %141
  store double %147, double* %148, align 8, !tbaa !13, !llvm.access.group !17
  %149 = add nsw i32 %135, 3
  %150 = sitofp i32 %149 to double
  %151 = fmul double %92, %150
  %152 = fadd double %151, 3.000000e+00
  %153 = fdiv double %152, %39
  %154 = getelementptr inbounds [500 x double], [500 x double]* %95, i64 %89, i64 %141
  store double %153, double* %154, align 8, !tbaa !13, !llvm.access.group !17
  %155 = add nuw i32 %134, 1
  %156 = icmp ult i32 %155, %76
  br i1 %156, label %133, label %157, !llvm.loop !21

157:                                              ; preds = %133, %130, %90, %88
  %158 = add nsw i64 %89, 1
  %159 = icmp slt i64 %89, %57
  br i1 %159, label %88, label %160, !llvm.loop !22

160:                                              ; preds = %157, %58
  %161 = add nuw nsw i32 %59, 1
  %162 = icmp slt i32 %59, %44
  br i1 %162, label %58, label %163, !llvm.loop !23

163:                                              ; preds = %160, %48
  %164 = add i32 %50, 1
  %165 = icmp ugt i32 %164, %30
  %166 = add i32 %49, 16
  br i1 %165, label %167, label %48

167:                                              ; preds = %163, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  br label %168

168:                                              ; preds = %167, %19
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !24 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = sub i32 16, %11
  %15 = sdiv i32 %14, -16
  br label %19

16:                                               ; preds = %6
  %17 = add nsw i32 %11, -1
  %18 = sdiv i32 %17, 16
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %433

22:                                               ; preds = %19
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 %20, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %27, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %28 = load i32, i32* %8, align 4, !tbaa !4
  %29 = icmp ugt i32 %28, %20
  %30 = select i1 %29, i32 %20, i32 %28
  store i32 %30, i32* %8, align 4, !tbaa !4
  %31 = load i32, i32* %7, align 4, !tbaa !4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 1
  %34 = add nsw i32 %32, -1
  %35 = sdiv i32 %34, 16
  %36 = sub i32 16, %32
  %37 = sdiv i32 %36, -16
  %38 = add nsw i32 %32, -1
  %39 = add nsw i32 %32, -1
  %40 = sdiv i32 %39, 16
  %41 = sub i32 16, %32
  %42 = sdiv i32 %41, -16
  %43 = add nsw i32 %32, -1
  %44 = icmp slt i32 %32, 3
  %45 = add nsw i32 %32, -3
  %46 = sdiv i32 %45, 16
  %47 = sub i32 18, %32
  %48 = sdiv i32 %47, -16
  %49 = add nsw i32 %32, -3
  %50 = add nsw i32 %32, -1
  %51 = add nsw i32 %32, -2
  %52 = icmp ugt i32 %31, %30
  br i1 %52, label %432, label %53

53:                                               ; preds = %22
  %54 = sext i32 %32 to i64
  %55 = sext i32 %49 to i64
  %56 = shl i32 %31, 4
  %57 = or i32 %56, 15
  %58 = add i32 %32, -1
  %59 = mul i32 %31, -16
  %60 = or i32 %56, 15
  %61 = sub i32 1, %56
  %62 = or i32 %56, 15
  %63 = shl i32 %31, 4
  %64 = or i32 %63, 15
  %65 = add i32 %32, -1
  %66 = sub i32 1, %63
  %67 = or i32 %63, 15
  %68 = or i32 %63, 15
  %69 = select i1 %33, i32 %37, i32 %35
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %33, i32 %42, i32 %40
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %44, i32 %48, i32 %46
  %74 = icmp slt i32 %73, 0
  br label %75

75:                                               ; preds = %53, %428
  %76 = phi i32 [ 0, %53 ], [ %431, %428 ]
  %77 = phi i32 [ %31, %53 ], [ %429, %428 ]
  %78 = shl i32 %76, 4
  %79 = add i32 %68, %78
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 %65)
  %81 = mul i32 %76, -16
  %82 = add i32 %66, %81
  %83 = add i32 %80, %82
  %84 = shl i32 %76, 4
  %85 = add i32 %67, %84
  %86 = call i32 @llvm.smin.i32(i32 %85, i32 %65)
  %87 = add i32 %31, %76
  %88 = mul i32 %87, -16
  %89 = add i32 %86, %88
  %90 = add i32 %63, %84
  %91 = shl i32 %76, 4
  %92 = add i32 %64, %91
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 %65)
  %94 = mul i32 %76, -16
  %95 = add i32 %66, %94
  %96 = add i32 %93, %95
  %97 = shl i32 %76, 4
  %98 = add i32 %62, %97
  %99 = call i32 @llvm.smin.i32(i32 %98, i32 %58)
  %100 = mul i32 %76, -16
  %101 = add i32 %59, %100
  %102 = add i32 %99, %101
  %103 = add i32 %56, %97
  %104 = shl i32 %76, 4
  %105 = add i32 %60, %104
  %106 = call i32 @llvm.smin.i32(i32 %105, i32 %58)
  %107 = mul i32 %76, -16
  %108 = add i32 %61, %107
  %109 = add i32 %106, %108
  %110 = shl i32 %76, 4
  %111 = add i32 %57, %110
  %112 = call i32 @llvm.smin.i32(i32 %111, i32 %58)
  %113 = mul i32 %76, -16
  %114 = add i32 %59, %113
  %115 = add i32 %112, %114
  %116 = add i32 %56, %110
  %117 = shl nsw i32 %77, 4
  %118 = or i32 %117, 15
  %119 = icmp slt i32 %118, %38
  %120 = select i1 %119, i32 %118, i32 %38
  %121 = sub i32 1, %117
  %122 = add i32 %121, %120
  %123 = icmp slt i32 %120, %117
  %124 = icmp eq i32 %122, 0
  br i1 %70, label %134, label %125

125:                                              ; preds = %75
  %126 = icmp ult i32 %83, 2
  %127 = add i32 %90, %89
  %128 = icmp slt i32 %127, %90
  %129 = select i1 %126, i1 true, i1 %128
  %130 = and i32 %83, -2
  %131 = insertelement <2 x i32> poison, i32 %117, i32 0
  %132 = shufflevector <2 x i32> %131, <2 x i32> poison, <2 x i32> zeroinitializer
  %133 = icmp eq i32 %83, %130
  br label %152

134:                                              ; preds = %225, %75
  %135 = shl nsw i32 %77, 4
  %136 = or i32 %135, 15
  %137 = icmp slt i32 %136, %43
  %138 = select i1 %137, i32 %136, i32 %43
  %139 = sub i32 1, %135
  %140 = add i32 %139, %138
  %141 = icmp slt i32 %138, %135
  %142 = icmp eq i32 %140, 0
  br i1 %72, label %228, label %143

143:                                              ; preds = %134
  %144 = icmp ult i32 %96, 2
  %145 = add i32 %103, %102
  %146 = icmp slt i32 %145, %103
  %147 = select i1 %144, i1 true, i1 %146
  %148 = and i32 %96, -2
  %149 = insertelement <2 x i32> poison, i32 %135, i32 0
  %150 = shufflevector <2 x i32> %149, <2 x i32> poison, <2 x i32> zeroinitializer
  %151 = icmp eq i32 %96, %148
  br label %246

152:                                              ; preds = %125, %225
  %153 = phi i32 [ %226, %225 ], [ 0, %125 ]
  %154 = shl nsw i32 %153, 4
  %155 = icmp eq i32 %153, 0
  %156 = select i1 %155, i32 1, i32 %154
  %157 = or i32 %154, 15
  %158 = icmp slt i32 %157, %38
  %159 = select i1 %158, i32 %157, i32 %38
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %225, label %161

161:                                              ; preds = %152
  %162 = zext i32 %156 to i64
  %163 = sext i32 %159 to i64
  br label %164

164:                                              ; preds = %161, %222
  %165 = phi i64 [ %162, %161 ], [ %223, %222 ]
  br i1 %123, label %222, label %166

166:                                              ; preds = %164
  %167 = load [500 x double]*, [500 x double]** %3, align 8
  %168 = load [500 x double]*, [500 x double]** %4, align 8
  %169 = add nsw i64 %165, -1
  br i1 %124, label %222, label %170

170:                                              ; preds = %166
  br i1 %129, label %205, label %171

171:                                              ; preds = %170, %171
  %172 = phi i32 [ %201, %171 ], [ 0, %170 ]
  %173 = phi <2 x i32> [ %202, %171 ], [ <i32 0, i32 1>, %170 ]
  %174 = add <2 x i32> %173, %132
  %175 = sext <2 x i32> %174 to <2 x i64>
  %176 = extractelement <2 x i64> %175, i32 0
  %177 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %176, i64 %165
  %178 = extractelement <2 x i64> %175, i32 1
  %179 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %178, i64 %165
  %180 = load double, double* %177, align 8, !tbaa !13, !llvm.access.group !26
  %181 = load double, double* %179, align 8, !tbaa !13, !llvm.access.group !26
  %182 = insertelement <2 x double> poison, double %180, i32 0
  %183 = insertelement <2 x double> %182, double %181, i32 1
  %184 = getelementptr inbounds [500 x double], [500 x double]* %168, i64 %176, i64 %165
  %185 = getelementptr inbounds [500 x double], [500 x double]* %168, i64 %178, i64 %165
  %186 = load double, double* %184, align 8, !tbaa !13, !llvm.access.group !26
  %187 = load double, double* %185, align 8, !tbaa !13, !llvm.access.group !26
  %188 = insertelement <2 x double> poison, double %186, i32 0
  %189 = insertelement <2 x double> %188, double %187, i32 1
  %190 = fmul <2 x double> %189, %189
  %191 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %176, i64 %169
  %192 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %178, i64 %169
  %193 = load double, double* %191, align 8, !tbaa !13, !llvm.access.group !26
  %194 = load double, double* %192, align 8, !tbaa !13, !llvm.access.group !26
  %195 = insertelement <2 x double> poison, double %193, i32 0
  %196 = insertelement <2 x double> %195, double %194, i32 1
  %197 = fdiv <2 x double> %190, %196
  %198 = fsub <2 x double> %183, %197
  %199 = extractelement <2 x double> %198, i32 0
  store double %199, double* %177, align 8, !tbaa !13, !llvm.access.group !26
  %200 = extractelement <2 x double> %198, i32 1
  store double %200, double* %179, align 8, !tbaa !13, !llvm.access.group !26
  %201 = add nuw i32 %172, 2
  %202 = add <2 x i32> %173, <i32 2, i32 2>
  %203 = icmp eq i32 %201, %130
  br i1 %203, label %204, label %171, !llvm.loop !27

204:                                              ; preds = %171
  br i1 %133, label %222, label %205

205:                                              ; preds = %170, %204
  %206 = phi i32 [ 0, %170 ], [ %130, %204 ]
  br label %207

207:                                              ; preds = %205, %207
  %208 = phi i32 [ %220, %207 ], [ %206, %205 ]
  %209 = add i32 %208, %117
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %210, i64 %165
  %212 = load double, double* %211, align 8, !tbaa !13, !llvm.access.group !26
  %213 = getelementptr inbounds [500 x double], [500 x double]* %168, i64 %210, i64 %165
  %214 = load double, double* %213, align 8, !tbaa !13, !llvm.access.group !26
  %215 = fmul double %214, %214
  %216 = getelementptr inbounds [500 x double], [500 x double]* %167, i64 %210, i64 %169
  %217 = load double, double* %216, align 8, !tbaa !13, !llvm.access.group !26
  %218 = fdiv double %215, %217
  %219 = fsub double %212, %218
  store double %219, double* %211, align 8, !tbaa !13, !llvm.access.group !26
  %220 = add nuw i32 %208, 1
  %221 = icmp ult i32 %220, %122
  br i1 %221, label %207, label %222, !llvm.loop !29

222:                                              ; preds = %207, %204, %166, %164
  %223 = add nuw nsw i64 %165, 1
  %224 = icmp slt i64 %165, %163
  br i1 %224, label %164, label %225, !llvm.loop !30

225:                                              ; preds = %222, %152
  %226 = add nuw nsw i32 %153, 1
  %227 = icmp slt i32 %153, %69
  br i1 %227, label %152, label %134, !llvm.loop !31

228:                                              ; preds = %328, %134
  %229 = shl nsw i32 %77, 4
  %230 = or i32 %229, 15
  %231 = icmp slt i32 %230, %50
  %232 = select i1 %231, i32 %230, i32 %50
  %233 = sub i32 1, %229
  %234 = add i32 %233, %232
  %235 = icmp slt i32 %232, %229
  %236 = icmp eq i32 %234, 0
  br i1 %74, label %428, label %237

237:                                              ; preds = %228
  %238 = icmp ult i32 %109, 2
  %239 = add i32 %116, %115
  %240 = icmp slt i32 %239, %116
  %241 = select i1 %238, i1 true, i1 %240
  %242 = and i32 %109, -2
  %243 = insertelement <2 x i32> poison, i32 %229, i32 0
  %244 = shufflevector <2 x i32> %243, <2 x i32> poison, <2 x i32> zeroinitializer
  %245 = icmp eq i32 %109, %242
  br label %331

246:                                              ; preds = %143, %328
  %247 = phi i32 [ %329, %328 ], [ 0, %143 ]
  %248 = shl nsw i32 %247, 4
  %249 = icmp eq i32 %247, 0
  %250 = select i1 %249, i32 1, i32 %248
  %251 = or i32 %248, 15
  %252 = icmp slt i32 %251, %43
  %253 = select i1 %252, i32 %251, i32 %43
  %254 = icmp sgt i32 %250, %253
  br i1 %254, label %328, label %255

255:                                              ; preds = %246
  %256 = zext i32 %250 to i64
  %257 = sext i32 %253 to i64
  br label %258

258:                                              ; preds = %255, %325
  %259 = phi i64 [ %256, %255 ], [ %326, %325 ]
  br i1 %141, label %325, label %260

260:                                              ; preds = %258
  %261 = load [500 x double]*, [500 x double]** %5, align 8
  %262 = add nsw i64 %259, -1
  %263 = load [500 x double]*, [500 x double]** %4, align 8
  %264 = load [500 x double]*, [500 x double]** %3, align 8
  br i1 %142, label %325, label %265

265:                                              ; preds = %260
  br i1 %147, label %306, label %266

266:                                              ; preds = %265, %266
  %267 = phi i32 [ %302, %266 ], [ 0, %265 ]
  %268 = phi <2 x i32> [ %303, %266 ], [ <i32 0, i32 1>, %265 ]
  %269 = add <2 x i32> %268, %150
  %270 = sext <2 x i32> %269 to <2 x i64>
  %271 = extractelement <2 x i64> %270, i32 0
  %272 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %271, i64 %259
  %273 = extractelement <2 x i64> %270, i32 1
  %274 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %273, i64 %259
  %275 = load double, double* %272, align 8, !tbaa !13, !llvm.access.group !32
  %276 = load double, double* %274, align 8, !tbaa !13, !llvm.access.group !32
  %277 = insertelement <2 x double> poison, double %275, i32 0
  %278 = insertelement <2 x double> %277, double %276, i32 1
  %279 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %271, i64 %262
  %280 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %273, i64 %262
  %281 = load double, double* %279, align 8, !tbaa !13, !llvm.access.group !32
  %282 = load double, double* %280, align 8, !tbaa !13, !llvm.access.group !32
  %283 = insertelement <2 x double> poison, double %281, i32 0
  %284 = insertelement <2 x double> %283, double %282, i32 1
  %285 = getelementptr inbounds [500 x double], [500 x double]* %263, i64 %271, i64 %259
  %286 = getelementptr inbounds [500 x double], [500 x double]* %263, i64 %273, i64 %259
  %287 = load double, double* %285, align 8, !tbaa !13, !llvm.access.group !32
  %288 = load double, double* %286, align 8, !tbaa !13, !llvm.access.group !32
  %289 = insertelement <2 x double> poison, double %287, i32 0
  %290 = insertelement <2 x double> %289, double %288, i32 1
  %291 = fmul <2 x double> %284, %290
  %292 = getelementptr inbounds [500 x double], [500 x double]* %264, i64 %271, i64 %262
  %293 = getelementptr inbounds [500 x double], [500 x double]* %264, i64 %273, i64 %262
  %294 = load double, double* %292, align 8, !tbaa !13, !llvm.access.group !32
  %295 = load double, double* %293, align 8, !tbaa !13, !llvm.access.group !32
  %296 = insertelement <2 x double> poison, double %294, i32 0
  %297 = insertelement <2 x double> %296, double %295, i32 1
  %298 = fdiv <2 x double> %291, %297
  %299 = fsub <2 x double> %278, %298
  %300 = extractelement <2 x double> %299, i32 0
  store double %300, double* %272, align 8, !tbaa !13, !llvm.access.group !32
  %301 = extractelement <2 x double> %299, i32 1
  store double %301, double* %274, align 8, !tbaa !13, !llvm.access.group !32
  %302 = add nuw i32 %267, 2
  %303 = add <2 x i32> %268, <i32 2, i32 2>
  %304 = icmp eq i32 %302, %148
  br i1 %304, label %305, label %266, !llvm.loop !33

305:                                              ; preds = %266
  br i1 %151, label %325, label %306

306:                                              ; preds = %265, %305
  %307 = phi i32 [ 0, %265 ], [ %148, %305 ]
  br label %308

308:                                              ; preds = %306, %308
  %309 = phi i32 [ %323, %308 ], [ %307, %306 ]
  %310 = add i32 %309, %135
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %311, i64 %259
  %313 = load double, double* %312, align 8, !tbaa !13, !llvm.access.group !32
  %314 = getelementptr inbounds [500 x double], [500 x double]* %261, i64 %311, i64 %262
  %315 = load double, double* %314, align 8, !tbaa !13, !llvm.access.group !32
  %316 = getelementptr inbounds [500 x double], [500 x double]* %263, i64 %311, i64 %259
  %317 = load double, double* %316, align 8, !tbaa !13, !llvm.access.group !32
  %318 = fmul double %315, %317
  %319 = getelementptr inbounds [500 x double], [500 x double]* %264, i64 %311, i64 %262
  %320 = load double, double* %319, align 8, !tbaa !13, !llvm.access.group !32
  %321 = fdiv double %318, %320
  %322 = fsub double %313, %321
  store double %322, double* %312, align 8, !tbaa !13, !llvm.access.group !32
  %323 = add nuw i32 %309, 1
  %324 = icmp ult i32 %323, %140
  br i1 %324, label %308, label %325, !llvm.loop !35

325:                                              ; preds = %308, %305, %260, %258
  %326 = add nuw nsw i64 %259, 1
  %327 = icmp slt i64 %259, %257
  br i1 %327, label %258, label %328, !llvm.loop !36

328:                                              ; preds = %325, %246
  %329 = add nuw nsw i32 %247, 1
  %330 = icmp slt i32 %247, %71
  br i1 %330, label %246, label %228, !llvm.loop !37

331:                                              ; preds = %237, %423
  %332 = phi i64 [ %426, %423 ], [ 0, %237 ]
  %333 = phi i32 [ %424, %423 ], [ 0, %237 ]
  %334 = phi i32 [ %425, %423 ], [ 0, %237 ]
  %335 = shl nsw i32 %333, 4
  %336 = or i32 %335, 15
  %337 = icmp slt i32 %336, %49
  %338 = select i1 %337, i32 %336, i32 %49
  %339 = icmp sgt i32 %335, %338
  br i1 %339, label %423, label %340

340:                                              ; preds = %331
  %341 = sext i32 %338 to i64
  br label %342

342:                                              ; preds = %340, %420
  %343 = phi i64 [ %332, %340 ], [ %421, %420 ]
  br i1 %235, label %420, label %344

344:                                              ; preds = %342
  %345 = load [500 x double]*, [500 x double]** %5, align 8
  %346 = trunc i64 %343 to i32
  %347 = sub i32 %51, %346
  %348 = sext i32 %347 to i64
  %349 = add nsw i32 %347, -1
  %350 = sext i32 %349 to i64
  %351 = load [500 x double]*, [500 x double]** %4, align 8
  %352 = sub nsw i64 %54, %343
  %353 = add nsw i64 %352, -3
  %354 = load [500 x double]*, [500 x double]** %3, align 8
  %355 = sub nsw i64 %55, %343
  %356 = add nsw i64 %352, -2
  br i1 %236, label %420, label %357

357:                                              ; preds = %344
  br i1 %241, label %400, label %358

358:                                              ; preds = %357, %358
  %359 = phi i32 [ %396, %358 ], [ 0, %357 ]
  %360 = phi <2 x i32> [ %397, %358 ], [ <i32 0, i32 1>, %357 ]
  %361 = add <2 x i32> %360, %244
  %362 = sext <2 x i32> %361 to <2 x i64>
  %363 = extractelement <2 x i64> %362, i32 0
  %364 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %363, i64 %348
  %365 = extractelement <2 x i64> %362, i32 1
  %366 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %365, i64 %348
  %367 = load double, double* %364, align 8, !tbaa !13, !llvm.access.group !38
  %368 = load double, double* %366, align 8, !tbaa !13, !llvm.access.group !38
  %369 = insertelement <2 x double> poison, double %367, i32 0
  %370 = insertelement <2 x double> %369, double %368, i32 1
  %371 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %363, i64 %350
  %372 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %365, i64 %350
  %373 = load double, double* %371, align 8, !tbaa !13, !llvm.access.group !38
  %374 = load double, double* %372, align 8, !tbaa !13, !llvm.access.group !38
  %375 = insertelement <2 x double> poison, double %373, i32 0
  %376 = insertelement <2 x double> %375, double %374, i32 1
  %377 = getelementptr inbounds [500 x double], [500 x double]* %351, i64 %363, i64 %353
  %378 = getelementptr inbounds [500 x double], [500 x double]* %351, i64 %365, i64 %353
  %379 = load double, double* %377, align 8, !tbaa !13, !llvm.access.group !38
  %380 = load double, double* %378, align 8, !tbaa !13, !llvm.access.group !38
  %381 = insertelement <2 x double> poison, double %379, i32 0
  %382 = insertelement <2 x double> %381, double %380, i32 1
  %383 = fmul <2 x double> %376, %382
  %384 = fsub <2 x double> %370, %383
  %385 = getelementptr inbounds [500 x double], [500 x double]* %354, i64 %363, i64 %355
  %386 = getelementptr inbounds [500 x double], [500 x double]* %354, i64 %365, i64 %355
  %387 = load double, double* %385, align 8, !tbaa !13, !llvm.access.group !38
  %388 = load double, double* %386, align 8, !tbaa !13, !llvm.access.group !38
  %389 = insertelement <2 x double> poison, double %387, i32 0
  %390 = insertelement <2 x double> %389, double %388, i32 1
  %391 = fdiv <2 x double> %384, %390
  %392 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %363, i64 %356
  %393 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %365, i64 %356
  %394 = extractelement <2 x double> %391, i32 0
  store double %394, double* %392, align 8, !tbaa !13, !llvm.access.group !38
  %395 = extractelement <2 x double> %391, i32 1
  store double %395, double* %393, align 8, !tbaa !13, !llvm.access.group !38
  %396 = add nuw i32 %359, 2
  %397 = add <2 x i32> %360, <i32 2, i32 2>
  %398 = icmp eq i32 %396, %242
  br i1 %398, label %399, label %358, !llvm.loop !39

399:                                              ; preds = %358
  br i1 %245, label %420, label %400

400:                                              ; preds = %357, %399
  %401 = phi i32 [ 0, %357 ], [ %242, %399 ]
  br label %402

402:                                              ; preds = %400, %402
  %403 = phi i32 [ %418, %402 ], [ %401, %400 ]
  %404 = add i32 %403, %229
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %405, i64 %348
  %407 = load double, double* %406, align 8, !tbaa !13, !llvm.access.group !38
  %408 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %405, i64 %350
  %409 = load double, double* %408, align 8, !tbaa !13, !llvm.access.group !38
  %410 = getelementptr inbounds [500 x double], [500 x double]* %351, i64 %405, i64 %353
  %411 = load double, double* %410, align 8, !tbaa !13, !llvm.access.group !38
  %412 = fmul double %409, %411
  %413 = fsub double %407, %412
  %414 = getelementptr inbounds [500 x double], [500 x double]* %354, i64 %405, i64 %355
  %415 = load double, double* %414, align 8, !tbaa !13, !llvm.access.group !38
  %416 = fdiv double %413, %415
  %417 = getelementptr inbounds [500 x double], [500 x double]* %345, i64 %405, i64 %356
  store double %416, double* %417, align 8, !tbaa !13, !llvm.access.group !38
  %418 = add nuw i32 %403, 1
  %419 = icmp ult i32 %418, %234
  br i1 %419, label %402, label %420, !llvm.loop !41

420:                                              ; preds = %402, %399, %344, %342
  %421 = add nsw i64 %343, 1
  %422 = icmp slt i64 %343, %341
  br i1 %422, label %342, label %423, !llvm.loop !42

423:                                              ; preds = %420, %331
  %424 = add nuw nsw i32 %333, 1
  %425 = add i32 %334, 16
  %426 = sext i32 %425 to i64
  %427 = icmp slt i32 %333, %73
  br i1 %427, label %331, label %428, !llvm.loop !43

428:                                              ; preds = %423, %228
  %429 = add i32 %77, 1
  %430 = icmp ugt i32 %429, %30
  %431 = add i32 %76, 1
  br i1 %430, label %432, label %75

432:                                              ; preds = %428, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  br label %433

433:                                              ; preds = %432, %19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = sub i32 16, %10
  %14 = sdiv i32 %13, -16
  br label %18

15:                                               ; preds = %5
  %16 = add nsw i32 %10, -1
  %17 = sdiv i32 %16, 16
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %122

21:                                               ; preds = %18
  %22 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 %19, i32* %7, align 4, !tbaa !4
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %27 = load i32, i32* %7, align 4, !tbaa !4
  %28 = icmp ugt i32 %27, %19
  %29 = select i1 %28, i32 %19, i32 %27
  store i32 %29, i32* %7, align 4, !tbaa !4
  %30 = load i32, i32* %6, align 4, !tbaa !4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i32 %30, %29
  br i1 %34, label %121, label %35

35:                                               ; preds = %21
  %36 = shl i32 %30, 4
  %37 = or i32 %36, 15
  %38 = add i32 %31, -1
  %39 = or i32 %36, 15
  %40 = sub i32 1, %36
  br label %41

41:                                               ; preds = %35, %117
  %42 = phi i32 [ 0, %35 ], [ %120, %117 ]
  %43 = phi i32 [ %30, %35 ], [ %118, %117 ]
  %44 = shl i32 %42, 4
  %45 = add i32 %39, %44
  %46 = call i32 @llvm.smin.i32(i32 %45, i32 %38)
  %47 = mul i32 %42, -16
  %48 = add i32 %40, %47
  %49 = add i32 %46, %48
  %50 = shl i32 %42, 4
  %51 = add i32 %37, %50
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 %38)
  %53 = add i32 %30, %42
  %54 = mul i32 %53, -16
  %55 = add i32 %52, %54
  %56 = add i32 %36, %50
  %57 = shl nsw i32 %43, 4
  %58 = or i32 %57, 15
  %59 = icmp slt i32 %58, %32
  %60 = select i1 %59, i32 %58, i32 %32
  %61 = sub i32 1, %57
  %62 = add i32 %61, %60
  %63 = icmp slt i32 %60, %57
  br i1 %63, label %117, label %64

64:                                               ; preds = %41
  %65 = load [500 x double]*, [500 x double]** %3, align 8
  %66 = load [500 x double]*, [500 x double]** %4, align 8
  %67 = icmp eq i32 %62, 0
  br i1 %67, label %117, label %68

68:                                               ; preds = %64
  %69 = icmp ult i32 %49, 2
  %70 = add i32 %56, %55
  %71 = icmp slt i32 %70, %56
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %104, label %73

73:                                               ; preds = %68
  %74 = and i32 %49, -2
  %75 = insertelement <2 x i32> poison, i32 %57, i32 0
  %76 = shufflevector <2 x i32> %75, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %77

77:                                               ; preds = %77, %73
  %78 = phi i32 [ 0, %73 ], [ %99, %77 ]
  %79 = phi <2 x i32> [ <i32 0, i32 1>, %73 ], [ %100, %77 ]
  %80 = add <2 x i32> %79, %76
  %81 = sext <2 x i32> %80 to <2 x i64>
  %82 = extractelement <2 x i64> %81, i32 0
  %83 = getelementptr inbounds [500 x double], [500 x double]* %65, i64 %82, i64 %33
  %84 = extractelement <2 x i64> %81, i32 1
  %85 = getelementptr inbounds [500 x double], [500 x double]* %65, i64 %84, i64 %33
  %86 = load double, double* %83, align 8, !tbaa !13, !llvm.access.group !44
  %87 = load double, double* %85, align 8, !tbaa !13, !llvm.access.group !44
  %88 = insertelement <2 x double> poison, double %86, i32 0
  %89 = insertelement <2 x double> %88, double %87, i32 1
  %90 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %82, i64 %33
  %91 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %84, i64 %33
  %92 = load double, double* %90, align 8, !tbaa !13, !llvm.access.group !44
  %93 = load double, double* %91, align 8, !tbaa !13, !llvm.access.group !44
  %94 = insertelement <2 x double> poison, double %92, i32 0
  %95 = insertelement <2 x double> %94, double %93, i32 1
  %96 = fdiv <2 x double> %89, %95
  %97 = extractelement <2 x double> %96, i32 0
  store double %97, double* %83, align 8, !tbaa !13, !llvm.access.group !44
  %98 = extractelement <2 x double> %96, i32 1
  store double %98, double* %85, align 8, !tbaa !13, !llvm.access.group !44
  %99 = add nuw i32 %78, 2
  %100 = add <2 x i32> %79, <i32 2, i32 2>
  %101 = icmp eq i32 %99, %74
  br i1 %101, label %102, label %77, !llvm.loop !45

102:                                              ; preds = %77
  %103 = icmp eq i32 %49, %74
  br i1 %103, label %117, label %104

104:                                              ; preds = %68, %102
  %105 = phi i32 [ 0, %68 ], [ %74, %102 ]
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i32 [ %115, %106 ], [ %105, %104 ]
  %108 = add i32 %107, %57
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [500 x double], [500 x double]* %65, i64 %109, i64 %33
  %111 = load double, double* %110, align 8, !tbaa !13, !llvm.access.group !44
  %112 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %109, i64 %33
  %113 = load double, double* %112, align 8, !tbaa !13, !llvm.access.group !44
  %114 = fdiv double %111, %113
  store double %114, double* %110, align 8, !tbaa !13, !llvm.access.group !44
  %115 = add nuw i32 %107, 1
  %116 = icmp ult i32 %115, %62
  br i1 %116, label %106, label %117, !llvm.loop !47

117:                                              ; preds = %106, %102, %64, %41
  %118 = add i32 %43, 1
  %119 = icmp ugt i32 %118, %29
  %120 = add i32 %42, 1
  br i1 %119, label %121, label %41

121:                                              ; preds = %117, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  br label %122

122:                                              ; preds = %121, %18
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = sub i32 16, %11
  %15 = sdiv i32 %14, -16
  br label %19

16:                                               ; preds = %6
  %17 = add nsw i32 %11, -1
  %18 = sdiv i32 %17, 16
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %374

22:                                               ; preds = %19
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 %20, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %27, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %28 = load i32, i32* %8, align 4, !tbaa !4
  %29 = icmp ugt i32 %28, %20
  %30 = select i1 %29, i32 %20, i32 %28
  store i32 %30, i32* %8, align 4, !tbaa !4
  %31 = load i32, i32* %7, align 4, !tbaa !4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 1
  %34 = add nsw i32 %32, -1
  %35 = sdiv i32 %34, 16
  %36 = sub i32 16, %32
  %37 = sdiv i32 %36, -16
  %38 = add nsw i32 %32, -1
  %39 = add nsw i32 %32, -1
  %40 = sdiv i32 %39, 16
  %41 = sub i32 16, %32
  %42 = sdiv i32 %41, -16
  %43 = add nsw i32 %32, -1
  %44 = icmp slt i32 %32, 3
  %45 = add nsw i32 %32, -3
  %46 = sdiv i32 %45, 16
  %47 = sub i32 18, %32
  %48 = sdiv i32 %47, -16
  %49 = add nsw i32 %32, -3
  %50 = add nsw i32 %32, -1
  %51 = add nsw i32 %32, -2
  %52 = add i32 %32, -3
  %53 = icmp ugt i32 %31, %30
  br i1 %53, label %373, label %54

54:                                               ; preds = %22
  %55 = sext i32 %49 to i64
  %56 = shl i32 %31, 4
  %57 = or i32 %56, 15
  %58 = add i32 %32, -1
  %59 = mul i32 %31, -16
  %60 = or i32 %56, 15
  %61 = sub i32 1, %56
  %62 = or i32 %56, 15
  %63 = shl i32 %31, 4
  %64 = or i32 %63, 15
  %65 = add i32 %32, -1
  %66 = sub i32 1, %63
  %67 = or i32 %63, 15
  %68 = or i32 %63, 15
  %69 = select i1 %33, i32 %37, i32 %35
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %33, i32 %42, i32 %40
  %72 = icmp slt i32 %71, 0
  %73 = select i1 %44, i32 %48, i32 %46
  %74 = icmp slt i32 %73, 0
  br label %75

75:                                               ; preds = %54, %369
  %76 = phi i32 [ 0, %54 ], [ %372, %369 ]
  %77 = phi i32 [ %31, %54 ], [ %370, %369 ]
  %78 = shl i32 %76, 4
  %79 = add i32 %68, %78
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 %65)
  %81 = mul i32 %76, -16
  %82 = add i32 %66, %81
  %83 = add i32 %80, %82
  %84 = shl i32 %76, 4
  %85 = add i32 %67, %84
  %86 = call i32 @llvm.smin.i32(i32 %85, i32 %65)
  %87 = add i32 %31, %76
  %88 = mul i32 %87, -16
  %89 = add i32 %86, %88
  %90 = add i32 %63, %84
  %91 = shl i32 %76, 4
  %92 = add i32 %64, %91
  %93 = call i32 @llvm.smin.i32(i32 %92, i32 %65)
  %94 = mul i32 %76, -16
  %95 = add i32 %66, %94
  %96 = add i32 %93, %95
  %97 = shl i32 %76, 4
  %98 = add i32 %62, %97
  %99 = call i32 @llvm.smin.i32(i32 %98, i32 %58)
  %100 = mul i32 %76, -16
  %101 = add i32 %59, %100
  %102 = add i32 %99, %101
  %103 = add i32 %56, %97
  %104 = shl i32 %76, 4
  %105 = add i32 %60, %104
  %106 = call i32 @llvm.smin.i32(i32 %105, i32 %58)
  %107 = mul i32 %76, -16
  %108 = add i32 %61, %107
  %109 = add i32 %106, %108
  %110 = shl i32 %76, 4
  %111 = add i32 %57, %110
  %112 = call i32 @llvm.smin.i32(i32 %111, i32 %58)
  %113 = mul i32 %76, -16
  %114 = add i32 %59, %113
  %115 = add i32 %112, %114
  %116 = add i32 %56, %110
  %117 = shl nsw i32 %77, 4
  %118 = or i32 %117, 15
  %119 = icmp slt i32 %118, %38
  %120 = select i1 %119, i32 %118, i32 %38
  %121 = sub i32 1, %117
  %122 = add i32 %121, %120
  %123 = icmp slt i32 %120, %117
  %124 = icmp eq i32 %122, 0
  br i1 %70, label %132, label %125

125:                                              ; preds = %75
  %126 = icmp ult i32 %83, 2
  %127 = add i32 %90, %89
  %128 = icmp slt i32 %127, %90
  %129 = select i1 %126, i1 true, i1 %128
  %130 = and i32 %83, -2
  %131 = icmp eq i32 %83, %130
  br label %148

132:                                              ; preds = %207, %75
  %133 = shl nsw i32 %77, 4
  %134 = or i32 %133, 15
  %135 = icmp slt i32 %134, %43
  %136 = select i1 %135, i32 %134, i32 %43
  %137 = sub i32 1, %133
  %138 = add i32 %137, %136
  %139 = icmp slt i32 %136, %133
  %140 = icmp eq i32 %138, 0
  br i1 %72, label %210, label %141

141:                                              ; preds = %132
  %142 = icmp ult i32 %96, 2
  %143 = add i32 %103, %102
  %144 = icmp slt i32 %143, %103
  %145 = select i1 %142, i1 true, i1 %144
  %146 = and i32 %96, -2
  %147 = icmp eq i32 %96, %146
  br label %226

148:                                              ; preds = %125, %207
  %149 = phi i32 [ %208, %207 ], [ 0, %125 ]
  %150 = shl nsw i32 %149, 4
  %151 = icmp eq i32 %149, 0
  %152 = select i1 %151, i32 1, i32 %150
  %153 = or i32 %150, 15
  %154 = icmp slt i32 %153, %38
  %155 = select i1 %154, i32 %153, i32 %38
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %207, label %157

157:                                              ; preds = %148
  %158 = zext i32 %152 to i64
  %159 = sext i32 %155 to i64
  br label %160

160:                                              ; preds = %157, %204
  %161 = phi i64 [ %158, %157 ], [ %205, %204 ]
  br i1 %123, label %204, label %162

162:                                              ; preds = %160
  %163 = load [500 x double]*, [500 x double]** %3, align 8
  %164 = load [500 x double]*, [500 x double]** %4, align 8
  %165 = add nsw i64 %161, -1
  br i1 %124, label %204, label %166

166:                                              ; preds = %162
  br i1 %129, label %187, label %167

167:                                              ; preds = %166, %167
  %168 = phi i32 [ %184, %167 ], [ 0, %166 ]
  %169 = add i32 %168, %117
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [500 x double], [500 x double]* %163, i64 %161, i64 %170
  %172 = bitcast double* %171 to <2 x double>*
  %173 = load <2 x double>, <2 x double>* %172, align 8, !tbaa !13, !llvm.access.group !48
  %174 = getelementptr inbounds [500 x double], [500 x double]* %164, i64 %161, i64 %170
  %175 = bitcast double* %174 to <2 x double>*
  %176 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !13, !llvm.access.group !48
  %177 = fmul <2 x double> %176, %176
  %178 = getelementptr inbounds [500 x double], [500 x double]* %163, i64 %165, i64 %170
  %179 = bitcast double* %178 to <2 x double>*
  %180 = load <2 x double>, <2 x double>* %179, align 8, !tbaa !13, !llvm.access.group !48
  %181 = fdiv <2 x double> %177, %180
  %182 = fsub <2 x double> %173, %181
  %183 = bitcast double* %171 to <2 x double>*
  store <2 x double> %182, <2 x double>* %183, align 8, !tbaa !13, !llvm.access.group !48
  %184 = add nuw i32 %168, 2
  %185 = icmp eq i32 %184, %130
  br i1 %185, label %186, label %167, !llvm.loop !49

186:                                              ; preds = %167
  br i1 %131, label %204, label %187

187:                                              ; preds = %166, %186
  %188 = phi i32 [ 0, %166 ], [ %130, %186 ]
  br label %189

189:                                              ; preds = %187, %189
  %190 = phi i32 [ %202, %189 ], [ %188, %187 ]
  %191 = add i32 %190, %117
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [500 x double], [500 x double]* %163, i64 %161, i64 %192
  %194 = load double, double* %193, align 8, !tbaa !13, !llvm.access.group !48
  %195 = getelementptr inbounds [500 x double], [500 x double]* %164, i64 %161, i64 %192
  %196 = load double, double* %195, align 8, !tbaa !13, !llvm.access.group !48
  %197 = fmul double %196, %196
  %198 = getelementptr inbounds [500 x double], [500 x double]* %163, i64 %165, i64 %192
  %199 = load double, double* %198, align 8, !tbaa !13, !llvm.access.group !48
  %200 = fdiv double %197, %199
  %201 = fsub double %194, %200
  store double %201, double* %193, align 8, !tbaa !13, !llvm.access.group !48
  %202 = add nuw i32 %190, 1
  %203 = icmp ult i32 %202, %122
  br i1 %203, label %189, label %204, !llvm.loop !51

204:                                              ; preds = %189, %186, %162, %160
  %205 = add nuw nsw i64 %161, 1
  %206 = icmp slt i64 %161, %159
  br i1 %206, label %160, label %207, !llvm.loop !52

207:                                              ; preds = %204, %148
  %208 = add nuw nsw i32 %149, 1
  %209 = icmp slt i32 %149, %69
  br i1 %209, label %148, label %132, !llvm.loop !53

210:                                              ; preds = %291, %132
  %211 = shl nsw i32 %77, 4
  %212 = or i32 %211, 15
  %213 = icmp slt i32 %212, %50
  %214 = select i1 %213, i32 %212, i32 %50
  %215 = sub i32 1, %211
  %216 = add i32 %215, %214
  %217 = icmp slt i32 %214, %211
  %218 = icmp eq i32 %216, 0
  br i1 %74, label %369, label %219

219:                                              ; preds = %210
  %220 = icmp ult i32 %109, 2
  %221 = add i32 %116, %115
  %222 = icmp slt i32 %221, %116
  %223 = select i1 %220, i1 true, i1 %222
  %224 = and i32 %109, -2
  %225 = icmp eq i32 %109, %224
  br label %294

226:                                              ; preds = %141, %291
  %227 = phi i32 [ %292, %291 ], [ 0, %141 ]
  %228 = shl nsw i32 %227, 4
  %229 = icmp eq i32 %227, 0
  %230 = select i1 %229, i32 1, i32 %228
  %231 = or i32 %228, 15
  %232 = icmp slt i32 %231, %43
  %233 = select i1 %232, i32 %231, i32 %43
  %234 = icmp sgt i32 %230, %233
  br i1 %234, label %291, label %235

235:                                              ; preds = %226
  %236 = zext i32 %230 to i64
  %237 = sext i32 %233 to i64
  br label %238

238:                                              ; preds = %235, %288
  %239 = phi i64 [ %236, %235 ], [ %289, %288 ]
  br i1 %139, label %288, label %240

240:                                              ; preds = %238
  %241 = load [500 x double]*, [500 x double]** %5, align 8
  %242 = add nsw i64 %239, -1
  %243 = load [500 x double]*, [500 x double]** %4, align 8
  %244 = load [500 x double]*, [500 x double]** %3, align 8
  br i1 %140, label %288, label %245

245:                                              ; preds = %240
  br i1 %145, label %269, label %246

246:                                              ; preds = %245, %246
  %247 = phi i32 [ %266, %246 ], [ 0, %245 ]
  %248 = add i32 %247, %133
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [500 x double], [500 x double]* %241, i64 %239, i64 %249
  %251 = bitcast double* %250 to <2 x double>*
  %252 = load <2 x double>, <2 x double>* %251, align 8, !tbaa !13, !llvm.access.group !54
  %253 = getelementptr inbounds [500 x double], [500 x double]* %241, i64 %242, i64 %249
  %254 = bitcast double* %253 to <2 x double>*
  %255 = load <2 x double>, <2 x double>* %254, align 8, !tbaa !13, !llvm.access.group !54
  %256 = getelementptr inbounds [500 x double], [500 x double]* %243, i64 %239, i64 %249
  %257 = bitcast double* %256 to <2 x double>*
  %258 = load <2 x double>, <2 x double>* %257, align 8, !tbaa !13, !llvm.access.group !54
  %259 = fmul <2 x double> %255, %258
  %260 = getelementptr inbounds [500 x double], [500 x double]* %244, i64 %242, i64 %249
  %261 = bitcast double* %260 to <2 x double>*
  %262 = load <2 x double>, <2 x double>* %261, align 8, !tbaa !13, !llvm.access.group !54
  %263 = fdiv <2 x double> %259, %262
  %264 = fsub <2 x double> %252, %263
  %265 = bitcast double* %250 to <2 x double>*
  store <2 x double> %264, <2 x double>* %265, align 8, !tbaa !13, !llvm.access.group !54
  %266 = add nuw i32 %247, 2
  %267 = icmp eq i32 %266, %146
  br i1 %267, label %268, label %246, !llvm.loop !55

268:                                              ; preds = %246
  br i1 %147, label %288, label %269

269:                                              ; preds = %245, %268
  %270 = phi i32 [ 0, %245 ], [ %146, %268 ]
  br label %271

271:                                              ; preds = %269, %271
  %272 = phi i32 [ %286, %271 ], [ %270, %269 ]
  %273 = add i32 %272, %133
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [500 x double], [500 x double]* %241, i64 %239, i64 %274
  %276 = load double, double* %275, align 8, !tbaa !13, !llvm.access.group !54
  %277 = getelementptr inbounds [500 x double], [500 x double]* %241, i64 %242, i64 %274
  %278 = load double, double* %277, align 8, !tbaa !13, !llvm.access.group !54
  %279 = getelementptr inbounds [500 x double], [500 x double]* %243, i64 %239, i64 %274
  %280 = load double, double* %279, align 8, !tbaa !13, !llvm.access.group !54
  %281 = fmul double %278, %280
  %282 = getelementptr inbounds [500 x double], [500 x double]* %244, i64 %242, i64 %274
  %283 = load double, double* %282, align 8, !tbaa !13, !llvm.access.group !54
  %284 = fdiv double %281, %283
  %285 = fsub double %276, %284
  store double %285, double* %275, align 8, !tbaa !13, !llvm.access.group !54
  %286 = add nuw i32 %272, 1
  %287 = icmp ult i32 %286, %138
  br i1 %287, label %271, label %288, !llvm.loop !57

288:                                              ; preds = %271, %268, %240, %238
  %289 = add nuw nsw i64 %239, 1
  %290 = icmp slt i64 %239, %237
  br i1 %290, label %238, label %291, !llvm.loop !58

291:                                              ; preds = %288, %226
  %292 = add nuw nsw i32 %227, 1
  %293 = icmp slt i32 %227, %71
  br i1 %293, label %226, label %210, !llvm.loop !59

294:                                              ; preds = %219, %364
  %295 = phi i64 [ %367, %364 ], [ 0, %219 ]
  %296 = phi i32 [ %365, %364 ], [ 0, %219 ]
  %297 = phi i32 [ %366, %364 ], [ 0, %219 ]
  %298 = shl nsw i32 %296, 4
  %299 = or i32 %298, 15
  %300 = icmp slt i32 %299, %49
  %301 = select i1 %300, i32 %299, i32 %49
  %302 = icmp sgt i32 %298, %301
  br i1 %302, label %364, label %303

303:                                              ; preds = %294
  %304 = sext i32 %301 to i64
  br label %305

305:                                              ; preds = %303, %361
  %306 = phi i64 [ %295, %303 ], [ %362, %361 ]
  br i1 %217, label %361, label %307

307:                                              ; preds = %305
  %308 = load [500 x double]*, [500 x double]** %5, align 8
  %309 = trunc i64 %306 to i32
  %310 = sub i32 %51, %309
  %311 = sext i32 %310 to i64
  %312 = trunc i64 %306 to i32
  %313 = sub i32 %52, %312
  %314 = sext i32 %313 to i64
  %315 = load [500 x double]*, [500 x double]** %4, align 8
  %316 = sub nsw i64 %55, %306
  %317 = load [500 x double]*, [500 x double]** %3, align 8
  br i1 %218, label %361, label %318

318:                                              ; preds = %307
  br i1 %223, label %342, label %319

319:                                              ; preds = %318, %319
  %320 = phi i32 [ %339, %319 ], [ 0, %318 ]
  %321 = add i32 %320, %211
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [500 x double], [500 x double]* %308, i64 %311, i64 %322
  %324 = bitcast double* %323 to <2 x double>*
  %325 = load <2 x double>, <2 x double>* %324, align 8, !tbaa !13, !llvm.access.group !60
  %326 = getelementptr inbounds [500 x double], [500 x double]* %308, i64 %314, i64 %322
  %327 = bitcast double* %326 to <2 x double>*
  %328 = load <2 x double>, <2 x double>* %327, align 8, !tbaa !13, !llvm.access.group !60
  %329 = getelementptr inbounds [500 x double], [500 x double]* %315, i64 %316, i64 %322
  %330 = bitcast double* %329 to <2 x double>*
  %331 = load <2 x double>, <2 x double>* %330, align 8, !tbaa !13, !llvm.access.group !60
  %332 = fmul <2 x double> %328, %331
  %333 = fsub <2 x double> %325, %332
  %334 = getelementptr inbounds [500 x double], [500 x double]* %317, i64 %311, i64 %322
  %335 = bitcast double* %334 to <2 x double>*
  %336 = load <2 x double>, <2 x double>* %335, align 8, !tbaa !13, !llvm.access.group !60
  %337 = fdiv <2 x double> %333, %336
  %338 = bitcast double* %323 to <2 x double>*
  store <2 x double> %337, <2 x double>* %338, align 8, !tbaa !13, !llvm.access.group !60
  %339 = add nuw i32 %320, 2
  %340 = icmp eq i32 %339, %224
  br i1 %340, label %341, label %319, !llvm.loop !61

341:                                              ; preds = %319
  br i1 %225, label %361, label %342

342:                                              ; preds = %318, %341
  %343 = phi i32 [ 0, %318 ], [ %224, %341 ]
  br label %344

344:                                              ; preds = %342, %344
  %345 = phi i32 [ %359, %344 ], [ %343, %342 ]
  %346 = add i32 %345, %211
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [500 x double], [500 x double]* %308, i64 %311, i64 %347
  %349 = load double, double* %348, align 8, !tbaa !13, !llvm.access.group !60
  %350 = getelementptr inbounds [500 x double], [500 x double]* %308, i64 %314, i64 %347
  %351 = load double, double* %350, align 8, !tbaa !13, !llvm.access.group !60
  %352 = getelementptr inbounds [500 x double], [500 x double]* %315, i64 %316, i64 %347
  %353 = load double, double* %352, align 8, !tbaa !13, !llvm.access.group !60
  %354 = fmul double %351, %353
  %355 = fsub double %349, %354
  %356 = getelementptr inbounds [500 x double], [500 x double]* %317, i64 %311, i64 %347
  %357 = load double, double* %356, align 8, !tbaa !13, !llvm.access.group !60
  %358 = fdiv double %355, %357
  store double %358, double* %348, align 8, !tbaa !13, !llvm.access.group !60
  %359 = add nuw i32 %345, 1
  %360 = icmp ult i32 %359, %216
  br i1 %360, label %344, label %361, !llvm.loop !63

361:                                              ; preds = %344, %341, %307, %305
  %362 = add nsw i64 %306, 1
  %363 = icmp slt i64 %306, %304
  br i1 %363, label %305, label %364, !llvm.loop !64

364:                                              ; preds = %361, %294
  %365 = add nuw nsw i32 %296, 1
  %366 = add i32 %297, 16
  %367 = sext i32 %366 to i64
  %368 = icmp slt i32 %296, %73
  br i1 %368, label %294, label %369, !llvm.loop !65

369:                                              ; preds = %364, %210
  %370 = add i32 %77, 1
  %371 = icmp ugt i32 %370, %30
  %372 = add i32 %76, 1
  br i1 %371, label %373, label %75

373:                                              ; preds = %369, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  br label %374

374:                                              ; preds = %373, %19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [500 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = sub i32 16, %10
  %14 = sdiv i32 %13, -16
  br label %18

15:                                               ; preds = %5
  %16 = add nsw i32 %10, -1
  %17 = sdiv i32 %16, 16
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %109

21:                                               ; preds = %18
  %22 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %23 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 %19, i32* %7, align 4, !tbaa !4
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %27 = load i32, i32* %7, align 4, !tbaa !4
  %28 = icmp ugt i32 %27, %19
  %29 = select i1 %28, i32 %19, i32 %27
  store i32 %29, i32* %7, align 4, !tbaa !4
  %30 = load i32, i32* %6, align 4, !tbaa !4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i32 %30, %29
  br i1 %34, label %108, label %35

35:                                               ; preds = %21
  %36 = shl i32 %30, 4
  %37 = or i32 %36, 15
  %38 = add i32 %31, -1
  %39 = or i32 %36, 15
  %40 = sub i32 1, %36
  br label %41

41:                                               ; preds = %35, %104
  %42 = phi i32 [ 0, %35 ], [ %107, %104 ]
  %43 = phi i32 [ %30, %35 ], [ %105, %104 ]
  %44 = shl i32 %42, 4
  %45 = add i32 %39, %44
  %46 = call i32 @llvm.smin.i32(i32 %45, i32 %38)
  %47 = mul i32 %42, -16
  %48 = add i32 %40, %47
  %49 = add i32 %46, %48
  %50 = shl i32 %42, 4
  %51 = add i32 %37, %50
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 %38)
  %53 = add i32 %30, %42
  %54 = mul i32 %53, -16
  %55 = add i32 %52, %54
  %56 = add i32 %36, %50
  %57 = shl nsw i32 %43, 4
  %58 = or i32 %57, 15
  %59 = icmp slt i32 %58, %32
  %60 = select i1 %59, i32 %58, i32 %32
  %61 = sub i32 1, %57
  %62 = add i32 %61, %60
  %63 = icmp slt i32 %60, %57
  br i1 %63, label %104, label %64

64:                                               ; preds = %41
  %65 = load [500 x double]*, [500 x double]** %3, align 8
  %66 = load [500 x double]*, [500 x double]** %4, align 8
  %67 = icmp eq i32 %62, 0
  br i1 %67, label %104, label %68

68:                                               ; preds = %64
  %69 = icmp ult i32 %49, 2
  %70 = add i32 %56, %55
  %71 = icmp slt i32 %70, %56
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %68
  %74 = and i32 %49, -2
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %87, %75 ]
  %77 = add i32 %76, %57
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [500 x double], [500 x double]* %65, i64 %33, i64 %78
  %80 = bitcast double* %79 to <2 x double>*
  %81 = load <2 x double>, <2 x double>* %80, align 8, !tbaa !13, !llvm.access.group !66
  %82 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %33, i64 %78
  %83 = bitcast double* %82 to <2 x double>*
  %84 = load <2 x double>, <2 x double>* %83, align 8, !tbaa !13, !llvm.access.group !66
  %85 = fdiv <2 x double> %81, %84
  %86 = bitcast double* %79 to <2 x double>*
  store <2 x double> %85, <2 x double>* %86, align 8, !tbaa !13, !llvm.access.group !66
  %87 = add nuw i32 %76, 2
  %88 = icmp eq i32 %87, %74
  br i1 %88, label %89, label %75, !llvm.loop !67

89:                                               ; preds = %75
  %90 = icmp eq i32 %49, %74
  br i1 %90, label %104, label %91

91:                                               ; preds = %68, %89
  %92 = phi i32 [ 0, %68 ], [ %74, %89 ]
  br label %93

93:                                               ; preds = %91, %93
  %94 = phi i32 [ %102, %93 ], [ %92, %91 ]
  %95 = add i32 %94, %57
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [500 x double], [500 x double]* %65, i64 %33, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !13, !llvm.access.group !66
  %99 = getelementptr inbounds [500 x double], [500 x double]* %66, i64 %33, i64 %96
  %100 = load double, double* %99, align 8, !tbaa !13, !llvm.access.group !66
  %101 = fdiv double %98, %100
  store double %101, double* %97, align 8, !tbaa !13, !llvm.access.group !66
  %102 = add nuw i32 %94, 1
  %103 = icmp ult i32 %102, %62
  br i1 %103, label %93, label %104, !llvm.loop !69

104:                                              ; preds = %93, %89, %64, %41
  %105 = add i32 %43, 1
  %106 = icmp ugt i32 %105, %29
  %107 = add i32 %42, 1
  br i1 %106, label %108, label %41

108:                                              ; preds = %104, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  br label %109

109:                                              ; preds = %108, %18
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !19, !20}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = !{!25}
!25 = !{i64 2, i64 -1, i64 -1, i1 true}
!26 = distinct !{}
!27 = distinct !{!27, !28, !20}
!28 = !{!"llvm.loop.parallel_accesses", !26}
!29 = distinct !{!29, !28, !20}
!30 = distinct !{!30, !11, !12}
!31 = distinct !{!31, !11, !12}
!32 = distinct !{}
!33 = distinct !{!33, !34, !20}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = distinct !{!35, !34, !20}
!36 = distinct !{!36, !11, !12}
!37 = distinct !{!37, !11, !12}
!38 = distinct !{}
!39 = distinct !{!39, !40, !20}
!40 = !{!"llvm.loop.parallel_accesses", !38}
!41 = distinct !{!41, !40, !20}
!42 = distinct !{!42, !11, !12}
!43 = distinct !{!43, !11, !12}
!44 = distinct !{}
!45 = distinct !{!45, !46, !20}
!46 = !{!"llvm.loop.parallel_accesses", !44}
!47 = distinct !{!47, !46, !20}
!48 = distinct !{}
!49 = distinct !{!49, !50, !20}
!50 = !{!"llvm.loop.parallel_accesses", !48}
!51 = distinct !{!51, !50, !20}
!52 = distinct !{!52, !11, !12}
!53 = distinct !{!53, !11, !12}
!54 = distinct !{}
!55 = distinct !{!55, !56, !20}
!56 = !{!"llvm.loop.parallel_accesses", !54}
!57 = distinct !{!57, !56, !20}
!58 = distinct !{!58, !11, !12}
!59 = distinct !{!59, !11, !12}
!60 = distinct !{}
!61 = distinct !{!61, !62, !20}
!62 = !{!"llvm.loop.parallel_accesses", !60}
!63 = distinct !{!63, !62, !20}
!64 = distinct !{!64, !11, !12}
!65 = distinct !{!65, !11, !12}
!66 = distinct !{}
!67 = distinct !{!67, !68, !20}
!68 = !{!"llvm.loop.parallel_accesses", !66}
!69 = distinct !{!69, !68, !20}
