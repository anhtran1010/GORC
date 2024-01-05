; ModuleID = 'dataracebench/DRB110-ordered-orig-no.c'
source_filename = "dataracebench/DRB110-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"x==100\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"dataracebench/DRB110-ordered-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #3
  store i32 0, i32* %1, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1)
  %3 = load i32, i32* %1, align 4, !tbaa !4
  %4 = icmp eq i32 %3, 100
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 100)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull align 4 dereferenceable(4) %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #3
  store i32 0, i32* %4, align 4, !tbaa !4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #3
  store i32 99, i32* %5, align 4, !tbaa !4
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #3
  store i32 1, i32* %6, align 4, !tbaa !4
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %12 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_dispatch_init_4(%struct.ident_t* nonnull @1, i32 %12, i32 66, i32 0, i32 99, i32 1, i32 1)
  %13 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %12, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %18

15:                                               ; preds = %22, %18
  %16 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* nonnull @1, i32 %12, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %3, %15
  %19 = load i32, i32* %4, align 4, !tbaa !4
  %20 = load i32, i32* %5, align 4, !tbaa !4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %15, label %22

22:                                               ; preds = %18, %22
  %23 = phi i32 [ %26, %22 ], [ %19, %18 ]
  call void @__kmpc_ordered(%struct.ident_t* nonnull @1, i32 %12)
  %24 = load i32, i32* %2, align 4, !tbaa !4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4, !tbaa !4
  call void @__kmpc_end_ordered(%struct.ident_t* nonnull @1, i32 %12)
  %26 = add nsw i32 %23, 1
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* nonnull @1, i32 %12)
  %27 = load i32, i32* %5, align 4, !tbaa !4
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %22, label %15

29:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_ordered(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_end_ordered(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { convergent nounwind }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

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
