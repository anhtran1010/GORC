; ModuleID = 'dataracebench/DRB074-flush-orig-yes.c'
source_filename = "dataracebench/DRB074-flush-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [8 x i8] c"sum==10\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"dataracebench/DRB074-flush-orig-yes.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sum=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32* nocapture %0) local_unnamed_addr #0 {
  %2 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  call void @__kmpc_critical(%struct.ident_t* nonnull @1, i32 %2, [8 x i32]* nonnull @.gomp_critical_user_.var)
  store i32 1, i32* %0, align 4, !tbaa !4
  call void @__kmpc_end_critical(%struct.ident_t* nonnull @1, i32 %2, [8 x i32]* nonnull @.gomp_critical_user_.var)
  call void @__kmpc_flush(%struct.ident_t* nonnull @1)
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #1

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_flush(%struct.ident_t*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1)
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #1
  store i32 0, i32* %1, align 4, !tbaa !4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #1
  store i32 0, i32* %2, align 4, !tbaa !4
  call void @__kmpc_push_num_threads(%struct.ident_t* nonnull @1, i32 %3, i32 10)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, i32* nonnull %2)
  %6 = load i32, i32* %2, align 4, !tbaa !4
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 10)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2, i32* nocapture nonnull align 4 dereferenceable(4) %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8*], align 8
  %7 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #1
  store i32 0, i32* %5, align 4, !tbaa !4
  %8 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @1) #1
  call void @__kmpc_critical(%struct.ident_t* nonnull @1, i32 %8, [8 x i32]* nonnull @.gomp_critical_user_.var) #1
  store i32 1, i32* %2, align 4, !tbaa !4
  call void @__kmpc_end_critical(%struct.ident_t* nonnull @1, i32 %8, [8 x i32]* nonnull @.gomp_critical_user_.var) #1
  call void @__kmpc_flush(%struct.ident_t* nonnull @1) #1
  %9 = load i32, i32* %2, align 4, !tbaa !4
  %10 = load i32, i32* %5, align 4, !tbaa !4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* %5, align 4, !tbaa !4
  %12 = bitcast [1 x i8*]* %6 to i32**
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %0, align 4, !tbaa !4
  %14 = bitcast [1 x i8*]* %6 to i8*
  %15 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @2, i32 %13, i32 1, i64 8, i8* nonnull %14, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %15, label %23 [
    i32 1, label %16
    i32 2, label %20
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %3, align 4, !tbaa !4
  %18 = load i32, i32* %5, align 4, !tbaa !4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %3, align 4, !tbaa !4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @2, i32 %13, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %5, align 4, !tbaa !4
  %22 = atomicrmw add i32* %3, i32 %21 monotonic, align 4
  br label %23

23:                                               ; preds = %20, %16, %4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #5 {
  %3 = bitcast i8* %1 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i8* %0 to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* %6, align 4, !tbaa !4
  %8 = load i32, i32* %4, align 4, !tbaa !4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %6, align 4, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }
attributes #2 = { convergent nounwind }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }

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
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
