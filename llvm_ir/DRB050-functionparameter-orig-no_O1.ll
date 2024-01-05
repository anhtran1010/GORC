; ModuleID = 'dataracebench/DRB050-functionparameter-orig-no.c'
source_filename = "dataracebench/DRB050-functionparameter-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@o1 = dso_local global [100 x double] zeroinitializer, align 16
@c = dso_local global [100 x double] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo1(double* %0, double* %1, i32 %2) local_unnamed_addr #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  store double* %0, double** %4, align 8, !tbaa !4
  store double* %1, double** %5, align 8, !tbaa !4
  store i32 %2, i32* %6, align 4, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %5, double** nonnull %4)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, double** nocapture nonnull readonly align 8 dereferenceable(8) %3, double** nocapture nonnull readonly align 8 dereferenceable(8) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !8
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %5
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %6, align 4, !tbaa !8
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 %11, i32* %7, align 4, !tbaa !8
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 1, i32* %8, align 4, !tbaa !8
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 0, i32* %9, align 4, !tbaa !8
  %18 = load i32, i32* %0, align 4, !tbaa !8
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %18, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %19 = load i32, i32* %7, align 4, !tbaa !8
  %20 = icmp slt i32 %19, %10
  %21 = select i1 %20, i32 %19, i32 %11
  store i32 %21, i32* %7, align 4, !tbaa !8
  %22 = load i32, i32* %6, align 4, !tbaa !8
  %23 = load double*, double** %3, align 8
  %24 = load double*, double** %4, align 8
  %25 = icmp sgt i32 %22, %21
  br i1 %25, label %38, label %26

26:                                               ; preds = %13
  %27 = sext i32 %22 to i64
  %28 = add i32 %21, 1
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %27, %26 ], [ %35, %29 ]
  %31 = getelementptr inbounds double, double* %23, i64 %30
  %32 = load double, double* %31, align 8, !tbaa !10
  %33 = fmul double %32, 5.000000e-01
  %34 = getelementptr inbounds double, double* %24, i64 %30
  store double %33, double* %34, align 8, !tbaa !10
  %35 = add nsw i64 %30, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %28, %36
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %13
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  br label %39

39:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca double*, align 8
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast double** %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4)
  %5 = bitcast double** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5)
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6)
  store double* getelementptr inbounds ([100 x double], [100 x double]* @o1, i64 0, i64 0), double** %1, align 8, !tbaa !4
  store double* getelementptr inbounds ([100 x double], [100 x double]* @c, i64 0, i64 0), double** %2, align 8, !tbaa !4
  store i32 100, i32* %3, align 4, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %2, double** nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6)
  ret i32 0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
