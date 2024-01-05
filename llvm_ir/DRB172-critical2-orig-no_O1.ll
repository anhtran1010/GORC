; ModuleID = 'dataracebench/DRB172-critical2-orig-no.c'
source_filename = "dataracebench/DRB172-critical2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant %struct.ident_t { i32 0, i32 34, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [10 x double], align 16
  %2 = alloca [10 x double], align 16
  %3 = bitcast [10 x double]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #3
  %4 = bitcast [10 x double]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #3
  br label %5

5:                                                ; preds = %0, %5
  %6 = phi i64 [ 0, %0 ], [ %10, %5 ]
  %7 = trunc i64 %6 to i32
  %8 = sitofp i32 %7 to double
  %9 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 %6
  store double %8, double* %9, align 8, !tbaa !4
  %10 = add nuw nsw i64 %6, 1
  %11 = icmp eq i64 %10, 10
  br i1 %11, label %12, label %5, !llvm.loop !8

12:                                               ; preds = %5, %12
  %13 = phi i64 [ %17, %12 ], [ 0, %5 ]
  %14 = trunc i64 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = getelementptr inbounds [10 x double], [10 x double]* %1, i64 0, i64 %13
  store double %15, double* %16, align 8, !tbaa !4
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 10
  br i1 %18, label %19, label %12, !llvm.loop !11

19:                                               ; preds = %12
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [10 x double]*, [10 x double]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [10 x double]* nonnull %1, [10 x double]* nonnull %2)
  br label %20

20:                                               ; preds = %19, %20
  %21 = phi i64 [ 0, %19 ], [ %27, %20 ]
  %22 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 %21
  %23 = load double, double* %22, align 8, !tbaa !4
  %24 = getelementptr inbounds [10 x double], [10 x double]* %1, i64 0, i64 %21
  %25 = load double, double* %24, align 8, !tbaa !4
  %26 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %23, double %25)
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 10
  br i1 %28, label %29, label %20, !llvm.loop !12

29:                                               ; preds = %20
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [10 x double]* nocapture nonnull align 8 dereferenceable(80) %2, [10 x double]* nocapture nonnull readonly align 8 dereferenceable(80) %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 0, i32* %5, align 4, !tbaa !13
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 9, i32* %6, align 4, !tbaa !13
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 1, i32* %7, align 4, !tbaa !13
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 0, i32* %8, align 4, !tbaa !13
  %13 = load i32, i32* %0, align 4, !tbaa !13
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !13
  %15 = icmp slt i32 %14, 9
  %16 = select i1 %15, i32 %14, i32 9
  store i32 %16, i32* %6, align 4, !tbaa !13
  %17 = load i32, i32* %5, align 4, !tbaa !13
  %18 = icmp sgt i32 %17, %16
  br i1 %18, label %32, label %19

19:                                               ; preds = %4
  %20 = sext i32 %17 to i64
  %21 = add nsw i32 %16, 1
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ %20, %19 ], [ %29, %22 ]
  %24 = getelementptr inbounds [10 x double], [10 x double]* %3, i64 0, i64 %23
  %25 = load double, double* %24, align 8, !tbaa !4
  %26 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 %23
  %27 = load double, double* %26, align 8, !tbaa !4
  %28 = fadd double %25, %27
  store double %28, double* %26, align 8, !tbaa !4
  %29 = add nsw i64 %23, 1
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %21, %30
  br i1 %31, label %32, label %22

32:                                               ; preds = %22, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %13)
  call void @__kmpc_critical(%struct.ident_t* nonnull @3, i32 %13, [8 x i32]* nonnull @.gomp_critical_user_.var)
  %33 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9
  %34 = load double, double* %33, align 8, !tbaa !4
  %35 = fadd double %34, 1.000000e+00
  store double %35, double* %33, align 8, !tbaa !4
  call void @__kmpc_end_critical(%struct.ident_t* nonnull @3, i32 %13, [8 x i32]* nonnull @.gomp_critical_user_.var)
  call void @__kmpc_barrier(%struct.ident_t* nonnull @4, i32 %13)
  %36 = call i32 @__kmpc_single(%struct.ident_t* nonnull @3, i32 %13)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load double, double* %33, align 8, !tbaa !4
  %40 = fadd double %39, -1.000000e+00
  store double %40, double* %33, align 8, !tbaa !4
  call void @__kmpc_end_single(%struct.ident_t* nonnull @3, i32 %13)
  br label %41

41:                                               ; preds = %38, %32
  call void @__kmpc_barrier(%struct.ident_t* nonnull @5, i32 %13)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
