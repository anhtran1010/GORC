; ModuleID = 'dataracebench/DRB020-privatemissing-var-yes.c'
source_filename = "dataracebench/DRB020-privatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 100, i32* %4, align 4, !tbaa !4
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8, !tbaa !8
  %11 = call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4, !tbaa !4
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4, !tbaa !4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  %17 = alloca i32, i64 %15, align 16
  %18 = load i32, i32* %4, align 4, !tbaa !4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = zext i32 %18 to i64
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %26, %22 ]
  %24 = getelementptr inbounds i32, i32* %17, i64 %23
  %25 = trunc i64 %23 to i32
  store i32 %25, i32* %24, align 4, !tbaa !4
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %21
  br i1 %27, label %28, label %22, !llvm.loop !10

28:                                               ; preds = %22, %13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, i32* nonnull %3, i64 %15, i32* nonnull %17)
  call void @llvm.stackrestore(i8* %16)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull align 4 dereferenceable(4) %3, i64 %4, i32* nocapture nonnull align 4 dereferenceable(4) %5) #3 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = add nsw i32 %11, -1
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %6
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #4
  store i32 0, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 %12, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 1, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4
  store i32 0, i32* %10, align 4, !tbaa !4
  %19 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %19, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %20 = load i32, i32* %8, align 4, !tbaa !4
  %21 = icmp slt i32 %20, %11
  %22 = select i1 %21, i32 %20, i32 %12
  store i32 %22, i32* %8, align 4, !tbaa !4
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = sext i32 %23 to i64
  %27 = add i32 %22, 1
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %26, %25 ], [ %34, %28 ]
  %30 = getelementptr inbounds i32, i32* %5, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !4
  %32 = trunc i64 %29 to i32
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %3, align 4, !tbaa !4
  store i32 %33, i32* %30, align 4, !tbaa !4
  %34 = add nsw i64 %29, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %28

37:                                               ; preds = %28, %14
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4
  br label %38

38:                                               ; preds = %37, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
