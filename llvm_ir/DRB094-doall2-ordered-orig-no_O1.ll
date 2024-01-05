; ModuleID = 'dataracebench/DRB094-doall2-ordered-orig-no.c'
source_filename = "dataracebench/DRB094-doall2-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_dim = type { i64, i64, i64 }

@a = dso_local local_unnamed_addr global [100 x [100 x i32]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"test i=%d j=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1) #2 {
  %3 = alloca [2 x %struct.kmp_dim], align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i64], align 8
  %9 = alloca [2 x i64], align 8
  %10 = alloca [2 x i64], align 8
  %11 = bitcast [2 x %struct.kmp_dim]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %3, i64 0, i64 0, i32 1
  store i64 100, i64* %12, align 8, !tbaa !4
  %13 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %3, i64 0, i64 0, i32 2
  store i64 1, i64* %13, align 8, !tbaa !9
  %14 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %3, i64 0, i64 1, i32 1
  store i64 100, i64* %14, align 8, !tbaa !4
  %15 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %3, i64 0, i64 1, i32 2
  store i64 1, i64* %15, align 8, !tbaa !9
  %16 = load i32, i32* %0, align 4, !tbaa !10
  call void @__kmpc_doacross_init(%struct.ident_t* nonnull @1, i32 %16, i32 2, i8* nonnull %11)
  %17 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5
  store i32 0, i32* %4, align 4, !tbaa !10
  %18 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #5
  store i32 99, i32* %5, align 4, !tbaa !10
  %19 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5
  store i32 1, i32* %6, align 4, !tbaa !10
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #5
  store i32 0, i32* %7, align 4, !tbaa !10
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %16, i32 33, i32* nonnull %7, i32* nonnull %4, i32* nonnull %5, i32* nonnull %6, i32 1, i32 1)
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  %27 = load i32, i32* %5, align 4, !tbaa !10
  %28 = icmp slt i32 %27, 99
  %29 = select i1 %28, i32 %27, i32 99
  store i32 %29, i32* %5, align 4, !tbaa !10
  %30 = load i32, i32* %4, align 4, !tbaa !10
  %31 = icmp sgt i32 %30, %29
  br i1 %31, label %66, label %32

32:                                               ; preds = %2, %57
  %33 = phi i32 [ %61, %57 ], [ %30, %2 ]
  %34 = load i32, i32* %5, align 4, !tbaa !10
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = sext i32 %33 to i64
  br label %38

38:                                               ; preds = %36, %52
  %39 = phi i64 [ %37, %36 ], [ %53, %52 ]
  %40 = add nsw i64 %39, -1
  %41 = trunc i64 %39 to i32
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ 0, %38 ], [ %50, %42 ]
  %44 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %39, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !10
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4, !tbaa !10
  store i64 %40, i64* %21, align 8, !tbaa !12
  store i64 %43, i64* %22, align 8, !tbaa !12
  call void @__kmpc_doacross_wait(%struct.ident_t* nonnull @1, i32 %16, i64* nonnull %21)
  store i64 %39, i64* %23, align 8, !tbaa !12
  %47 = add nsw i64 %43, -1
  store i64 %47, i64* %24, align 8, !tbaa !12
  call void @__kmpc_doacross_wait(%struct.ident_t* nonnull @1, i32 %16, i64* nonnull %23)
  %48 = trunc i64 %43 to i32
  %49 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %48)
  store i64 %39, i64* %25, align 8, !tbaa !12
  store i64 %43, i64* %26, align 8, !tbaa !12
  call void @__kmpc_doacross_post(%struct.ident_t* nonnull @1, i32 %16, i64* nonnull %25)
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, 100
  br i1 %51, label %52, label %42, !llvm.loop !13

52:                                               ; preds = %42
  %53 = add nsw i64 %39, 1
  %54 = load i32, i32* %5, align 4, !tbaa !10
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %39, %55
  br i1 %56, label %38, label %57

57:                                               ; preds = %52, %32
  %58 = phi i32 [ %34, %32 ], [ %54, %52 ]
  %59 = load i32, i32* %4, align 4, !tbaa !10
  %60 = load i32, i32* %6, align 4, !tbaa !10
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %4, align 4, !tbaa !10
  %62 = add nsw i32 %60, %58
  %63 = icmp slt i32 %62, 99
  %64 = select i1 %63, i32 %62, i32 99
  store i32 %64, i32* %5, align 4, !tbaa !10
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %32

66:                                               ; preds = %57, %2
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %16)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5
  call void @__kmpc_doacross_fini(%struct.ident_t* nonnull @1, i32 %16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_init(%struct.ident_t*, i32, i32, i8*) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_wait(%struct.ident_t*, i32, i64*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_post(%struct.ident_t*, i32, i64*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare !callback !16 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { convergent nounwind }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !6, i64 8}
!5 = !{!"kmp_dim", !6, i64 0, !6, i64 8, !6, i64 16}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 16}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!17}
!17 = !{i64 2, i64 -1, i64 -1, i1 true}
