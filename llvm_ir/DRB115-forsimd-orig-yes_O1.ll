; ModuleID = 'dataracebench/DRB115-forsimd-orig-yes.c'
source_filename = "dataracebench/DRB115-forsimd-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i32], align 16
  %6 = alloca [100 x i32], align 16
  %7 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 100, i32* %4, align 4, !tbaa !4
  %9 = bitcast [100 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %9) #3
  %10 = bitcast [100 x i32]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %10) #3
  br label %11

11:                                               ; preds = %2, %11
  %12 = phi i64 [ 0, %2 ], [ %15, %11 ]
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %12
  %14 = trunc i64 %12 to i32
  store i32 %14, i32* %13, align 4, !tbaa !4
  %15 = add nuw nsw i64 %12, 1
  %16 = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 0, i64 %12
  %17 = trunc i64 %15 to i32
  store i32 %17, i32* %16, align 4, !tbaa !4
  %18 = icmp eq i64 %15, 100
  br i1 %18, label %19, label %11, !llvm.loop !8

19:                                               ; preds = %11
  store i32 100, i32* %3, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %4, [100 x i32]* nonnull %5, [100 x i32]* nonnull %6)
  %20 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 50
  %21 = load i32, i32* %20, align 8, !tbaa !4
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %21)
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, [100 x i32]* nocapture nonnull align 4 dereferenceable(400) %4, [100 x i32]* nocapture nonnull readonly align 4 dereferenceable(400) %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %3, align 4, !tbaa !4
  %12 = add nsw i32 %11, -1
  %13 = add nsw i32 %11, -2
  %14 = icmp sgt i32 %11, 1
  br i1 %14, label %15, label %69

15:                                               ; preds = %6
  %16 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %17 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 %13, i32* %8, align 4, !tbaa !4
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 1, i32* %9, align 4, !tbaa !4
  %19 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #3
  store i32 0, i32* %10, align 4, !tbaa !4
  %20 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %20, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %21 = load i32, i32* %8, align 4, !tbaa !4
  %22 = icmp sgt i32 %21, %13
  %23 = select i1 %22, i32 %13, i32 %21
  store i32 %23, i32* %8, align 4, !tbaa !4
  %24 = load i32, i32* %7, align 4, !tbaa !4
  %25 = icmp sgt i32 %24, %23
  br i1 %25, label %64, label %26

26:                                               ; preds = %15
  %27 = sext i32 %24 to i64
  %28 = add i32 %23, 1
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = and i64 %30, -4
  %34 = add nsw i64 %33, %27
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %48, %35 ]
  %37 = add i64 %36, %27
  %38 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !4, !llvm.access.group !11
  %41 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %37
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !4, !llvm.access.group !11
  %44 = add nsw <4 x i32> %43, %40
  %45 = add nsw i64 %37, 1
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %45
  %47 = bitcast i32* %46 to <4 x i32>*
  store <4 x i32> %44, <4 x i32>* %47, align 4, !tbaa !4, !llvm.access.group !11
  %48 = add nuw i64 %36, 4
  %49 = icmp eq i64 %48, %33
  br i1 %49, label %50, label %35, !llvm.loop !12

50:                                               ; preds = %35
  %51 = icmp eq i64 %30, %33
  br i1 %51, label %64, label %52

52:                                               ; preds = %26, %50
  %53 = phi i64 [ %27, %26 ], [ %34, %50 ]
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ %61, %54 ], [ %53, %52 ]
  %56 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !4, !llvm.access.group !11
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %55
  %59 = load i32, i32* %58, align 4, !tbaa !4, !llvm.access.group !11
  %60 = add nsw i32 %59, %57
  %61 = add nsw i64 %55, 1
  %62 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %61
  store i32 %60, i32* %62, align 4, !tbaa !4, !llvm.access.group !11
  %63 = icmp eq i64 %61, %29
  br i1 %63, label %64, label %54, !llvm.loop !15

64:                                               ; preds = %54, %50, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %20)
  %65 = load i32, i32* %10, align 4, !tbaa !4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 %12, i32* %2, align 4, !tbaa !4
  br label %68

68:                                               ; preds = %67, %64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  br label %69

69:                                               ; preds = %68, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !17 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.parallel_accesses", !11}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !13, !16, !14}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!18}
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
