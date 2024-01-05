; ModuleID = 'dataracebench/DRB114-if-orig-yes.c'
source_filename = "dataracebench/DRB114-if-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [100 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull @2)
  %8 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4
  store i32 100, i32* %3, align 4, !tbaa !4
  %9 = bitcast [100 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %9) #4
  br label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ 0, %2 ], [ %14, %10 ]
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %11
  %13 = trunc i64 %11 to i32
  store i32 %13, i32* %12, align 4, !tbaa !4
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 100
  br i1 %15, label %16, label %10, !llvm.loop !8

16:                                               ; preds = %10
  %17 = call i64 @time(i64* null) #4
  %18 = trunc i64 %17 to i32
  call void @srand(i32 %18) #4
  %19 = call i32 @rand() #4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, [100 x i32]* nonnull %4)
  br label %24

23:                                               ; preds = %16
  call void @__kmpc_serialized_parallel(%struct.ident_t* nonnull @2, i32 %7)
  store i32 %7, i32* %5, align 4, !tbaa !4
  call void @.omp_outlined.(i32* nonnull %5, i32* nonnull %6, i32* %3, [100 x i32]* %4) #4
  call void @__kmpc_end_serialized_parallel(%struct.ident_t* nonnull @2, i32 %7)
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 50
  %26 = load i32, i32* %25, align 8, !tbaa !4
  %27 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %26)
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %9) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, [100 x i32]* nocapture nonnull align 4 dereferenceable(400) %3) #3 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* %2, align 4, !tbaa !4
  %10 = add nsw i32 %9, -2
  %11 = icmp sgt i32 %9, 1
  br i1 %11, label %12, label %37

12:                                               ; preds = %4
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4
  store i32 0, i32* %5, align 4, !tbaa !4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4
  store i32 %10, i32* %6, align 4, !tbaa !4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #4
  store i32 1, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %17 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %17, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %18 = load i32, i32* %6, align 4, !tbaa !4
  %19 = icmp sgt i32 %18, %10
  %20 = select i1 %19, i32 %10, i32 %18
  store i32 %20, i32* %6, align 4, !tbaa !4
  %21 = load i32, i32* %5, align 4, !tbaa !4
  %22 = icmp sgt i32 %21, %20
  br i1 %22, label %36, label %23

23:                                               ; preds = %12
  %24 = sext i32 %21 to i64
  %25 = add i32 %20, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr [100 x i32], [100 x i32]* %3, i64 0, i64 %24
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %23, %29
  %30 = phi i32 [ %28, %23 ], [ %32, %29 ]
  %31 = phi i64 [ %24, %23 ], [ %33, %29 ]
  %32 = add nsw i32 %30, 1
  %33 = add nsw i64 %31, 1
  %34 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %33
  store i32 %32, i32* %34, align 4, !tbaa !4
  %35 = icmp eq i64 %33, %26
  br i1 %35, label %36, label %29

36:                                               ; preds = %29, %12
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %17)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4
  br label %37

37:                                               ; preds = %36, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #2

; Function Attrs: nounwind
declare !callback !11 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12}
!12 = !{i64 2, i64 -1, i64 -1, i1 true}
