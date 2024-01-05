; ModuleID = 'dataracebench/DRB022-reductionmissing-var-yes.c'
source_filename = "dataracebench/DRB022-reductionmissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = bitcast float* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  store float 0.000000e+00, float* %3, align 4, !tbaa !4
  %6 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  store i32 100, i32* %4, align 4, !tbaa !8
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8*, i8** %1, i64 1
  %10 = load i8*, i8** %9, align 8, !tbaa !10
  %11 = call i64 @strtol(i8* nocapture nonnull %10, i8** null, i32 10) #4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4, !tbaa !8
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4, !tbaa !8
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  %17 = mul nuw i64 %15, %15
  %18 = alloca float, i64 %17, align 16
  %19 = load i32, i32* %4, align 4, !tbaa !8
  %20 = icmp sgt i32 %19, 0
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = zext i32 %19 to i64
  %24 = zext i32 %19 to i64
  br label %25

25:                                               ; preds = %22, %34
  %26 = phi i64 [ 0, %22 ], [ %35, %34 ]
  %27 = mul nuw nsw i64 %26, %15
  br i1 %20, label %28, label %34

28:                                               ; preds = %25, %28
  %29 = phi i64 [ %32, %28 ], [ 0, %25 ]
  %30 = add nuw nsw i64 %27, %29
  %31 = getelementptr inbounds float, float* %18, i64 %30
  store float 5.000000e-01, float* %31, align 4, !tbaa !4
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %28, !llvm.loop !12

34:                                               ; preds = %28, %25
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, %23
  br i1 %36, label %37, label %25, !llvm.loop !15

37:                                               ; preds = %34, %13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, float*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, i64 %15, i64 %15, float* nonnull %18, float* nonnull %3)
  %38 = load float, float* %3, align 4, !tbaa !4
  %39 = fpext float %38 to double
  %40 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %39)
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i64 %3, i64 %4, float* nocapture nonnull readonly align 4 dereferenceable(4) %5, float* nocapture nonnull align 4 dereferenceable(4) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !8
  %13 = add nsw i32 %12, -1
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %7
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %8, align 4, !tbaa !8
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 %13, i32* %9, align 4, !tbaa !8
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4
  store i32 1, i32* %10, align 4, !tbaa !8
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %11, align 4, !tbaa !8
  %20 = load i32, i32* %0, align 4, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %20, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %21 = load i32, i32* %9, align 4, !tbaa !8
  %22 = icmp slt i32 %21, %12
  %23 = select i1 %22, i32 %21, i32 %13
  store i32 %23, i32* %9, align 4, !tbaa !8
  %24 = load i32, i32* %8, align 4, !tbaa !8
  %25 = load i32, i32* %2, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = icmp sgt i32 %24, %23
  br i1 %27, label %49, label %28

28:                                               ; preds = %15
  %29 = sext i32 %24 to i64
  %30 = add i32 %23, 1
  %31 = zext i32 %25 to i64
  br label %32

32:                                               ; preds = %28, %45
  %33 = phi i64 [ %29, %28 ], [ %46, %45 ]
  %34 = mul nsw i64 %33, %4
  br i1 %26, label %35, label %45

35:                                               ; preds = %32, %35
  %36 = phi i64 [ %43, %35 ], [ 0, %32 ]
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds float, float* %5, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !4
  %40 = load float, float* %6, align 4, !tbaa !4
  %41 = fmul float %39, %39
  %42 = fadd float %40, %41
  store float %42, float* %6, align 4, !tbaa !4
  %43 = add nuw nsw i64 %36, 1
  %44 = icmp eq i64 %43, %31
  br i1 %44, label %45, label %35, !llvm.loop !16

45:                                               ; preds = %35, %32
  %46 = add nsw i64 %33, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %30, %47
  br i1 %48, label %49, label %32

49:                                               ; preds = %45, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  br label %50

50:                                               ; preds = %49, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !17 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = !{!18}
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
