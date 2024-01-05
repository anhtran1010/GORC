; ModuleID = 'dataracebench/DRB098-simd2-orig-no.c'
source_filename = "dataracebench/DRB098-simd2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"c[50][50]=%f\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca [10000 x double], align 16
  %2 = alloca [10000 x double], align 16
  %3 = alloca [10000 x double], align 16
  br label %4

4:                                                ; preds = %0, %22
  %5 = phi i64 [ 0, %0 ], [ %23, %22 ]
  %6 = trunc i64 %5 to i32
  %7 = sitofp i32 %6 to double
  %8 = fmul double %7, 5.000000e-01
  %9 = mul nuw nsw i64 %5, 100
  %10 = getelementptr inbounds [10000 x double], [10000 x double]* %1, i64 0, i64 %9
  %11 = fdiv double %7, 3.000000e+00
  %12 = getelementptr inbounds [10000 x double], [10000 x double]* %2, i64 0, i64 %9
  %13 = fdiv double %7, 7.000000e+00
  %14 = getelementptr inbounds [10000 x double], [10000 x double]* %3, i64 0, i64 %9
  br label %15

15:                                               ; preds = %4, %15
  %16 = phi i64 [ 0, %4 ], [ %20, %15 ]
  %17 = getelementptr inbounds double, double* %10, i64 %16
  store double %8, double* %17, align 8, !tbaa !4
  %18 = getelementptr inbounds double, double* %12, i64 %16
  store double %11, double* %18, align 8, !tbaa !4
  %19 = getelementptr inbounds double, double* %14, i64 %16
  store double %13, double* %19, align 8, !tbaa !4
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 100
  br i1 %21, label %22, label %15, !llvm.loop !8

22:                                               ; preds = %15
  %23 = add nuw nsw i64 %5, 1
  %24 = icmp eq i64 %23, 100
  br i1 %24, label %25, label %4, !llvm.loop !11

25:                                               ; preds = %22, %25
  %26 = phi i64 [ %63, %25 ], [ 0, %22 ]
  %27 = phi <2 x i64> [ %64, %25 ], [ <i64 0, i64 1>, %22 ]
  %28 = udiv <2 x i64> %27, <i64 100, i64 100>
  %29 = mul <2 x i64> %28, <i64 -100, i64 -100>
  %30 = add <2 x i64> %29, %27
  %31 = shl <2 x i64> %28, <i64 32, i64 32>
  %32 = ashr exact <2 x i64> %31, <i64 32, i64 32>
  %33 = mul nsw <2 x i64> %32, <i64 100, i64 100>
  %34 = extractelement <2 x i64> %33, i32 0
  %35 = getelementptr inbounds [10000 x double], [10000 x double]* %1, i64 0, i64 %34
  %36 = extractelement <2 x i64> %33, i32 1
  %37 = getelementptr inbounds [10000 x double], [10000 x double]* %1, i64 0, i64 %36
  %38 = shl <2 x i64> %30, <i64 32, i64 32>
  %39 = ashr exact <2 x i64> %38, <i64 32, i64 32>
  %40 = extractelement <2 x i64> %39, i32 0
  %41 = getelementptr inbounds double, double* %35, i64 %40
  %42 = extractelement <2 x i64> %39, i32 1
  %43 = getelementptr inbounds double, double* %37, i64 %42
  %44 = load double, double* %41, align 8, !tbaa !4, !llvm.access.group !12
  %45 = load double, double* %43, align 8, !tbaa !4, !llvm.access.group !12
  %46 = insertelement <2 x double> poison, double %44, i32 0
  %47 = insertelement <2 x double> %46, double %45, i32 1
  %48 = getelementptr inbounds [10000 x double], [10000 x double]* %2, i64 0, i64 %34
  %49 = getelementptr inbounds [10000 x double], [10000 x double]* %2, i64 0, i64 %36
  %50 = getelementptr inbounds double, double* %48, i64 %40
  %51 = getelementptr inbounds double, double* %49, i64 %42
  %52 = load double, double* %50, align 8, !tbaa !4, !llvm.access.group !12
  %53 = load double, double* %51, align 8, !tbaa !4, !llvm.access.group !12
  %54 = insertelement <2 x double> poison, double %52, i32 0
  %55 = insertelement <2 x double> %54, double %53, i32 1
  %56 = fmul <2 x double> %47, %55
  %57 = getelementptr inbounds [10000 x double], [10000 x double]* %3, i64 0, i64 %34
  %58 = getelementptr inbounds [10000 x double], [10000 x double]* %3, i64 0, i64 %36
  %59 = getelementptr inbounds double, double* %57, i64 %40
  %60 = getelementptr inbounds double, double* %58, i64 %42
  %61 = extractelement <2 x double> %56, i32 0
  store double %61, double* %59, align 8, !tbaa !4, !llvm.access.group !12
  %62 = extractelement <2 x double> %56, i32 1
  store double %62, double* %60, align 8, !tbaa !4, !llvm.access.group !12
  %63 = add nuw i64 %26, 2
  %64 = add <2 x i64> %27, <i64 2, i64 2>
  %65 = icmp eq i64 %63, 10000
  br i1 %65, label %66, label %25, !llvm.loop !13

66:                                               ; preds = %25
  %67 = getelementptr inbounds [10000 x double], [10000 x double]* %3, i64 0, i64 5050
  %68 = load double, double* %67, align 16, !tbaa !4
  %69 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %68)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.parallel_accesses", !12}
!15 = !{!"llvm.loop.isvectorized", i32 1}
