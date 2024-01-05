; ModuleID = 'dataracebench/DRB105-taskwait-orig-no.c'
source_filename = "dataracebench/DRB105-taskwait-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }
%struct.anon.0 = type { i32* }

@input = dso_local local_unnamed_addr global i32 30, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [12 x i8] c"Fib(%d)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"result==832040\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"dataracebench/DRB105-taskwait-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fib(i32 %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %5 = icmp ult i32 %0, 2
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #3
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %4, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*))
  %10 = bitcast i8* %9 to i32***
  %11 = load i32**, i32*** %10, align 8, !tbaa !4
  store i32* %2, i32** %11, align 8, !tbaa.struct !12
  %12 = getelementptr inbounds i8, i8* %9, i64 40
  %13 = bitcast i8* %12 to i32*
  store i32 %0, i32* %13, align 8, !tbaa !14
  %14 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %4, i8* %9)
  %15 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @1, i32 %4, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*))
  %16 = bitcast i8* %15 to i32***
  %17 = load i32**, i32*** %16, align 8, !tbaa !4
  store i32* %3, i32** %17, align 8, !tbaa.struct !12
  %18 = getelementptr inbounds i8, i8* %15, i64 40
  %19 = bitcast i8* %18 to i32*
  store i32 %0, i32* %19, align 8, !tbaa !14
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* nonnull @1, i32 %4, i8* %15)
  %21 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* nonnull @1, i32 %4)
  %22 = load i32, i32* %2, align 4, !tbaa !15
  %23 = load i32, i32* %3, align 4, !tbaa !15
  %24 = add nsw i32 %23, %22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #3
  br label %25

25:                                               ; preds = %1, %6
  %26 = phi i32 [ %24, %6 ], [ %0, %1 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates* %1 to %struct.anon**
  %4 = load %struct.anon*, %struct.anon** %3, align 8, !tbaa !4
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !15, !alias.scope !16, !noalias !19
  %7 = add i32 %6, -1
  %8 = call i32 @fib(i32 %7) #3, !noalias !21
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %4, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !22, !alias.scope !19, !noalias !16
  store i32 %8, i32* %10, align 4, !tbaa !15, !noalias !21
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly %1) #2 {
  %3 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %4 = load %struct.anon.0*, %struct.anon.0** %3, align 8, !tbaa !4
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %5 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %1, i64 0, i32 1, i32 0
  %6 = load i32, i32* %5, align 4, !tbaa !15, !alias.scope !24, !noalias !27
  %7 = add i32 %6, -2
  %8 = call i32 @fib(i32 %7) #3, !noalias !29
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %4, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8, !tbaa !22, !alias.scope !27, !noalias !24
  store i32 %8, i32* %10, align 4, !tbaa !15, !noalias !29
  ret i32 0
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 0, i32* %1, align 4, !tbaa !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %1)
  %3 = load i32, i32* @input, align 4, !tbaa !15
  %4 = load i32, i32* %1, align 4, !tbaa !15
  %5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4)
  %6 = load i32, i32* %1, align 4, !tbaa !15
  %7 = icmp eq i32 %6, 832040
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

9:                                                ; preds = %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  ret i32 0
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2) #5 {
  %4 = load i32, i32* %0, align 4, !tbaa !15
  %5 = call i32 @__kmpc_single(%struct.ident_t* nonnull @1, i32 %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load i32, i32* @input, align 4, !tbaa !15
  %9 = call i32 @fib(i32 %8)
  store i32 %9, i32* %2, align 4, !tbaa !15
  call void @__kmpc_end_single(%struct.ident_t* nonnull @1, i32 %4)
  br label %10

10:                                               ; preds = %7, %3
  call void @__kmpc_barrier(%struct.ident_t* nonnull @2, i32 %4)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !30 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !7, i64 0}
!5 = !{!"kmp_task_t_with_privates", !6, i64 0, !11, i64 40}
!6 = !{!"kmp_task_t", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24, !8, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!".kmp_privates.t", !10, i64 0}
!12 = !{i64 0, i64 8, !13}
!13 = !{!7, !7, i64 0}
!14 = !{!5, !10, i64 40}
!15 = !{!10, !10, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !".omp_outlined.: argument 0"}
!18 = distinct !{!18, !".omp_outlined."}
!19 = !{!20}
!20 = distinct !{!20, !18, !".omp_outlined.: argument 1"}
!21 = !{!17, !20}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !".omp_outlined..1: argument 0"}
!26 = distinct !{!26, !".omp_outlined..1"}
!27 = !{!28}
!28 = distinct !{!28, !26, !".omp_outlined..1: argument 1"}
!29 = !{!25, !28}
!30 = !{!31}
!31 = !{i64 2, i64 -1, i64 -1, i1 true}
