; ModuleID = 'dataracebench/DRB111-linearmissing-orig-yes.c'
source_filename = "dataracebench/DRB111-linearmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"c[50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 100, i32* %1, align 4, !tbaa !4
  %4 = call i8* @llvm.stacksave()
  %5 = alloca [100 x double], align 16
  %6 = load i32, i32* %1, align 4, !tbaa !4
  %7 = zext i32 %6 to i64
  %8 = alloca double, i64 %7, align 16
  %9 = alloca double, i64 %7, align 16
  %10 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #4
  store i32 0, i32* %2, align 4, !tbaa !4
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %0
  %13 = zext i32 %6 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %24, %14 ]
  %16 = trunc i64 %15 to i32
  %17 = sitofp i32 %16 to double
  %18 = fmul double %17, 5.000000e-01
  %19 = getelementptr inbounds [100 x double], [100 x double]* %5, i64 0, i64 %15
  store double %18, double* %19, align 8, !tbaa !8
  %20 = fdiv double %17, 3.000000e+00
  %21 = getelementptr inbounds double, double* %8, i64 %15
  store double %20, double* %21, align 8, !tbaa !8
  %22 = fdiv double %17, 7.000000e+00
  %23 = getelementptr inbounds double, double* %9, i64 %15
  store double %22, double* %23, align 8, !tbaa !8
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, %13
  br i1 %25, label %26, label %14, !llvm.loop !10

26:                                               ; preds = %14, %0
  %27 = getelementptr inbounds [100 x double], [100 x double]* %5, i64 0, i64 0
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, double*, i32*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, i64 %7, double* nonnull %9, i32* nonnull %2, i64 100, double* nonnull %27, i64 %7, double* nonnull %8)
  %28 = getelementptr inbounds double, double* %9, i64 50
  %29 = load double, double* %28, align 16, !tbaa !8
  %30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %29)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #4
  call void @llvm.stackrestore(i8* %4)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i64 %3, double* nocapture nonnull align 8 dereferenceable(8) %4, i32* nocapture nonnull align 4 dereferenceable(4) %5, i64 %6, double* nocapture nonnull readonly align 8 dereferenceable(8) %7, i64 %8, double* nocapture nonnull readonly align 8 dereferenceable(8) %9) #3 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = add nsw i32 %15, -1
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %10
  %19 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %11, align 4, !tbaa !4
  %20 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4
  store i32 %16, i32* %12, align 4, !tbaa !4
  %21 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4
  store i32 1, i32* %13, align 4, !tbaa !4
  %22 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4
  store i32 0, i32* %14, align 4, !tbaa !4
  %23 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %23, i32 34, i32* nonnull %14, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i32 1, i32 1)
  %24 = load i32, i32* %12, align 4, !tbaa !4
  %25 = icmp slt i32 %24, %15
  %26 = select i1 %25, i32 %24, i32 %16
  store i32 %26, i32* %12, align 4, !tbaa !4
  %27 = load i32, i32* %11, align 4, !tbaa !4
  %28 = icmp sgt i32 %27, %26
  br i1 %28, label %51, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4, !tbaa !4
  %31 = sext i32 %30 to i64
  %32 = sext i32 %27 to i64
  %33 = add i32 %26, 1
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %32, %29 ], [ %46, %34 ]
  %36 = phi i64 [ %31, %29 ], [ %45, %34 ]
  %37 = getelementptr inbounds double, double* %7, i64 %35
  %38 = load double, double* %37, align 8, !tbaa !8
  %39 = getelementptr inbounds double, double* %9, i64 %35
  %40 = load double, double* %39, align 8, !tbaa !8
  %41 = fmul double %38, %40
  %42 = getelementptr inbounds double, double* %4, i64 %36
  %43 = load double, double* %42, align 8, !tbaa !8
  %44 = fadd double %41, %43
  store double %44, double* %42, align 8, !tbaa !8
  %45 = add nsw i64 %36, 1
  %46 = add nsw i64 %35, 1
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %33, %47
  br i1 %48, label %49, label %34

49:                                               ; preds = %34
  %50 = trunc i64 %45 to i32
  store i32 %50, i32* %5, align 4, !tbaa !4
  br label %51

51:                                               ; preds = %49, %18
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %23)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  br label %52

52:                                               ; preds = %51, %10
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

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
