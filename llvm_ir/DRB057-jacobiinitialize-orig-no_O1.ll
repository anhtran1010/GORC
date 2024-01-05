; ModuleID = 'dataracebench/DRB057-jacobiinitialize-orig-no.c'
source_filename = "dataracebench/DRB057-jacobiinitialize-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@u = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@uold = dso_local local_unnamed_addr global [200 x [200 x double]] zeroinitializer, align 16
@dx = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@dy = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@n = dso_local local_unnamed_addr global i32 200, align 4
@m = dso_local local_unnamed_addr global i32 200, align 4
@alpha = dso_local local_unnamed_addr global double 5.430000e-02, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @initialize() local_unnamed_addr #0 {
  %1 = load i32, i32* @n, align 4, !tbaa !4
  %2 = add nsw i32 %1, -1
  %3 = sitofp i32 %2 to double
  %4 = fdiv double 2.000000e+00, %3
  store double %4, double* @dx, align 8, !tbaa !8
  %5 = load i32, i32* @m, align 4, !tbaa !4
  %6 = add nsw i32 %5, -1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dy, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @n, align 4, !tbaa !4
  %8 = add nsw i32 %7, -1
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %2
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3
  store i32 0, i32* %3, align 4, !tbaa !4
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #3
  store i32 %8, i32* %4, align 4, !tbaa !4
  %13 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #3
  store i32 1, i32* %5, align 4, !tbaa !4
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #3
  store i32 0, i32* %6, align 4, !tbaa !4
  %15 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %15, i32 34, i32* nonnull %6, i32* nonnull %3, i32* nonnull %4, i32* nonnull %5, i32 1, i32 1)
  %16 = load i32, i32* %4, align 4, !tbaa !4
  %17 = icmp slt i32 %16, %7
  %18 = select i1 %17, i32 %16, i32 %8
  store i32 %18, i32* %4, align 4, !tbaa !4
  %19 = load i32, i32* %3, align 4, !tbaa !4
  %20 = load i32, i32* @m, align 4
  %21 = load double, double* @dx, align 8
  %22 = load double, double* @dy, align 8
  %23 = load double, double* @alpha, align 8
  %24 = fneg double %23
  %25 = icmp sgt i32 %20, 0
  %26 = icmp sgt i32 %19, %18
  br i1 %26, label %75, label %27

27:                                               ; preds = %10
  %28 = sext i32 %19 to i64
  %29 = zext i32 %20 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = add i32 %18, 1
  %32 = sub i32 %31, %19
  %33 = zext i32 %20 to i64
  br label %34

34:                                               ; preds = %27, %70
  %35 = phi i64 [ %28, %27 ], [ %71, %70 ]
  %36 = phi i64 [ 0, %27 ], [ %72, %70 ]
  %37 = trunc i64 %35 to i32
  %38 = add i32 %37, -1
  %39 = sitofp i32 %38 to double
  %40 = fmul double %21, %39
  %41 = fadd double %40, -1.000000e+00
  %42 = fptosi double %41 to i32
  %43 = mul nsw i32 %42, %42
  %44 = sitofp i32 %43 to double
  %45 = fsub double 1.000000e+00, %44
  %46 = fmul double %45, %24
  %47 = fmul double %45, 2.000000e+00
  br i1 %25, label %48, label %70

48:                                               ; preds = %34
  %49 = add nsw i64 %36, %28
  %50 = getelementptr [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %49, i64 0
  %51 = bitcast double* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %51, i8 0, i64 %30, i1 false)
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i64 [ 0, %48 ], [ %68, %52 ]
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, -1
  %56 = sitofp i32 %55 to double
  %57 = fmul double %22, %56
  %58 = fadd double %57, -1.000000e+00
  %59 = fptosi double %58 to i32
  %60 = mul nsw i32 %59, %59
  %61 = sitofp i32 %60 to double
  %62 = fsub double 1.000000e+00, %61
  %63 = fmul double %46, %62
  %64 = fsub double %63, %47
  %65 = fmul double %62, 2.000000e+00
  %66 = fsub double %64, %65
  %67 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %35, i64 %53
  store double %66, double* %67, align 8, !tbaa !8
  %68 = add nuw nsw i64 %53, 1
  %69 = icmp eq i64 %68, %33
  br i1 %69, label %70, label %52, !llvm.loop !10

70:                                               ; preds = %52, %34
  %71 = add nsw i64 %35, 1
  %72 = add nuw nsw i64 %36, 1
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %32, %73
  br i1 %74, label %75, label %34

75:                                               ; preds = %70, %10
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %15)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3
  br label %76

76:                                               ; preds = %75, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !13 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = load i32, i32* @n, align 4, !tbaa !4
  %2 = add nsw i32 %1, -1
  %3 = sitofp i32 %2 to double
  %4 = fdiv double 2.000000e+00, %3
  store double %4, double* @dx, align 8, !tbaa !8
  %5 = load i32, i32* @m, align 4, !tbaa !4
  %6 = add nsw i32 %5, -1
  %7 = sitofp i32 %6 to double
  %8 = fdiv double 2.000000e+00, %7
  store double %8, double* @dy, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)) #3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

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
