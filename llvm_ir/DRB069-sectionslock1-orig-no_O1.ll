; ModuleID = 'dataracebench/DRB069-sectionslock1-orig-no.c'
source_filename = "dataracebench/DRB069-sectionslock1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [5 x i8] c"i==3\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"dataracebench/DRB069-sectionslock1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.omp_lock_t, align 8
  %2 = alloca i32, align 4
  %3 = bitcast %struct.omp_lock_t* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %2, align 4, !tbaa !4
  call void @omp_init_lock(%struct.omp_lock_t* nonnull %1) #4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* nonnull %1, i32* nonnull %2)
  call void @omp_destroy_lock(%struct.omp_lock_t* nonnull %1) #4
  %5 = load i32, i32* %2, align 4, !tbaa !4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, %struct.omp_lock_t* nonnull align 8 dereferenceable(8) %2, i32* nocapture nonnull align 4 dereferenceable(4) %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %5, align 4, !tbaa !4
  store i32 1, i32* %6, align 4, !tbaa !4
  store i32 1, i32* %7, align 4, !tbaa !4
  store i32 0, i32* %8, align 4, !tbaa !4
  %9 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %9, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %10 = load i32, i32* %6, align 4, !tbaa !4
  %11 = icmp slt i32 %10, 1
  %12 = select i1 %11, i32 %10, i32 1
  store i32 %12, i32* %6, align 4, !tbaa !4
  %13 = load i32, i32* %5, align 4, !tbaa !4
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %26, label %15

15:                                               ; preds = %4, %22
  %16 = phi i32 [ %23, %22 ], [ %13, %4 ]
  switch i32 %16, label %22 [
    i32 0, label %18
    i32 1, label %17
  ]

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i32 [ 2, %17 ], [ 1, %15 ]
  call void @omp_set_lock(%struct.omp_lock_t* nonnull %2) #4
  %20 = load i32, i32* %3, align 4, !tbaa !4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %3, align 4, !tbaa !4
  call void @omp_unset_lock(%struct.omp_lock_t* nonnull %2) #4
  br label %22

22:                                               ; preds = %18, %15
  %23 = add nsw i32 %16, 1
  %24 = load i32, i32* %6, align 4, !tbaa !4
  %25 = icmp slt i32 %16, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %22, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %9)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) local_unnamed_addr #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

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
