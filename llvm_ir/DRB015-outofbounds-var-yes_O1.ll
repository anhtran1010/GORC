; ModuleID = 'dataracebench/DRB015-outofbounds-var-yes.c'
source_filename = "dataracebench/DRB015-outofbounds-var-yes.c"
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
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8, !tbaa !4
  %9 = call i64 @strtol(i8* nocapture nonnull %8, i8** null, i32 10) #4
  %10 = trunc i64 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ 100, %2 ]
  %13 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4
  store i32 %12, i32* %3, align 4, !tbaa !8
  %14 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4
  store i32 %12, i32* %4, align 4, !tbaa !8
  %15 = zext i32 %12 to i64
  %16 = call i8* @llvm.stacksave()
  %17 = mul nuw i64 %15, %15
  %18 = alloca double, i64 %17, align 16
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %4, i64 %15, i64 %15, double* nonnull %18)
  call void @llvm.stackrestore(i8* %16)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull readonly align 4 dereferenceable(4) %3, i64 %4, i64 %5, double* nocapture nonnull align 8 dereferenceable(8) %6) #3 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* %2, align 4, !tbaa !8
  %13 = add nsw i32 %12, -2
  %14 = icmp sgt i32 %12, 1
  br i1 %14, label %15, label %56

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
  %22 = icmp sgt i32 %21, %13
  %23 = select i1 %22, i32 %13, i32 %21
  store i32 %23, i32* %9, align 4, !tbaa !8
  %24 = load i32, i32* %8, align 4, !tbaa !8
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = icmp sgt i32 %24, %23
  br i1 %27, label %55, label %28

28:                                               ; preds = %15
  %29 = sext i32 %24 to i64
  %30 = add i32 %23, 1
  %31 = add nsw i64 %29, 1
  %32 = mul i64 %31, %5
  %33 = add i64 %32, -1
  %34 = zext i32 %25 to i64
  br label %39

35:                                               ; preds = %49, %39
  %36 = trunc i64 %42 to i32
  %37 = icmp eq i32 %30, %36
  %38 = add i64 %40, 1
  br i1 %37, label %55, label %39

39:                                               ; preds = %28, %35
  %40 = phi i64 [ 0, %28 ], [ %38, %35 ]
  %41 = phi i64 [ %29, %28 ], [ %42, %35 ]
  %42 = add nsw i64 %41, 1
  %43 = mul nsw i64 %42, %5
  br i1 %26, label %44, label %35

44:                                               ; preds = %39
  %45 = mul i64 %40, %5
  %46 = add i64 %33, %45
  %47 = getelementptr double, double* %6, i64 %46
  %48 = load double, double* %47, align 8
  br label %49

49:                                               ; preds = %44, %49
  %50 = phi i64 [ 0, %44 ], [ %53, %49 ]
  %51 = add nsw i64 %50, %43
  %52 = getelementptr inbounds double, double* %6, i64 %51
  store double %48, double* %52, align 8, !tbaa !10
  %53 = add nuw nsw i64 %50, 1
  %54 = icmp eq i64 %53, %34
  br i1 %54, label %35, label %49, !llvm.loop !12

55:                                               ; preds = %35, %15
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %20)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  br label %56

56:                                               ; preds = %55, %7
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
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
