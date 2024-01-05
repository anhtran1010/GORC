; ModuleID = 'dataracebench/DRB003-antidep2-orig-yes.c'
source_filename = "dataracebench/DRB003-antidep2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[10][10]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [20 x [20 x double]], align 16
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #3
  store i32 20, i32* %3, align 4, !tbaa !4
  %6 = bitcast [20 x [20 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* nonnull %6) #3
  br label %7

7:                                                ; preds = %2, %14
  %8 = phi i64 [ 0, %2 ], [ %15, %14 ]
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %12, %9 ]
  %11 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %4, i64 0, i64 %8, i64 %10
  store double 5.000000e-01, double* %11, align 8, !tbaa !8
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp eq i64 %12, 20
  br i1 %13, label %14, label %9, !llvm.loop !10

14:                                               ; preds = %9
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 20
  br i1 %16, label %17, label %7, !llvm.loop !13

17:                                               ; preds = %14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [20 x [20 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, [20 x [20 x double]]* nonnull %4)
  %18 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %4, i64 0, i64 10, i64 10
  %19 = load double, double* %18, align 16, !tbaa !8
  %20 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %19)
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [20 x [20 x double]]* nocapture nonnull align 8 dereferenceable(3200) %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* %2, align 4, !tbaa !4
  %10 = add nsw i32 %9, -2
  %11 = icmp sgt i32 %9, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 0, i32* %5, align 4, !tbaa !4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 %10, i32* %6, align 4, !tbaa !4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 1, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 0, i32* %8, align 4, !tbaa !4
  %17 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %17, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %18 = load i32, i32* %6, align 4, !tbaa !4
  %19 = icmp sgt i32 %18, %10
  %20 = select i1 %19, i32 %10, i32 %18
  store i32 %20, i32* %6, align 4, !tbaa !4
  %21 = load i32, i32* %5, align 4, !tbaa !4
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = icmp sgt i32 %21, %20
  br i1 %24, label %44, label %25

25:                                               ; preds = %12
  %26 = sext i32 %21 to i64
  %27 = add i32 %20, 1
  %28 = zext i32 %22 to i64
  br label %29

29:                                               ; preds = %25, %41
  %30 = phi i64 [ %26, %25 ], [ %31, %41 ]
  %31 = add nsw i64 %30, 1
  br i1 %23, label %32, label %41

32:                                               ; preds = %29, %32
  %33 = phi i64 [ %39, %32 ], [ 0, %29 ]
  %34 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %31, i64 %33
  %35 = load double, double* %34, align 8, !tbaa !8
  %36 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %30, i64 %33
  %37 = load double, double* %36, align 8, !tbaa !8
  %38 = fadd double %35, %37
  store double %38, double* %36, align 8, !tbaa !8
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %28
  br i1 %40, label %41, label %32, !llvm.loop !14

41:                                               ; preds = %32, %29
  %42 = trunc i64 %31 to i32
  %43 = icmp eq i32 %27, %42
  br i1 %43, label %44, label %29

44:                                               ; preds = %41, %12
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %17)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  br label %45

45:                                               ; preds = %44, %4
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
