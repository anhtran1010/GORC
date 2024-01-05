; ModuleID = 'dataracebench/DRB116-target-teams-orig-yes.c'
source_filename = "dataracebench/DRB116-target-teams-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca [100 x double], align 16
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %10, %4 ]
  %6 = trunc i64 %5 to i32
  %7 = sitofp i32 %6 to double
  %8 = fmul double %7, 5.000000e-01
  %9 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 %5
  store double %8, double* %9, align 8, !tbaa !4
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 100
  br i1 %11, label %12, label %4, !llvm.loop !8

12:                                               ; preds = %4
  %13 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 0
  %14 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1) #2
  call void @__kmpc_push_num_teams(%struct.ident_t* nonnull @1, i32 %14, i32 2, i32 0) #2
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* nonnull @1, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 100, double* nonnull %13) #2
  %15 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 50
  %16 = load double, double* %15, align 16, !tbaa !4
  %17 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp_outlined.(i32* noalias nocapture readnone %0, i32* noalias nocapture readnone %1, i64 %2, double* nocapture nonnull align 8 dereferenceable(8) %3) #1 {
  %5 = getelementptr inbounds double, double* %3, i64 50
  %6 = load double, double* %5, align 16, !tbaa !4
  %7 = fmul double %6, 2.000000e+00
  store double %7, double* %5, align 16, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
