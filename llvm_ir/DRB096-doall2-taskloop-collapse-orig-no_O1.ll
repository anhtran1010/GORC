; ModuleID = 'dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c'
source_filename = "dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@a = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  %1 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !tbaa !4
  %2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #1 {
  %3 = load i32, i32* %0, align 4, !tbaa !4
  %4 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  call void @__kmpc_taskgroup(%struct.ident_t* nonnull @1, i32 %3)
  %7 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %3, i32 1, i64 80, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %8 = getelementptr inbounds i8, i8* %7, i64 40
  %9 = bitcast i8* %8 to i64*
  store i64 0, i64* %9, align 8, !tbaa !8
  %10 = getelementptr inbounds i8, i8* %7, i64 48
  %11 = bitcast i8* %10 to i64*
  store i64 9999, i64* %11, align 8, !tbaa !8
  %12 = getelementptr inbounds i8, i8* %7, i64 56
  %13 = bitcast i8* %12 to i64*
  store i64 1, i64* %13, align 8, !tbaa !8
  %14 = getelementptr inbounds i8, i8* %7, i64 72
  %15 = bitcast i8* %14 to i64*
  store i64 0, i64* %15, align 8
  call void @__kmpc_taskloop(%struct.ident_t* nonnull @1, i32 %3, i8* %7, i32 1, i64* nonnull %9, i64* nonnull %11, i64 1, i32 1, i32 0, i64 0, i8* null)
  call void @__kmpc_end_taskgroup(%struct.ident_t* nonnull @1, i32 %3)
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %3)
  br label %16

16:                                               ; preds = %6, %2
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %3)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_taskgroup(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_taskgroup(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #3 {
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 0, i32 5
  %4 = load i64, i64* %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 0, i32 6
  %6 = load i64, i64* %5, align 8, !tbaa !14
  %7 = shl i64 %4, 32
  %8 = ashr exact i64 %7, 32
  %9 = icmp ugt i64 %8, %6
  br i1 %9, label %23, label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ %21, %10 ], [ %8, %2 ]
  %12 = trunc i64 %11 to i32
  %13 = sdiv i32 %12, 100
  %14 = mul i32 %13, -100
  %15 = add i32 %14, %12
  %16 = sext i32 %13 to i64
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %16, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4, !tbaa !4
  %21 = add i64 %11, 1
  %22 = icmp ugt i64 %21, %6
  br i1 %22, label %23, label %10

23:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !9, i64 40}
!11 = !{!"kmp_task_t_with_privates", !12, i64 0}
!12 = !{!"kmp_task_t", !13, i64 0, !13, i64 8, !5, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !5, i64 64, !13, i64 72}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !9, i64 48}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
