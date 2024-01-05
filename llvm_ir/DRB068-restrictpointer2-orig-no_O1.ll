; ModuleID = 'dataracebench/DRB068-restrictpointer2-orig-no.c'
source_filename = "dataracebench/DRB068-restrictpointer2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"skip the execution due to malloc failures.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(i32 %0, i32* noalias %1, i32* noalias %2, i32* noalias %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4, !tbaa !4
  store i32* %1, i32** %6, align 8, !tbaa !8
  store i32* %2, i32** %7, align 8, !tbaa !8
  store i32* %3, i32** %8, align 8, !tbaa !8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %5, i32** nonnull %6, i32** nonnull %7, i32** nonnull %8)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, i32** nocapture nonnull readonly align 8 dereferenceable(8) %3, i32** nocapture nonnull readonly align 8 dereferenceable(8) %4, i32** nocapture nonnull readonly align 8 dereferenceable(8) %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* %2, align 4, !tbaa !4
  %12 = add nsw i32 %11, -1
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %6
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #3
  store i32 0, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3
  store i32 %12, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3
  store i32 1, i32* %9, align 4, !tbaa !4
  %18 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3
  store i32 0, i32* %10, align 4, !tbaa !4
  %19 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %19, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1)
  %20 = load i32, i32* %8, align 4, !tbaa !4
  %21 = icmp slt i32 %20, %11
  %22 = select i1 %21, i32 %20, i32 %12
  store i32 %22, i32* %8, align 4, !tbaa !4
  %23 = load i32, i32* %7, align 4, !tbaa !4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = icmp sgt i32 %23, %22
  br i1 %27, label %42, label %28

28:                                               ; preds = %14
  %29 = sext i32 %23 to i64
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %29, %28 ], [ %38, %30 ]
  %32 = getelementptr inbounds i32, i32* %24, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !4
  %34 = getelementptr inbounds i32, i32* %25, i64 %31
  %35 = load i32, i32* %34, align 4, !tbaa !4
  %36 = add nsw i32 %35, %33
  %37 = getelementptr inbounds i32, i32* %26, i64 %31
  store i32 %36, i32* %37, align 4, !tbaa !4
  %38 = add nsw i64 %31, 1
  %39 = load i32, i32* %8, align 4, !tbaa !4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %31, %40
  br i1 %41, label %30, label %42

42:                                               ; preds = %30, %14
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %19)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #3
  br label %43

43:                                               ; preds = %42, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !10 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call noalias align 16 dereferenceable_or_null(4000) i8* @malloc(i64 4000) #3
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %8) #7
  br label %30

10:                                               ; preds = %0
  %11 = call noalias align 16 dereferenceable_or_null(4000) i8* @malloc(i64 4000) #3
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %14) #7
  br label %30

16:                                               ; preds = %10
  %17 = call noalias align 16 dereferenceable_or_null(4000) i8* @malloc(i64 4000) #3
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %20) #7
  br label %30

22:                                               ; preds = %16
  %23 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast i32** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = bitcast i32** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast i32** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  store i32 1000, i32* %1, align 4, !tbaa !4, !noalias !12
  %27 = bitcast i32** %2 to i8**
  store i8* %5, i8** %27, align 8, !tbaa !8, !noalias !12
  %28 = bitcast i32** %3 to i8**
  store i8* %11, i8** %28, align 8, !tbaa !8, !noalias !12
  %29 = bitcast i32** %4 to i8**
  store i8* %17, i8** %29, align 8, !tbaa !8, !noalias !12
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, i32** nonnull %2, i32** nonnull %3, i32** nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26)
  call void @free(i8* %5) #3
  call void @free(i8* %11) #3
  call void @free(i8* %17) #3
  br label %30

30:                                               ; preds = %22, %19, %13, %7
  %31 = phi i32 [ 1, %7 ], [ 1, %13 ], [ 1, %19 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { cold }

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
!10 = !{!11}
!11 = !{i64 2, i64 -1, i64 -1, i1 true}
!12 = !{!13, !15, !16}
!13 = distinct !{!13, !14, !"foo: argument 0"}
!14 = distinct !{!14, !"foo"}
!15 = distinct !{!15, !14, !"foo: argument 1"}
!16 = distinct !{!16, !14, !"foo: argument 2"}
