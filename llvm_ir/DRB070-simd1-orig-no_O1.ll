; ModuleID = 'dataracebench/DRB070-simd1-orig-no.c'
source_filename = "dataracebench/DRB070-simd1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %12, %1 ]
  %3 = getelementptr inbounds [100 x i32], [100 x i32]* @b, i64 0, i64 %2
  %4 = bitcast i32* %3 to <4 x i32>*
  %5 = load <4 x i32>, <4 x i32>* %4, align 16, !tbaa !4, !llvm.access.group !8
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* @c, i64 0, i64 %2
  %7 = bitcast i32* %6 to <4 x i32>*
  %8 = load <4 x i32>, <4 x i32>* %7, align 16, !tbaa !4, !llvm.access.group !8
  %9 = mul nsw <4 x i32> %8, %5
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %2
  %11 = bitcast i32* %10 to <4 x i32>*
  store <4 x i32> %9, <4 x i32>* %11, align 16, !tbaa !4, !llvm.access.group !8
  %12 = add nuw i64 %2, 4
  %13 = icmp eq i64 %12, 100
  br i1 %13, label %14, label %1, !llvm.loop !9

14:                                               ; preds = %1
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.parallel_accesses", !8}
!11 = !{!"llvm.loop.isvectorized", i32 1}
