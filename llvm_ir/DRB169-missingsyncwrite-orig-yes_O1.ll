; ModuleID = 'dataracebench/DRB169-missingsyncwrite-orig-yes.c'
source_filename = "dataracebench/DRB169-missingsyncwrite-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [8 x double], align 16
  %2 = alloca [8 x [8 x [8 x double]]], align 16
  %3 = bitcast [8 x double]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #3
  %4 = bitcast [8 x [8 x [8 x double]]]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %4) #3
  br label %5

5:                                                ; preds = %0, %19
  %6 = phi i64 [ 0, %0 ], [ %20, %19 ]
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to double
  br label %9

9:                                                ; preds = %5, %16
  %10 = phi i64 [ 0, %5 ], [ %17, %16 ]
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  %13 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %2, i64 0, i64 %6, i64 %10, i64 %12
  store double %8, double* %13, align 8, !tbaa !4
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %11, !llvm.loop !8

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %9, !llvm.loop !11

19:                                               ; preds = %16
  %20 = add nuw nsw i64 %6, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %5, !llvm.loop !12

22:                                               ; preds = %19
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x double]*, [8 x [8 x [8 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x double]* nonnull %1, [8 x [8 x [8 x double]]]* nonnull %2)
  br label %23

23:                                               ; preds = %22, %23
  %24 = phi i64 [ 0, %22 ], [ %28, %23 ]
  %25 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 %24
  %26 = load double, double* %25, align 8, !tbaa !4
  %27 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %26)
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, 8
  br i1 %29, label %30, label %23, !llvm.loop !13

30:                                               ; preds = %23
  %31 = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [8 x double]* nocapture nonnull align 8 dereferenceable(64) %2, [8 x [8 x [8 x double]]]* nocapture nonnull readonly align 8 dereferenceable(4096) %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 0, i32* %5, align 4, !tbaa !14
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 5, i32* %6, align 4, !tbaa !14
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 1, i32* %7, align 4, !tbaa !14
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 0, i32* %8, align 4, !tbaa !14
  %13 = load i32, i32* %0, align 4, !tbaa !14
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !14
  %15 = icmp slt i32 %14, 5
  %16 = select i1 %15, i32 %14, i32 5
  store i32 %16, i32* %6, align 4, !tbaa !14
  %17 = load i32, i32* %5, align 4, !tbaa !14
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %51, label %19

19:                                               ; preds = %4
  %20 = sext i32 %17 to i64
  %21 = add nsw i32 %16, 1
  %22 = sext i32 %21 to i64
  br label %25

23:                                               ; preds = %49
  %24 = icmp eq i64 %27, %22
  br i1 %24, label %51, label %25

25:                                               ; preds = %19, %23
  %26 = phi i64 [ %20, %19 ], [ %27, %23 ]
  %27 = add nsw i64 %26, 1
  %28 = add nsw i64 %26, 2
  br label %29

29:                                               ; preds = %25, %49
  %30 = phi i64 [ 1, %25 ], [ %32, %49 ]
  %31 = add nsw i64 %30, -1
  %32 = add nuw nsw i64 %30, 1
  br label %33

33:                                               ; preds = %29, %33
  %34 = phi i64 [ 0, %29 ], [ %47, %33 ]
  %35 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %27, i64 %31, i64 %34
  %36 = load double, double* %35, align 8, !tbaa !4
  %37 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %27, i64 %32, i64 %34
  %38 = load double, double* %37, align 8, !tbaa !4
  %39 = fadd double %36, %38
  %40 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %26, i64 %30, i64 %34
  %41 = load double, double* %40, align 8, !tbaa !4
  %42 = fadd double %39, %41
  %43 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %28, i64 %30, i64 %34
  %44 = load double, double* %43, align 8, !tbaa !4
  %45 = fadd double %42, %44
  %46 = getelementptr inbounds [8 x double], [8 x double]* %2, i64 0, i64 %34
  store double %45, double* %46, align 8, !tbaa !4
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, 8
  br i1 %48, label %49, label %33, !llvm.loop !16

49:                                               ; preds = %33
  %50 = icmp eq i64 %32, 7
  br i1 %50, label %23, label %29, !llvm.loop !17

51:                                               ; preds = %23, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !18 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = !{!19}
!19 = !{i64 2, i64 -1, i64 -1, i1 true}
