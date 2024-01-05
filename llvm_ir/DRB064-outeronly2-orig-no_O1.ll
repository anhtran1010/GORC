; ModuleID = 'dataracebench/DRB064-outeronly2-orig-no.c'
source_filename = "dataracebench/DRB064-outeronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@b = dso_local local_unnamed_addr global [100 x [100 x double]] zeroinitializer, align 16
@n = dso_local local_unnamed_addr global i32 100, align 4
@m = dso_local local_unnamed_addr global i32 100, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @n, align 4, !tbaa !4
  %8 = add nsw i32 %7, -1
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %3, align 4, !tbaa !4
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 %8, i32* %4, align 4, !tbaa !4
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 1, i32* %5, align 4, !tbaa !4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %15 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %15, i32 34, i32* nonnull %6, i32* nonnull %3, i32* nonnull %4, i32* nonnull %5, i32 1, i32 1)
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %16, %7
  %18 = select i1 %17, i32 %16, i32 %8
  store i32 %18, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %3, align 4, !tbaa !4
  %20 = load i32, i32* @m, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = icmp sgt i32 %19, %18
  br i1 %22, label %44, label %23

23:                                               ; preds = %10
  %24 = sext i32 %19 to i64
  %25 = add i32 %18, 1
  %26 = zext i32 %20 to i64
  br label %27

27:                                               ; preds = %23, %39
  %28 = phi i64 [ 0, %23 ], [ %43, %39 ]
  %29 = phi i64 [ %24, %23 ], [ %40, %39 ]
  br i1 %21, label %30, label %39

30:                                               ; preds = %27
  %31 = add i64 %28, %24
  %32 = getelementptr [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %31, i64 0
  %33 = load double, double* %32, align 16
  br label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ 1, %30 ], [ %37, %34 ]
  %36 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %29, i64 %35
  store double %33, double* %36, align 8, !tbaa !8
  %37 = add nuw nsw i64 %35, 1
  %38 = icmp eq i64 %37, %26
  br i1 %38, label %39, label %34, !llvm.loop !10

39:                                               ; preds = %34, %27
  %40 = add nsw i64 %29, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %25, %41
  %43 = add i64 %28, 1
  br i1 %42, label %44, label %27

44:                                               ; preds = %39, %10
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %15)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)) #3
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
