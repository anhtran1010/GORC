; ModuleID = 'dataracebench/DRB102-copyprivate-orig-no.c'
source_filename = "dataracebench/DRB102-copyprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW1x = comdat any

$_ZTW1y = comdat any

@x = dso_local thread_local global float 0.000000e+00, align 4
@y = dso_local thread_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"x=%f y=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  %3 = load float, float* @x, align 4, !tbaa !4
  %4 = fpext float %3 to double
  %5 = load i32, i32* @y, align 4, !tbaa !8
  %6 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %4, i32 %5)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #1 {
  %3 = alloca [2 x i8*], align 8
  %4 = load i32, i32* %0, align 4, !tbaa !8
  %5 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store float 1.000000e+00, float* @x, align 4, !tbaa !4
  store i32 1, i32* @y, align 4, !tbaa !8
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %4)
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 1, %7 ], [ 0, %2 ]
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8* bitcast (float* @x to i8*), i8** %10, align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  store i8* bitcast (i32* @y to i8*), i8** %11, align 8
  %12 = bitcast [2 x i8*]* %3 to i8*
  call void @__kmpc_copyprivate(%struct.ident_t* nonnull @1, i32 %4, i64 16, i8* nonnull %12, void (i8*, i8*)* nonnull @.omp.copyprivate.copy_func, i32 %9)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.copyprivate.copy_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #3 {
  %3 = bitcast i8* %0 to float**
  %4 = load float*, float** %3, align 8
  %5 = bitcast i8* %1 to float**
  %6 = load float*, float** %5, align 8
  %7 = load float, float* %6, align 4, !tbaa !4
  store float %7, float* %4, align 4, !tbaa !4
  %8 = getelementptr inbounds i8, i8* %0, i64 8
  %9 = bitcast i8* %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i8, i8* %1, i64 8
  %12 = bitcast i8* %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4, !tbaa !8
  store i32 %14, i32* %10, align 4, !tbaa !8
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_copyprivate(%struct.ident_t*, i32, i64, i8*, void (i8*, i8*)*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define weak_odr hidden float* @_ZTW1x() local_unnamed_addr #6 comdat {
  ret float* @x
}

; Function Attrs: nounwind uwtable
define weak_odr hidden i32* @_ZTW1y() local_unnamed_addr #6 comdat {
  ret i32* @y
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"float", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
