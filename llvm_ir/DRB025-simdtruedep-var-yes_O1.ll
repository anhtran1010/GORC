; ModuleID = 'dataracebench/DRB025-simdtruedep-var-yes.c'
source_filename = "dataracebench/DRB025-simdtruedep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8, !tbaa !4
  %7 = call i64 @strtol(i8* nocapture nonnull %6, i8** null, i32 10) #2
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %8, %4 ], [ 100, %2 ]
  %11 = zext i32 %10 to i64
  %12 = alloca i32, i64 %11, align 16
  %13 = alloca i32, i64 %11, align 16
  %14 = icmp sgt i32 %10, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = zext i32 %10 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %21, %17 ]
  %19 = getelementptr inbounds i32, i32* %12, i64 %18
  %20 = trunc i64 %18 to i32
  store i32 %20, i32* %19, align 4, !tbaa !8
  %21 = add nuw nsw i64 %18, 1
  %22 = getelementptr inbounds i32, i32* %13, i64 %18
  %23 = trunc i64 %21 to i32
  store i32 %23, i32* %22, align 4, !tbaa !8
  %24 = icmp eq i64 %21, %16
  br i1 %24, label %25, label %17, !llvm.loop !10

25:                                               ; preds = %17, %9
  %26 = icmp sgt i32 %10, 1
  br i1 %26, label %27, label %61

27:                                               ; preds = %25
  %28 = add i32 %10, -1
  %29 = zext i32 %28 to i64
  %30 = icmp ult i32 %28, 4
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = and i64 %29, 4294967292
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %45, %33 ]
  %35 = getelementptr inbounds i32, i32* %12, i64 %34
  %36 = bitcast i32* %35 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 16, !tbaa !8, !llvm.access.group !13
  %38 = getelementptr inbounds i32, i32* %13, i64 %34
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 16, !tbaa !8, !llvm.access.group !13
  %41 = mul nsw <4 x i32> %40, %37
  %42 = or i64 %34, 1
  %43 = getelementptr inbounds i32, i32* %12, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %44, align 4, !tbaa !8, !llvm.access.group !13
  %45 = add nuw i64 %34, 4
  %46 = icmp eq i64 %45, %32
  br i1 %46, label %47, label %33, !llvm.loop !14

47:                                               ; preds = %33
  %48 = icmp eq i64 %32, %29
  br i1 %48, label %61, label %49

49:                                               ; preds = %27, %47
  %50 = phi i64 [ 0, %27 ], [ %32, %47 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %58, %51 ], [ %50, %49 ]
  %53 = getelementptr inbounds i32, i32* %12, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !8, !llvm.access.group !13
  %55 = getelementptr inbounds i32, i32* %13, i64 %52
  %56 = load i32, i32* %55, align 4, !tbaa !8, !llvm.access.group !13
  %57 = mul nsw i32 %56, %54
  %58 = add nuw nsw i64 %52, 1
  %59 = getelementptr inbounds i32, i32* %12, i64 %58
  store i32 %57, i32* %59, align 4, !tbaa !8, !llvm.access.group !13
  %60 = icmp eq i64 %58, %29
  br i1 %60, label %61, label %51, !llvm.loop !17

61:                                               ; preds = %51, %47, %25
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.parallel_accesses", !13}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
