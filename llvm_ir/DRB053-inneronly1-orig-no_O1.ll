; ModuleID = 'dataracebench/DRB053-inneronly1-orig-no.c'
source_filename = "dataracebench/DRB053-inneronly1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [20 x [20 x double]], align 16
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  %6 = bitcast [20 x [20 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* nonnull %6) #4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(3200) %6, i8 0, i64 3200, i1 false)
  store i32 0, i32* %3, align 4, !tbaa !4
  br label %7

7:                                                ; preds = %2, %7
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [20 x [20 x double]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [20 x [20 x double]]* nonnull %4, i32* nonnull %3)
  %8 = load i32, i32* %3, align 4, !tbaa !4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4, !tbaa !4
  %10 = icmp slt i32 %8, 18
  br i1 %10, label %7, label %11, !llvm.loop !8

11:                                               ; preds = %7
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, [20 x [20 x double]]* nocapture nonnull align 8 dereferenceable(3200) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #4
  store i32 0, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 19, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  store i32 1, i32* %7, align 4, !tbaa !4
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %13 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !4
  %15 = icmp slt i32 %14, 19
  %16 = select i1 %15, i32 %14, i32 19
  store i32 %16, i32* %6, align 4, !tbaa !4
  %17 = load i32, i32* %5, align 4, !tbaa !4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = sext i32 %18 to i64
  %22 = icmp sgt i32 %17, %16
  br i1 %22, label %36, label %23

23:                                               ; preds = %4
  %24 = sext i32 %17 to i64
  %25 = add nsw i32 %16, 1
  br label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %24, %23 ], [ %33, %26 ]
  %28 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %2, i64 0, i64 %20, i64 %27
  %29 = load double, double* %28, align 8, !tbaa !11
  %30 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %2, i64 0, i64 %21, i64 %27
  %31 = load double, double* %30, align 8, !tbaa !11
  %32 = fadd double %29, %31
  store double %32, double* %30, align 8, !tbaa !11
  %33 = add nsw i64 %27, 1
  %34 = trunc i64 %33 to i32
  %35 = icmp eq i32 %25, %34
  br i1 %35, label %36, label %26

36:                                               ; preds = %26, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
