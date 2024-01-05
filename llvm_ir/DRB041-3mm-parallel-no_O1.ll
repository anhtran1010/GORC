; ModuleID = 'dataracebench/DRB041-3mm-parallel-no.c'
source_filename = "dataracebench/DRB041-3mm-parallel-no.c"
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
@.str.37 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca [128 x double]*, align 8
  %4 = alloca [128 x double]*, align 8
  %5 = alloca [128 x double]*, align 8
  %6 = alloca [128 x double]*, align 8
  %7 = alloca [128 x double]*, align 8
  %8 = alloca [128 x double]*, align 8
  %9 = alloca [128 x double]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [128 x double]*, align 8
  %16 = alloca [128 x double]*, align 8
  %17 = alloca [128 x double]*, align 8
  %18 = alloca [128 x double]*, align 8
  %19 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %20 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %21 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %22 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %23 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %24 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %25 = call i8* @polybench_alloc_data(i64 16384, i32 8) #5
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26)
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27)
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28)
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29)
  %30 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30)
  %31 = bitcast [128 x double]** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31)
  %32 = bitcast [128 x double]** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  %33 = bitcast [128 x double]** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast [128 x double]** %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  store i32 128, i32* %10, align 4, !tbaa !4
  store i32 128, i32* %11, align 4, !tbaa !4
  store i32 128, i32* %12, align 4, !tbaa !4
  store i32 128, i32* %13, align 4, !tbaa !4
  store i32 128, i32* %14, align 4, !tbaa !4
  %35 = bitcast [128 x double]** %15 to i8**
  store i8* %20, i8** %35, align 8, !tbaa !8
  %36 = bitcast [128 x double]** %16 to i8**
  store i8* %21, i8** %36, align 8, !tbaa !8
  %37 = bitcast [128 x double]** %17 to i8**
  store i8* %23, i8** %37, align 8, !tbaa !8
  %38 = bitcast [128 x double]** %18 to i8**
  store i8* %24, i8** %38, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 9, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %15, [128 x double]** nonnull %16, [128 x double]** nonnull %17, [128 x double]** nonnull %18) #5
  %39 = load i32, i32* %13, align 4, !tbaa !4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, [128 x double]** nonnull %15, [128 x double]** nonnull %16, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %14, align 4, !tbaa !4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %14, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, [128 x double]** nonnull %15, [128 x double]** nonnull %16, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %14, align 4, !tbaa !4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, [128 x double]** nonnull %15, [128 x double]** nonnull %16) #5
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %11, align 4, !tbaa !4
  %52 = icmp sgt i32 %51, 0
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %15, [128 x double]** nonnull %16, [128 x double]** nonnull %18) #5
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %11, align 4, !tbaa !4
  %59 = icmp sgt i32 %58, 0
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 1
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..5 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, [128 x double]** nonnull %15, [128 x double]** nonnull %16) #5
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %11, align 4, !tbaa !4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %14, i32* nonnull %10, i32* nonnull %12, [128 x double]** nonnull %15, [128 x double]** nonnull %16) #5
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %11, align 4, !tbaa !4
  %70 = icmp slt i32 %69, 1
  %71 = load i32, i32* %13, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..7 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %15, [128 x double]** nonnull %18) #5
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %11, align 4, !tbaa !4
  %77 = icmp slt i32 %76, 1
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 1
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..8 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, [128 x double]** nonnull %15) #5
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i32, i32* %11, align 4, !tbaa !4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..9 to void (i32*, i32*, ...)*), i32* nonnull %14, i32* nonnull %10, i32* nonnull %12, [128 x double]** nonnull %15) #5
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %12, align 4, !tbaa !4
  %88 = icmp sgt i32 %87, 0
  %89 = load i32, i32* %13, align 4
  %90 = icmp sgt i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined..10 to void (i32*, i32*, ...)*), i32* nonnull %12, i32* nonnull %10, i32* nonnull %11, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %15, [128 x double]** nonnull %17, [128 x double]** nonnull %18) #5
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i32, i32* %12, align 4, !tbaa !4
  %95 = icmp sgt i32 %94, 0
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 1
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..11 to void (i32*, i32*, ...)*), i32* nonnull %12, i32* nonnull %10, i32* nonnull %11, i32* nonnull %14, [128 x double]** nonnull %15, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i32, i32* %12, align 4, !tbaa !4
  %102 = icmp sgt i32 %101, 0
  %103 = load i32, i32* %14, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..12 to void (i32*, i32*, ...)*), i32* nonnull %12, i32* nonnull %14, i32* nonnull %10, i32* nonnull %11, [128 x double]** nonnull %15, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i32, i32* %12, align 4, !tbaa !4
  %109 = icmp sgt i32 %108, 0
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 1
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..13 to void (i32*, i32*, ...)*), i32* nonnull %12, i32* nonnull %10, i32* nonnull %11, [128 x double]** nonnull %15) #5
  br label %114

114:                                              ; preds = %113, %107
  %115 = load i32, i32* %12, align 4, !tbaa !4
  %116 = icmp sgt i32 %115, 0
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %117, 0
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..14 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %12, i32* nonnull %10, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %15, [128 x double]** nonnull %18) #5
  br label %121

121:                                              ; preds = %120, %114
  %122 = load i32, i32* %12, align 4, !tbaa !4
  %123 = icmp sgt i32 %122, 0
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 1
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..15 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %12, i32* nonnull %10, i32* nonnull %14, [128 x double]** nonnull %15) #5
  br label %128

128:                                              ; preds = %127, %121
  %129 = load i32, i32* %12, align 4, !tbaa !4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..16 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, i32* nonnull %10, [128 x double]** nonnull %15) #5
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i32, i32* %13, align 4, !tbaa !4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined..17 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %16, [128 x double]** nonnull %17, [128 x double]** nonnull %18) #5
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* %13, align 4, !tbaa !4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..18 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, [128 x double]** nonnull %16, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %14, align 4, !tbaa !4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..19 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, [128 x double]** nonnull %16, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %144

144:                                              ; preds = %143, %140
  %145 = load i32, i32* %14, align 4, !tbaa !4
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..20 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, [128 x double]** nonnull %16) #5
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, i32* %11, align 4, !tbaa !4
  %150 = icmp sgt i32 %149, 0
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..21 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %16, [128 x double]** nonnull %18) #5
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i32, i32* %11, align 4, !tbaa !4
  %157 = icmp sgt i32 %156, 0
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 1
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..22 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, [128 x double]** nonnull %16) #5
  br label %162

162:                                              ; preds = %161, %155
  %163 = load i32, i32* %11, align 4, !tbaa !4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..23 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %14, i32* nonnull %12, [128 x double]** nonnull %16) #5
  br label %166

166:                                              ; preds = %165, %162
  %167 = load i32, i32* %12, align 4, !tbaa !4
  %168 = icmp sgt i32 %167, 0
  %169 = load i32, i32* %13, align 4
  %170 = icmp sgt i32 %169, 0
  %171 = select i1 %168, i1 %170, i1 false
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..24 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %11, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %17, [128 x double]** nonnull %18) #5
  br label %173

173:                                              ; preds = %172, %166
  %174 = load i32, i32* %12, align 4, !tbaa !4
  %175 = icmp sgt i32 %174, 0
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 1
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, i32*)* @.omp_outlined..25 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %11, i32* nonnull %14, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %180

180:                                              ; preds = %179, %173
  %181 = load i32, i32* %12, align 4, !tbaa !4
  %182 = icmp sgt i32 %181, 0
  %183 = load i32, i32* %14, align 4
  %184 = icmp sgt i32 %183, 0
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**, i32*)* @.omp_outlined..26 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, i32* nonnull %11, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %187

187:                                              ; preds = %186, %180
  %188 = load i32, i32* %12, align 4, !tbaa !4
  %189 = icmp slt i32 %188, 1
  %190 = load i32, i32* %13, align 4
  %191 = icmp sgt i32 %190, 0
  %192 = select i1 %189, i1 %191, i1 false
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**, [128 x double]**, i32*)* @.omp_outlined..27 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %17, [128 x double]** nonnull %18, i32* nonnull %12) #5
  br label %194

194:                                              ; preds = %193, %187
  %195 = load i32, i32* %12, align 4, !tbaa !4
  %196 = icmp slt i32 %195, 1
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %197, 1
  %199 = select i1 %196, i1 %198, i1 false
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [128 x double]**, i32*)* @.omp_outlined..28 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %14, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %201

201:                                              ; preds = %200, %194
  %202 = load i32, i32* %12, align 4, !tbaa !4
  %203 = icmp slt i32 %202, 1
  %204 = load i32, i32* %14, align 4
  %205 = icmp sgt i32 %204, 0
  %206 = select i1 %203, i1 %205, i1 false
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [128 x double]**, i32*)* @.omp_outlined..29 to void (i32*, i32*, ...)*), i32* nonnull %14, i32* nonnull %11, [128 x double]** nonnull %17, i32* nonnull %13) #5
  br label %208

208:                                              ; preds = %207, %201
  %209 = load i32, i32* %11, align 4, !tbaa !4
  %210 = icmp slt i32 %209, 1
  %211 = load i32, i32* %13, align 4
  %212 = icmp sgt i32 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..30 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %18) #5
  br label %215

215:                                              ; preds = %214, %208
  %216 = load i32, i32* %12, align 4, !tbaa !4
  %217 = icmp sgt i32 %216, 0
  %218 = load i32, i32* %13, align 4
  %219 = icmp sgt i32 %218, 0
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, [128 x double]**)* @.omp_outlined..31 to void (i32*, i32*, ...)*), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %18) #5
  br label %222

222:                                              ; preds = %221, %215
  %223 = load i32, i32* %12, align 4, !tbaa !4
  %224 = icmp slt i32 %223, 1
  %225 = load i32, i32* %13, align 4
  %226 = icmp sgt i32 %225, 0
  %227 = select i1 %224, i1 %226, i1 false
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [128 x double]**, i32*)* @.omp_outlined..32 to void (i32*, i32*, ...)*), i32* nonnull %11, i32* nonnull %14, i32* nonnull %13, [128 x double]** nonnull %18, i32* nonnull %12) #5
  br label %229

229:                                              ; preds = %222, %228
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34)
  %230 = call i32 (...) @polybench_timer_start() #5
  %231 = bitcast i8* %25 to [128 x double]*
  %232 = bitcast [128 x double]** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %232)
  %233 = bitcast [128 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %233)
  %234 = bitcast [128 x double]** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %234)
  %235 = bitcast [128 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %235)
  %236 = bitcast [128 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %236)
  %237 = bitcast [128 x double]** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %237)
  %238 = bitcast [128 x double]** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %238)
  %239 = bitcast [128 x double]** %3 to i8**
  store i8* %19, i8** %239, align 8, !tbaa !8
  %240 = bitcast [128 x double]** %4 to i8**
  store i8* %20, i8** %240, align 8, !tbaa !8
  %241 = bitcast [128 x double]** %5 to i8**
  store i8* %21, i8** %241, align 8, !tbaa !8
  %242 = bitcast [128 x double]** %6 to i8**
  store i8* %22, i8** %242, align 8, !tbaa !8
  %243 = bitcast [128 x double]** %7 to i8**
  store i8* %23, i8** %243, align 8, !tbaa !8
  %244 = bitcast [128 x double]** %8 to i8**
  store i8* %24, i8** %244, align 8, !tbaa !8
  %245 = bitcast [128 x double]** %9 to i8**
  store i8* %25, i8** %245, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [128 x double]**, [128 x double]**)* @.omp_outlined..33 to void (i32*, i32*, ...)*), [128 x double]** nonnull %9, [128 x double]** nonnull %6) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined..34 to void (i32*, i32*, ...)*), [128 x double]** nonnull %6, [128 x double]** nonnull %7, [128 x double]** nonnull %8) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [128 x double]**)* @.omp_outlined..35 to void (i32*, i32*, ...)*), [128 x double]** nonnull %3) #5
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [128 x double]**, [128 x double]**, [128 x double]**, [128 x double]**, [128 x double]**)* @.omp_outlined..36 to void (i32*, i32*, ...)*), [128 x double]** nonnull %3, [128 x double]** nonnull %4, [128 x double]** nonnull %5, [128 x double]** nonnull %9, [128 x double]** nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %232)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %233)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %234)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %236)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %237)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %238)
  %246 = call i32 (...) @polybench_timer_stop() #5
  %247 = call i32 (...) @polybench_timer_print() #5
  %248 = icmp sgt i32 %0, 42
  br i1 %248, label %249, label %278

249:                                              ; preds = %229
  %250 = load i8*, i8** %1, align 8, !tbaa !8
  %251 = load i8, i8* %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %278

253:                                              ; preds = %249, %272
  %254 = phi i64 [ %273, %272 ], [ 0, %249 ]
  %255 = shl nsw i64 %254, 7
  br label %256

256:                                              ; preds = %269, %253
  %257 = phi i64 [ 0, %253 ], [ %270, %269 ]
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %259 = getelementptr inbounds [128 x double], [128 x double]* %231, i64 %254, i64 %257
  %260 = load double, double* %259, align 8, !tbaa !10
  %261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), double %260) #9
  %262 = add nuw nsw i64 %257, %255
  %263 = trunc i64 %262 to i32
  %264 = urem i32 %263, 20
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %256
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %268 = call i32 @fputc(i32 10, %struct._IO_FILE* %267) #5
  br label %269

269:                                              ; preds = %266, %256
  %270 = add nuw nsw i64 %257, 1
  %271 = icmp eq i64 %270, 128
  br i1 %271, label %272, label %256, !llvm.loop !12

272:                                              ; preds = %269
  %273 = add nuw nsw i64 %254, 1
  %274 = icmp eq i64 %273, 128
  br i1 %274, label %275, label %253, !llvm.loop !15

275:                                              ; preds = %272
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %277 = call i32 @fputc(i32 10, %struct._IO_FILE* %276) #5
  br label %278

278:                                              ; preds = %275, %249, %229
  call void @free(i8* %19) #5
  call void @free(i8* %20) #5
  call void @free(i8* %21) #5
  call void @free(i8* %22) #5
  call void @free(i8* %23) #5
  call void @free(i8* %24) #5
  call void @free(i8* %25) #5
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nonnull readonly align 4 dereferenceable(4) %3, i32* nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %9, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %10) #4 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = load i32, i32* %2, align 4, !tbaa !4
  %17 = load i32, i32* %3, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %4, align 4, !tbaa !4
  %21 = icmp slt i32 %19, %20
  %22 = select i1 %21, i32 %19, i32 %20
  %23 = load i32, i32* %5, align 4, !tbaa !4
  %24 = icmp slt i32 %22, %23
  %25 = select i1 %21, i32 %19, i32 %20
  %26 = select i1 %24, i32 %25, i32 %23
  %27 = add nsw i32 %26, -1
  %28 = icmp sgt i32 %26, 0
  br i1 %28, label %29, label %573

29:                                               ; preds = %11
  %30 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %31 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 %27, i32* %13, align 4, !tbaa !4
  %32 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #5
  store i32 1, i32* %14, align 4, !tbaa !4
  %33 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #5
  store i32 0, i32* %15, align 4, !tbaa !4
  %34 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %34, i32 34, i32* nonnull %15, i32* nonnull %12, i32* nonnull %13, i32* nonnull %14, i32 1, i32 1)
  %35 = load i32, i32* %13, align 4, !tbaa !4
  %36 = icmp ugt i32 %35, %27
  %37 = select i1 %36, i32 %27, i32 %35
  store i32 %37, i32* %13, align 4, !tbaa !4
  %38 = load i32, i32* %12, align 4, !tbaa !4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  %42 = select i1 %41, i32 %39, i32 %40
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  %45 = select i1 %44, i32 %42, i32 %43
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  %48 = select i1 %44, i32 %42, i32 %43
  %49 = select i1 %47, i32 %48, i32 %46
  %50 = sitofp i32 %39 to double
  %51 = sitofp i32 %43 to double
  %52 = sitofp i32 %40 to double
  %53 = icmp sgt i32 %49, 0
  %54 = icmp slt i32 %42, %46
  %55 = sitofp i32 %43 to double
  %56 = icmp sgt i32 %43, %46
  %57 = select i1 %56, i32 %43, i32 %46
  %58 = icmp ugt i32 %38, %37
  br i1 %58, label %572, label %59

59:                                               ; preds = %29
  %60 = sext i32 %43 to i64
  %61 = sext i32 %46 to i64
  %62 = sext i32 %57 to i64
  %63 = zext i32 %49 to i64
  %64 = sext i32 %46 to i64
  br label %65

65:                                               ; preds = %59, %569
  %66 = phi i32 [ %570, %569 ], [ %38, %59 ]
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* %2, align 4
  %69 = sitofp i32 %68 to double
  %70 = load [128 x double]*, [128 x double]** %7, align 8
  %71 = sext i32 %66 to i64
  %72 = load [128 x double]*, [128 x double]** %8, align 8
  %73 = load [128 x double]*, [128 x double]** %9, align 8
  %74 = load [128 x double]*, [128 x double]** %10, align 8
  br i1 %53, label %89, label %75

75:                                               ; preds = %89, %65
  %76 = sitofp i32 %66 to double
  %77 = load i32, i32* %2, align 4
  %78 = sitofp i32 %77 to double
  %79 = load [128 x double]*, [128 x double]** %7, align 8
  %80 = sext i32 %66 to i64
  %81 = load [128 x double]*, [128 x double]** %8, align 8
  %82 = load [128 x double]*, [128 x double]** %9, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  %86 = select i1 %85, i32 %83, i32 %84
  %87 = select i1 %54, i32 %86, i32 %46
  %88 = icmp slt i32 %43, %87
  br i1 %88, label %131, label %115

89:                                               ; preds = %65, %89
  %90 = phi i64 [ %96, %89 ], [ 0, %65 ]
  %91 = trunc i64 %90 to i32
  %92 = sitofp i32 %91 to double
  %93 = fmul double %67, %92
  %94 = fdiv double %93, %69
  %95 = getelementptr inbounds [128 x double], [128 x double]* %70, i64 %71, i64 %90
  store double %94, double* %95, align 8, !tbaa !10
  %96 = add nuw nsw i64 %90, 1
  %97 = trunc i64 %96 to i32
  %98 = sitofp i32 %97 to double
  %99 = fmul double %67, %98
  %100 = fdiv double %99, %50
  %101 = getelementptr inbounds [128 x double], [128 x double]* %72, i64 %71, i64 %90
  store double %100, double* %101, align 8, !tbaa !10
  %102 = trunc i64 %90 to i32
  %103 = add i32 %102, 3
  %104 = sitofp i32 %103 to double
  %105 = fmul double %67, %104
  %106 = fdiv double %105, %51
  %107 = getelementptr inbounds [128 x double], [128 x double]* %73, i64 %71, i64 %90
  store double %106, double* %107, align 8, !tbaa !10
  %108 = trunc i64 %90 to i32
  %109 = add i32 %108, 2
  %110 = sitofp i32 %109 to double
  %111 = fmul double %67, %110
  %112 = fdiv double %111, %52
  %113 = getelementptr inbounds [128 x double], [128 x double]* %74, i64 %71, i64 %90
  store double %112, double* %113, align 8, !tbaa !10
  %114 = icmp eq i64 %96, %63
  br i1 %114, label %75, label %89, !llvm.loop !16

115:                                              ; preds = %131, %75
  %116 = phi i32 [ %86, %75 ], [ %155, %131 ]
  %117 = icmp slt i32 %116, %43
  %118 = sitofp i32 %66 to double
  %119 = load i32, i32* %2, align 4
  %120 = sitofp i32 %119 to double
  %121 = load [128 x double]*, [128 x double]** %7, align 8
  %122 = sext i32 %66 to i64
  %123 = load [128 x double]*, [128 x double]** %8, align 8
  %124 = load [128 x double]*, [128 x double]** %10, align 8
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  %128 = select i1 %127, i32 %125, i32 %126
  %129 = select i1 %117, i32 %128, i32 %43
  %130 = icmp slt i32 %46, %129
  br i1 %130, label %159, label %189

131:                                              ; preds = %75, %131
  %132 = phi i64 [ %139, %131 ], [ %60, %75 ]
  %133 = phi i32 [ %152, %131 ], [ %83, %75 ]
  %134 = trunc i64 %132 to i32
  %135 = sitofp i32 %134 to double
  %136 = fmul double %76, %135
  %137 = fdiv double %136, %78
  %138 = getelementptr inbounds [128 x double], [128 x double]* %79, i64 %80, i64 %132
  store double %137, double* %138, align 8, !tbaa !10
  %139 = add nsw i64 %132, 1
  %140 = trunc i64 %139 to i32
  %141 = sitofp i32 %140 to double
  %142 = fmul double %76, %141
  %143 = sitofp i32 %133 to double
  %144 = fdiv double %142, %143
  %145 = getelementptr inbounds [128 x double], [128 x double]* %81, i64 %80, i64 %132
  store double %144, double* %145, align 8, !tbaa !10
  %146 = trunc i64 %132 to i32
  %147 = add i32 %146, 3
  %148 = sitofp i32 %147 to double
  %149 = fmul double %76, %148
  %150 = fdiv double %149, %55
  %151 = getelementptr inbounds [128 x double], [128 x double]* %82, i64 %80, i64 %132
  store double %150, double* %151, align 8, !tbaa !10
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp slt i32 %152, %153
  %155 = select i1 %154, i32 %152, i32 %153
  %156 = select i1 %54, i32 %155, i32 %46
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %139, %157
  br i1 %158, label %131, label %115, !llvm.loop !17

159:                                              ; preds = %115, %159
  %160 = phi i64 [ %168, %159 ], [ %61, %115 ]
  %161 = phi i32 [ %183, %159 ], [ %126, %115 ]
  %162 = phi i32 [ %182, %159 ], [ %125, %115 ]
  %163 = trunc i64 %160 to i32
  %164 = sitofp i32 %163 to double
  %165 = fmul double %118, %164
  %166 = fdiv double %165, %120
  %167 = getelementptr inbounds [128 x double], [128 x double]* %121, i64 %122, i64 %160
  store double %166, double* %167, align 8, !tbaa !10
  %168 = add nsw i64 %160, 1
  %169 = trunc i64 %168 to i32
  %170 = sitofp i32 %169 to double
  %171 = fmul double %118, %170
  %172 = sitofp i32 %162 to double
  %173 = fdiv double %171, %172
  %174 = getelementptr inbounds [128 x double], [128 x double]* %123, i64 %122, i64 %160
  store double %173, double* %174, align 8, !tbaa !10
  %175 = trunc i64 %160 to i32
  %176 = add i32 %175, 2
  %177 = sitofp i32 %176 to double
  %178 = fmul double %118, %177
  %179 = sitofp i32 %161 to double
  %180 = fdiv double %178, %179
  %181 = getelementptr inbounds [128 x double], [128 x double]* %124, i64 %122, i64 %160
  store double %180, double* %181, align 8, !tbaa !10
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %182, %183
  %185 = select i1 %184, i32 %182, i32 %183
  %186 = select i1 %117, i32 %185, i32 %43
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %168, %187
  br i1 %188, label %159, label %189, !llvm.loop !18

189:                                              ; preds = %159, %115
  %190 = phi i32 [ %125, %115 ], [ %182, %159 ]
  %191 = phi i32 [ %126, %115 ], [ %183, %159 ]
  %192 = phi i32 [ %128, %115 ], [ %185, %159 ]
  %193 = sitofp i32 %66 to double
  %194 = load i32, i32* %2, align 4
  %195 = sitofp i32 %194 to double
  %196 = load [128 x double]*, [128 x double]** %7, align 8
  %197 = sext i32 %66 to i64
  %198 = sitofp i32 %190 to double
  %199 = load [128 x double]*, [128 x double]** %8, align 8
  %200 = icmp slt i32 %57, %192
  br i1 %200, label %201, label %203

201:                                              ; preds = %189
  %202 = sext i32 %192 to i64
  br label %222

203:                                              ; preds = %222, %189
  %204 = icmp slt i32 %191, %43
  %205 = select i1 %204, i32 %191, i32 %43
  %206 = icmp slt i32 %205, %46
  %207 = sitofp i32 %66 to double
  %208 = load i32, i32* %2, align 4
  %209 = sitofp i32 %208 to double
  %210 = load [128 x double]*, [128 x double]** %7, align 8
  %211 = sext i32 %66 to i64
  %212 = load [128 x double]*, [128 x double]** %9, align 8
  %213 = load [128 x double]*, [128 x double]** %10, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %214, %215
  %217 = select i1 %216, i32 %214, i32 %215
  %218 = select i1 %206, i32 %217, i32 %46
  %219 = icmp slt i32 %190, %218
  br i1 %219, label %220, label %267

220:                                              ; preds = %203
  %221 = sext i32 %190 to i64
  br label %236

222:                                              ; preds = %201, %222
  %223 = phi i64 [ %62, %201 ], [ %229, %222 ]
  %224 = trunc i64 %223 to i32
  %225 = sitofp i32 %224 to double
  %226 = fmul double %193, %225
  %227 = fdiv double %226, %195
  %228 = getelementptr inbounds [128 x double], [128 x double]* %196, i64 %197, i64 %223
  store double %227, double* %228, align 8, !tbaa !10
  %229 = add nsw i64 %223, 1
  %230 = trunc i64 %229 to i32
  %231 = sitofp i32 %230 to double
  %232 = fmul double %193, %231
  %233 = fdiv double %232, %198
  %234 = getelementptr inbounds [128 x double], [128 x double]* %199, i64 %197, i64 %223
  store double %233, double* %234, align 8, !tbaa !10
  %235 = icmp eq i64 %229, %202
  br i1 %235, label %203, label %222, !llvm.loop !19

236:                                              ; preds = %220, %236
  %237 = phi i64 [ %221, %220 ], [ %259, %236 ]
  %238 = phi i32 [ %215, %220 ], [ %261, %236 ]
  %239 = phi i32 [ %214, %220 ], [ %260, %236 ]
  %240 = trunc i64 %237 to i32
  %241 = sitofp i32 %240 to double
  %242 = fmul double %207, %241
  %243 = fdiv double %242, %209
  %244 = getelementptr inbounds [128 x double], [128 x double]* %210, i64 %211, i64 %237
  store double %243, double* %244, align 8, !tbaa !10
  %245 = trunc i64 %237 to i32
  %246 = add i32 %245, 3
  %247 = sitofp i32 %246 to double
  %248 = fmul double %207, %247
  %249 = sitofp i32 %238 to double
  %250 = fdiv double %248, %249
  %251 = getelementptr inbounds [128 x double], [128 x double]* %212, i64 %211, i64 %237
  store double %250, double* %251, align 8, !tbaa !10
  %252 = trunc i64 %237 to i32
  %253 = add i32 %252, 2
  %254 = sitofp i32 %253 to double
  %255 = fmul double %207, %254
  %256 = sitofp i32 %239 to double
  %257 = fdiv double %255, %256
  %258 = getelementptr inbounds [128 x double], [128 x double]* %213, i64 %211, i64 %237
  store double %257, double* %258, align 8, !tbaa !10
  %259 = add nsw i64 %237, 1
  %260 = load i32, i32* %4, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %260, %261
  %263 = select i1 %262, i32 %260, i32 %261
  %264 = select i1 %206, i32 %263, i32 %46
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %259, %265
  br i1 %266, label %236, label %267, !llvm.loop !20

267:                                              ; preds = %236, %203
  %268 = phi i32 [ %214, %203 ], [ %260, %236 ]
  %269 = phi i32 [ %215, %203 ], [ %261, %236 ]
  %270 = phi i32 [ %217, %203 ], [ %263, %236 ]
  %271 = icmp sgt i32 %190, %269
  %272 = select i1 %271, i32 %190, i32 %269
  %273 = icmp slt i32 %268, %46
  %274 = select i1 %273, i32 %268, i32 %46
  %275 = sitofp i32 %66 to double
  %276 = load i32, i32* %2, align 4
  %277 = sitofp i32 %276 to double
  %278 = load [128 x double]*, [128 x double]** %7, align 8
  %279 = sext i32 %66 to i64
  %280 = sitofp i32 %269 to double
  %281 = load [128 x double]*, [128 x double]** %9, align 8
  %282 = icmp slt i32 %272, %274
  br i1 %282, label %283, label %301

283:                                              ; preds = %267
  %284 = sext i32 %272 to i64
  %285 = sext i32 %274 to i64
  br label %286

286:                                              ; preds = %283, %286
  %287 = phi i64 [ %284, %283 ], [ %299, %286 ]
  %288 = trunc i64 %287 to i32
  %289 = sitofp i32 %288 to double
  %290 = fmul double %275, %289
  %291 = fdiv double %290, %277
  %292 = getelementptr inbounds [128 x double], [128 x double]* %278, i64 %279, i64 %287
  store double %291, double* %292, align 8, !tbaa !10
  %293 = trunc i64 %287 to i32
  %294 = add i32 %293, 3
  %295 = sitofp i32 %294 to double
  %296 = fmul double %275, %295
  %297 = fdiv double %296, %280
  %298 = getelementptr inbounds [128 x double], [128 x double]* %281, i64 %279, i64 %287
  store double %297, double* %298, align 8, !tbaa !10
  %299 = add nsw i64 %287, 1
  %300 = icmp eq i64 %299, %285
  br i1 %300, label %301, label %286, !llvm.loop !21

301:                                              ; preds = %286, %267
  %302 = icmp sgt i32 %190, %46
  %303 = select i1 %302, i32 %190, i32 %46
  %304 = sitofp i32 %66 to double
  %305 = load i32, i32* %2, align 4
  %306 = sitofp i32 %305 to double
  %307 = load [128 x double]*, [128 x double]** %7, align 8
  %308 = sext i32 %66 to i64
  %309 = sitofp i32 %268 to double
  %310 = load [128 x double]*, [128 x double]** %10, align 8
  %311 = icmp slt i32 %303, %270
  br i1 %311, label %312, label %330

312:                                              ; preds = %301
  %313 = sext i32 %303 to i64
  %314 = sext i32 %270 to i64
  br label %315

315:                                              ; preds = %312, %315
  %316 = phi i64 [ %313, %312 ], [ %328, %315 ]
  %317 = trunc i64 %316 to i32
  %318 = sitofp i32 %317 to double
  %319 = fmul double %304, %318
  %320 = fdiv double %319, %306
  %321 = getelementptr inbounds [128 x double], [128 x double]* %307, i64 %308, i64 %316
  store double %320, double* %321, align 8, !tbaa !10
  %322 = trunc i64 %316 to i32
  %323 = add i32 %322, 2
  %324 = sitofp i32 %323 to double
  %325 = fmul double %304, %324
  %326 = fdiv double %325, %309
  %327 = getelementptr inbounds [128 x double], [128 x double]* %310, i64 %308, i64 %316
  store double %326, double* %327, align 8, !tbaa !10
  %328 = add nsw i64 %316, 1
  %329 = icmp eq i64 %328, %314
  br i1 %329, label %330, label %315, !llvm.loop !22

330:                                              ; preds = %315, %301
  %331 = icmp sgt i32 %272, %46
  %332 = load i32, i32* %3, align 4
  %333 = load i32, i32* %6, align 4
  %334 = icmp sgt i32 %332, %333
  %335 = select i1 %334, i32 %332, i32 %333
  %336 = select i1 %331, i32 %335, i32 %46
  %337 = sitofp i32 %66 to double
  %338 = load i32, i32* %2, align 4
  %339 = sitofp i32 %338 to double
  %340 = load [128 x double]*, [128 x double]** %7, align 8
  %341 = sext i32 %66 to i64
  %342 = icmp slt i32 %336, %268
  br i1 %342, label %343, label %346

343:                                              ; preds = %330
  %344 = sext i32 %336 to i64
  %345 = sext i32 %268 to i64
  br label %364

346:                                              ; preds = %364, %330
  %347 = icmp slt i32 %332, %333
  %348 = select i1 %347, i32 %332, i32 %333
  %349 = icmp slt i32 %348, %46
  %350 = sitofp i32 %66 to double
  %351 = load [128 x double]*, [128 x double]** %8, align 8
  %352 = sext i32 %66 to i64
  %353 = load [128 x double]*, [128 x double]** %9, align 8
  %354 = sitofp i32 %268 to double
  %355 = load [128 x double]*, [128 x double]** %10, align 8
  %356 = load i32, i32* %3, align 4
  %357 = load i32, i32* %6, align 4
  %358 = icmp slt i32 %356, %357
  %359 = select i1 %358, i32 %356, i32 %357
  %360 = select i1 %349, i32 %359, i32 %46
  %361 = icmp slt i32 %268, %360
  br i1 %361, label %362, label %404

362:                                              ; preds = %346
  %363 = sext i32 %268 to i64
  br label %373

364:                                              ; preds = %343, %364
  %365 = phi i64 [ %344, %343 ], [ %371, %364 ]
  %366 = trunc i64 %365 to i32
  %367 = sitofp i32 %366 to double
  %368 = fmul double %337, %367
  %369 = fdiv double %368, %339
  %370 = getelementptr inbounds [128 x double], [128 x double]* %340, i64 %341, i64 %365
  store double %369, double* %370, align 8, !tbaa !10
  %371 = add nsw i64 %365, 1
  %372 = icmp eq i64 %371, %345
  br i1 %372, label %346, label %364, !llvm.loop !23

373:                                              ; preds = %362, %373
  %374 = phi i64 [ %363, %362 ], [ %377, %373 ]
  %375 = phi i32 [ %357, %362 ], [ %398, %373 ]
  %376 = phi i32 [ %356, %362 ], [ %397, %373 ]
  %377 = add nsw i64 %374, 1
  %378 = trunc i64 %377 to i32
  %379 = sitofp i32 %378 to double
  %380 = fmul double %350, %379
  %381 = sitofp i32 %376 to double
  %382 = fdiv double %380, %381
  %383 = getelementptr inbounds [128 x double], [128 x double]* %351, i64 %352, i64 %374
  store double %382, double* %383, align 8, !tbaa !10
  %384 = trunc i64 %374 to i32
  %385 = add i32 %384, 3
  %386 = sitofp i32 %385 to double
  %387 = fmul double %350, %386
  %388 = sitofp i32 %375 to double
  %389 = fdiv double %387, %388
  %390 = getelementptr inbounds [128 x double], [128 x double]* %353, i64 %352, i64 %374
  store double %389, double* %390, align 8, !tbaa !10
  %391 = trunc i64 %374 to i32
  %392 = add i32 %391, 2
  %393 = sitofp i32 %392 to double
  %394 = fmul double %350, %393
  %395 = fdiv double %394, %354
  %396 = getelementptr inbounds [128 x double], [128 x double]* %355, i64 %352, i64 %374
  store double %395, double* %396, align 8, !tbaa !10
  %397 = load i32, i32* %3, align 4
  %398 = load i32, i32* %6, align 4
  %399 = icmp slt i32 %397, %398
  %400 = select i1 %399, i32 %397, i32 %398
  %401 = select i1 %349, i32 %400, i32 %46
  %402 = sext i32 %401 to i64
  %403 = icmp slt i64 %377, %402
  br i1 %403, label %373, label %404, !llvm.loop !24

404:                                              ; preds = %373, %346
  %405 = phi i32 [ %356, %346 ], [ %397, %373 ]
  %406 = phi i32 [ %357, %346 ], [ %398, %373 ]
  %407 = phi i32 [ %359, %346 ], [ %400, %373 ]
  %408 = icmp sgt i32 %268, %406
  %409 = select i1 %408, i32 %268, i32 %406
  %410 = icmp slt i32 %405, %46
  %411 = select i1 %410, i32 %405, i32 %46
  %412 = sitofp i32 %66 to double
  %413 = sitofp i32 %405 to double
  %414 = load [128 x double]*, [128 x double]** %8, align 8
  %415 = sext i32 %66 to i64
  %416 = sitofp i32 %406 to double
  %417 = load [128 x double]*, [128 x double]** %9, align 8
  %418 = icmp slt i32 %409, %411
  br i1 %418, label %419, label %437

419:                                              ; preds = %404
  %420 = sext i32 %409 to i64
  %421 = sext i32 %411 to i64
  br label %422

422:                                              ; preds = %419, %422
  %423 = phi i64 [ %420, %419 ], [ %424, %422 ]
  %424 = add nsw i64 %423, 1
  %425 = trunc i64 %424 to i32
  %426 = sitofp i32 %425 to double
  %427 = fmul double %412, %426
  %428 = fdiv double %427, %413
  %429 = getelementptr inbounds [128 x double], [128 x double]* %414, i64 %415, i64 %423
  store double %428, double* %429, align 8, !tbaa !10
  %430 = trunc i64 %423 to i32
  %431 = add i32 %430, 3
  %432 = sitofp i32 %431 to double
  %433 = fmul double %412, %432
  %434 = fdiv double %433, %416
  %435 = getelementptr inbounds [128 x double], [128 x double]* %417, i64 %415, i64 %423
  store double %434, double* %435, align 8, !tbaa !10
  %436 = icmp eq i64 %424, %421
  br i1 %436, label %437, label %422, !llvm.loop !25

437:                                              ; preds = %422, %404
  %438 = icmp sgt i32 %268, %46
  %439 = select i1 %438, i32 %268, i32 %46
  %440 = sitofp i32 %66 to double
  %441 = sitofp i32 %405 to double
  %442 = load [128 x double]*, [128 x double]** %8, align 8
  %443 = sext i32 %66 to i64
  %444 = sitofp i32 %268 to double
  %445 = load [128 x double]*, [128 x double]** %10, align 8
  %446 = icmp slt i32 %439, %407
  br i1 %446, label %447, label %465

447:                                              ; preds = %437
  %448 = sext i32 %439 to i64
  %449 = sext i32 %407 to i64
  br label %450

450:                                              ; preds = %447, %450
  %451 = phi i64 [ %448, %447 ], [ %452, %450 ]
  %452 = add nsw i64 %451, 1
  %453 = trunc i64 %452 to i32
  %454 = sitofp i32 %453 to double
  %455 = fmul double %440, %454
  %456 = fdiv double %455, %441
  %457 = getelementptr inbounds [128 x double], [128 x double]* %442, i64 %443, i64 %451
  store double %456, double* %457, align 8, !tbaa !10
  %458 = trunc i64 %451 to i32
  %459 = add i32 %458, 2
  %460 = sitofp i32 %459 to double
  %461 = fmul double %440, %460
  %462 = fdiv double %461, %444
  %463 = getelementptr inbounds [128 x double], [128 x double]* %445, i64 %443, i64 %451
  store double %462, double* %463, align 8, !tbaa !10
  %464 = icmp eq i64 %452, %449
  br i1 %464, label %465, label %450, !llvm.loop !26

465:                                              ; preds = %450, %437
  %466 = icmp sgt i32 %409, %46
  %467 = load i32, i32* %4, align 4
  %468 = load i32, i32* %6, align 4
  %469 = icmp sgt i32 %467, %468
  %470 = select i1 %469, i32 %467, i32 %468
  %471 = select i1 %466, i32 %470, i32 %46
  %472 = sitofp i32 %66 to double
  %473 = sitofp i32 %405 to double
  %474 = load [128 x double]*, [128 x double]** %8, align 8
  %475 = sext i32 %66 to i64
  %476 = icmp slt i32 %471, %405
  br i1 %476, label %477, label %489

477:                                              ; preds = %465
  %478 = sext i32 %471 to i64
  %479 = sext i32 %405 to i64
  br label %480

480:                                              ; preds = %477, %480
  %481 = phi i64 [ %478, %477 ], [ %482, %480 ]
  %482 = add nsw i64 %481, 1
  %483 = trunc i64 %482 to i32
  %484 = sitofp i32 %483 to double
  %485 = fmul double %472, %484
  %486 = fdiv double %485, %473
  %487 = getelementptr inbounds [128 x double], [128 x double]* %474, i64 %475, i64 %481
  store double %486, double* %487, align 8, !tbaa !10
  %488 = icmp eq i64 %482, %479
  br i1 %488, label %489, label %480, !llvm.loop !27

489:                                              ; preds = %480, %465
  %490 = icmp sgt i32 %405, %467
  %491 = select i1 %490, i32 %405, i32 %467
  %492 = icmp slt i32 %468, %46
  %493 = select i1 %492, i32 %468, i32 %46
  %494 = sitofp i32 %66 to double
  %495 = sitofp i32 %468 to double
  %496 = load [128 x double]*, [128 x double]** %9, align 8
  %497 = sext i32 %66 to i64
  %498 = sitofp i32 %467 to double
  %499 = load [128 x double]*, [128 x double]** %10, align 8
  %500 = icmp slt i32 %491, %493
  br i1 %500, label %501, label %520

501:                                              ; preds = %489
  %502 = sext i32 %491 to i64
  %503 = sext i32 %493 to i64
  br label %504

504:                                              ; preds = %501, %504
  %505 = phi i64 [ %502, %501 ], [ %518, %504 ]
  %506 = trunc i64 %505 to i32
  %507 = add i32 %506, 3
  %508 = sitofp i32 %507 to double
  %509 = fmul double %494, %508
  %510 = fdiv double %509, %495
  %511 = getelementptr inbounds [128 x double], [128 x double]* %496, i64 %497, i64 %505
  store double %510, double* %511, align 8, !tbaa !10
  %512 = trunc i64 %505 to i32
  %513 = add i32 %512, 2
  %514 = sitofp i32 %513 to double
  %515 = fmul double %494, %514
  %516 = fdiv double %515, %498
  %517 = getelementptr inbounds [128 x double], [128 x double]* %499, i64 %497, i64 %505
  store double %516, double* %517, align 8, !tbaa !10
  %518 = add nsw i64 %505, 1
  %519 = icmp eq i64 %518, %503
  br i1 %519, label %520, label %504, !llvm.loop !28

520:                                              ; preds = %504, %489
  %521 = icmp sgt i32 %491, %468
  %522 = load i32, i32* %3, align 4
  %523 = load i32, i32* %4, align 4
  %524 = icmp sgt i32 %522, %523
  %525 = select i1 %524, i32 %522, i32 %523
  %526 = select i1 %521, i32 %525, i32 %468
  %527 = sitofp i32 %66 to double
  %528 = sitofp i32 %468 to double
  %529 = load [128 x double]*, [128 x double]** %9, align 8
  %530 = sext i32 %66 to i64
  %531 = icmp slt i32 %526, %46
  br i1 %531, label %532, label %544

532:                                              ; preds = %520
  %533 = sext i32 %526 to i64
  br label %534

534:                                              ; preds = %532, %534
  %535 = phi i64 [ %533, %532 ], [ %542, %534 ]
  %536 = trunc i64 %535 to i32
  %537 = add i32 %536, 3
  %538 = sitofp i32 %537 to double
  %539 = fmul double %527, %538
  %540 = fdiv double %539, %528
  %541 = getelementptr inbounds [128 x double], [128 x double]* %529, i64 %530, i64 %535
  store double %540, double* %541, align 8, !tbaa !10
  %542 = add nsw i64 %535, 1
  %543 = icmp eq i64 %542, %64
  br i1 %543, label %544, label %534, !llvm.loop !29

544:                                              ; preds = %534, %520
  %545 = icmp sgt i32 %525, %46
  %546 = load i32, i32* %3, align 4
  %547 = load i32, i32* %4, align 4
  %548 = icmp sgt i32 %546, %547
  %549 = select i1 %548, i32 %546, i32 %547
  %550 = select i1 %545, i32 %549, i32 %46
  %551 = sitofp i32 %66 to double
  %552 = sitofp i32 %547 to double
  %553 = load [128 x double]*, [128 x double]** %10, align 8
  %554 = sext i32 %66 to i64
  %555 = icmp slt i32 %550, %468
  br i1 %555, label %556, label %569

556:                                              ; preds = %544
  %557 = sext i32 %550 to i64
  %558 = sext i32 %468 to i64
  br label %559

559:                                              ; preds = %556, %559
  %560 = phi i64 [ %557, %556 ], [ %567, %559 ]
  %561 = trunc i64 %560 to i32
  %562 = add i32 %561, 2
  %563 = sitofp i32 %562 to double
  %564 = fmul double %551, %563
  %565 = fdiv double %564, %552
  %566 = getelementptr inbounds [128 x double], [128 x double]* %553, i64 %554, i64 %560
  store double %565, double* %566, align 8, !tbaa !10
  %567 = add nsw i64 %560, 1
  %568 = icmp eq i64 %567, %558
  br i1 %568, label %569, label %559, !llvm.loop !30

569:                                              ; preds = %559, %544
  %570 = add i32 %66, 1
  %571 = icmp ugt i32 %570, %37
  br i1 %571, label %572, label %65

572:                                              ; preds = %569, %29
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %34)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  br label %573

573:                                              ; preds = %572, %11
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4u(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !31 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, i32* nocapture nonnull readonly align 4 dereferenceable(4) %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = load i32, i32* %3, align 4, !tbaa !4
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = load i32, i32* %4, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = load i32, i32* %5, align 4, !tbaa !4
  %23 = icmp slt i32 %21, %22
  %24 = select i1 %20, i32 %18, i32 %19
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = add nsw i32 %25, -1
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %28, label %227

28:                                               ; preds = %10
  %29 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %30 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 %26, i32* %12, align 4, !tbaa !4
  %31 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 1, i32* %13, align 4, !tbaa !4
  %32 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #5
  store i32 0, i32* %14, align 4, !tbaa !4
  %33 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %33, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %34 = load i32, i32* %12, align 4, !tbaa !4
  %35 = icmp ugt i32 %34, %26
  %36 = select i1 %35, i32 %26, i32 %34
  store i32 %36, i32* %12, align 4, !tbaa !4
  %37 = load i32, i32* %11, align 4, !tbaa !4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i32 %38, i32 %39
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  %44 = select i1 %43, i32 %41, i32 %42
  %45 = sitofp i32 %38 to double
  %46 = icmp sgt i32 %44, 0
  %47 = sitofp i32 %38 to double
  %48 = icmp slt i32 %42, %41
  %49 = icmp slt i32 %39, %42
  %50 = select i1 %49, i32 %39, i32 %42
  %51 = icmp slt i32 %38, %50
  %52 = icmp sgt i32 %38, %42
  %53 = select i1 %52, i32 %38, i32 %42
  %54 = icmp slt i32 %53, %39
  %55 = icmp slt i32 %38, %42
  %56 = select i1 %55, i32 %38, i32 %42
  %57 = sitofp i32 %38 to double
  %58 = icmp slt i32 %39, %56
  %59 = icmp sgt i32 %39, %42
  %60 = select i1 %59, i32 %39, i32 %42
  %61 = sitofp i32 %38 to double
  %62 = icmp slt i32 %60, %38
  %63 = icmp sgt i32 %38, %39
  %64 = select i1 %63, i32 %38, i32 %39
  %65 = icmp slt i32 %64, %42
  %66 = icmp ugt i32 %37, %36
  br i1 %66, label %226, label %67

67:                                               ; preds = %28
  %68 = sext i32 %42 to i64
  %69 = sext i32 %38 to i64
  %70 = sext i32 %53 to i64
  %71 = sext i32 %39 to i64
  %72 = sext i32 %60 to i64
  %73 = sext i32 %64 to i64
  %74 = zext i32 %44 to i64
  %75 = sext i32 %41 to i64
  %76 = sext i32 %50 to i64
  %77 = sext i32 %39 to i64
  %78 = sext i32 %56 to i64
  %79 = sext i32 %38 to i64
  %80 = sext i32 %42 to i64
  br label %81

81:                                               ; preds = %67, %223
  %82 = phi i32 [ %224, %223 ], [ %37, %67 ]
  %83 = sitofp i32 %82 to double
  %84 = load i32, i32* %2, align 4
  %85 = sitofp i32 %84 to double
  %86 = load [128 x double]*, [128 x double]** %6, align 8
  %87 = sext i32 %82 to i64
  %88 = load [128 x double]*, [128 x double]** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sitofp i32 %89 to double
  %91 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %46, label %99, label %92

92:                                               ; preds = %99, %81
  %93 = sitofp i32 %82 to double
  %94 = load i32, i32* %2, align 4
  %95 = sitofp i32 %94 to double
  %96 = load [128 x double]*, [128 x double]** %6, align 8
  %97 = sext i32 %82 to i64
  %98 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %48, label %128, label %119

99:                                               ; preds = %81, %99
  %100 = phi i64 [ %106, %99 ], [ 0, %81 ]
  %101 = trunc i64 %100 to i32
  %102 = sitofp i32 %101 to double
  %103 = fmul double %83, %102
  %104 = fdiv double %103, %85
  %105 = getelementptr inbounds [128 x double], [128 x double]* %86, i64 %87, i64 %100
  store double %104, double* %105, align 8, !tbaa !10
  %106 = add nuw nsw i64 %100, 1
  %107 = trunc i64 %106 to i32
  %108 = sitofp i32 %107 to double
  %109 = fmul double %83, %108
  %110 = fdiv double %109, %45
  %111 = getelementptr inbounds [128 x double], [128 x double]* %88, i64 %87, i64 %100
  store double %110, double* %111, align 8, !tbaa !10
  %112 = trunc i64 %100 to i32
  %113 = add i32 %112, 3
  %114 = sitofp i32 %113 to double
  %115 = fmul double %83, %114
  %116 = fdiv double %115, %90
  %117 = getelementptr inbounds [128 x double], [128 x double]* %91, i64 %87, i64 %100
  store double %116, double* %117, align 8, !tbaa !10
  %118 = icmp eq i64 %106, %74
  br i1 %118, label %92, label %99, !llvm.loop !33

119:                                              ; preds = %128, %92
  %120 = sitofp i32 %82 to double
  %121 = load i32, i32* %2, align 4
  %122 = sitofp i32 %121 to double
  %123 = load [128 x double]*, [128 x double]** %6, align 8
  %124 = sext i32 %82 to i64
  %125 = load i32, i32* %9, align 4
  %126 = sitofp i32 %125 to double
  %127 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %51, label %142, label %157

128:                                              ; preds = %92, %128
  %129 = phi i64 [ %135, %128 ], [ %68, %92 ]
  %130 = trunc i64 %129 to i32
  %131 = sitofp i32 %130 to double
  %132 = fmul double %93, %131
  %133 = fdiv double %132, %95
  %134 = getelementptr inbounds [128 x double], [128 x double]* %96, i64 %97, i64 %129
  store double %133, double* %134, align 8, !tbaa !10
  %135 = add nsw i64 %129, 1
  %136 = trunc i64 %135 to i32
  %137 = sitofp i32 %136 to double
  %138 = fmul double %93, %137
  %139 = fdiv double %138, %47
  %140 = getelementptr inbounds [128 x double], [128 x double]* %98, i64 %97, i64 %129
  store double %139, double* %140, align 8, !tbaa !10
  %141 = icmp eq i64 %135, %75
  br i1 %141, label %119, label %128, !llvm.loop !34

142:                                              ; preds = %119, %142
  %143 = phi i64 [ %155, %142 ], [ %69, %119 ]
  %144 = trunc i64 %143 to i32
  %145 = sitofp i32 %144 to double
  %146 = fmul double %120, %145
  %147 = fdiv double %146, %122
  %148 = getelementptr inbounds [128 x double], [128 x double]* %123, i64 %124, i64 %143
  store double %147, double* %148, align 8, !tbaa !10
  %149 = trunc i64 %143 to i32
  %150 = add i32 %149, 3
  %151 = sitofp i32 %150 to double
  %152 = fmul double %120, %151
  %153 = fdiv double %152, %126
  %154 = getelementptr inbounds [128 x double], [128 x double]* %127, i64 %124, i64 %143
  store double %153, double* %154, align 8, !tbaa !10
  %155 = add nsw i64 %143, 1
  %156 = icmp eq i64 %155, %76
  br i1 %156, label %157, label %142, !llvm.loop !35

157:                                              ; preds = %142, %119
  %158 = sitofp i32 %82 to double
  %159 = load i32, i32* %2, align 4
  %160 = sitofp i32 %159 to double
  %161 = load [128 x double]*, [128 x double]** %6, align 8
  %162 = sext i32 %82 to i64
  br i1 %54, label %170, label %163

163:                                              ; preds = %170, %157
  %164 = sitofp i32 %82 to double
  %165 = load [128 x double]*, [128 x double]** %7, align 8
  %166 = sext i32 %82 to i64
  %167 = load i32, i32* %9, align 4
  %168 = sitofp i32 %167 to double
  %169 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %58, label %179, label %194

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %177, %170 ], [ %70, %157 ]
  %172 = trunc i64 %171 to i32
  %173 = sitofp i32 %172 to double
  %174 = fmul double %158, %173
  %175 = fdiv double %174, %160
  %176 = getelementptr inbounds [128 x double], [128 x double]* %161, i64 %162, i64 %171
  store double %175, double* %176, align 8, !tbaa !10
  %177 = add nsw i64 %171, 1
  %178 = icmp eq i64 %177, %77
  br i1 %178, label %163, label %170, !llvm.loop !36

179:                                              ; preds = %163, %179
  %180 = phi i64 [ %181, %179 ], [ %71, %163 ]
  %181 = add nsw i64 %180, 1
  %182 = trunc i64 %181 to i32
  %183 = sitofp i32 %182 to double
  %184 = fmul double %164, %183
  %185 = fdiv double %184, %57
  %186 = getelementptr inbounds [128 x double], [128 x double]* %165, i64 %166, i64 %180
  store double %185, double* %186, align 8, !tbaa !10
  %187 = trunc i64 %180 to i32
  %188 = add i32 %187, 3
  %189 = sitofp i32 %188 to double
  %190 = fmul double %164, %189
  %191 = fdiv double %190, %168
  %192 = getelementptr inbounds [128 x double], [128 x double]* %169, i64 %166, i64 %180
  store double %191, double* %192, align 8, !tbaa !10
  %193 = icmp eq i64 %181, %78
  br i1 %193, label %194, label %179, !llvm.loop !37

194:                                              ; preds = %179, %163
  %195 = sitofp i32 %82 to double
  %196 = load [128 x double]*, [128 x double]** %7, align 8
  %197 = sext i32 %82 to i64
  br i1 %62, label %198, label %207

198:                                              ; preds = %194, %198
  %199 = phi i64 [ %200, %198 ], [ %72, %194 ]
  %200 = add nsw i64 %199, 1
  %201 = trunc i64 %200 to i32
  %202 = sitofp i32 %201 to double
  %203 = fmul double %195, %202
  %204 = fdiv double %203, %61
  %205 = getelementptr inbounds [128 x double], [128 x double]* %196, i64 %197, i64 %199
  store double %204, double* %205, align 8, !tbaa !10
  %206 = icmp eq i64 %200, %79
  br i1 %206, label %207, label %198, !llvm.loop !38

207:                                              ; preds = %198, %194
  %208 = sitofp i32 %82 to double
  %209 = load i32, i32* %9, align 4
  %210 = sitofp i32 %209 to double
  %211 = load [128 x double]*, [128 x double]** %8, align 8
  %212 = sext i32 %82 to i64
  br i1 %65, label %213, label %223

213:                                              ; preds = %207, %213
  %214 = phi i64 [ %221, %213 ], [ %73, %207 ]
  %215 = trunc i64 %214 to i32
  %216 = add i32 %215, 3
  %217 = sitofp i32 %216 to double
  %218 = fmul double %208, %217
  %219 = fdiv double %218, %210
  %220 = getelementptr inbounds [128 x double], [128 x double]* %211, i64 %212, i64 %214
  store double %219, double* %220, align 8, !tbaa !10
  %221 = add nsw i64 %214, 1
  %222 = icmp eq i64 %221, %80
  br i1 %222, label %223, label %213, !llvm.loop !39

223:                                              ; preds = %213, %207
  %224 = add i32 %82, 1
  %225 = icmp ugt i32 %224, %36
  br i1 %225, label %226, label %81

226:                                              ; preds = %223, %28
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %33)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  br label %227

227:                                              ; preds = %226, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, i32* nocapture nonnull readonly align 4 dereferenceable(4) %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = load i32, i32* %3, align 4, !tbaa !4
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = icmp slt i32 %19, %20
  %22 = select i1 %21, i32 %19, i32 %20
  %23 = xor i32 %15, -1
  %24 = add i32 %22, %23
  %25 = icmp sgt i32 %22, %15
  br i1 %25, label %26, label %143

26:                                               ; preds = %10
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 %24, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 1, i32* %13, align 4, !tbaa !4
  %30 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 0, i32* %14, align 4, !tbaa !4
  %31 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %31, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %32 = load i32, i32* %12, align 4, !tbaa !4
  %33 = icmp ugt i32 %32, %24
  %34 = select i1 %33, i32 %24, i32 %32
  store i32 %34, i32* %12, align 4, !tbaa !4
  %35 = load i32, i32* %11, align 4, !tbaa !4
  %36 = load i32, i32* %2, align 4
  %37 = icmp sgt i32 %36, 0
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i32 %38, i32 %39
  %42 = sitofp i32 %38 to double
  %43 = icmp slt i32 %36, %41
  %44 = icmp slt i32 %38, %39
  %45 = sitofp i32 %38 to double
  %46 = icmp slt i32 %39, %38
  %47 = icmp ugt i32 %35, %34
  br i1 %47, label %142, label %48

48:                                               ; preds = %26
  %49 = sext i32 %36 to i64
  %50 = sext i32 %38 to i64
  %51 = sext i32 %39 to i64
  %52 = zext i32 %36 to i64
  %53 = sext i32 %41 to i64
  %54 = sext i32 %39 to i64
  %55 = sext i32 %38 to i64
  br label %56

56:                                               ; preds = %48, %139
  %57 = phi i32 [ %140, %139 ], [ %35, %48 ]
  %58 = add i32 %57, %15
  %59 = sitofp i32 %58 to double
  %60 = load i32, i32* %3, align 4
  %61 = sitofp i32 %60 to double
  %62 = load [128 x double]*, [128 x double]** %6, align 8
  %63 = sext i32 %58 to i64
  %64 = load i32, i32* %4, align 4
  %65 = sitofp i32 %64 to double
  %66 = load [128 x double]*, [128 x double]** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sitofp i32 %67 to double
  %69 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %37, label %77, label %70

70:                                               ; preds = %77, %56
  %71 = sitofp i32 %58 to double
  %72 = load i32, i32* %3, align 4
  %73 = sitofp i32 %72 to double
  %74 = load [128 x double]*, [128 x double]** %6, align 8
  %75 = sext i32 %58 to i64
  %76 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %43, label %103, label %97

77:                                               ; preds = %56, %77
  %78 = phi i64 [ %84, %77 ], [ 0, %56 ]
  %79 = trunc i64 %78 to i32
  %80 = sitofp i32 %79 to double
  %81 = fmul double %59, %80
  %82 = fdiv double %81, %61
  %83 = getelementptr inbounds [128 x double], [128 x double]* %62, i64 %63, i64 %78
  store double %82, double* %83, align 8, !tbaa !10
  %84 = add nuw nsw i64 %78, 1
  %85 = trunc i64 %84 to i32
  %86 = sitofp i32 %85 to double
  %87 = fmul double %59, %86
  %88 = fdiv double %87, %65
  %89 = getelementptr inbounds [128 x double], [128 x double]* %66, i64 %63, i64 %78
  store double %88, double* %89, align 8, !tbaa !10
  %90 = trunc i64 %78 to i32
  %91 = add i32 %90, 3
  %92 = sitofp i32 %91 to double
  %93 = fmul double %59, %92
  %94 = fdiv double %93, %68
  %95 = getelementptr inbounds [128 x double], [128 x double]* %69, i64 %63, i64 %78
  store double %94, double* %95, align 8, !tbaa !10
  %96 = icmp eq i64 %84, %52
  br i1 %96, label %70, label %77, !llvm.loop !40

97:                                               ; preds = %103, %70
  %98 = sitofp i32 %58 to double
  %99 = load i32, i32* %3, align 4
  %100 = sitofp i32 %99 to double
  %101 = load [128 x double]*, [128 x double]** %6, align 8
  %102 = sext i32 %58 to i64
  br i1 %44, label %121, label %117

103:                                              ; preds = %70, %103
  %104 = phi i64 [ %110, %103 ], [ %49, %70 ]
  %105 = trunc i64 %104 to i32
  %106 = sitofp i32 %105 to double
  %107 = fmul double %71, %106
  %108 = fdiv double %107, %73
  %109 = getelementptr inbounds [128 x double], [128 x double]* %74, i64 %75, i64 %104
  store double %108, double* %109, align 8, !tbaa !10
  %110 = add nsw i64 %104, 1
  %111 = trunc i64 %110 to i32
  %112 = sitofp i32 %111 to double
  %113 = fmul double %71, %112
  %114 = fdiv double %113, %42
  %115 = getelementptr inbounds [128 x double], [128 x double]* %76, i64 %75, i64 %104
  store double %114, double* %115, align 8, !tbaa !10
  %116 = icmp eq i64 %110, %53
  br i1 %116, label %97, label %103, !llvm.loop !41

117:                                              ; preds = %121, %97
  %118 = sitofp i32 %58 to double
  %119 = load [128 x double]*, [128 x double]** %7, align 8
  %120 = sext i32 %58 to i64
  br i1 %46, label %130, label %139

121:                                              ; preds = %97, %121
  %122 = phi i64 [ %128, %121 ], [ %50, %97 ]
  %123 = trunc i64 %122 to i32
  %124 = sitofp i32 %123 to double
  %125 = fmul double %98, %124
  %126 = fdiv double %125, %100
  %127 = getelementptr inbounds [128 x double], [128 x double]* %101, i64 %102, i64 %122
  store double %126, double* %127, align 8, !tbaa !10
  %128 = add nsw i64 %122, 1
  %129 = icmp eq i64 %128, %54
  br i1 %129, label %117, label %121, !llvm.loop !42

130:                                              ; preds = %117, %130
  %131 = phi i64 [ %132, %130 ], [ %51, %117 ]
  %132 = add nsw i64 %131, 1
  %133 = trunc i64 %132 to i32
  %134 = sitofp i32 %133 to double
  %135 = fmul double %118, %134
  %136 = fdiv double %135, %45
  %137 = getelementptr inbounds [128 x double], [128 x double]* %119, i64 %120, i64 %131
  store double %136, double* %137, align 8, !tbaa !10
  %138 = icmp eq i64 %132, %55
  br i1 %138, label %139, label %130, !llvm.loop !43

139:                                              ; preds = %130, %117
  %140 = add i32 %57, 1
  %141 = icmp ugt i32 %140, %34
  br i1 %141, label %142, label %56

142:                                              ; preds = %139, %26
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %31)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  br label %143

143:                                              ; preds = %142, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = load i32, i32* %3, align 4, !tbaa !4
  %14 = icmp slt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %7
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 %19, i32* %9, align 4, !tbaa !4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %25 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %27 = load i32, i32* %9, align 4, !tbaa !4
  %28 = icmp ugt i32 %27, %19
  %29 = select i1 %28, i32 %19, i32 %27
  store i32 %29, i32* %9, align 4, !tbaa !4
  %30 = load i32, i32* %8, align 4, !tbaa !4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  %34 = select i1 %33, i32 %31, i32 %32
  %35 = sitofp i32 %31 to double
  %36 = icmp sgt i32 %34, 0
  %37 = icmp slt i32 %31, %32
  %38 = sitofp i32 %31 to double
  %39 = icmp slt i32 %32, %31
  %40 = icmp ugt i32 %30, %29
  br i1 %40, label %100, label %41

41:                                               ; preds = %21
  %42 = sext i32 %31 to i64
  %43 = sext i32 %32 to i64
  %44 = zext i32 %34 to i64
  %45 = sext i32 %32 to i64
  %46 = sext i32 %31 to i64
  br label %47

47:                                               ; preds = %41, %97
  %48 = phi i32 [ %98, %97 ], [ %30, %41 ]
  %49 = sitofp i32 %48 to double
  %50 = load i32, i32* %2, align 4
  %51 = sitofp i32 %50 to double
  %52 = load [128 x double]*, [128 x double]** %5, align 8
  %53 = sext i32 %48 to i64
  %54 = load [128 x double]*, [128 x double]** %6, align 8
  br i1 %36, label %61, label %55

55:                                               ; preds = %61, %47
  %56 = sitofp i32 %48 to double
  %57 = load i32, i32* %2, align 4
  %58 = sitofp i32 %57 to double
  %59 = load [128 x double]*, [128 x double]** %5, align 8
  %60 = sext i32 %48 to i64
  br i1 %37, label %79, label %75

61:                                               ; preds = %47, %61
  %62 = phi i64 [ %68, %61 ], [ 0, %47 ]
  %63 = trunc i64 %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fmul double %49, %64
  %66 = fdiv double %65, %51
  %67 = getelementptr inbounds [128 x double], [128 x double]* %52, i64 %53, i64 %62
  store double %66, double* %67, align 8, !tbaa !10
  %68 = add nuw nsw i64 %62, 1
  %69 = trunc i64 %68 to i32
  %70 = sitofp i32 %69 to double
  %71 = fmul double %49, %70
  %72 = fdiv double %71, %35
  %73 = getelementptr inbounds [128 x double], [128 x double]* %54, i64 %53, i64 %62
  store double %72, double* %73, align 8, !tbaa !10
  %74 = icmp eq i64 %68, %44
  br i1 %74, label %55, label %61, !llvm.loop !44

75:                                               ; preds = %79, %55
  %76 = sitofp i32 %48 to double
  %77 = load [128 x double]*, [128 x double]** %6, align 8
  %78 = sext i32 %48 to i64
  br i1 %39, label %88, label %97

79:                                               ; preds = %55, %79
  %80 = phi i64 [ %86, %79 ], [ %42, %55 ]
  %81 = trunc i64 %80 to i32
  %82 = sitofp i32 %81 to double
  %83 = fmul double %56, %82
  %84 = fdiv double %83, %58
  %85 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %60, i64 %80
  store double %84, double* %85, align 8, !tbaa !10
  %86 = add nsw i64 %80, 1
  %87 = icmp eq i64 %86, %45
  br i1 %87, label %75, label %79, !llvm.loop !45

88:                                               ; preds = %75, %88
  %89 = phi i64 [ %90, %88 ], [ %43, %75 ]
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = sitofp i32 %91 to double
  %93 = fmul double %76, %92
  %94 = fdiv double %93, %38
  %95 = getelementptr inbounds [128 x double], [128 x double]* %77, i64 %78, i64 %89
  store double %94, double* %95, align 8, !tbaa !10
  %96 = icmp eq i64 %90, %46
  br i1 %96, label %97, label %88, !llvm.loop !46

97:                                               ; preds = %88, %75
  %98 = add i32 %48, 1
  %99 = icmp ugt i32 %98, %29
  br i1 %99, label %100, label %47

100:                                              ; preds = %97, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  br label %101

101:                                              ; preds = %100, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = load i32, i32* %3, align 4, !tbaa !4
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = icmp slt i32 %19, %20
  %22 = select i1 %21, i32 %19, i32 %20
  %23 = xor i32 %15, -1
  %24 = add i32 %22, %23
  %25 = icmp sgt i32 %22, %15
  br i1 %25, label %26, label %173

26:                                               ; preds = %10
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 %24, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 1, i32* %13, align 4, !tbaa !4
  %30 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 0, i32* %14, align 4, !tbaa !4
  %31 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %31, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %32 = load i32, i32* %12, align 4, !tbaa !4
  %33 = icmp ugt i32 %32, %24
  %34 = select i1 %33, i32 %24, i32 %32
  store i32 %34, i32* %12, align 4, !tbaa !4
  %35 = load i32, i32* %11, align 4, !tbaa !4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  %39 = select i1 %38, i32 %36, i32 %37
  %40 = sitofp i32 %36 to double
  %41 = icmp sgt i32 %39, 0
  %42 = sitofp i32 %36 to double
  %43 = icmp slt i32 %37, %36
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, %37
  %46 = select i1 %45, i32 %44, i32 %37
  %47 = sitofp i32 %44 to double
  %48 = icmp slt i32 %36, %46
  %49 = icmp sgt i32 %36, %37
  %50 = select i1 %49, i32 %36, i32 %37
  %51 = icmp slt i32 %50, %44
  %52 = sitofp i32 %44 to double
  %53 = icmp slt i32 %44, %37
  %54 = icmp ugt i32 %35, %34
  br i1 %54, label %172, label %55

55:                                               ; preds = %26
  %56 = sext i32 %37 to i64
  %57 = sext i32 %36 to i64
  %58 = sext i32 %50 to i64
  %59 = sext i32 %44 to i64
  %60 = zext i32 %39 to i64
  %61 = sext i32 %36 to i64
  %62 = sext i32 %46 to i64
  %63 = sext i32 %44 to i64
  %64 = sext i32 %37 to i64
  br label %65

65:                                               ; preds = %55, %169
  %66 = phi i32 [ %170, %169 ], [ %35, %55 ]
  %67 = add i32 %66, %15
  %68 = sitofp i32 %67 to double
  %69 = load i32, i32* %3, align 4
  %70 = sitofp i32 %69 to double
  %71 = load [128 x double]*, [128 x double]** %7, align 8
  %72 = sext i32 %67 to i64
  %73 = load [128 x double]*, [128 x double]** %8, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sitofp i32 %74 to double
  %76 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %41, label %84, label %77

77:                                               ; preds = %84, %65
  %78 = sitofp i32 %67 to double
  %79 = load i32, i32* %3, align 4
  %80 = sitofp i32 %79 to double
  %81 = load [128 x double]*, [128 x double]** %7, align 8
  %82 = sext i32 %67 to i64
  %83 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %43, label %111, label %104

84:                                               ; preds = %65, %84
  %85 = phi i64 [ %91, %84 ], [ 0, %65 ]
  %86 = trunc i64 %85 to i32
  %87 = sitofp i32 %86 to double
  %88 = fmul double %68, %87
  %89 = fdiv double %88, %70
  %90 = getelementptr inbounds [128 x double], [128 x double]* %71, i64 %72, i64 %85
  store double %89, double* %90, align 8, !tbaa !10
  %91 = add nuw nsw i64 %85, 1
  %92 = trunc i64 %91 to i32
  %93 = sitofp i32 %92 to double
  %94 = fmul double %68, %93
  %95 = fdiv double %94, %40
  %96 = getelementptr inbounds [128 x double], [128 x double]* %73, i64 %72, i64 %85
  store double %95, double* %96, align 8, !tbaa !10
  %97 = trunc i64 %85 to i32
  %98 = add i32 %97, 2
  %99 = sitofp i32 %98 to double
  %100 = fmul double %68, %99
  %101 = fdiv double %100, %75
  %102 = getelementptr inbounds [128 x double], [128 x double]* %76, i64 %72, i64 %85
  store double %101, double* %102, align 8, !tbaa !10
  %103 = icmp eq i64 %91, %60
  br i1 %103, label %77, label %84, !llvm.loop !47

104:                                              ; preds = %111, %77
  %105 = sitofp i32 %67 to double
  %106 = load i32, i32* %3, align 4
  %107 = sitofp i32 %106 to double
  %108 = load [128 x double]*, [128 x double]** %7, align 8
  %109 = sext i32 %67 to i64
  %110 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %48, label %125, label %140

111:                                              ; preds = %77, %111
  %112 = phi i64 [ %118, %111 ], [ %56, %77 ]
  %113 = trunc i64 %112 to i32
  %114 = sitofp i32 %113 to double
  %115 = fmul double %78, %114
  %116 = fdiv double %115, %80
  %117 = getelementptr inbounds [128 x double], [128 x double]* %81, i64 %82, i64 %112
  store double %116, double* %117, align 8, !tbaa !10
  %118 = add nsw i64 %112, 1
  %119 = trunc i64 %118 to i32
  %120 = sitofp i32 %119 to double
  %121 = fmul double %78, %120
  %122 = fdiv double %121, %42
  %123 = getelementptr inbounds [128 x double], [128 x double]* %83, i64 %82, i64 %112
  store double %122, double* %123, align 8, !tbaa !10
  %124 = icmp eq i64 %118, %61
  br i1 %124, label %104, label %111, !llvm.loop !48

125:                                              ; preds = %104, %125
  %126 = phi i64 [ %138, %125 ], [ %57, %104 ]
  %127 = trunc i64 %126 to i32
  %128 = sitofp i32 %127 to double
  %129 = fmul double %105, %128
  %130 = fdiv double %129, %107
  %131 = getelementptr inbounds [128 x double], [128 x double]* %108, i64 %109, i64 %126
  store double %130, double* %131, align 8, !tbaa !10
  %132 = trunc i64 %126 to i32
  %133 = add i32 %132, 2
  %134 = sitofp i32 %133 to double
  %135 = fmul double %105, %134
  %136 = fdiv double %135, %47
  %137 = getelementptr inbounds [128 x double], [128 x double]* %110, i64 %109, i64 %126
  store double %136, double* %137, align 8, !tbaa !10
  %138 = add nsw i64 %126, 1
  %139 = icmp eq i64 %138, %62
  br i1 %139, label %140, label %125, !llvm.loop !49

140:                                              ; preds = %125, %104
  %141 = sitofp i32 %67 to double
  %142 = load i32, i32* %3, align 4
  %143 = sitofp i32 %142 to double
  %144 = load [128 x double]*, [128 x double]** %7, align 8
  %145 = sext i32 %67 to i64
  br i1 %51, label %150, label %146

146:                                              ; preds = %150, %140
  %147 = sitofp i32 %67 to double
  %148 = load [128 x double]*, [128 x double]** %9, align 8
  %149 = sext i32 %67 to i64
  br i1 %53, label %159, label %169

150:                                              ; preds = %140, %150
  %151 = phi i64 [ %157, %150 ], [ %58, %140 ]
  %152 = trunc i64 %151 to i32
  %153 = sitofp i32 %152 to double
  %154 = fmul double %141, %153
  %155 = fdiv double %154, %143
  %156 = getelementptr inbounds [128 x double], [128 x double]* %144, i64 %145, i64 %151
  store double %155, double* %156, align 8, !tbaa !10
  %157 = add nsw i64 %151, 1
  %158 = icmp eq i64 %157, %63
  br i1 %158, label %146, label %150, !llvm.loop !50

159:                                              ; preds = %146, %159
  %160 = phi i64 [ %167, %159 ], [ %59, %146 ]
  %161 = trunc i64 %160 to i32
  %162 = add i32 %161, 2
  %163 = sitofp i32 %162 to double
  %164 = fmul double %147, %163
  %165 = fdiv double %164, %52
  %166 = getelementptr inbounds [128 x double], [128 x double]* %148, i64 %149, i64 %160
  store double %165, double* %166, align 8, !tbaa !10
  %167 = add nsw i64 %160, 1
  %168 = icmp eq i64 %167, %64
  br i1 %168, label %169, label %159, !llvm.loop !51

169:                                              ; preds = %159, %146
  %170 = add i32 %66, 1
  %171 = icmp ugt i32 %170, %34
  br i1 %171, label %172, label %65

172:                                              ; preds = %169, %26
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %31)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  br label %173

173:                                              ; preds = %172, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..5(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = load i32, i32* %4, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %5, align 4, !tbaa !4
  %19 = icmp slt i32 %17, %18
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = xor i32 %13, -1
  %22 = add i32 %20, %21
  %23 = icmp sgt i32 %20, %13
  br i1 %23, label %24, label %86

24:                                               ; preds = %8
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 %22, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %29 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %29, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %30 = load i32, i32* %10, align 4, !tbaa !4
  %31 = icmp ugt i32 %30, %22
  %32 = select i1 %31, i32 %22, i32 %30
  store i32 %32, i32* %10, align 4, !tbaa !4
  %33 = load i32, i32* %9, align 4, !tbaa !4
  %34 = load i32, i32* %2, align 4
  %35 = sitofp i32 %34 to double
  %36 = icmp sgt i32 %34, 0
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %34, %37
  %39 = icmp ugt i32 %33, %32
  br i1 %39, label %85, label %40

40:                                               ; preds = %24
  %41 = sext i32 %34 to i64
  %42 = zext i32 %34 to i64
  %43 = sext i32 %37 to i64
  br label %44

44:                                               ; preds = %40, %82
  %45 = phi i32 [ %83, %82 ], [ %33, %40 ]
  %46 = add i32 %45, %13
  %47 = sitofp i32 %46 to double
  %48 = load i32, i32* %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = load [128 x double]*, [128 x double]** %6, align 8
  %51 = sext i32 %46 to i64
  %52 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %36, label %59, label %53

53:                                               ; preds = %59, %44
  %54 = sitofp i32 %46 to double
  %55 = load i32, i32* %3, align 4
  %56 = sitofp i32 %55 to double
  %57 = load [128 x double]*, [128 x double]** %6, align 8
  %58 = sext i32 %46 to i64
  br i1 %38, label %73, label %82

59:                                               ; preds = %44, %59
  %60 = phi i64 [ %66, %59 ], [ 0, %44 ]
  %61 = trunc i64 %60 to i32
  %62 = sitofp i32 %61 to double
  %63 = fmul double %47, %62
  %64 = fdiv double %63, %49
  %65 = getelementptr inbounds [128 x double], [128 x double]* %50, i64 %51, i64 %60
  store double %64, double* %65, align 8, !tbaa !10
  %66 = add nuw nsw i64 %60, 1
  %67 = trunc i64 %66 to i32
  %68 = sitofp i32 %67 to double
  %69 = fmul double %47, %68
  %70 = fdiv double %69, %35
  %71 = getelementptr inbounds [128 x double], [128 x double]* %52, i64 %51, i64 %60
  store double %70, double* %71, align 8, !tbaa !10
  %72 = icmp eq i64 %66, %42
  br i1 %72, label %53, label %59, !llvm.loop !52

73:                                               ; preds = %53, %73
  %74 = phi i64 [ %80, %73 ], [ %41, %53 ]
  %75 = trunc i64 %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = fmul double %54, %76
  %78 = fdiv double %77, %56
  %79 = getelementptr inbounds [128 x double], [128 x double]* %57, i64 %58, i64 %74
  store double %78, double* %79, align 8, !tbaa !10
  %80 = add nsw i64 %74, 1
  %81 = icmp eq i64 %80, %43
  br i1 %81, label %82, label %73, !llvm.loop !53

82:                                               ; preds = %73, %53
  %83 = add i32 %45, 1
  %84 = icmp ugt i32 %83, %32
  br i1 %84, label %85, label %44

85:                                               ; preds = %82, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  br label %86

86:                                               ; preds = %85, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..6(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp sgt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = load i32, i32* %5, align 4, !tbaa !4
  %19 = icmp slt i32 %17, %18
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = xor i32 %16, -1
  %22 = add i32 %20, %21
  %23 = icmp sgt i32 %20, %16
  br i1 %23, label %24, label %86

24:                                               ; preds = %8
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 %22, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %29 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %29, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %30 = load i32, i32* %10, align 4, !tbaa !4
  %31 = icmp ugt i32 %30, %22
  %32 = select i1 %31, i32 %22, i32 %30
  store i32 %32, i32* %10, align 4, !tbaa !4
  %33 = load i32, i32* %9, align 4, !tbaa !4
  %34 = load i32, i32* %2, align 4
  %35 = sitofp i32 %34 to double
  %36 = icmp sgt i32 %34, 0
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %34, %37
  %39 = icmp ugt i32 %33, %32
  br i1 %39, label %85, label %40

40:                                               ; preds = %24
  %41 = sext i32 %34 to i64
  %42 = zext i32 %34 to i64
  %43 = sext i32 %37 to i64
  br label %44

44:                                               ; preds = %40, %82
  %45 = phi i32 [ %83, %82 ], [ %33, %40 ]
  %46 = add i32 %45, %16
  %47 = sitofp i32 %46 to double
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to double
  %50 = load [128 x double]*, [128 x double]** %6, align 8
  %51 = sext i32 %46 to i64
  %52 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %36, label %59, label %53

53:                                               ; preds = %59, %44
  %54 = sitofp i32 %46 to double
  %55 = load i32, i32* %4, align 4
  %56 = sitofp i32 %55 to double
  %57 = load [128 x double]*, [128 x double]** %6, align 8
  %58 = sext i32 %46 to i64
  br i1 %38, label %73, label %82

59:                                               ; preds = %44, %59
  %60 = phi i64 [ %66, %59 ], [ 0, %44 ]
  %61 = trunc i64 %60 to i32
  %62 = sitofp i32 %61 to double
  %63 = fmul double %47, %62
  %64 = fdiv double %63, %49
  %65 = getelementptr inbounds [128 x double], [128 x double]* %50, i64 %51, i64 %60
  store double %64, double* %65, align 8, !tbaa !10
  %66 = add nuw nsw i64 %60, 1
  %67 = trunc i64 %66 to i32
  %68 = sitofp i32 %67 to double
  %69 = fmul double %47, %68
  %70 = fdiv double %69, %35
  %71 = getelementptr inbounds [128 x double], [128 x double]* %52, i64 %51, i64 %60
  store double %70, double* %71, align 8, !tbaa !10
  %72 = icmp eq i64 %66, %42
  br i1 %72, label %53, label %59, !llvm.loop !54

73:                                               ; preds = %53, %73
  %74 = phi i64 [ %80, %73 ], [ %41, %53 ]
  %75 = trunc i64 %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = fmul double %54, %76
  %78 = fdiv double %77, %56
  %79 = getelementptr inbounds [128 x double], [128 x double]* %57, i64 %58, i64 %74
  store double %78, double* %79, align 8, !tbaa !10
  %80 = add nsw i64 %74, 1
  %81 = icmp eq i64 %80, %43
  br i1 %81, label %82, label %73, !llvm.loop !55

82:                                               ; preds = %73, %53
  %83 = add i32 %45, 1
  %84 = icmp ugt i32 %83, %32
  br i1 %84, label %85, label %44

85:                                               ; preds = %82, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  br label %86

86:                                               ; preds = %85, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..7(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = add nsw i32 %19, -1
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %104

22:                                               ; preds = %8
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 %20, i32* %10, align 4, !tbaa !4
  %25 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %26 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %27 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %27, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %28 = load i32, i32* %10, align 4, !tbaa !4
  %29 = icmp ugt i32 %28, %20
  %30 = select i1 %29, i32 %20, i32 %28
  store i32 %30, i32* %10, align 4, !tbaa !4
  %31 = load i32, i32* %9, align 4, !tbaa !4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  %35 = select i1 %34, i32 %32, i32 %33
  %36 = sitofp i32 %32 to double
  %37 = icmp sgt i32 %35, 0
  %38 = icmp slt i32 %33, %32
  %39 = sitofp i32 %32 to double
  %40 = icmp slt i32 %32, %33
  %41 = icmp ugt i32 %31, %30
  br i1 %41, label %103, label %42

42:                                               ; preds = %22
  %43 = sext i32 %33 to i64
  %44 = sext i32 %32 to i64
  %45 = zext i32 %35 to i64
  %46 = sext i32 %32 to i64
  %47 = sext i32 %33 to i64
  br label %48

48:                                               ; preds = %42, %100
  %49 = phi i32 [ %101, %100 ], [ %31, %42 ]
  %50 = sitofp i32 %49 to double
  %51 = load i32, i32* %2, align 4
  %52 = sitofp i32 %51 to double
  %53 = load [128 x double]*, [128 x double]** %6, align 8
  %54 = sext i32 %49 to i64
  %55 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %37, label %62, label %56

56:                                               ; preds = %62, %48
  %57 = sitofp i32 %49 to double
  %58 = load i32, i32* %2, align 4
  %59 = sitofp i32 %58 to double
  %60 = load [128 x double]*, [128 x double]** %6, align 8
  %61 = sext i32 %49 to i64
  br i1 %38, label %81, label %77

62:                                               ; preds = %48, %62
  %63 = phi i64 [ %75, %62 ], [ 0, %48 ]
  %64 = trunc i64 %63 to i32
  %65 = sitofp i32 %64 to double
  %66 = fmul double %50, %65
  %67 = fdiv double %66, %52
  %68 = getelementptr inbounds [128 x double], [128 x double]* %53, i64 %54, i64 %63
  store double %67, double* %68, align 8, !tbaa !10
  %69 = trunc i64 %63 to i32
  %70 = add i32 %69, 2
  %71 = sitofp i32 %70 to double
  %72 = fmul double %50, %71
  %73 = fdiv double %72, %36
  %74 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %54, i64 %63
  store double %73, double* %74, align 8, !tbaa !10
  %75 = add nuw nsw i64 %63, 1
  %76 = icmp eq i64 %75, %45
  br i1 %76, label %56, label %62, !llvm.loop !56

77:                                               ; preds = %81, %56
  %78 = sitofp i32 %49 to double
  %79 = load [128 x double]*, [128 x double]** %7, align 8
  %80 = sext i32 %49 to i64
  br i1 %40, label %90, label %100

81:                                               ; preds = %56, %81
  %82 = phi i64 [ %88, %81 ], [ %43, %56 ]
  %83 = trunc i64 %82 to i32
  %84 = sitofp i32 %83 to double
  %85 = fmul double %57, %84
  %86 = fdiv double %85, %59
  %87 = getelementptr inbounds [128 x double], [128 x double]* %60, i64 %61, i64 %82
  store double %86, double* %87, align 8, !tbaa !10
  %88 = add nsw i64 %82, 1
  %89 = icmp eq i64 %88, %46
  br i1 %89, label %77, label %81, !llvm.loop !57

90:                                               ; preds = %77, %90
  %91 = phi i64 [ %98, %90 ], [ %44, %77 ]
  %92 = trunc i64 %91 to i32
  %93 = add i32 %92, 2
  %94 = sitofp i32 %93 to double
  %95 = fmul double %78, %94
  %96 = fdiv double %95, %39
  %97 = getelementptr inbounds [128 x double], [128 x double]* %79, i64 %80, i64 %91
  store double %96, double* %97, align 8, !tbaa !10
  %98 = add nsw i64 %91, 1
  %99 = icmp eq i64 %98, %47
  br i1 %99, label %100, label %90, !llvm.loop !58

100:                                              ; preds = %90, %77
  %101 = add i32 %49, 1
  %102 = icmp ugt i32 %101, %30
  br i1 %102, label %103, label %48

103:                                              ; preds = %100, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  br label %104

104:                                              ; preds = %103, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..8(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = load i32, i32* %3, align 4, !tbaa !4
  %13 = icmp slt i32 %11, %12
  %14 = select i1 %13, i32 %11, i32 %12
  %15 = load i32, i32* %4, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = add nsw i32 %17, -1
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %6
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 %18, i32* %8, align 4, !tbaa !4
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %25 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %25, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %26 = load i32, i32* %8, align 4, !tbaa !4
  %27 = icmp ugt i32 %26, %18
  %28 = select i1 %27, i32 %18, i32 %26
  store i32 %28, i32* %8, align 4, !tbaa !4
  %29 = load i32, i32* %7, align 4, !tbaa !4
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = icmp ugt i32 %29, %28
  br i1 %32, label %54, label %33

33:                                               ; preds = %20
  %34 = zext i32 %30 to i64
  br label %35

35:                                               ; preds = %33, %51
  %36 = phi i32 [ %52, %51 ], [ %29, %33 ]
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %2, align 4
  %39 = sitofp i32 %38 to double
  %40 = load [128 x double]*, [128 x double]** %5, align 8
  %41 = sext i32 %36 to i64
  br i1 %31, label %42, label %51

42:                                               ; preds = %35, %42
  %43 = phi i64 [ %49, %42 ], [ 0, %35 ]
  %44 = trunc i64 %43 to i32
  %45 = sitofp i32 %44 to double
  %46 = fmul double %37, %45
  %47 = fdiv double %46, %39
  %48 = getelementptr inbounds [128 x double], [128 x double]* %40, i64 %41, i64 %43
  store double %47, double* %48, align 8, !tbaa !10
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %34
  br i1 %50, label %51, label %42, !llvm.loop !59

51:                                               ; preds = %42, %35
  %52 = add i32 %36, 1
  %53 = icmp ugt i32 %52, %28
  br i1 %53, label %54, label %35

54:                                               ; preds = %51, %20
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %25)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5
  br label %55

55:                                               ; preds = %54, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..9(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %12, i32 %11, i32 0
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = load i32, i32* %4, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = xor i32 %13, -1
  %19 = add i32 %17, %18
  %20 = icmp sgt i32 %17, %13
  br i1 %20, label %21, label %57

21:                                               ; preds = %6
  %22 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 %19, i32* %8, align 4, !tbaa !4
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %27 = load i32, i32* %8, align 4, !tbaa !4
  %28 = icmp ugt i32 %27, %19
  %29 = select i1 %28, i32 %19, i32 %27
  store i32 %29, i32* %8, align 4, !tbaa !4
  %30 = load i32, i32* %7, align 4, !tbaa !4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  %33 = icmp ugt i32 %30, %29
  br i1 %33, label %56, label %34

34:                                               ; preds = %21
  %35 = zext i32 %31 to i64
  br label %36

36:                                               ; preds = %34, %53
  %37 = phi i32 [ %54, %53 ], [ %30, %34 ]
  %38 = add i32 %37, %13
  %39 = sitofp i32 %38 to double
  %40 = load i32, i32* %3, align 4
  %41 = sitofp i32 %40 to double
  %42 = load [128 x double]*, [128 x double]** %5, align 8
  %43 = sext i32 %38 to i64
  br i1 %32, label %44, label %53

44:                                               ; preds = %36, %44
  %45 = phi i64 [ %51, %44 ], [ 0, %36 ]
  %46 = trunc i64 %45 to i32
  %47 = sitofp i32 %46 to double
  %48 = fmul double %39, %47
  %49 = fdiv double %48, %41
  %50 = getelementptr inbounds [128 x double], [128 x double]* %42, i64 %43, i64 %45
  store double %49, double* %50, align 8, !tbaa !10
  %51 = add nuw nsw i64 %45, 1
  %52 = icmp eq i64 %51, %35
  br i1 %52, label %53, label %44, !llvm.loop !60

53:                                               ; preds = %44, %36
  %54 = add i32 %37, 1
  %55 = icmp ugt i32 %54, %29
  br i1 %55, label %56, label %36

56:                                               ; preds = %53, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  br label %57

57:                                               ; preds = %56, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..10(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = load i32, i32* %3, align 4, !tbaa !4
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = icmp slt i32 %19, %20
  %22 = select i1 %21, i32 %19, i32 %20
  %23 = xor i32 %15, -1
  %24 = add i32 %22, %23
  %25 = icmp sgt i32 %22, %15
  br i1 %25, label %26, label %174

26:                                               ; preds = %10
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 %24, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 1, i32* %13, align 4, !tbaa !4
  %30 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 0, i32* %14, align 4, !tbaa !4
  %31 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %31, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %32 = load i32, i32* %12, align 4, !tbaa !4
  %33 = icmp ugt i32 %32, %24
  %34 = select i1 %33, i32 %24, i32 %32
  store i32 %34, i32* %12, align 4, !tbaa !4
  %35 = load i32, i32* %11, align 4, !tbaa !4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  %39 = select i1 %38, i32 %36, i32 %37
  %40 = sitofp i32 %37 to double
  %41 = sitofp i32 %36 to double
  %42 = icmp sgt i32 %39, 0
  %43 = sitofp i32 %37 to double
  %44 = icmp slt i32 %37, %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %37, %45
  %47 = select i1 %46, i32 %37, i32 %45
  %48 = sitofp i32 %37 to double
  %49 = sitofp i32 %36 to double
  %50 = icmp slt i32 %36, %47
  %51 = icmp sgt i32 %36, %37
  %52 = select i1 %51, i32 %36, i32 %37
  %53 = sitofp i32 %37 to double
  %54 = icmp slt i32 %52, %45
  %55 = sitofp i32 %36 to double
  %56 = icmp slt i32 %45, %37
  %57 = icmp ugt i32 %35, %34
  br i1 %57, label %173, label %58

58:                                               ; preds = %26
  %59 = sext i32 %37 to i64
  %60 = sext i32 %36 to i64
  %61 = sext i32 %52 to i64
  %62 = sext i32 %45 to i64
  %63 = zext i32 %39 to i64
  %64 = sext i32 %36 to i64
  %65 = sext i32 %47 to i64
  %66 = sext i32 %45 to i64
  %67 = sext i32 %37 to i64
  br label %68

68:                                               ; preds = %58, %170
  %69 = phi i32 [ %171, %170 ], [ %35, %58 ]
  %70 = add i32 %69, %15
  %71 = sitofp i32 %70 to double
  %72 = load i32, i32* %3, align 4
  %73 = sitofp i32 %72 to double
  %74 = load [128 x double]*, [128 x double]** %7, align 8
  %75 = sext i32 %70 to i64
  %76 = load [128 x double]*, [128 x double]** %8, align 8
  %77 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %42, label %85, label %78

78:                                               ; preds = %85, %68
  %79 = sitofp i32 %70 to double
  %80 = load i32, i32* %3, align 4
  %81 = sitofp i32 %80 to double
  %82 = load [128 x double]*, [128 x double]** %7, align 8
  %83 = sext i32 %70 to i64
  %84 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %44, label %111, label %106

85:                                               ; preds = %68, %85
  %86 = phi i64 [ %104, %85 ], [ 0, %68 ]
  %87 = trunc i64 %86 to i32
  %88 = sitofp i32 %87 to double
  %89 = fmul double %71, %88
  %90 = fdiv double %89, %73
  %91 = getelementptr inbounds [128 x double], [128 x double]* %74, i64 %75, i64 %86
  store double %90, double* %91, align 8, !tbaa !10
  %92 = trunc i64 %86 to i32
  %93 = add i32 %92, 3
  %94 = sitofp i32 %93 to double
  %95 = fmul double %71, %94
  %96 = fdiv double %95, %40
  %97 = getelementptr inbounds [128 x double], [128 x double]* %76, i64 %75, i64 %86
  store double %96, double* %97, align 8, !tbaa !10
  %98 = trunc i64 %86 to i32
  %99 = add i32 %98, 2
  %100 = sitofp i32 %99 to double
  %101 = fmul double %71, %100
  %102 = fdiv double %101, %41
  %103 = getelementptr inbounds [128 x double], [128 x double]* %77, i64 %75, i64 %86
  store double %102, double* %103, align 8, !tbaa !10
  %104 = add nuw nsw i64 %86, 1
  %105 = icmp eq i64 %104, %63
  br i1 %105, label %78, label %85, !llvm.loop !61

106:                                              ; preds = %111, %78
  %107 = sitofp i32 %70 to double
  %108 = load [128 x double]*, [128 x double]** %8, align 8
  %109 = sext i32 %70 to i64
  %110 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %50, label %126, label %142

111:                                              ; preds = %78, %111
  %112 = phi i64 [ %124, %111 ], [ %59, %78 ]
  %113 = trunc i64 %112 to i32
  %114 = sitofp i32 %113 to double
  %115 = fmul double %79, %114
  %116 = fdiv double %115, %81
  %117 = getelementptr inbounds [128 x double], [128 x double]* %82, i64 %83, i64 %112
  store double %116, double* %117, align 8, !tbaa !10
  %118 = trunc i64 %112 to i32
  %119 = add i32 %118, 3
  %120 = sitofp i32 %119 to double
  %121 = fmul double %79, %120
  %122 = fdiv double %121, %43
  %123 = getelementptr inbounds [128 x double], [128 x double]* %84, i64 %83, i64 %112
  store double %122, double* %123, align 8, !tbaa !10
  %124 = add nsw i64 %112, 1
  %125 = icmp eq i64 %124, %64
  br i1 %125, label %106, label %111, !llvm.loop !62

126:                                              ; preds = %106, %126
  %127 = phi i64 [ %140, %126 ], [ %60, %106 ]
  %128 = trunc i64 %127 to i32
  %129 = add i32 %128, 3
  %130 = sitofp i32 %129 to double
  %131 = fmul double %107, %130
  %132 = fdiv double %131, %48
  %133 = getelementptr inbounds [128 x double], [128 x double]* %108, i64 %109, i64 %127
  store double %132, double* %133, align 8, !tbaa !10
  %134 = trunc i64 %127 to i32
  %135 = add i32 %134, 2
  %136 = sitofp i32 %135 to double
  %137 = fmul double %107, %136
  %138 = fdiv double %137, %49
  %139 = getelementptr inbounds [128 x double], [128 x double]* %110, i64 %109, i64 %127
  store double %138, double* %139, align 8, !tbaa !10
  %140 = add nsw i64 %127, 1
  %141 = icmp eq i64 %140, %65
  br i1 %141, label %142, label %126, !llvm.loop !63

142:                                              ; preds = %126, %106
  %143 = sitofp i32 %70 to double
  %144 = load [128 x double]*, [128 x double]** %8, align 8
  %145 = sext i32 %70 to i64
  br i1 %54, label %150, label %146

146:                                              ; preds = %150, %142
  %147 = sitofp i32 %70 to double
  %148 = load [128 x double]*, [128 x double]** %9, align 8
  %149 = sext i32 %70 to i64
  br i1 %56, label %160, label %170

150:                                              ; preds = %142, %150
  %151 = phi i64 [ %158, %150 ], [ %61, %142 ]
  %152 = trunc i64 %151 to i32
  %153 = add i32 %152, 3
  %154 = sitofp i32 %153 to double
  %155 = fmul double %143, %154
  %156 = fdiv double %155, %53
  %157 = getelementptr inbounds [128 x double], [128 x double]* %144, i64 %145, i64 %151
  store double %156, double* %157, align 8, !tbaa !10
  %158 = add nsw i64 %151, 1
  %159 = icmp eq i64 %158, %66
  br i1 %159, label %146, label %150, !llvm.loop !64

160:                                              ; preds = %146, %160
  %161 = phi i64 [ %168, %160 ], [ %62, %146 ]
  %162 = trunc i64 %161 to i32
  %163 = add i32 %162, 2
  %164 = sitofp i32 %163 to double
  %165 = fmul double %147, %164
  %166 = fdiv double %165, %55
  %167 = getelementptr inbounds [128 x double], [128 x double]* %148, i64 %149, i64 %161
  store double %166, double* %167, align 8, !tbaa !10
  %168 = add nsw i64 %161, 1
  %169 = icmp eq i64 %168, %67
  br i1 %169, label %170, label %160, !llvm.loop !65

170:                                              ; preds = %160, %146
  %171 = add i32 %69, 1
  %172 = icmp ugt i32 %171, %34
  br i1 %172, label %173, label %68

173:                                              ; preds = %170, %26
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %31)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  br label %174

174:                                              ; preds = %173, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..11(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, i32* nocapture nonnull readonly align 4 dereferenceable(4) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %14, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %14
  br i1 %24, label %25, label %90

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %2, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %35, %37
  %39 = icmp ugt i32 %34, %33
  br i1 %39, label %89, label %40

40:                                               ; preds = %25
  %41 = sext i32 %35 to i64
  %42 = zext i32 %35 to i64
  %43 = sext i32 %37 to i64
  br label %44

44:                                               ; preds = %40, %86
  %45 = phi i32 [ %87, %86 ], [ %34, %40 ]
  %46 = add i32 %45, %14
  %47 = sitofp i32 %46 to double
  %48 = load i32, i32* %3, align 4
  %49 = sitofp i32 %48 to double
  %50 = load [128 x double]*, [128 x double]** %6, align 8
  %51 = sext i32 %46 to i64
  %52 = load i32, i32* %8, align 4
  %53 = sitofp i32 %52 to double
  %54 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %36, label %61, label %55

55:                                               ; preds = %61, %44
  %56 = sitofp i32 %46 to double
  %57 = load i32, i32* %8, align 4
  %58 = sitofp i32 %57 to double
  %59 = load [128 x double]*, [128 x double]** %7, align 8
  %60 = sext i32 %46 to i64
  br i1 %38, label %76, label %86

61:                                               ; preds = %44, %61
  %62 = phi i64 [ %74, %61 ], [ 0, %44 ]
  %63 = trunc i64 %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fmul double %47, %64
  %66 = fdiv double %65, %49
  %67 = getelementptr inbounds [128 x double], [128 x double]* %50, i64 %51, i64 %62
  store double %66, double* %67, align 8, !tbaa !10
  %68 = trunc i64 %62 to i32
  %69 = add i32 %68, 3
  %70 = sitofp i32 %69 to double
  %71 = fmul double %47, %70
  %72 = fdiv double %71, %53
  %73 = getelementptr inbounds [128 x double], [128 x double]* %54, i64 %51, i64 %62
  store double %72, double* %73, align 8, !tbaa !10
  %74 = add nuw nsw i64 %62, 1
  %75 = icmp eq i64 %74, %42
  br i1 %75, label %55, label %61, !llvm.loop !66

76:                                               ; preds = %55, %76
  %77 = phi i64 [ %84, %76 ], [ %41, %55 ]
  %78 = trunc i64 %77 to i32
  %79 = add i32 %78, 3
  %80 = sitofp i32 %79 to double
  %81 = fmul double %56, %80
  %82 = fdiv double %81, %58
  %83 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %60, i64 %77
  store double %82, double* %83, align 8, !tbaa !10
  %84 = add nsw i64 %77, 1
  %85 = icmp eq i64 %84, %43
  br i1 %85, label %86, label %76, !llvm.loop !67

86:                                               ; preds = %76, %55
  %87 = add i32 %45, 1
  %88 = icmp ugt i32 %87, %33
  br i1 %88, label %89, label %44

89:                                               ; preds = %86, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %90

90:                                               ; preds = %89, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..12(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, i32* nocapture nonnull readonly align 4 dereferenceable(4) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %17, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %17
  br i1 %24, label %25, label %110

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  %38 = select i1 %37, i32 %35, i32 %36
  %39 = icmp sgt i32 %38, 0
  %40 = icmp slt i32 %36, %35
  %41 = icmp slt i32 %35, %36
  %42 = icmp ugt i32 %34, %33
  br i1 %42, label %109, label %43

43:                                               ; preds = %25
  %44 = sext i32 %36 to i64
  %45 = sext i32 %35 to i64
  %46 = zext i32 %38 to i64
  %47 = sext i32 %35 to i64
  %48 = sext i32 %36 to i64
  br label %49

49:                                               ; preds = %43, %106
  %50 = phi i32 [ %107, %106 ], [ %34, %43 ]
  %51 = add i32 %50, %17
  %52 = sitofp i32 %51 to double
  %53 = load i32, i32* %4, align 4
  %54 = sitofp i32 %53 to double
  %55 = load [128 x double]*, [128 x double]** %6, align 8
  %56 = sext i32 %51 to i64
  %57 = load i32, i32* %8, align 4
  %58 = sitofp i32 %57 to double
  %59 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %39, label %66, label %60

60:                                               ; preds = %66, %49
  %61 = sitofp i32 %51 to double
  %62 = load i32, i32* %4, align 4
  %63 = sitofp i32 %62 to double
  %64 = load [128 x double]*, [128 x double]** %6, align 8
  %65 = sext i32 %51 to i64
  br i1 %40, label %87, label %81

66:                                               ; preds = %49, %66
  %67 = phi i64 [ %79, %66 ], [ 0, %49 ]
  %68 = trunc i64 %67 to i32
  %69 = sitofp i32 %68 to double
  %70 = fmul double %52, %69
  %71 = fdiv double %70, %54
  %72 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %56, i64 %67
  store double %71, double* %72, align 8, !tbaa !10
  %73 = trunc i64 %67 to i32
  %74 = add i32 %73, 3
  %75 = sitofp i32 %74 to double
  %76 = fmul double %52, %75
  %77 = fdiv double %76, %58
  %78 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %56, i64 %67
  store double %77, double* %78, align 8, !tbaa !10
  %79 = add nuw nsw i64 %67, 1
  %80 = icmp eq i64 %79, %46
  br i1 %80, label %60, label %66, !llvm.loop !68

81:                                               ; preds = %87, %60
  %82 = sitofp i32 %51 to double
  %83 = load i32, i32* %8, align 4
  %84 = sitofp i32 %83 to double
  %85 = load [128 x double]*, [128 x double]** %7, align 8
  %86 = sext i32 %51 to i64
  br i1 %41, label %96, label %106

87:                                               ; preds = %60, %87
  %88 = phi i64 [ %94, %87 ], [ %44, %60 ]
  %89 = trunc i64 %88 to i32
  %90 = sitofp i32 %89 to double
  %91 = fmul double %61, %90
  %92 = fdiv double %91, %63
  %93 = getelementptr inbounds [128 x double], [128 x double]* %64, i64 %65, i64 %88
  store double %92, double* %93, align 8, !tbaa !10
  %94 = add nsw i64 %88, 1
  %95 = icmp eq i64 %94, %47
  br i1 %95, label %81, label %87, !llvm.loop !69

96:                                               ; preds = %81, %96
  %97 = phi i64 [ %104, %96 ], [ %45, %81 ]
  %98 = trunc i64 %97 to i32
  %99 = add i32 %98, 3
  %100 = sitofp i32 %99 to double
  %101 = fmul double %82, %100
  %102 = fdiv double %101, %84
  %103 = getelementptr inbounds [128 x double], [128 x double]* %85, i64 %86, i64 %97
  store double %102, double* %103, align 8, !tbaa !10
  %104 = add nsw i64 %97, 1
  %105 = icmp eq i64 %104, %48
  br i1 %105, label %106, label %96, !llvm.loop !70

106:                                              ; preds = %96, %81
  %107 = add i32 %50, 1
  %108 = icmp ugt i32 %107, %33
  br i1 %108, label %109, label %49

109:                                              ; preds = %106, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %110

110:                                              ; preds = %109, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..13(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = load i32, i32* %3, align 4, !tbaa !4
  %13 = load i32, i32* %4, align 4, !tbaa !4
  %14 = icmp slt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = xor i32 %11, -1
  %17 = add i32 %15, %16
  %18 = icmp sgt i32 %15, %11
  br i1 %18, label %19, label %55

19:                                               ; preds = %6
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5
  store i32 %17, i32* %8, align 4, !tbaa !4
  %22 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %23 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %24 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %24, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %25 = load i32, i32* %8, align 4, !tbaa !4
  %26 = icmp ugt i32 %25, %17
  %27 = select i1 %26, i32 %17, i32 %25
  store i32 %27, i32* %8, align 4, !tbaa !4
  %28 = load i32, i32* %7, align 4, !tbaa !4
  %29 = load i32, i32* %2, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = icmp ugt i32 %28, %27
  br i1 %31, label %54, label %32

32:                                               ; preds = %19
  %33 = zext i32 %29 to i64
  br label %34

34:                                               ; preds = %32, %51
  %35 = phi i32 [ %52, %51 ], [ %28, %32 ]
  %36 = add i32 %35, %11
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %3, align 4
  %39 = sitofp i32 %38 to double
  %40 = load [128 x double]*, [128 x double]** %5, align 8
  %41 = sext i32 %36 to i64
  br i1 %30, label %42, label %51

42:                                               ; preds = %34, %42
  %43 = phi i64 [ %49, %42 ], [ 0, %34 ]
  %44 = trunc i64 %43 to i32
  %45 = sitofp i32 %44 to double
  %46 = fmul double %37, %45
  %47 = fdiv double %46, %39
  %48 = getelementptr inbounds [128 x double], [128 x double]* %40, i64 %41, i64 %43
  store double %47, double* %48, align 8, !tbaa !10
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %33
  br i1 %50, label %51, label %42, !llvm.loop !71

51:                                               ; preds = %42, %34
  %52 = add i32 %35, 1
  %53 = icmp ugt i32 %52, %27
  br i1 %53, label %54, label %34

54:                                               ; preds = %51, %19
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  br label %55

55:                                               ; preds = %54, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..14(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %17, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %17
  br i1 %24, label %25, label %108

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  %38 = select i1 %37, i32 %35, i32 %36
  %39 = sitofp i32 %35 to double
  %40 = icmp sgt i32 %38, 0
  %41 = icmp slt i32 %36, %35
  %42 = sitofp i32 %35 to double
  %43 = icmp slt i32 %35, %36
  %44 = icmp ugt i32 %34, %33
  br i1 %44, label %107, label %45

45:                                               ; preds = %25
  %46 = sext i32 %36 to i64
  %47 = sext i32 %35 to i64
  %48 = zext i32 %38 to i64
  %49 = sext i32 %35 to i64
  %50 = sext i32 %36 to i64
  br label %51

51:                                               ; preds = %45, %104
  %52 = phi i32 [ %105, %104 ], [ %34, %45 ]
  %53 = add i32 %52, %17
  %54 = sitofp i32 %53 to double
  %55 = load i32, i32* %4, align 4
  %56 = sitofp i32 %55 to double
  %57 = load [128 x double]*, [128 x double]** %7, align 8
  %58 = sext i32 %53 to i64
  %59 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %40, label %66, label %60

60:                                               ; preds = %66, %51
  %61 = sitofp i32 %53 to double
  %62 = load i32, i32* %4, align 4
  %63 = sitofp i32 %62 to double
  %64 = load [128 x double]*, [128 x double]** %7, align 8
  %65 = sext i32 %53 to i64
  br i1 %41, label %85, label %81

66:                                               ; preds = %51, %66
  %67 = phi i64 [ %79, %66 ], [ 0, %51 ]
  %68 = trunc i64 %67 to i32
  %69 = sitofp i32 %68 to double
  %70 = fmul double %54, %69
  %71 = fdiv double %70, %56
  %72 = getelementptr inbounds [128 x double], [128 x double]* %57, i64 %58, i64 %67
  store double %71, double* %72, align 8, !tbaa !10
  %73 = trunc i64 %67 to i32
  %74 = add i32 %73, 2
  %75 = sitofp i32 %74 to double
  %76 = fmul double %54, %75
  %77 = fdiv double %76, %39
  %78 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %58, i64 %67
  store double %77, double* %78, align 8, !tbaa !10
  %79 = add nuw nsw i64 %67, 1
  %80 = icmp eq i64 %79, %48
  br i1 %80, label %60, label %66, !llvm.loop !72

81:                                               ; preds = %85, %60
  %82 = sitofp i32 %53 to double
  %83 = load [128 x double]*, [128 x double]** %8, align 8
  %84 = sext i32 %53 to i64
  br i1 %43, label %94, label %104

85:                                               ; preds = %60, %85
  %86 = phi i64 [ %92, %85 ], [ %46, %60 ]
  %87 = trunc i64 %86 to i32
  %88 = sitofp i32 %87 to double
  %89 = fmul double %61, %88
  %90 = fdiv double %89, %63
  %91 = getelementptr inbounds [128 x double], [128 x double]* %64, i64 %65, i64 %86
  store double %90, double* %91, align 8, !tbaa !10
  %92 = add nsw i64 %86, 1
  %93 = icmp eq i64 %92, %49
  br i1 %93, label %81, label %85, !llvm.loop !73

94:                                               ; preds = %81, %94
  %95 = phi i64 [ %102, %94 ], [ %47, %81 ]
  %96 = trunc i64 %95 to i32
  %97 = add i32 %96, 2
  %98 = sitofp i32 %97 to double
  %99 = fmul double %82, %98
  %100 = fdiv double %99, %42
  %101 = getelementptr inbounds [128 x double], [128 x double]* %83, i64 %84, i64 %95
  store double %100, double* %101, align 8, !tbaa !10
  %102 = add nsw i64 %95, 1
  %103 = icmp eq i64 %102, %50
  br i1 %103, label %104, label %94, !llvm.loop !74

104:                                              ; preds = %94, %81
  %105 = add i32 %52, 1
  %106 = icmp ugt i32 %105, %33
  br i1 %106, label %107, label %51

107:                                              ; preds = %104, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %108

108:                                              ; preds = %107, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..15(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = load i32, i32* %3, align 4, !tbaa !4
  %14 = icmp sgt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = xor i32 %15, -1
  %21 = add i32 %19, %20
  %22 = icmp sgt i32 %19, %15
  br i1 %22, label %23, label %59

23:                                               ; preds = %7
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 %21, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %28, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %29 = load i32, i32* %9, align 4, !tbaa !4
  %30 = icmp ugt i32 %29, %21
  %31 = select i1 %30, i32 %21, i32 %29
  store i32 %31, i32* %9, align 4, !tbaa !4
  %32 = load i32, i32* %8, align 4, !tbaa !4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = icmp ugt i32 %32, %31
  br i1 %35, label %58, label %36

36:                                               ; preds = %23
  %37 = zext i32 %33 to i64
  br label %38

38:                                               ; preds = %36, %55
  %39 = phi i32 [ %56, %55 ], [ %32, %36 ]
  %40 = add i32 %39, %15
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %4, align 4
  %43 = sitofp i32 %42 to double
  %44 = load [128 x double]*, [128 x double]** %6, align 8
  %45 = sext i32 %40 to i64
  br i1 %34, label %46, label %55

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %38 ]
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul double %41, %49
  %51 = fdiv double %50, %43
  %52 = getelementptr inbounds [128 x double], [128 x double]* %44, i64 %45, i64 %47
  store double %51, double* %52, align 8, !tbaa !10
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %37
  br i1 %54, label %55, label %46, !llvm.loop !75

55:                                               ; preds = %46, %38
  %56 = add i32 %39, 1
  %57 = icmp ugt i32 %56, %31
  br i1 %57, label %58, label %38

58:                                               ; preds = %55, %23
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  br label %59

59:                                               ; preds = %58, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..16(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = load i32, i32* %3, align 4, !tbaa !4
  %14 = icmp sgt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp sgt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = xor i32 %18, -1
  %21 = add i32 %19, %20
  %22 = icmp sgt i32 %19, %18
  br i1 %22, label %23, label %59

23:                                               ; preds = %7
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 %21, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %28, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %29 = load i32, i32* %9, align 4, !tbaa !4
  %30 = icmp ugt i32 %29, %21
  %31 = select i1 %30, i32 %21, i32 %29
  store i32 %31, i32* %9, align 4, !tbaa !4
  %32 = load i32, i32* %8, align 4, !tbaa !4
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 0
  %35 = icmp ugt i32 %32, %31
  br i1 %35, label %58, label %36

36:                                               ; preds = %23
  %37 = zext i32 %33 to i64
  br label %38

38:                                               ; preds = %36, %55
  %39 = phi i32 [ %56, %55 ], [ %32, %36 ]
  %40 = add i32 %39, %18
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %5, align 4
  %43 = sitofp i32 %42 to double
  %44 = load [128 x double]*, [128 x double]** %6, align 8
  %45 = sext i32 %40 to i64
  br i1 %34, label %46, label %55

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %53, %46 ], [ 0, %38 ]
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul double %41, %49
  %51 = fdiv double %50, %43
  %52 = getelementptr inbounds [128 x double], [128 x double]* %44, i64 %45, i64 %47
  store double %51, double* %52, align 8, !tbaa !10
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %37
  br i1 %54, label %55, label %46, !llvm.loop !76

55:                                               ; preds = %46, %38
  %56 = add i32 %39, 1
  %57 = icmp ugt i32 %56, %31
  br i1 %57, label %58, label %38

58:                                               ; preds = %55, %23
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  br label %59

59:                                               ; preds = %58, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..17(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %9) #4 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = icmp sgt i32 %15, 0
  %17 = select i1 %16, i32 %15, i32 0
  %18 = load i32, i32* %3, align 4, !tbaa !4
  %19 = load i32, i32* %4, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = load i32, i32* %5, align 4, !tbaa !4
  %23 = icmp slt i32 %21, %22
  %24 = select i1 %23, i32 %21, i32 %22
  %25 = xor i32 %17, -1
  %26 = add i32 %24, %25
  %27 = icmp sgt i32 %24, %17
  br i1 %27, label %28, label %228

28:                                               ; preds = %10
  %29 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %30 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 %26, i32* %12, align 4, !tbaa !4
  %31 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 1, i32* %13, align 4, !tbaa !4
  %32 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #5
  store i32 0, i32* %14, align 4, !tbaa !4
  %33 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %33, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %34 = load i32, i32* %12, align 4, !tbaa !4
  %35 = icmp ugt i32 %34, %26
  %36 = select i1 %35, i32 %26, i32 %34
  store i32 %36, i32* %12, align 4, !tbaa !4
  %37 = load i32, i32* %11, align 4, !tbaa !4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i32 %38, i32 %39
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  %44 = select i1 %43, i32 %41, i32 %42
  %45 = sitofp i32 %38 to double
  %46 = sitofp i32 %39 to double
  %47 = icmp sgt i32 %44, 0
  %48 = icmp slt i32 %38, %42
  %49 = select i1 %48, i32 %38, i32 %42
  %50 = sitofp i32 %38 to double
  %51 = sitofp i32 %39 to double
  %52 = icmp slt i32 %39, %49
  %53 = sitofp i32 %38 to double
  %54 = icmp slt i32 %42, %41
  %55 = icmp sgt i32 %39, %42
  %56 = select i1 %55, i32 %39, i32 %42
  %57 = sitofp i32 %38 to double
  %58 = icmp slt i32 %56, %38
  %59 = icmp slt i32 %39, %42
  %60 = select i1 %59, i32 %39, i32 %42
  %61 = sitofp i32 %39 to double
  %62 = icmp slt i32 %38, %60
  %63 = icmp sgt i32 %38, %39
  %64 = select i1 %63, i32 %38, i32 %39
  %65 = sitofp i32 %39 to double
  %66 = icmp slt i32 %64, %42
  %67 = icmp sgt i32 %38, %42
  %68 = select i1 %67, i32 %38, i32 %42
  %69 = icmp slt i32 %68, %39
  %70 = icmp ugt i32 %37, %36
  br i1 %70, label %227, label %71

71:                                               ; preds = %28
  %72 = sext i32 %39 to i64
  %73 = sext i32 %42 to i64
  %74 = sext i32 %56 to i64
  %75 = sext i32 %38 to i64
  %76 = sext i32 %64 to i64
  %77 = sext i32 %68 to i64
  %78 = zext i32 %44 to i64
  %79 = sext i32 %49 to i64
  %80 = sext i32 %41 to i64
  %81 = sext i32 %38 to i64
  %82 = sext i32 %60 to i64
  %83 = sext i32 %42 to i64
  %84 = sext i32 %39 to i64
  br label %85

85:                                               ; preds = %71, %224
  %86 = phi i32 [ %225, %224 ], [ %37, %71 ]
  %87 = add i32 %86, %17
  %88 = sitofp i32 %87 to double
  %89 = load [128 x double]*, [128 x double]** %7, align 8
  %90 = sext i32 %87 to i64
  %91 = load [128 x double]*, [128 x double]** %8, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sitofp i32 %92 to double
  %94 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %47, label %100, label %95

95:                                               ; preds = %100, %85
  %96 = sitofp i32 %87 to double
  %97 = load [128 x double]*, [128 x double]** %7, align 8
  %98 = sext i32 %87 to i64
  %99 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %52, label %128, label %121

100:                                              ; preds = %85, %100
  %101 = phi i64 [ %102, %100 ], [ 0, %85 ]
  %102 = add nuw nsw i64 %101, 1
  %103 = trunc i64 %102 to i32
  %104 = sitofp i32 %103 to double
  %105 = fmul double %88, %104
  %106 = fdiv double %105, %45
  %107 = getelementptr inbounds [128 x double], [128 x double]* %89, i64 %90, i64 %101
  store double %106, double* %107, align 8, !tbaa !10
  %108 = trunc i64 %101 to i32
  %109 = add i32 %108, 3
  %110 = sitofp i32 %109 to double
  %111 = fmul double %88, %110
  %112 = fdiv double %111, %46
  %113 = getelementptr inbounds [128 x double], [128 x double]* %91, i64 %90, i64 %101
  store double %112, double* %113, align 8, !tbaa !10
  %114 = trunc i64 %101 to i32
  %115 = add i32 %114, 2
  %116 = sitofp i32 %115 to double
  %117 = fmul double %88, %116
  %118 = fdiv double %117, %93
  %119 = getelementptr inbounds [128 x double], [128 x double]* %94, i64 %90, i64 %101
  store double %118, double* %119, align 8, !tbaa !10
  %120 = icmp eq i64 %102, %78
  br i1 %120, label %95, label %100, !llvm.loop !77

121:                                              ; preds = %128, %95
  %122 = sitofp i32 %87 to double
  %123 = load [128 x double]*, [128 x double]** %7, align 8
  %124 = sext i32 %87 to i64
  %125 = load i32, i32* %4, align 4
  %126 = sitofp i32 %125 to double
  %127 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %54, label %143, label %158

128:                                              ; preds = %95, %128
  %129 = phi i64 [ %130, %128 ], [ %72, %95 ]
  %130 = add nsw i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = sitofp i32 %131 to double
  %133 = fmul double %96, %132
  %134 = fdiv double %133, %50
  %135 = getelementptr inbounds [128 x double], [128 x double]* %97, i64 %98, i64 %129
  store double %134, double* %135, align 8, !tbaa !10
  %136 = trunc i64 %129 to i32
  %137 = add i32 %136, 3
  %138 = sitofp i32 %137 to double
  %139 = fmul double %96, %138
  %140 = fdiv double %139, %51
  %141 = getelementptr inbounds [128 x double], [128 x double]* %99, i64 %98, i64 %129
  store double %140, double* %141, align 8, !tbaa !10
  %142 = icmp eq i64 %130, %79
  br i1 %142, label %121, label %128, !llvm.loop !78

143:                                              ; preds = %121, %143
  %144 = phi i64 [ %145, %143 ], [ %73, %121 ]
  %145 = add nsw i64 %144, 1
  %146 = trunc i64 %145 to i32
  %147 = sitofp i32 %146 to double
  %148 = fmul double %122, %147
  %149 = fdiv double %148, %53
  %150 = getelementptr inbounds [128 x double], [128 x double]* %123, i64 %124, i64 %144
  store double %149, double* %150, align 8, !tbaa !10
  %151 = trunc i64 %144 to i32
  %152 = add i32 %151, 2
  %153 = sitofp i32 %152 to double
  %154 = fmul double %122, %153
  %155 = fdiv double %154, %126
  %156 = getelementptr inbounds [128 x double], [128 x double]* %127, i64 %124, i64 %144
  store double %155, double* %156, align 8, !tbaa !10
  %157 = icmp eq i64 %145, %80
  br i1 %157, label %158, label %143, !llvm.loop !79

158:                                              ; preds = %143, %121
  %159 = sitofp i32 %87 to double
  %160 = load [128 x double]*, [128 x double]** %7, align 8
  %161 = sext i32 %87 to i64
  br i1 %58, label %169, label %162

162:                                              ; preds = %169, %158
  %163 = sitofp i32 %87 to double
  %164 = load [128 x double]*, [128 x double]** %8, align 8
  %165 = sext i32 %87 to i64
  %166 = load i32, i32* %4, align 4
  %167 = sitofp i32 %166 to double
  %168 = load [128 x double]*, [128 x double]** %9, align 8
  br i1 %62, label %178, label %194

169:                                              ; preds = %158, %169
  %170 = phi i64 [ %171, %169 ], [ %74, %158 ]
  %171 = add nsw i64 %170, 1
  %172 = trunc i64 %171 to i32
  %173 = sitofp i32 %172 to double
  %174 = fmul double %159, %173
  %175 = fdiv double %174, %57
  %176 = getelementptr inbounds [128 x double], [128 x double]* %160, i64 %161, i64 %170
  store double %175, double* %176, align 8, !tbaa !10
  %177 = icmp eq i64 %171, %81
  br i1 %177, label %162, label %169, !llvm.loop !80

178:                                              ; preds = %162, %178
  %179 = phi i64 [ %192, %178 ], [ %75, %162 ]
  %180 = trunc i64 %179 to i32
  %181 = add i32 %180, 3
  %182 = sitofp i32 %181 to double
  %183 = fmul double %163, %182
  %184 = fdiv double %183, %61
  %185 = getelementptr inbounds [128 x double], [128 x double]* %164, i64 %165, i64 %179
  store double %184, double* %185, align 8, !tbaa !10
  %186 = trunc i64 %179 to i32
  %187 = add i32 %186, 2
  %188 = sitofp i32 %187 to double
  %189 = fmul double %163, %188
  %190 = fdiv double %189, %167
  %191 = getelementptr inbounds [128 x double], [128 x double]* %168, i64 %165, i64 %179
  store double %190, double* %191, align 8, !tbaa !10
  %192 = add nsw i64 %179, 1
  %193 = icmp eq i64 %192, %82
  br i1 %193, label %194, label %178, !llvm.loop !81

194:                                              ; preds = %178, %162
  %195 = sitofp i32 %87 to double
  %196 = load [128 x double]*, [128 x double]** %8, align 8
  %197 = sext i32 %87 to i64
  br i1 %66, label %198, label %208

198:                                              ; preds = %194, %198
  %199 = phi i64 [ %206, %198 ], [ %76, %194 ]
  %200 = trunc i64 %199 to i32
  %201 = add i32 %200, 3
  %202 = sitofp i32 %201 to double
  %203 = fmul double %195, %202
  %204 = fdiv double %203, %65
  %205 = getelementptr inbounds [128 x double], [128 x double]* %196, i64 %197, i64 %199
  store double %204, double* %205, align 8, !tbaa !10
  %206 = add nsw i64 %199, 1
  %207 = icmp eq i64 %206, %83
  br i1 %207, label %208, label %198, !llvm.loop !82

208:                                              ; preds = %198, %194
  %209 = sitofp i32 %87 to double
  %210 = load i32, i32* %4, align 4
  %211 = sitofp i32 %210 to double
  %212 = load [128 x double]*, [128 x double]** %9, align 8
  %213 = sext i32 %87 to i64
  br i1 %69, label %214, label %224

214:                                              ; preds = %208, %214
  %215 = phi i64 [ %222, %214 ], [ %77, %208 ]
  %216 = trunc i64 %215 to i32
  %217 = add i32 %216, 2
  %218 = sitofp i32 %217 to double
  %219 = fmul double %209, %218
  %220 = fdiv double %219, %211
  %221 = getelementptr inbounds [128 x double], [128 x double]* %212, i64 %213, i64 %215
  store double %220, double* %221, align 8, !tbaa !10
  %222 = add nsw i64 %215, 1
  %223 = icmp eq i64 %222, %84
  br i1 %223, label %224, label %214, !llvm.loop !83

224:                                              ; preds = %214, %208
  %225 = add i32 %86, 1
  %226 = icmp ugt i32 %225, %36
  br i1 %226, label %227, label %85

227:                                              ; preds = %224, %28
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %33)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  br label %228

228:                                              ; preds = %227, %10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..18(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, i32* nocapture nonnull readonly align 4 dereferenceable(4) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = icmp sgt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 0
  %17 = load i32, i32* %3, align 4, !tbaa !4
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = icmp slt i32 %17, %18
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = load i32, i32* %5, align 4, !tbaa !4
  %22 = icmp slt i32 %20, %21
  %23 = select i1 %22, i32 %20, i32 %21
  %24 = xor i32 %16, -1
  %25 = add i32 %23, %24
  %26 = icmp sgt i32 %23, %16
  br i1 %26, label %27, label %110

27:                                               ; preds = %9
  %28 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %29 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 %25, i32* %11, align 4, !tbaa !4
  %30 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %31 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %32 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %32, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %33 = load i32, i32* %11, align 4, !tbaa !4
  %34 = icmp ugt i32 %33, %25
  %35 = select i1 %34, i32 %25, i32 %33
  store i32 %35, i32* %11, align 4, !tbaa !4
  %36 = load i32, i32* %10, align 4, !tbaa !4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = sitofp i32 %37 to double
  %42 = icmp sgt i32 %40, 0
  %43 = sitofp i32 %37 to double
  %44 = icmp slt i32 %38, %37
  %45 = icmp slt i32 %37, %38
  %46 = icmp ugt i32 %36, %35
  br i1 %46, label %109, label %47

47:                                               ; preds = %27
  %48 = sext i32 %38 to i64
  %49 = sext i32 %37 to i64
  %50 = zext i32 %40 to i64
  %51 = sext i32 %37 to i64
  %52 = sext i32 %38 to i64
  br label %53

53:                                               ; preds = %47, %106
  %54 = phi i32 [ %107, %106 ], [ %36, %47 ]
  %55 = add i32 %54, %16
  %56 = sitofp i32 %55 to double
  %57 = load [128 x double]*, [128 x double]** %6, align 8
  %58 = sext i32 %55 to i64
  %59 = load i32, i32* %8, align 4
  %60 = sitofp i32 %59 to double
  %61 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %42, label %66, label %62

62:                                               ; preds = %66, %53
  %63 = sitofp i32 %55 to double
  %64 = load [128 x double]*, [128 x double]** %6, align 8
  %65 = sext i32 %55 to i64
  br i1 %44, label %87, label %81

66:                                               ; preds = %53, %66
  %67 = phi i64 [ %68, %66 ], [ 0, %53 ]
  %68 = add nuw nsw i64 %67, 1
  %69 = trunc i64 %68 to i32
  %70 = sitofp i32 %69 to double
  %71 = fmul double %56, %70
  %72 = fdiv double %71, %41
  %73 = getelementptr inbounds [128 x double], [128 x double]* %57, i64 %58, i64 %67
  store double %72, double* %73, align 8, !tbaa !10
  %74 = trunc i64 %67 to i32
  %75 = add i32 %74, 3
  %76 = sitofp i32 %75 to double
  %77 = fmul double %56, %76
  %78 = fdiv double %77, %60
  %79 = getelementptr inbounds [128 x double], [128 x double]* %61, i64 %58, i64 %67
  store double %78, double* %79, align 8, !tbaa !10
  %80 = icmp eq i64 %68, %50
  br i1 %80, label %62, label %66, !llvm.loop !84

81:                                               ; preds = %87, %62
  %82 = sitofp i32 %55 to double
  %83 = load i32, i32* %8, align 4
  %84 = sitofp i32 %83 to double
  %85 = load [128 x double]*, [128 x double]** %7, align 8
  %86 = sext i32 %55 to i64
  br i1 %45, label %96, label %106

87:                                               ; preds = %62, %87
  %88 = phi i64 [ %89, %87 ], [ %48, %62 ]
  %89 = add nsw i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = sitofp i32 %90 to double
  %92 = fmul double %63, %91
  %93 = fdiv double %92, %43
  %94 = getelementptr inbounds [128 x double], [128 x double]* %64, i64 %65, i64 %88
  store double %93, double* %94, align 8, !tbaa !10
  %95 = icmp eq i64 %89, %51
  br i1 %95, label %81, label %87, !llvm.loop !85

96:                                               ; preds = %81, %96
  %97 = phi i64 [ %104, %96 ], [ %49, %81 ]
  %98 = trunc i64 %97 to i32
  %99 = add i32 %98, 3
  %100 = sitofp i32 %99 to double
  %101 = fmul double %82, %100
  %102 = fdiv double %101, %84
  %103 = getelementptr inbounds [128 x double], [128 x double]* %85, i64 %86, i64 %97
  store double %102, double* %103, align 8, !tbaa !10
  %104 = add nsw i64 %97, 1
  %105 = icmp eq i64 %104, %52
  br i1 %105, label %106, label %96, !llvm.loop !86

106:                                              ; preds = %96, %81
  %107 = add i32 %54, 1
  %108 = icmp ugt i32 %107, %35
  br i1 %108, label %109, label %53

109:                                              ; preds = %106, %27
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %32)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  br label %110

110:                                              ; preds = %109, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..19(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, i32* nocapture nonnull readonly align 4 dereferenceable(4) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %17, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %17
  br i1 %24, label %25, label %88

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = load i32, i32* %4, align 4
  %38 = sitofp i32 %37 to double
  %39 = icmp slt i32 %35, %37
  %40 = icmp ugt i32 %34, %33
  br i1 %40, label %87, label %41

41:                                               ; preds = %25
  %42 = sext i32 %35 to i64
  %43 = zext i32 %35 to i64
  %44 = sext i32 %37 to i64
  br label %45

45:                                               ; preds = %41, %84
  %46 = phi i32 [ %85, %84 ], [ %34, %41 ]
  %47 = add i32 %46, %17
  %48 = sitofp i32 %47 to double
  %49 = load i32, i32* %4, align 4
  %50 = sitofp i32 %49 to double
  %51 = load [128 x double]*, [128 x double]** %6, align 8
  %52 = sext i32 %47 to i64
  %53 = load i32, i32* %8, align 4
  %54 = sitofp i32 %53 to double
  %55 = load [128 x double]*, [128 x double]** %7, align 8
  br i1 %36, label %60, label %56

56:                                               ; preds = %60, %45
  %57 = sitofp i32 %47 to double
  %58 = load [128 x double]*, [128 x double]** %6, align 8
  %59 = sext i32 %47 to i64
  br i1 %39, label %75, label %84

60:                                               ; preds = %45, %60
  %61 = phi i64 [ %62, %60 ], [ 0, %45 ]
  %62 = add nuw nsw i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = sitofp i32 %63 to double
  %65 = fmul double %48, %64
  %66 = fdiv double %65, %50
  %67 = getelementptr inbounds [128 x double], [128 x double]* %51, i64 %52, i64 %61
  store double %66, double* %67, align 8, !tbaa !10
  %68 = trunc i64 %61 to i32
  %69 = add i32 %68, 3
  %70 = sitofp i32 %69 to double
  %71 = fmul double %48, %70
  %72 = fdiv double %71, %54
  %73 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %52, i64 %61
  store double %72, double* %73, align 8, !tbaa !10
  %74 = icmp eq i64 %62, %43
  br i1 %74, label %56, label %60, !llvm.loop !87

75:                                               ; preds = %56, %75
  %76 = phi i64 [ %77, %75 ], [ %42, %56 ]
  %77 = add nsw i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = sitofp i32 %78 to double
  %80 = fmul double %57, %79
  %81 = fdiv double %80, %38
  %82 = getelementptr inbounds [128 x double], [128 x double]* %58, i64 %59, i64 %76
  store double %81, double* %82, align 8, !tbaa !10
  %83 = icmp eq i64 %77, %44
  br i1 %83, label %84, label %75, !llvm.loop !88

84:                                               ; preds = %75, %56
  %85 = add i32 %46, 1
  %86 = icmp ugt i32 %85, %33
  br i1 %86, label %87, label %45

87:                                               ; preds = %84, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %88

88:                                               ; preds = %87, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..20(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %12, i32 %11, i32 0
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = load i32, i32* %4, align 4, !tbaa !4
  %16 = icmp slt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = xor i32 %13, -1
  %19 = add i32 %17, %18
  %20 = icmp sgt i32 %17, %13
  br i1 %20, label %21, label %56

21:                                               ; preds = %6
  %22 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 %19, i32* %8, align 4, !tbaa !4
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %27 = load i32, i32* %8, align 4, !tbaa !4
  %28 = icmp ugt i32 %27, %19
  %29 = select i1 %28, i32 %19, i32 %27
  store i32 %29, i32* %8, align 4, !tbaa !4
  %30 = load i32, i32* %7, align 4, !tbaa !4
  %31 = load i32, i32* %3, align 4
  %32 = sitofp i32 %31 to double
  %33 = icmp sgt i32 %31, 0
  %34 = icmp ugt i32 %30, %29
  br i1 %34, label %55, label %35

35:                                               ; preds = %21
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %52
  %38 = phi i32 [ %53, %52 ], [ %30, %35 ]
  %39 = add i32 %38, %13
  %40 = sitofp i32 %39 to double
  %41 = load [128 x double]*, [128 x double]** %5, align 8
  %42 = sext i32 %39 to i64
  br i1 %33, label %43, label %52

43:                                               ; preds = %37, %43
  %44 = phi i64 [ %45, %43 ], [ 0, %37 ]
  %45 = add nuw nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = sitofp i32 %46 to double
  %48 = fmul double %40, %47
  %49 = fdiv double %48, %32
  %50 = getelementptr inbounds [128 x double], [128 x double]* %41, i64 %42, i64 %44
  store double %49, double* %50, align 8, !tbaa !10
  %51 = icmp eq i64 %45, %36
  br i1 %51, label %52, label %43, !llvm.loop !89

52:                                               ; preds = %43, %37
  %53 = add i32 %38, 1
  %54 = icmp ugt i32 %53, %29
  br i1 %54, label %55, label %37

55:                                               ; preds = %52, %21
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  br label %56

56:                                               ; preds = %55, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..21(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %17, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %17
  br i1 %24, label %25, label %108

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  %38 = select i1 %37, i32 %35, i32 %36
  %39 = sitofp i32 %35 to double
  %40 = icmp sgt i32 %38, 0
  %41 = sitofp i32 %35 to double
  %42 = icmp slt i32 %36, %35
  %43 = icmp slt i32 %35, %36
  %44 = icmp ugt i32 %34, %33
  br i1 %44, label %107, label %45

45:                                               ; preds = %25
  %46 = sext i32 %36 to i64
  %47 = sext i32 %35 to i64
  %48 = zext i32 %38 to i64
  %49 = sext i32 %35 to i64
  %50 = sext i32 %36 to i64
  br label %51

51:                                               ; preds = %45, %104
  %52 = phi i32 [ %105, %104 ], [ %34, %45 ]
  %53 = add i32 %52, %17
  %54 = sitofp i32 %53 to double
  %55 = load [128 x double]*, [128 x double]** %7, align 8
  %56 = sext i32 %53 to i64
  %57 = load i32, i32* %4, align 4
  %58 = sitofp i32 %57 to double
  %59 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %40, label %64, label %60

60:                                               ; preds = %64, %51
  %61 = sitofp i32 %53 to double
  %62 = load [128 x double]*, [128 x double]** %7, align 8
  %63 = sext i32 %53 to i64
  br i1 %42, label %85, label %79

64:                                               ; preds = %51, %64
  %65 = phi i64 [ %66, %64 ], [ 0, %51 ]
  %66 = add nuw nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = sitofp i32 %67 to double
  %69 = fmul double %54, %68
  %70 = fdiv double %69, %39
  %71 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %56, i64 %65
  store double %70, double* %71, align 8, !tbaa !10
  %72 = trunc i64 %65 to i32
  %73 = add i32 %72, 2
  %74 = sitofp i32 %73 to double
  %75 = fmul double %54, %74
  %76 = fdiv double %75, %58
  %77 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %56, i64 %65
  store double %76, double* %77, align 8, !tbaa !10
  %78 = icmp eq i64 %66, %48
  br i1 %78, label %60, label %64, !llvm.loop !90

79:                                               ; preds = %85, %60
  %80 = sitofp i32 %53 to double
  %81 = load i32, i32* %4, align 4
  %82 = sitofp i32 %81 to double
  %83 = load [128 x double]*, [128 x double]** %8, align 8
  %84 = sext i32 %53 to i64
  br i1 %43, label %94, label %104

85:                                               ; preds = %60, %85
  %86 = phi i64 [ %87, %85 ], [ %46, %60 ]
  %87 = add nsw i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = sitofp i32 %88 to double
  %90 = fmul double %61, %89
  %91 = fdiv double %90, %41
  %92 = getelementptr inbounds [128 x double], [128 x double]* %62, i64 %63, i64 %86
  store double %91, double* %92, align 8, !tbaa !10
  %93 = icmp eq i64 %87, %49
  br i1 %93, label %79, label %85, !llvm.loop !91

94:                                               ; preds = %79, %94
  %95 = phi i64 [ %102, %94 ], [ %47, %79 ]
  %96 = trunc i64 %95 to i32
  %97 = add i32 %96, 2
  %98 = sitofp i32 %97 to double
  %99 = fmul double %80, %98
  %100 = fdiv double %99, %82
  %101 = getelementptr inbounds [128 x double], [128 x double]* %83, i64 %84, i64 %95
  store double %100, double* %101, align 8, !tbaa !10
  %102 = add nsw i64 %95, 1
  %103 = icmp eq i64 %102, %50
  br i1 %103, label %104, label %94, !llvm.loop !92

104:                                              ; preds = %94, %79
  %105 = add i32 %52, 1
  %106 = icmp ugt i32 %105, %33
  br i1 %106, label %107, label %51

107:                                              ; preds = %104, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %108

108:                                              ; preds = %107, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..22(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = load i32, i32* %3, align 4, !tbaa !4
  %14 = icmp sgt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = icmp slt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = xor i32 %15, -1
  %21 = add i32 %19, %20
  %22 = icmp sgt i32 %19, %15
  br i1 %22, label %23, label %58

23:                                               ; preds = %7
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 %21, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %28, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %29 = load i32, i32* %9, align 4, !tbaa !4
  %30 = icmp ugt i32 %29, %21
  %31 = select i1 %30, i32 %21, i32 %29
  store i32 %31, i32* %9, align 4, !tbaa !4
  %32 = load i32, i32* %8, align 4, !tbaa !4
  %33 = load i32, i32* %3, align 4
  %34 = sitofp i32 %33 to double
  %35 = icmp sgt i32 %33, 0
  %36 = icmp ugt i32 %32, %31
  br i1 %36, label %57, label %37

37:                                               ; preds = %23
  %38 = zext i32 %33 to i64
  br label %39

39:                                               ; preds = %37, %54
  %40 = phi i32 [ %55, %54 ], [ %32, %37 ]
  %41 = add i32 %40, %15
  %42 = sitofp i32 %41 to double
  %43 = load [128 x double]*, [128 x double]** %6, align 8
  %44 = sext i32 %41 to i64
  br i1 %35, label %45, label %54

45:                                               ; preds = %39, %45
  %46 = phi i64 [ %47, %45 ], [ 0, %39 ]
  %47 = add nuw nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul double %42, %49
  %51 = fdiv double %50, %34
  %52 = getelementptr inbounds [128 x double], [128 x double]* %43, i64 %44, i64 %46
  store double %51, double* %52, align 8, !tbaa !10
  %53 = icmp eq i64 %47, %38
  br i1 %53, label %54, label %45, !llvm.loop !93

54:                                               ; preds = %45, %39
  %55 = add i32 %40, 1
  %56 = icmp ugt i32 %55, %31
  br i1 %56, label %57, label %39

57:                                               ; preds = %54, %23
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  br label %58

58:                                               ; preds = %57, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..23(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = load i32, i32* %3, align 4, !tbaa !4
  %14 = icmp sgt i32 %12, %13
  %15 = select i1 %14, i32 %12, i32 %13
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp sgt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = xor i32 %18, -1
  %21 = add i32 %19, %20
  %22 = icmp sgt i32 %19, %18
  br i1 %22, label %23, label %58

23:                                               ; preds = %7
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 %21, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %28 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %28, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %29 = load i32, i32* %9, align 4, !tbaa !4
  %30 = icmp ugt i32 %29, %21
  %31 = select i1 %30, i32 %21, i32 %29
  store i32 %31, i32* %9, align 4, !tbaa !4
  %32 = load i32, i32* %8, align 4, !tbaa !4
  %33 = load i32, i32* %3, align 4
  %34 = sitofp i32 %33 to double
  %35 = icmp sgt i32 %33, 0
  %36 = icmp ugt i32 %32, %31
  br i1 %36, label %57, label %37

37:                                               ; preds = %23
  %38 = zext i32 %33 to i64
  br label %39

39:                                               ; preds = %37, %54
  %40 = phi i32 [ %55, %54 ], [ %32, %37 ]
  %41 = add i32 %40, %18
  %42 = sitofp i32 %41 to double
  %43 = load [128 x double]*, [128 x double]** %6, align 8
  %44 = sext i32 %41 to i64
  br i1 %35, label %45, label %54

45:                                               ; preds = %39, %45
  %46 = phi i64 [ %47, %45 ], [ 0, %39 ]
  %47 = add nuw nsw i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = sitofp i32 %48 to double
  %50 = fmul double %42, %49
  %51 = fdiv double %50, %34
  %52 = getelementptr inbounds [128 x double], [128 x double]* %43, i64 %44, i64 %46
  store double %51, double* %52, align 8, !tbaa !10
  %53 = icmp eq i64 %47, %38
  br i1 %53, label %54, label %45, !llvm.loop !94

54:                                               ; preds = %45, %39
  %55 = add i32 %40, 1
  %56 = icmp ugt i32 %55, %31
  br i1 %56, label %57, label %39

57:                                               ; preds = %54, %23
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %28)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  br label %58

58:                                               ; preds = %57, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..24(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %8) #4 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* %2, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %14, %15
  %17 = select i1 %16, i32 %14, i32 %15
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %5, align 4, !tbaa !4
  %20 = icmp slt i32 %18, %19
  %21 = select i1 %20, i32 %18, i32 %19
  %22 = xor i32 %17, -1
  %23 = add i32 %21, %22
  %24 = icmp sgt i32 %21, %17
  br i1 %24, label %25, label %110

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 %23, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 1, i32* %12, align 4, !tbaa !4
  %29 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #5
  store i32 0, i32* %13, align 4, !tbaa !4
  %30 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %30, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1)
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp ugt i32 %31, %23
  %33 = select i1 %32, i32 %23, i32 %31
  store i32 %33, i32* %11, align 4, !tbaa !4
  %34 = load i32, i32* %10, align 4, !tbaa !4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  %38 = select i1 %37, i32 %35, i32 %36
  %39 = sitofp i32 %35 to double
  %40 = icmp sgt i32 %38, 0
  %41 = sitofp i32 %35 to double
  %42 = icmp slt i32 %35, %36
  %43 = icmp slt i32 %36, %35
  %44 = icmp ugt i32 %34, %33
  br i1 %44, label %109, label %45

45:                                               ; preds = %25
  %46 = sext i32 %35 to i64
  %47 = sext i32 %36 to i64
  %48 = zext i32 %38 to i64
  %49 = sext i32 %36 to i64
  %50 = sext i32 %35 to i64
  br label %51

51:                                               ; preds = %45, %106
  %52 = phi i32 [ %107, %106 ], [ %34, %45 ]
  %53 = add i32 %52, %17
  %54 = sitofp i32 %53 to double
  %55 = load [128 x double]*, [128 x double]** %7, align 8
  %56 = sext i32 %53 to i64
  %57 = load i32, i32* %3, align 4
  %58 = sitofp i32 %57 to double
  %59 = load [128 x double]*, [128 x double]** %8, align 8
  br i1 %40, label %64, label %60

60:                                               ; preds = %64, %51
  %61 = sitofp i32 %53 to double
  %62 = load [128 x double]*, [128 x double]** %7, align 8
  %63 = sext i32 %53 to i64
  br i1 %42, label %86, label %80

64:                                               ; preds = %51, %64
  %65 = phi i64 [ %78, %64 ], [ 0, %51 ]
  %66 = trunc i64 %65 to i32
  %67 = add i32 %66, 3
  %68 = sitofp i32 %67 to double
  %69 = fmul double %54, %68
  %70 = fdiv double %69, %39
  %71 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %56, i64 %65
  store double %70, double* %71, align 8, !tbaa !10
  %72 = trunc i64 %65 to i32
  %73 = add i32 %72, 2
  %74 = sitofp i32 %73 to double
  %75 = fmul double %54, %74
  %76 = fdiv double %75, %58
  %77 = getelementptr inbounds [128 x double], [128 x double]* %59, i64 %56, i64 %65
  store double %76, double* %77, align 8, !tbaa !10
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp eq i64 %78, %48
  br i1 %79, label %60, label %64, !llvm.loop !95

80:                                               ; preds = %86, %60
  %81 = sitofp i32 %53 to double
  %82 = load i32, i32* %3, align 4
  %83 = sitofp i32 %82 to double
  %84 = load [128 x double]*, [128 x double]** %8, align 8
  %85 = sext i32 %53 to i64
  br i1 %43, label %96, label %106

86:                                               ; preds = %60, %86
  %87 = phi i64 [ %94, %86 ], [ %46, %60 ]
  %88 = trunc i64 %87 to i32
  %89 = add i32 %88, 3
  %90 = sitofp i32 %89 to double
  %91 = fmul double %61, %90
  %92 = fdiv double %91, %41
  %93 = getelementptr inbounds [128 x double], [128 x double]* %62, i64 %63, i64 %87
  store double %92, double* %93, align 8, !tbaa !10
  %94 = add nsw i64 %87, 1
  %95 = icmp eq i64 %94, %49
  br i1 %95, label %80, label %86, !llvm.loop !96

96:                                               ; preds = %80, %96
  %97 = phi i64 [ %104, %96 ], [ %47, %80 ]
  %98 = trunc i64 %97 to i32
  %99 = add i32 %98, 2
  %100 = sitofp i32 %99 to double
  %101 = fmul double %81, %100
  %102 = fdiv double %101, %83
  %103 = getelementptr inbounds [128 x double], [128 x double]* %84, i64 %85, i64 %97
  store double %102, double* %103, align 8, !tbaa !10
  %104 = add nsw i64 %97, 1
  %105 = icmp eq i64 %104, %50
  br i1 %105, label %106, label %96, !llvm.loop !97

106:                                              ; preds = %96, %80
  %107 = add i32 %52, 1
  %108 = icmp ugt i32 %107, %33
  br i1 %108, label %109, label %51

109:                                              ; preds = %106, %25
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %30)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  br label %110

110:                                              ; preds = %109, %9
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..25(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, i32* nocapture nonnull readonly align 4 dereferenceable(4) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp sgt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = load i32, i32* %5, align 4, !tbaa !4
  %19 = icmp slt i32 %17, %18
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = xor i32 %16, -1
  %22 = add i32 %20, %21
  %23 = icmp sgt i32 %20, %16
  br i1 %23, label %24, label %61

24:                                               ; preds = %8
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 %22, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %29 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %29, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %30 = load i32, i32* %10, align 4, !tbaa !4
  %31 = icmp ugt i32 %30, %22
  %32 = select i1 %31, i32 %22, i32 %30
  store i32 %32, i32* %10, align 4, !tbaa !4
  %33 = load i32, i32* %9, align 4, !tbaa !4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = icmp ugt i32 %33, %32
  br i1 %36, label %60, label %37

37:                                               ; preds = %24
  %38 = zext i32 %34 to i64
  br label %39

39:                                               ; preds = %37, %57
  %40 = phi i32 [ %58, %57 ], [ %33, %37 ]
  %41 = add i32 %40, %16
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = load [128 x double]*, [128 x double]** %6, align 8
  %46 = sext i32 %41 to i64
  br i1 %35, label %47, label %57

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %55, %47 ], [ 0, %39 ]
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 3
  %51 = sitofp i32 %50 to double
  %52 = fmul double %42, %51
  %53 = fdiv double %52, %44
  %54 = getelementptr inbounds [128 x double], [128 x double]* %45, i64 %46, i64 %48
  store double %53, double* %54, align 8, !tbaa !10
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %38
  br i1 %56, label %57, label %47, !llvm.loop !98

57:                                               ; preds = %47, %39
  %58 = add i32 %40, 1
  %59 = icmp ugt i32 %58, %32
  br i1 %59, label %60, label %39

60:                                               ; preds = %57, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  br label %61

61:                                               ; preds = %60, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..26(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, i32* nocapture nonnull readonly align 4 dereferenceable(4) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp sgt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp sgt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = xor i32 %19, -1
  %22 = add i32 %20, %21
  %23 = icmp sgt i32 %20, %19
  br i1 %23, label %24, label %61

24:                                               ; preds = %8
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 %22, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %29 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %29, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %30 = load i32, i32* %10, align 4, !tbaa !4
  %31 = icmp ugt i32 %30, %22
  %32 = select i1 %31, i32 %22, i32 %30
  store i32 %32, i32* %10, align 4, !tbaa !4
  %33 = load i32, i32* %9, align 4, !tbaa !4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = icmp ugt i32 %33, %32
  br i1 %36, label %60, label %37

37:                                               ; preds = %24
  %38 = zext i32 %34 to i64
  br label %39

39:                                               ; preds = %37, %57
  %40 = phi i32 [ %58, %57 ], [ %33, %37 ]
  %41 = add i32 %40, %19
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %7, align 4
  %44 = sitofp i32 %43 to double
  %45 = load [128 x double]*, [128 x double]** %6, align 8
  %46 = sext i32 %41 to i64
  br i1 %35, label %47, label %57

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %55, %47 ], [ 0, %39 ]
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 3
  %51 = sitofp i32 %50 to double
  %52 = fmul double %42, %51
  %53 = fdiv double %52, %44
  %54 = getelementptr inbounds [128 x double], [128 x double]* %45, i64 %46, i64 %48
  store double %53, double* %54, align 8, !tbaa !10
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %38
  br i1 %56, label %57, label %47, !llvm.loop !99

57:                                               ; preds = %47, %39
  %58 = add i32 %40, 1
  %59 = icmp ugt i32 %58, %32
  br i1 %59, label %60, label %39

60:                                               ; preds = %57, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  br label %61

61:                                               ; preds = %60, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..27(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6, i32* nocapture nonnull readonly align 4 dereferenceable(4) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = add i32 %16, -1
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %8
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %21 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5
  store i32 %17, i32* %10, align 4, !tbaa !4
  %22 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %23 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %24 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %24, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %25 = load i32, i32* %10, align 4, !tbaa !4
  %26 = icmp ugt i32 %25, %17
  %27 = select i1 %26, i32 %17, i32 %25
  store i32 %27, i32* %10, align 4, !tbaa !4
  %28 = load i32, i32* %9, align 4, !tbaa !4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  %32 = select i1 %31, i32 %29, i32 %30
  %33 = sitofp i32 %29 to double
  %34 = icmp sgt i32 %32, 0
  %35 = sitofp i32 %29 to double
  %36 = icmp slt i32 %29, %30
  %37 = icmp slt i32 %30, %29
  %38 = icmp ugt i32 %28, %27
  br i1 %38, label %102, label %39

39:                                               ; preds = %19
  %40 = sext i32 %29 to i64
  %41 = sext i32 %30 to i64
  %42 = zext i32 %32 to i64
  %43 = sext i32 %30 to i64
  %44 = sext i32 %29 to i64
  br label %45

45:                                               ; preds = %39, %99
  %46 = phi i32 [ %100, %99 ], [ %28, %39 ]
  %47 = sitofp i32 %46 to double
  %48 = load [128 x double]*, [128 x double]** %5, align 8
  %49 = sext i32 %46 to i64
  %50 = load i32, i32* %7, align 4
  %51 = sitofp i32 %50 to double
  %52 = load [128 x double]*, [128 x double]** %6, align 8
  br i1 %34, label %57, label %53

53:                                               ; preds = %57, %45
  %54 = sitofp i32 %46 to double
  %55 = load [128 x double]*, [128 x double]** %5, align 8
  %56 = sext i32 %46 to i64
  br i1 %36, label %79, label %73

57:                                               ; preds = %45, %57
  %58 = phi i64 [ %71, %57 ], [ 0, %45 ]
  %59 = trunc i64 %58 to i32
  %60 = add i32 %59, 3
  %61 = sitofp i32 %60 to double
  %62 = fmul double %47, %61
  %63 = fdiv double %62, %33
  %64 = getelementptr inbounds [128 x double], [128 x double]* %48, i64 %49, i64 %58
  store double %63, double* %64, align 8, !tbaa !10
  %65 = trunc i64 %58 to i32
  %66 = add i32 %65, 2
  %67 = sitofp i32 %66 to double
  %68 = fmul double %47, %67
  %69 = fdiv double %68, %51
  %70 = getelementptr inbounds [128 x double], [128 x double]* %52, i64 %49, i64 %58
  store double %69, double* %70, align 8, !tbaa !10
  %71 = add nuw nsw i64 %58, 1
  %72 = icmp eq i64 %71, %42
  br i1 %72, label %53, label %57, !llvm.loop !100

73:                                               ; preds = %79, %53
  %74 = sitofp i32 %46 to double
  %75 = load i32, i32* %7, align 4
  %76 = sitofp i32 %75 to double
  %77 = load [128 x double]*, [128 x double]** %6, align 8
  %78 = sext i32 %46 to i64
  br i1 %37, label %89, label %99

79:                                               ; preds = %53, %79
  %80 = phi i64 [ %87, %79 ], [ %40, %53 ]
  %81 = trunc i64 %80 to i32
  %82 = add i32 %81, 3
  %83 = sitofp i32 %82 to double
  %84 = fmul double %54, %83
  %85 = fdiv double %84, %35
  %86 = getelementptr inbounds [128 x double], [128 x double]* %55, i64 %56, i64 %80
  store double %85, double* %86, align 8, !tbaa !10
  %87 = add nsw i64 %80, 1
  %88 = icmp eq i64 %87, %43
  br i1 %88, label %73, label %79, !llvm.loop !101

89:                                               ; preds = %73, %89
  %90 = phi i64 [ %97, %89 ], [ %41, %73 ]
  %91 = trunc i64 %90 to i32
  %92 = add i32 %91, 2
  %93 = sitofp i32 %92 to double
  %94 = fmul double %74, %93
  %95 = fdiv double %94, %76
  %96 = getelementptr inbounds [128 x double], [128 x double]* %77, i64 %78, i64 %90
  store double %95, double* %96, align 8, !tbaa !10
  %97 = add nsw i64 %90, 1
  %98 = icmp eq i64 %97, %44
  br i1 %98, label %99, label %89, !llvm.loop !102

99:                                               ; preds = %89, %73
  %100 = add i32 %46, 1
  %101 = icmp ugt i32 %100, %27
  br i1 %101, label %102, label %45

102:                                              ; preds = %99, %19
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  br label %103

103:                                              ; preds = %102, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..28(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = load i32, i32* %3, align 4, !tbaa !4
  %13 = icmp slt i32 %11, %12
  %14 = select i1 %13, i32 %11, i32 %12
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %14, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %6
  %18 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %19 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5
  store i32 %15, i32* %8, align 4, !tbaa !4
  %20 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %21 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %22 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %23 = load i32, i32* %8, align 4, !tbaa !4
  %24 = icmp ugt i32 %23, %15
  %25 = select i1 %24, i32 %15, i32 %23
  store i32 %25, i32* %8, align 4, !tbaa !4
  %26 = load i32, i32* %7, align 4, !tbaa !4
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = icmp ugt i32 %26, %25
  br i1 %29, label %52, label %30

30:                                               ; preds = %17
  %31 = zext i32 %27 to i64
  br label %32

32:                                               ; preds = %30, %49
  %33 = phi i32 [ %50, %49 ], [ %26, %30 ]
  %34 = sitofp i32 %33 to double
  %35 = load i32, i32* %5, align 4
  %36 = sitofp i32 %35 to double
  %37 = load [128 x double]*, [128 x double]** %4, align 8
  %38 = sext i32 %33 to i64
  br i1 %28, label %39, label %49

39:                                               ; preds = %32, %39
  %40 = phi i64 [ %47, %39 ], [ 0, %32 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, 3
  %43 = sitofp i32 %42 to double
  %44 = fmul double %34, %43
  %45 = fdiv double %44, %36
  %46 = getelementptr inbounds [128 x double], [128 x double]* %37, i64 %38, i64 %40
  store double %45, double* %46, align 8, !tbaa !10
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %31
  br i1 %48, label %49, label %39, !llvm.loop !103

49:                                               ; preds = %39, %32
  %50 = add i32 %33, 1
  %51 = icmp ugt i32 %50, %25
  br i1 %51, label %52, label %32

52:                                               ; preds = %49, %17
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %22)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  br label %53

53:                                               ; preds = %52, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..29(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5) #4 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = load i32, i32* %3, align 4, !tbaa !4
  %13 = xor i32 %11, -1
  %14 = add i32 %12, %13
  %15 = icmp sgt i32 %12, %11
  br i1 %15, label %16, label %53

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %18 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  store i32 %14, i32* %8, align 4, !tbaa !4
  %19 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5
  store i32 1, i32* %9, align 4, !tbaa !4
  %20 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 0, i32* %10, align 4, !tbaa !4
  %21 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %21, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %22 = load i32, i32* %8, align 4, !tbaa !4
  %23 = icmp ugt i32 %22, %14
  %24 = select i1 %23, i32 %14, i32 %22
  store i32 %24, i32* %8, align 4, !tbaa !4
  %25 = load i32, i32* %7, align 4, !tbaa !4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = icmp ugt i32 %25, %24
  br i1 %28, label %52, label %29

29:                                               ; preds = %16
  %30 = zext i32 %26 to i64
  br label %31

31:                                               ; preds = %29, %49
  %32 = phi i32 [ %50, %49 ], [ %25, %29 ]
  %33 = add i32 %32, %11
  %34 = sitofp i32 %33 to double
  %35 = load i32, i32* %5, align 4
  %36 = sitofp i32 %35 to double
  %37 = load [128 x double]*, [128 x double]** %4, align 8
  %38 = sext i32 %33 to i64
  br i1 %27, label %39, label %49

39:                                               ; preds = %31, %39
  %40 = phi i64 [ %47, %39 ], [ 0, %31 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, 3
  %43 = sitofp i32 %42 to double
  %44 = fmul double %34, %43
  %45 = fdiv double %44, %36
  %46 = getelementptr inbounds [128 x double], [128 x double]* %37, i64 %38, i64 %40
  store double %45, double* %46, align 8, !tbaa !10
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %30
  br i1 %48, label %49, label %39, !llvm.loop !104

49:                                               ; preds = %39, %31
  %50 = add i32 %32, 1
  %51 = icmp ugt i32 %50, %24
  br i1 %51, label %52, label %31

52:                                               ; preds = %49, %16
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %21)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5
  br label %53

53:                                               ; preds = %52, %6
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..30(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %13, i32 %12, i32 0
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i32 %15, i32 %16
  %19 = xor i32 %14, -1
  %20 = add i32 %18, %19
  %21 = icmp sgt i32 %18, %14
  br i1 %21, label %22, label %59

22:                                               ; preds = %7
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #5
  store i32 %20, i32* %9, align 4, !tbaa !4
  %25 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %26 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %27 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %27, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %28 = load i32, i32* %9, align 4, !tbaa !4
  %29 = icmp ugt i32 %28, %20
  %30 = select i1 %29, i32 %20, i32 %28
  store i32 %30, i32* %9, align 4, !tbaa !4
  %31 = load i32, i32* %8, align 4, !tbaa !4
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = icmp ugt i32 %31, %30
  br i1 %34, label %58, label %35

35:                                               ; preds = %22
  %36 = zext i32 %32 to i64
  br label %37

37:                                               ; preds = %35, %55
  %38 = phi i32 [ %56, %55 ], [ %31, %35 ]
  %39 = add i32 %38, %14
  %40 = sitofp i32 %39 to double
  %41 = load i32, i32* %3, align 4
  %42 = sitofp i32 %41 to double
  %43 = load [128 x double]*, [128 x double]** %6, align 8
  %44 = sext i32 %39 to i64
  br i1 %33, label %45, label %55

45:                                               ; preds = %37, %45
  %46 = phi i64 [ %53, %45 ], [ 0, %37 ]
  %47 = trunc i64 %46 to i32
  %48 = add i32 %47, 2
  %49 = sitofp i32 %48 to double
  %50 = fmul double %40, %49
  %51 = fdiv double %50, %42
  %52 = getelementptr inbounds [128 x double], [128 x double]* %43, i64 %44, i64 %46
  store double %51, double* %52, align 8, !tbaa !10
  %53 = add nuw nsw i64 %46, 1
  %54 = icmp eq i64 %53, %36
  br i1 %54, label %55, label %45, !llvm.loop !105

55:                                               ; preds = %45, %37
  %56 = add i32 %38, 1
  %57 = icmp ugt i32 %56, %30
  br i1 %57, label %58, label %37

58:                                               ; preds = %55, %22
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %27)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  br label %59

59:                                               ; preds = %58, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..31(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, i32* nocapture nonnull readonly align 4 dereferenceable(4) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %7) #4 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* %2, align 4, !tbaa !4
  %14 = load i32, i32* %3, align 4, !tbaa !4
  %15 = icmp sgt i32 %13, %14
  %16 = select i1 %15, i32 %13, i32 %14
  %17 = load i32, i32* %4, align 4, !tbaa !4
  %18 = icmp sgt i32 %16, %17
  %19 = select i1 %18, i32 %16, i32 %17
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = xor i32 %19, -1
  %22 = add i32 %20, %21
  %23 = icmp sgt i32 %20, %19
  br i1 %23, label %24, label %61

24:                                               ; preds = %8
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %26 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5
  store i32 %22, i32* %10, align 4, !tbaa !4
  %27 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5
  store i32 1, i32* %11, align 4, !tbaa !4
  %28 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #5
  store i32 0, i32* %12, align 4, !tbaa !4
  %29 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %29, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1)
  %30 = load i32, i32* %10, align 4, !tbaa !4
  %31 = icmp ugt i32 %30, %22
  %32 = select i1 %31, i32 %22, i32 %30
  store i32 %32, i32* %10, align 4, !tbaa !4
  %33 = load i32, i32* %9, align 4, !tbaa !4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = icmp ugt i32 %33, %32
  br i1 %36, label %60, label %37

37:                                               ; preds = %24
  %38 = zext i32 %34 to i64
  br label %39

39:                                               ; preds = %37, %57
  %40 = phi i32 [ %58, %57 ], [ %33, %37 ]
  %41 = add i32 %40, %19
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %4, align 4
  %44 = sitofp i32 %43 to double
  %45 = load [128 x double]*, [128 x double]** %7, align 8
  %46 = sext i32 %41 to i64
  br i1 %35, label %47, label %57

47:                                               ; preds = %39, %47
  %48 = phi i64 [ %55, %47 ], [ 0, %39 ]
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, 2
  %51 = sitofp i32 %50 to double
  %52 = fmul double %42, %51
  %53 = fdiv double %52, %44
  %54 = getelementptr inbounds [128 x double], [128 x double]* %45, i64 %46, i64 %48
  store double %53, double* %54, align 8, !tbaa !10
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %38
  br i1 %56, label %57, label %47, !llvm.loop !106

57:                                               ; preds = %47, %39
  %58 = add i32 %40, 1
  %59 = icmp ugt i32 %58, %32
  br i1 %59, label %60, label %39

60:                                               ; preds = %57, %24
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5
  br label %61

61:                                               ; preds = %60, %8
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..32(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i32* nocapture nonnull readonly align 4 dereferenceable(4) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %13, i32 %12, i32 0
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = xor i32 %14, -1
  %17 = add i32 %15, %16
  %18 = icmp sgt i32 %15, %14
  br i1 %18, label %19, label %56

19:                                               ; preds = %7
  %20 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %21 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #5
  store i32 %17, i32* %9, align 4, !tbaa !4
  %22 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %23 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %24 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4u(%struct.ident_t* nonnull @1, i32 %24, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %25 = load i32, i32* %9, align 4, !tbaa !4
  %26 = icmp ugt i32 %25, %17
  %27 = select i1 %26, i32 %17, i32 %25
  store i32 %27, i32* %9, align 4, !tbaa !4
  %28 = load i32, i32* %8, align 4, !tbaa !4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = icmp ugt i32 %28, %27
  br i1 %31, label %55, label %32

32:                                               ; preds = %19
  %33 = zext i32 %29 to i64
  br label %34

34:                                               ; preds = %32, %52
  %35 = phi i32 [ %53, %52 ], [ %28, %32 ]
  %36 = add i32 %35, %14
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %6, align 4
  %39 = sitofp i32 %38 to double
  %40 = load [128 x double]*, [128 x double]** %5, align 8
  %41 = sext i32 %36 to i64
  br i1 %30, label %42, label %52

42:                                               ; preds = %34, %42
  %43 = phi i64 [ %50, %42 ], [ 0, %34 ]
  %44 = trunc i64 %43 to i32
  %45 = add i32 %44, 2
  %46 = sitofp i32 %45 to double
  %47 = fmul double %37, %46
  %48 = fdiv double %47, %39
  %49 = getelementptr inbounds [128 x double], [128 x double]* %40, i64 %41, i64 %43
  store double %48, double* %49, align 8, !tbaa !10
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %33
  br i1 %51, label %52, label %42, !llvm.loop !107

52:                                               ; preds = %42, %34
  %53 = add i32 %35, 1
  %54 = icmp ugt i32 %53, %27
  br i1 %54, label %55, label %34

55:                                               ; preds = %52, %19
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %24)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  br label %56

56:                                               ; preds = %55, %7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..33(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5
  store i32 0, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 127, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 1, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !4
  %15 = icmp slt i32 %14, 127
  %16 = select i1 %15, i32 %14, i32 127
  store i32 %16, i32* %6, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = load [128 x double]*, [128 x double]** %2, align 8
  %19 = load [128 x double]*, [128 x double]** %3, align 8
  %20 = icmp sgt i32 %17, %16
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = sext i32 %17 to i64
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %21, %32
  %25 = phi i64 [ %22, %21 ], [ %33, %32 ]
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %30, %26 ]
  %28 = getelementptr inbounds [128 x double], [128 x double]* %18, i64 %25, i64 %27
  store double 0.000000e+00, double* %28, align 8, !tbaa !10
  %29 = getelementptr inbounds [128 x double], [128 x double]* %19, i64 %25, i64 %27
  store double 0.000000e+00, double* %29, align 8, !tbaa !10
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, 128
  br i1 %31, label %32, label %26, !llvm.loop !108

32:                                               ; preds = %26
  %33 = add nsw i64 %25, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %23, %34
  br i1 %35, label %36, label %24

36:                                               ; preds = %32, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..34(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 127, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 1, i32* %8, align 4, !tbaa !4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i32 0, i32* %9, align 4, !tbaa !4
  %14 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %14, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %15 = load i32, i32* %7, align 4, !tbaa !4
  %16 = icmp slt i32 %15, 127
  %17 = select i1 %16, i32 %15, i32 127
  store i32 %17, i32* %7, align 4, !tbaa !4
  %18 = load i32, i32* %6, align 4, !tbaa !4
  %19 = load [128 x double]*, [128 x double]** %3, align 8
  %20 = load [128 x double]*, [128 x double]** %4, align 8
  %21 = load [128 x double]*, [128 x double]** %2, align 8
  %22 = icmp sgt i32 %18, %17
  br i1 %22, label %49, label %23

23:                                               ; preds = %5
  %24 = sext i32 %18 to i64
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %23, %45
  %27 = phi i64 [ %24, %23 ], [ %46, %45 ]
  br label %28

28:                                               ; preds = %26, %42
  %29 = phi i64 [ 0, %26 ], [ %43, %42 ]
  %30 = getelementptr inbounds [128 x double], [128 x double]* %21, i64 %27, i64 %29
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi i64 [ 0, %28 ], [ %40, %31 ]
  %33 = getelementptr inbounds [128 x double], [128 x double]* %19, i64 %27, i64 %32
  %34 = load double, double* %33, align 8, !tbaa !10
  %35 = getelementptr inbounds [128 x double], [128 x double]* %20, i64 %32, i64 %29
  %36 = load double, double* %35, align 8, !tbaa !10
  %37 = fmul double %34, %36
  %38 = load double, double* %30, align 8, !tbaa !10
  %39 = fadd double %37, %38
  store double %39, double* %30, align 8, !tbaa !10
  %40 = add nuw nsw i64 %32, 1
  %41 = icmp eq i64 %40, 128
  br i1 %41, label %42, label %31, !llvm.loop !109

42:                                               ; preds = %31
  %43 = add nuw nsw i64 %29, 1
  %44 = icmp eq i64 %43, 128
  br i1 %44, label %45, label %28, !llvm.loop !110

45:                                               ; preds = %42
  %46 = add nsw i64 %27, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %25, %47
  br i1 %48, label %49, label %26

49:                                               ; preds = %45, %5
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..35(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2) #4 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5
  store i32 0, i32* %4, align 4, !tbaa !4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5
  store i32 127, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 1, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 0, i32* %7, align 4, !tbaa !4
  %12 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 34, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %13 = load i32, i32* %5, align 4, !tbaa !4
  %14 = icmp slt i32 %13, 127
  %15 = select i1 %14, i32 %13, i32 127
  store i32 %15, i32* %5, align 4, !tbaa !4
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load [128 x double]*, [128 x double]** %2, align 8
  %20 = sext i32 %16 to i64
  %21 = getelementptr [128 x double], [128 x double]* %19, i64 %20, i64 0
  %22 = bitcast double* %21 to i8*
  %23 = sub i32 %15, %16
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 10
  %26 = add nuw nsw i64 %25, 1024
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %22, i8 0, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %18, %3
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %12)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..36(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %2, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %3, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %4, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %5, [128 x double]** nocapture nonnull readonly align 8 dereferenceable(8) %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5
  store i32 127, i32* %9, align 4, !tbaa !4
  %14 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5
  store i32 1, i32* %10, align 4, !tbaa !4
  %15 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5
  store i32 0, i32* %11, align 4, !tbaa !4
  %16 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %16, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %17 = load i32, i32* %9, align 4, !tbaa !4
  %18 = icmp slt i32 %17, 127
  %19 = select i1 %18, i32 %17, i32 127
  store i32 %19, i32* %9, align 4, !tbaa !4
  %20 = load i32, i32* %8, align 4, !tbaa !4
  %21 = load [128 x double]*, [128 x double]** %3, align 8
  %22 = load [128 x double]*, [128 x double]** %4, align 8
  %23 = load [128 x double]*, [128 x double]** %2, align 8
  %24 = load [128 x double]*, [128 x double]** %6, align 8
  %25 = load [128 x double]*, [128 x double]** %5, align 8
  %26 = icmp sgt i32 %20, %19
  br i1 %26, label %66, label %27

27:                                               ; preds = %7
  %28 = sext i32 %20 to i64
  %29 = add nsw i32 %19, 1
  br label %30

30:                                               ; preds = %27, %62
  %31 = phi i64 [ %28, %27 ], [ %63, %62 ]
  br label %32

32:                                               ; preds = %30, %59
  %33 = phi i64 [ 0, %30 ], [ %60, %59 ]
  %34 = getelementptr inbounds [128 x double], [128 x double]* %23, i64 %31, i64 %33
  br label %37

35:                                               ; preds = %37
  %36 = getelementptr inbounds [128 x double], [128 x double]* %23, i64 %31, i64 %33
  br label %48

37:                                               ; preds = %32, %37
  %38 = phi i64 [ 0, %32 ], [ %46, %37 ]
  %39 = getelementptr inbounds [128 x double], [128 x double]* %21, i64 %31, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = getelementptr inbounds [128 x double], [128 x double]* %22, i64 %38, i64 %33
  %42 = load double, double* %41, align 8, !tbaa !10
  %43 = fmul double %40, %42
  %44 = load double, double* %34, align 8, !tbaa !10
  %45 = fadd double %43, %44
  store double %45, double* %34, align 8, !tbaa !10
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, 128
  br i1 %47, label %35, label %37, !llvm.loop !111

48:                                               ; preds = %35, %48
  %49 = phi i64 [ 0, %35 ], [ %57, %48 ]
  %50 = load double, double* %36, align 8, !tbaa !10
  %51 = getelementptr inbounds [128 x double], [128 x double]* %24, i64 %33, i64 %49
  %52 = load double, double* %51, align 8, !tbaa !10
  %53 = fmul double %50, %52
  %54 = getelementptr inbounds [128 x double], [128 x double]* %25, i64 %31, i64 %49
  %55 = load double, double* %54, align 8, !tbaa !10
  %56 = fadd double %53, %55
  store double %56, double* %54, align 8, !tbaa !10
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, 128
  br i1 %58, label %59, label %48, !llvm.loop !112

59:                                               ; preds = %48
  %60 = add nuw nsw i64 %33, 1
  %61 = icmp eq i64 %60, 128
  br i1 %61, label %62, label %32, !llvm.loop !113

62:                                               ; preds = %59
  %63 = add nsw i64 %31, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %29, %64
  br i1 %65, label %66, label %30

66:                                               ; preds = %62, %7
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %16)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = distinct !{!30, !13, !14}
!31 = !{!32}
!32 = !{i64 2, i64 -1, i64 -1, i1 true}
!33 = distinct !{!33, !13, !14}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !13, !14}
!36 = distinct !{!36, !13, !14}
!37 = distinct !{!37, !13, !14}
!38 = distinct !{!38, !13, !14}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !13, !14}
!41 = distinct !{!41, !13, !14}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13, !14}
!44 = distinct !{!44, !13, !14}
!45 = distinct !{!45, !13, !14}
!46 = distinct !{!46, !13, !14}
!47 = distinct !{!47, !13, !14}
!48 = distinct !{!48, !13, !14}
!49 = distinct !{!49, !13, !14}
!50 = distinct !{!50, !13, !14}
!51 = distinct !{!51, !13, !14}
!52 = distinct !{!52, !13, !14}
!53 = distinct !{!53, !13, !14}
!54 = distinct !{!54, !13, !14}
!55 = distinct !{!55, !13, !14}
!56 = distinct !{!56, !13, !14}
!57 = distinct !{!57, !13, !14}
!58 = distinct !{!58, !13, !14}
!59 = distinct !{!59, !13, !14}
!60 = distinct !{!60, !13, !14}
!61 = distinct !{!61, !13, !14}
!62 = distinct !{!62, !13, !14}
!63 = distinct !{!63, !13, !14}
!64 = distinct !{!64, !13, !14}
!65 = distinct !{!65, !13, !14}
!66 = distinct !{!66, !13, !14}
!67 = distinct !{!67, !13, !14}
!68 = distinct !{!68, !13, !14}
!69 = distinct !{!69, !13, !14}
!70 = distinct !{!70, !13, !14}
!71 = distinct !{!71, !13, !14}
!72 = distinct !{!72, !13, !14}
!73 = distinct !{!73, !13, !14}
!74 = distinct !{!74, !13, !14}
!75 = distinct !{!75, !13, !14}
!76 = distinct !{!76, !13, !14}
!77 = distinct !{!77, !13, !14}
!78 = distinct !{!78, !13, !14}
!79 = distinct !{!79, !13, !14}
!80 = distinct !{!80, !13, !14}
!81 = distinct !{!81, !13, !14}
!82 = distinct !{!82, !13, !14}
!83 = distinct !{!83, !13, !14}
!84 = distinct !{!84, !13, !14}
!85 = distinct !{!85, !13, !14}
!86 = distinct !{!86, !13, !14}
!87 = distinct !{!87, !13, !14}
!88 = distinct !{!88, !13, !14}
!89 = distinct !{!89, !13, !14}
!90 = distinct !{!90, !13, !14}
!91 = distinct !{!91, !13, !14}
!92 = distinct !{!92, !13, !14}
!93 = distinct !{!93, !13, !14}
!94 = distinct !{!94, !13, !14}
!95 = distinct !{!95, !13, !14}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13, !14}
!98 = distinct !{!98, !13, !14}
!99 = distinct !{!99, !13, !14}
!100 = distinct !{!100, !13, !14}
!101 = distinct !{!101, !13, !14}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13, !14}
!104 = distinct !{!104, !13, !14}
!105 = distinct !{!105, !13, !14}
!106 = distinct !{!106, !13, !14}
!107 = distinct !{!107, !13, !14}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13, !14}
!111 = distinct !{!111, !13, !14}
!112 = distinct !{!112, !13, !14}
!113 = distinct !{!113, !13, !14}
