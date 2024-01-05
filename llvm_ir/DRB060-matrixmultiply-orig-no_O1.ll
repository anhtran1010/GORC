; ModuleID = 'dataracebench/DRB060-matrixmultiply-orig-no.c'
source_filename = "dataracebench/DRB060-matrixmultiply-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@a = dso_local local_unnamed_addr global [100 x [100 x double]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [100 x [100 x double]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [100 x [100 x double]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @mmm() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  store i32 0, i32* %3, align 4, !tbaa !4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 99, i32* %4, align 4, !tbaa !4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 1, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %11 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %11, i32 34, i32* nonnull %6, i32* nonnull %3, i32* nonnull %4, i32* nonnull %5, i32 1, i32 1)
  %12 = load i32, i32* %4, align 4, !tbaa !4
  %13 = icmp slt i32 %12, 99
  %14 = select i1 %13, i32 %12, i32 99
  store i32 %14, i32* %4, align 4, !tbaa !4
  %15 = load i32, i32* %3, align 4, !tbaa !4
  %16 = icmp sgt i32 %15, %14
  br i1 %16, label %43, label %17

17:                                               ; preds = %2
  %18 = sext i32 %15 to i64
  %19 = add nsw i32 %14, 1
  br label %20

20:                                               ; preds = %17, %39
  %21 = phi i64 [ %18, %17 ], [ %40, %39 ]
  br label %22

22:                                               ; preds = %20, %36
  %23 = phi i64 [ 0, %20 ], [ %37, %36 ]
  %24 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %21, i64 %23
  %25 = load double, double* %24, align 8, !tbaa !8
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %34, %26 ]
  %28 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %21, i64 %27
  %29 = load double, double* %28, align 8, !tbaa !8
  %30 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %23, i64 %27
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = fmul double %25, %31
  %33 = fadd double %29, %32
  store double %33, double* %28, align 8, !tbaa !8
  %34 = add nuw nsw i64 %27, 1
  %35 = icmp eq i64 %34, 100
  br i1 %35, label %36, label %26, !llvm.loop !10

36:                                               ; preds = %26
  %37 = add nuw nsw i64 %23, 1
  %38 = icmp eq i64 %37, 100
  br i1 %38, label %39, label %22, !llvm.loop !13

39:                                               ; preds = %36
  %40 = add nsw i64 %21, 1
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %19, %41
  br i1 %42, label %43, label %20

43:                                               ; preds = %39, %2
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %11)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !14 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

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
!13 = distinct !{!13, !11, !12}
!14 = !{!15}
!15 = !{i64 2, i64 -1, i64 -1, i1 true}
