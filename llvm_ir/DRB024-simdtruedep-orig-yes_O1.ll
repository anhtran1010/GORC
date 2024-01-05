; ModuleID = 'dataracebench/DRB024-simdtruedep-orig-yes.c'
source_filename = "dataracebench/DRB024-simdtruedep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i=%d a[%d]=%d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca [100 x i32], align 16
  %4 = alloca [100 x i32], align 16
  %5 = bitcast [100 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %5) #3
  %6 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %6) #3
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %11, %7 ]
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %8
  %10 = trunc i64 %8 to i32
  store i32 %10, i32* %9, align 4, !tbaa !4
  %11 = add nuw nsw i64 %8, 1
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %8
  %13 = trunc i64 %11 to i32
  store i32 %13, i32* %12, align 4, !tbaa !4
  %14 = icmp eq i64 %11, 100
  br i1 %14, label %15, label %7, !llvm.loop !8

15:                                               ; preds = %7, %15
  %16 = phi i64 [ %27, %15 ], [ 0, %7 ]
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %16
  %18 = bitcast i32* %17 to <4 x i32>*
  %19 = load <4 x i32>, <4 x i32>* %18, align 16, !tbaa !4, !llvm.access.group !11
  %20 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %16
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 16, !tbaa !4, !llvm.access.group !11
  %23 = add nsw <4 x i32> %22, %19
  %24 = or i64 %16, 1
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %24
  %26 = bitcast i32* %25 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %26, align 4, !tbaa !4, !llvm.access.group !11
  %27 = add nuw i64 %16, 4
  %28 = icmp eq i64 %27, 96
  br i1 %28, label %29, label %15, !llvm.loop !12

29:                                               ; preds = %15, %29
  %30 = phi i64 [ %36, %29 ], [ 96, %15 ]
  %31 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !4, !llvm.access.group !11
  %33 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %30
  %34 = load i32, i32* %33, align 4, !tbaa !4, !llvm.access.group !11
  %35 = add nsw i32 %34, %32
  %36 = add nuw nsw i64 %30, 1
  %37 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %36
  store i32 %35, i32* %37, align 4, !tbaa !4, !llvm.access.group !11
  %38 = icmp eq i64 %36, 99
  br i1 %38, label %39, label %29, !llvm.loop !15

39:                                               ; preds = %29, %39
  %40 = phi i64 [ %45, %39 ], [ 0, %29 ]
  %41 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !4
  %43 = trunc i64 %40 to i32
  %44 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %43, i32 %42)
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, 100
  br i1 %46, label %47, label %39, !llvm.loop !17

47:                                               ; preds = %39
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %5) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.parallel_accesses", !11}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !13, !16, !14}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !9, !10}
