; ModuleID = 'dataracebench/DRB137-simdsafelen-orig-no.c'
source_filename = "dataracebench/DRB137-simdsafelen-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Expected: -1; Real: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [4 x i32], align 16
  %2 = bitcast [4 x i32]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = bitcast [4 x i32]* %1 to <2 x i32>*
  %4 = load <2 x i32>, <2 x i32>* %3, align 16
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi <2 x i32> [ %4, %0 ], [ %11, %5 ]
  %7 = phi i64 [ 0, %0 ], [ %14, %5 ]
  %8 = add nuw nsw i64 %7, 2
  %9 = sitofp <2 x i32> %6 to <2 x float>
  %10 = fadd <2 x float> %9, <float -1.000000e+00, float -1.000000e+00>
  %11 = fptosi <2 x float> %10 to <2 x i32>
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 %8
  %13 = bitcast i32* %12 to <2 x i32>*
  store <2 x i32> %11, <2 x i32>* %13, align 8, !tbaa !4
  %14 = add nuw i64 %7, 2
  %15 = icmp eq i64 %7, 0
  br i1 %15, label %16, label %5, !llvm.loop !8

16:                                               ; preds = %5
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %18 = load i32, i32* %17, align 4, !tbaa !4
  %19 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
