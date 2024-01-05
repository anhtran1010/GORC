; ModuleID = 'dataracebench/DRB121-reduction-orig-no.c'
source_filename = "dataracebench/DRB121-reduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 0, i32* %3, align 4, !tbaa !4
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 0, i32* %4, align 4, !tbaa !4
  %8 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 0, i32* %5, align 4, !tbaa !4
  %9 = call i32 @omp_get_max_threads()
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, i32* nonnull %5, i32* nonnull %3)
  %10 = load i32, i32* %3, align 4, !tbaa !4
  %11 = mul nsw i32 %9, 20
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  br label %15

15:                                               ; preds = %13, %2
  %16 = zext i1 %12 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local i32 @omp_get_max_threads() local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2, i32* nocapture nonnull align 4 dereferenceable(4) %3, i32* nocapture nonnull align 4 dereferenceable(4) %4) #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [1 x i8*], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x i8*], align 8
  %19 = alloca [1 x i8*], align 8
  %20 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4
  store i32 0, i32* %6, align 4, !tbaa !4
  %21 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4
  store i32 0, i32* %7, align 4, !tbaa !4
  %22 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4
  store i32 4, i32* %8, align 4, !tbaa !4
  %23 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #4
  store i32 1, i32* %9, align 4, !tbaa !4
  %24 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #4
  store i32 0, i32* %10, align 4, !tbaa !4
  %25 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #4
  store i32 0, i32* %11, align 4, !tbaa !4
  %26 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %27 = load i32, i32* %8, align 4, !tbaa !4
  %28 = icmp slt i32 %27, 4
  %29 = select i1 %28, i32 %27, i32 4
  store i32 %29, i32* %8, align 4, !tbaa !4
  %30 = load i32, i32* %7, align 4, !tbaa !4
  %31 = load i32, i32* %11, align 4, !tbaa !4
  %32 = icmp slt i32 %29, %30
  br i1 %32, label %47, label %33

33:                                               ; preds = %5
  %34 = sub i32 %29, %30
  %35 = xor i32 %30, -1
  %36 = add i32 %29, %35
  %37 = zext i32 %36 to i33
  %38 = zext i32 %34 to i33
  %39 = mul i33 %37, %38
  %40 = lshr i33 %39, 1
  %41 = trunc i33 %40 to i32
  %42 = add i32 %30, 1
  %43 = mul i32 %34, %42
  %44 = add i32 %31, %30
  %45 = add i32 %44, %43
  %46 = add i32 %45, %41
  br label %47

47:                                               ; preds = %33, %5
  %48 = phi i32 [ %31, %5 ], [ %46, %33 ]
  store i32 %48, i32* %11, align 4, !tbaa !4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  %49 = bitcast [1 x i8*]* %12 to i32**
  store i32* %11, i32** %49, align 8
  %50 = bitcast [1 x i8*]* %12 to i8*
  %51 = call i32 @__kmpc_reduce(%struct.ident_t* nonnull @2, i32 %26, i32 1, i64 8, i8* nonnull %50, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %51, label %60 [
    i32 1, label %52
    i32 2, label %56
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4, !tbaa !4
  %54 = load i32, i32* %11, align 4, !tbaa !4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %2, align 4, !tbaa !4
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4, !tbaa !4
  %58 = atomicrmw add i32* %2, i32 %57 monotonic, align 4
  br label %59

59:                                               ; preds = %52, %56
  call void @__kmpc_end_reduce(%struct.ident_t* nonnull @2, i32 %26, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %60

60:                                               ; preds = %59, %47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4
  call void @__kmpc_barrier(%struct.ident_t* nonnull @3, i32 %26)
  %61 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %61) #4
  store i32 0, i32* %13, align 4, !tbaa !4
  %62 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %62) #4
  store i32 4, i32* %14, align 4, !tbaa !4
  %63 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #4
  store i32 1, i32* %15, align 4, !tbaa !4
  %64 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %64) #4
  store i32 0, i32* %16, align 4, !tbaa !4
  %65 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %65) #4
  store i32 0, i32* %17, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %26, i32 34, i32* nonnull %16, i32* nonnull %13, i32* nonnull %14, i32* nonnull %15, i32 1, i32 1)
  %66 = load i32, i32* %14, align 4, !tbaa !4
  %67 = icmp slt i32 %66, 4
  %68 = select i1 %67, i32 %66, i32 4
  store i32 %68, i32* %14, align 4, !tbaa !4
  %69 = load i32, i32* %13, align 4, !tbaa !4
  %70 = load i32, i32* %17, align 4, !tbaa !4
  %71 = icmp slt i32 %68, %69
  br i1 %71, label %86, label %72

72:                                               ; preds = %60
  %73 = sub i32 %68, %69
  %74 = xor i32 %69, -1
  %75 = add i32 %68, %74
  %76 = zext i32 %75 to i33
  %77 = zext i32 %73 to i33
  %78 = mul i33 %76, %77
  %79 = lshr i33 %78, 1
  %80 = trunc i33 %79 to i32
  %81 = add i32 %69, 1
  %82 = mul i32 %73, %81
  %83 = add i32 %70, %69
  %84 = add i32 %83, %82
  %85 = add i32 %84, %80
  br label %86

86:                                               ; preds = %72, %60
  %87 = phi i32 [ %70, %60 ], [ %85, %72 ]
  store i32 %87, i32* %17, align 4, !tbaa !4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %26)
  %88 = bitcast [1 x i8*]* %18 to i32**
  store i32* %17, i32** %88, align 8
  %89 = bitcast [1 x i8*]* %18 to i8*
  %90 = call i32 @__kmpc_reduce(%struct.ident_t* nonnull @2, i32 %26, i32 1, i64 8, i8* nonnull %89, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func.1, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %90, label %99 [
    i32 1, label %91
    i32 2, label %95
  ]

91:                                               ; preds = %86
  %92 = load i32, i32* %3, align 4, !tbaa !4
  %93 = load i32, i32* %17, align 4, !tbaa !4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %3, align 4, !tbaa !4
  br label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %17, align 4, !tbaa !4
  %97 = atomicrmw add i32* %3, i32 %96 monotonic, align 4
  br label %98

98:                                               ; preds = %91, %95
  call void @__kmpc_end_reduce(%struct.ident_t* nonnull @2, i32 %26, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %99

99:                                               ; preds = %98, %86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %64) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %62) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %61) #4
  call void @__kmpc_barrier(%struct.ident_t* nonnull @3, i32 %26)
  %100 = load i32, i32* %2, align 4, !tbaa !4
  %101 = load i32, i32* %3, align 4, !tbaa !4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %6, align 4, !tbaa !4
  %103 = bitcast [1 x i8*]* %19 to i32**
  store i32* %6, i32** %103, align 8
  %104 = bitcast [1 x i8*]* %19 to i8*
  %105 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @2, i32 %26, i32 1, i64 8, i8* nonnull %104, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func.2, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %105, label %113 [
    i32 1, label %106
    i32 2, label %110
  ]

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4, !tbaa !4
  %108 = load i32, i32* %6, align 4, !tbaa !4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %4, align 4, !tbaa !4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @2, i32 %26, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %113

110:                                              ; preds = %99
  %111 = load i32, i32* %6, align 4, !tbaa !4
  %112 = atomicrmw add i32* %4, i32 %111 monotonic, align 4
  br label %113

113:                                              ; preds = %110, %106, %99
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func.1(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func.2(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
