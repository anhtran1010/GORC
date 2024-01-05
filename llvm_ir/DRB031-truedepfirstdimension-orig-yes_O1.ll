; ModuleID = 'dataracebench/DRB031-truedepfirstdimension-orig-yes.c'
source_filename = "dataracebench/DRB031-truedepfirstdimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1000 x [1000 x double]], align 16
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #3
  store i32 1000, i32* %3, align 4, !tbaa !4
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  store i32 1000, i32* %4, align 4, !tbaa !4
  %8 = bitcast [1000 x [1000 x double]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8000000, i8* nonnull %8) #3
  br label %9

9:                                                ; preds = %2, %16
  %10 = phi i64 [ 0, %2 ], [ %17, %16 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  %13 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %5, i64 0, i64 %10, i64 %12
  store double 5.000000e-01, double* %13, align 8, !tbaa !8
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, 1000
  br i1 %15, label %16, label %11, !llvm.loop !10

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 1000
  br i1 %18, label %19, label %9, !llvm.loop !13

19:                                               ; preds = %16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1000 x [1000 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %4, [1000 x [1000 x double]]* nonnull %5)
  %20 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %5, i64 0, i64 500, i64 500
  %21 = load double, double* %20, align 16, !tbaa !8
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double %21)
  call void @llvm.lifetime.end.p0i8(i64 8000000, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, [1000 x [1000 x double]]* nocapture nonnull align 8 dereferenceable(8000000) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = add nsw i32 %10, -2
  %12 = icmp sgt i32 %10, 1
  br i1 %12, label %13, label %45

13:                                               ; preds = %5
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 %11, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 1, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 0, i32* %9, align 4, !tbaa !4
  %18 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %18, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %19 = load i32, i32* %7, align 4, !tbaa !4
  %20 = icmp sgt i32 %19, %11
  %21 = select i1 %20, i32 %11, i32 %19
  store i32 %21, i32* %7, align 4, !tbaa !4
  %22 = load i32, i32* %6, align 4, !tbaa !4
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 1
  %25 = icmp sgt i32 %22, %21
  br i1 %25, label %44, label %26

26:                                               ; preds = %13
  %27 = sext i32 %22 to i64
  %28 = add i32 %21, 1
  %29 = zext i32 %23 to i64
  br label %33

30:                                               ; preds = %36, %33
  %31 = trunc i64 %35 to i32
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %26, %30
  %34 = phi i64 [ %27, %26 ], [ %35, %30 ]
  %35 = add nsw i64 %34, 1
  br i1 %24, label %36, label %30

36:                                               ; preds = %33, %36
  %37 = phi i64 [ %42, %36 ], [ 1, %33 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %34, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %35, i64 %37
  store double %40, double* %41, align 8, !tbaa !8
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %29
  br i1 %43, label %30, label %36, !llvm.loop !14

44:                                               ; preds = %30, %13
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  br label %45

45:                                               ; preds = %44, %5
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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
