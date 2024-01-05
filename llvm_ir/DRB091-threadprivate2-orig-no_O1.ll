; ModuleID = 'dataracebench/DRB091-threadprivate2-orig-no.c'
source_filename = "dataracebench/DRB091-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4
@sum1 = dso_local local_unnamed_addr global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@.str = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"dataracebench/DRB091-threadprivate2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  store i32 1000, i32* %1, align 4, !tbaa !4
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  store i32 0, i32* %2, align 4, !tbaa !4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @3, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, i32* nonnull %2, i32* nonnull @sum0)
  %5 = load i32, i32* %1, align 4, !tbaa !4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = load i32, i32* @sum1, align 4, !tbaa !4
  %9 = add i32 %5, %8
  %10 = add i32 %5, -1
  %11 = zext i32 %10 to i33
  %12 = add i32 %5, -2
  %13 = zext i32 %12 to i33
  %14 = mul i33 %11, %13
  %15 = lshr i33 %14, 1
  %16 = trunc i33 %15 to i32
  %17 = add i32 %9, %16
  %18 = add i32 %17, -1
  store i32 %18, i32* @sum1, align 4, !tbaa !4
  br label %19

19:                                               ; preds = %7, %0
  %20 = load i32, i32* %2, align 4, !tbaa !4
  %21 = load i32, i32* @sum1, align 4, !tbaa !4
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %2, align 4, !tbaa !4
  %24 = load i32, i32* @sum1, align 4, !tbaa !4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

27:                                               ; preds = %19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32* nocapture nonnull align 4 dereferenceable(4) %3, i32* nonnull readonly align 4 dereferenceable(4) %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = icmp eq i32* %4, @sum0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %4, align 4, !tbaa !4
  store i32 %12, i32* @sum0, align 4, !tbaa !4
  br label %13

13:                                               ; preds = %11, %5
  %14 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %14)
  %15 = load i32, i32* %2, align 4, !tbaa !4
  %16 = add nsw i32 %15, -1
  %17 = icmp sgt i32 %15, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #4
  store i32 0, i32* %6, align 4, !tbaa !4
  %20 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #4
  store i32 %16, i32* %7, align 4, !tbaa !4
  %21 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #4
  store i32 1, i32* %8, align 4, !tbaa !4
  %22 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #4
  store i32 0, i32* %9, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @2, i32 %14, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = icmp slt i32 %23, %15
  %25 = select i1 %24, i32 %23, i32 %16
  store i32 %25, i32* %7, align 4, !tbaa !4
  %26 = load i32, i32* %6, align 4, !tbaa !4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %18
  %29 = sub i32 %25, %26
  %30 = xor i32 %26, -1
  %31 = add i32 %25, %30
  %32 = zext i32 %31 to i33
  %33 = zext i32 %29 to i33
  %34 = mul i33 %32, %33
  %35 = lshr i33 %34, 1
  %36 = trunc i33 %35 to i32
  %37 = add i32 %26, 1
  %38 = mul i32 %29, %37
  %39 = load i32, i32* @sum0, align 4, !tbaa !4
  %40 = add i32 %26, %39
  %41 = add i32 %40, %38
  %42 = add i32 %41, %36
  store i32 %42, i32* @sum0, align 4, !tbaa !4
  br label %43

43:                                               ; preds = %28, %18
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @2, i32 %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #4
  br label %44

44:                                               ; preds = %43, %13
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %14)
  call void @__kmpc_critical(%struct.ident_t* nonnull @3, i32 %14, [8 x i32]* nonnull @.gomp_critical_user_.var)
  %45 = load i32, i32* %3, align 4, !tbaa !4
  %46 = load i32, i32* @sum0, align 4, !tbaa !4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %3, align 4, !tbaa !4
  call void @__kmpc_end_critical(%struct.ident_t* nonnull @3, i32 %14, [8 x i32]* nonnull @.gomp_critical_user_.var)
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #4

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define weak_odr hidden i32* @_ZTW4sum0() local_unnamed_addr #7 comdat {
  ret i32* @sum0
}

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }

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
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
