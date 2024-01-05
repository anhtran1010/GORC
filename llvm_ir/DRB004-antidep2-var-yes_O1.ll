; ModuleID = 'dataracebench/DRB004-antidep2-var-yes.c'
source_filename = "dataracebench/DRB004-antidep2-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 20, i32* %3, align 4, !tbaa !4
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !8
  %9 = call i64 @strtol(i8* nocapture nonnull %8, i8** null, i32 10) #4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4, !tbaa !4
  br label %11

11:                                               ; preds = %6, %2
  %12 = load i32, i32* %3, align 4, !tbaa !4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  %15 = mul nuw i64 %13, %13
  %16 = alloca double, i64 %15, align 16
  %17 = load i32, i32* %3, align 4, !tbaa !4
  %18 = icmp sgt i32 %17, 0
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = zext i32 %17 to i64
  %22 = zext i32 %17 to i64
  br label %23

23:                                               ; preds = %20, %32
  %24 = phi i64 [ 0, %20 ], [ %33, %32 ]
  %25 = mul nuw nsw i64 %24, %13
  br i1 %18, label %26, label %32

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %30, %26 ], [ 0, %23 ]
  %28 = add nuw nsw i64 %25, %27
  %29 = getelementptr inbounds double, double* %16, i64 %28
  store double 5.000000e-01, double* %29, align 8, !tbaa !10
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %26, !llvm.loop !12

32:                                               ; preds = %26, %23
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, %21
  br i1 %34, label %35, label %23, !llvm.loop !15

35:                                               ; preds = %32, %11
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i64 %13, i64 %13, double* nonnull %16)
  call void @llvm.stackrestore(i8* %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i64 %3, i64 %4, double* nocapture nonnull align 8 dereferenceable(8) %5) #3 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = add nsw i32 %11, -2
  %13 = icmp sgt i32 %11, 1
  br i1 %13, label %14, label %51

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
  %21 = icmp sgt i32 %20, %12
  %22 = select i1 %21, i32 %12, i32 %20
  store i32 %22, i32* %8, align 4, !tbaa !4
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = load i32, i32* %2, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = icmp sgt i32 %23, %22
  br i1 %26, label %50, label %27

27:                                               ; preds = %14
  %28 = sext i32 %23 to i64
  %29 = add i32 %22, 1
  %30 = zext i32 %24 to i64
  br label %31

31:                                               ; preds = %27, %47
  %32 = phi i64 [ %28, %27 ], [ %33, %47 ]
  %33 = add nsw i64 %32, 1
  %34 = mul nsw i64 %33, %4
  %35 = mul nsw i64 %32, %4
  br i1 %25, label %36, label %47

36:                                               ; preds = %31, %36
  %37 = phi i64 [ %45, %36 ], [ 0, %31 ]
  %38 = add nsw i64 %34, %37
  %39 = getelementptr inbounds double, double* %5, i64 %38
  %40 = load double, double* %39, align 8, !tbaa !10
  %41 = add nsw i64 %35, %37
  %42 = getelementptr inbounds double, double* %5, i64 %41
  %43 = load double, double* %42, align 8, !tbaa !10
  %44 = fadd double %40, %43
  store double %44, double* %42, align 8, !tbaa !10
  %45 = add nuw nsw i64 %37, 1
  %46 = icmp eq i64 %45, %30
  br i1 %46, label %47, label %36, !llvm.loop !16

47:                                               ; preds = %36, %31
  %48 = trunc i64 %33 to i32
  %49 = icmp eq i32 %29, %48
  br i1 %49, label %50, label %31

50:                                               ; preds = %47, %14
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4
  br label %51

51:                                               ; preds = %50, %6
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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = !{!18}
!18 = !{i64 2, i64 -1, i64 -1, i1 true}
