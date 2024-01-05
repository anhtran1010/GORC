; ModuleID = 'dataracebench/DRB100-task-reference-orig-no.cpp'
source_filename = "dataracebench/DRB100-task-reference-orig-no.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

@a = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [38 x i8] c"warning: a[%d] = %d, not expected %d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z8gen_taskRi(i32* nocapture nonnull readonly align 4 dereferenceable(4) %0) local_unnamed_addr #0 {
  %2 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %3 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %2, i32 1, i64 48, i64 1, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %4 = getelementptr inbounds i8, i8* %3, i64 40
  %5 = bitcast i8* %4 to i32*
  %6 = load i32, i32* %0, align 4, !tbaa !4
  store i32 %6, i32* %5, align 8, !tbaa !8
  %7 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %2, i8* %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #1 {
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !4, !alias.scope !13
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %6
  store i32 %5, i32* %7, align 4, !tbaa !4, !noalias !13
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #2
  store i32 0, i32* %1, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* nonnull %1)
  store i32 0, i32* %1, align 4, !tbaa !4
  br label %3

3:                                                ; preds = %0, %12
  %4 = phi i32 [ 0, %0 ], [ %14, %12 ]
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = add nsw i32 %4, 1
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %7, i32 %8)
  br label %12

12:                                               ; preds = %3, %10
  %13 = load i32, i32* %1, align 4, !tbaa !4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4, !tbaa !4
  %15 = icmp slt i32 %13, 99
  br i1 %15, label %3, label %16, !llvm.loop !16

16:                                               ; preds = %12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2) #5 {
  %4 = load i32, i32* %0, align 4, !tbaa !4
  %5 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  store i32 0, i32* %2, align 4, !tbaa !4
  br label %8

8:                                                ; preds = %7, %8
  %9 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1) #2
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %9, i32 1, i64 48, i64 1, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #2
  %11 = getelementptr inbounds i8, i8* %10, i64 40
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %2, align 4, !tbaa !4
  store i32 %13, i32* %12, align 8, !tbaa !8
  %14 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %9, i8* %10) #2
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4, !tbaa !4
  %17 = icmp slt i32 %15, 99
  br i1 %17, label %8, label %18, !llvm.loop !19

18:                                               ; preds = %8
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %4)
  br label %19

19:                                               ; preds = %18, %3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %4)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !20 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { mustprogress norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { convergent nounwind }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"_ZTS24kmp_task_t_with_privates", !10, i64 0, !12, i64 40}
!10 = !{!"_ZTS10kmp_task_t", !11, i64 0, !11, i64 8, !5, i64 16, !6, i64 24, !6, i64 32}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTS15.kmp_privates.t", !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !".omp_outlined.: argument 0"}
!15 = distinct !{!15, !".omp_outlined."}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = !{!21}
!21 = !{i64 2, i64 -1, i64 -1, i1 true}
