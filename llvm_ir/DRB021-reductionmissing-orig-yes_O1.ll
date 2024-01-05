; ModuleID = 'dataracebench/DRB021-reductionmissing-orig-yes.c'
source_filename = "dataracebench/DRB021-reductionmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x [100 x float]], align 16
  %6 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #3
  store float 0.000000e+00, float* %3, align 4, !tbaa !4
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  store i32 100, i32* %4, align 4, !tbaa !8
  %8 = bitcast [100 x [100 x float]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* nonnull %8) #3
  br label %9

9:                                                ; preds = %2, %16
  %10 = phi i64 [ 0, %2 ], [ %17, %16 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  %13 = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %5, i64 0, i64 %10, i64 %12
  store float 5.000000e-01, float* %13, align 4, !tbaa !4
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, 100
  br i1 %15, label %16, label %11, !llvm.loop !10

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 100
  br i1 %18, label %19, label %9, !llvm.loop !13

19:                                               ; preds = %16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x [100 x float]]*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, [100 x [100 x float]]* nonnull %5, float* nonnull %3)
  %20 = load float, float* %3, align 4, !tbaa !4
  %21 = fpext float %20 to double
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %21)
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [100 x [100 x float]]* nocapture nonnull readonly align 4 dereferenceable(40000) %3, float* nocapture nonnull align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !8
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %5
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %6, align 4, !tbaa !8
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 %11, i32* %7, align 4, !tbaa !8
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 1, i32* %8, align 4, !tbaa !8
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 0, i32* %9, align 4, !tbaa !8
  %18 = load i32, i32* %0, align 4, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %18, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %19 = load i32, i32* %7, align 4, !tbaa !8
  %20 = icmp slt i32 %19, %10
  %21 = select i1 %20, i32 %19, i32 %11
  store i32 %21, i32* %7, align 4, !tbaa !8
  %22 = load i32, i32* %6, align 4, !tbaa !8
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = icmp sgt i32 %22, %21
  br i1 %25, label %45, label %26

26:                                               ; preds = %13
  %27 = sext i32 %22 to i64
  %28 = add i32 %21, 1
  %29 = zext i32 %23 to i64
  br label %30

30:                                               ; preds = %26, %41
  %31 = phi i64 [ %27, %26 ], [ %42, %41 ]
  br i1 %24, label %32, label %41

32:                                               ; preds = %30, %32
  %33 = phi i64 [ %39, %32 ], [ 0, %30 ]
  %34 = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %3, i64 0, i64 %31, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !4
  %36 = load float, float* %4, align 4, !tbaa !4
  %37 = fmul float %35, %35
  %38 = fadd float %36, %37
  store float %38, float* %4, align 4, !tbaa !4
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %29
  br i1 %40, label %41, label %32, !llvm.loop !14

41:                                               ; preds = %32, %30
  %42 = add nsw i64 %31, 1
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %28, %43
  br i1 %44, label %45, label %30

45:                                               ; preds = %41, %13
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  br label %46

46:                                               ; preds = %45, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
