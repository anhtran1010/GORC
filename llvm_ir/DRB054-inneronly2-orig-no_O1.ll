; ModuleID = 'dataracebench/DRB054-inneronly2-orig-no.c'
source_filename = "dataracebench/DRB054-inneronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 100, i32* %2, align 4, !tbaa !4
  %5 = call i8* @llvm.stacksave()
  %6 = alloca [10000 x double], align 16
  br label %7

7:                                                ; preds = %0, %21
  %8 = phi i64 [ 0, %0 ], [ %22, %21 ]
  %9 = mul nuw nsw i64 %8, 100
  %10 = getelementptr inbounds [10000 x double], [10000 x double]* %6, i64 0, i64 %9
  br label %13

11:                                               ; preds = %21
  %12 = getelementptr inbounds [10000 x double], [10000 x double]* %6, i64 0, i64 0
  store i32 1, i32* %1, align 4, !tbaa !4
  br label %24

13:                                               ; preds = %7, %13
  %14 = phi i64 [ 0, %7 ], [ %19, %13 ]
  %15 = mul nuw nsw i64 %14, %8
  %16 = trunc i64 %15 to i32
  %17 = sitofp i32 %16 to double
  %18 = getelementptr inbounds double, double* %10, i64 %14
  store double %17, double* %18, align 8, !tbaa !8
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 100
  br i1 %20, label %21, label %13, !llvm.loop !10

21:                                               ; preds = %13
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, 100
  br i1 %23, label %11, label %7, !llvm.loop !13

24:                                               ; preds = %11, %24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %2, i64 100, i64 100, double* nonnull %12, i32* nonnull %1)
  %25 = load i32, i32* %1, align 4, !tbaa !4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4, !tbaa !4
  %27 = icmp slt i32 %25, 99
  br i1 %27, label %24, label %28, !llvm.loop !14

28:                                               ; preds = %24
  call void @llvm.stackrestore(i8* %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i64 %3, i64 %4, double* nocapture nonnull align 8 dereferenceable(8) %5, i32* nocapture nonnull readonly align 4 dereferenceable(4) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !4
  %13 = add nsw i32 %12, -2
  %14 = icmp sgt i32 %12, 1
  br i1 %14, label %15, label %46

15:                                               ; preds = %7
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 0, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 %13, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4
  store i32 1, i32* %10, align 4, !tbaa !4
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %11, align 4, !tbaa !4
  %20 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %20, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1)
  %21 = load i32, i32* %9, align 4, !tbaa !4
  %22 = icmp sgt i32 %21, %13
  %23 = select i1 %22, i32 %13, i32 %21
  store i32 %23, i32* %9, align 4, !tbaa !4
  %24 = load i32, i32* %8, align 4, !tbaa !4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %4
  %29 = sext i32 %25 to i64
  %30 = mul nsw i64 %29, %4
  %31 = icmp sgt i32 %24, %23
  br i1 %31, label %45, label %32

32:                                               ; preds = %15
  %33 = sext i32 %24 to i64
  %34 = add i32 %23, 1
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %33, %32 ], [ %38, %36 ]
  %38 = add nsw i64 %37, 1
  %39 = add nsw i64 %28, %37
  %40 = getelementptr inbounds double, double* %5, i64 %39
  %41 = load double, double* %40, align 8, !tbaa !8
  %42 = add nsw i64 %30, %38
  %43 = getelementptr inbounds double, double* %5, i64 %42
  store double %41, double* %43, align 8, !tbaa !8
  %44 = icmp eq i64 %38, %35
  br i1 %44, label %45, label %36

45:                                               ; preds = %36, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  br label %46

46:                                               ; preds = %45, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
