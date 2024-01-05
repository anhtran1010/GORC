; ModuleID = 'dataracebench/DRB065-pireduction-orig-no.c'
source_filename = "dataracebench/DRB065-pireduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 18, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"PI=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #3
  store double 0.000000e+00, double* %3, align 8, !tbaa !4
  %6 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #3
  store double 5.000000e-09, double* %4, align 8, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* nonnull %4, double* nonnull %3)
  %7 = load double, double* %3, align 8, !tbaa !4
  %8 = fmul double %7, 4.000000e+00
  %9 = load double, double* %4, align 8, !tbaa !4
  %10 = fmul double %8, %9
  store double %10, double* %3, align 8, !tbaa !4
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %10)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #3
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, double* nocapture nonnull readonly align 8 dereferenceable(8) %2, double* nocapture nonnull align 8 dereferenceable(8) %3) #2 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [1 x i8*], align 8
  %11 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #3
  store i64 0, i64* %5, align 8, !tbaa !8
  %12 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #3
  store i64 199999999, i64* %6, align 8, !tbaa !8
  %13 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #3
  store i64 1, i64* %7, align 8, !tbaa !8
  %14 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %8, align 4, !tbaa !10
  %15 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #3
  store double 0.000000e+00, double* %9, align 8, !tbaa !4
  %16 = load i32, i32* %0, align 4, !tbaa !10
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull @1, i32 %16, i32 34, i32* nonnull %8, i64* nonnull %5, i64* nonnull %6, i64* nonnull %7, i64 1, i64 1)
  %17 = load i64, i64* %6, align 8, !tbaa !8
  %18 = icmp slt i64 %17, 199999999
  %19 = select i1 %18, i64 %17, i64 199999999
  store i64 %19, i64* %6, align 8, !tbaa !8
  %20 = load i64, i64* %5, align 8, !tbaa !8
  %21 = load double, double* %2, align 8
  %22 = load double, double* %9, align 8, !tbaa !4
  %23 = icmp sgt i64 %20, %19
  br i1 %23, label %36, label %24

24:                                               ; preds = %4, %24
  %25 = phi i64 [ %34, %24 ], [ %20, %4 ]
  %26 = phi double [ %33, %24 ], [ %22, %4 ]
  %27 = sitofp i64 %25 to double
  %28 = fadd double %27, 5.000000e-01
  %29 = fmul double %28, %21
  %30 = fmul double %29, %29
  %31 = fadd double %30, 1.000000e+00
  %32 = fdiv double 1.000000e+00, %31
  %33 = fadd double %26, %32
  %34 = add i64 %25, 1
  %35 = icmp eq i64 %25, %19
  br i1 %35, label %36, label %24

36:                                               ; preds = %24, %4
  %37 = phi double [ %22, %4 ], [ %33, %24 ]
  store double %37, double* %9, align 8, !tbaa !4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %16)
  %38 = bitcast [1 x i8*]* %10 to double**
  store double* %9, double** %38, align 8
  %39 = bitcast [1 x i8*]* %10 to i8*
  %40 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* nonnull @2, i32 %16, i32 1, i64 8, i8* nonnull %39, void (i8*, i8*)* nonnull @.omp.reduction.reduction_func, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %40, label %57 [
    i32 1, label %41
    i32 2, label %45
  ]

41:                                               ; preds = %36
  %42 = load double, double* %3, align 8, !tbaa !4
  %43 = load double, double* %9, align 8, !tbaa !4
  %44 = fadd double %42, %43
  store double %44, double* %3, align 8, !tbaa !4
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* nonnull @2, i32 %16, [8 x i32]* nonnull @.gomp_critical_user_.reduction.var)
  br label %57

45:                                               ; preds = %36
  %46 = bitcast double* %3 to i64*
  %47 = load atomic i64, i64* %46 monotonic, align 8, !tbaa !4
  %48 = load double, double* %9, align 8, !tbaa !4
  br label %49

49:                                               ; preds = %49, %45
  %50 = phi i64 [ %47, %45 ], [ %55, %49 ]
  %51 = bitcast i64 %50 to double
  %52 = fadd double %48, %51
  %53 = bitcast double %52 to i64
  %54 = cmpxchg i64* %46, i64 %50, i64 %53 monotonic monotonic, align 8
  %55 = extractvalue { i64, i1 } %54, 0
  %56 = extractvalue { i64, i1 } %54, 1
  br i1 %56, label %57, label %49

57:                                               ; preds = %49, %41, %36
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp.reduction.reduction_func(i8* nocapture readonly %0, i8* nocapture readonly %1) #4 {
  %3 = bitcast i8* %1 to double**
  %4 = load double*, double** %3, align 8
  %5 = bitcast i8* %0 to double**
  %6 = load double*, double** %5, align 8
  %7 = load double, double* %6, align 8, !tbaa !4
  %8 = load double, double* %4, align 8, !tbaa !4
  %9 = fadd double %7, %8
  store double %9, double* %6, align 8, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !12 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { convergent nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13}
!13 = !{i64 2, i64 -1, i64 -1, i1 true}
