; ModuleID = 'dataracebench/DRB049-fprintf-orig-no.c'
source_filename = "dataracebench/DRB049-fprintf-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [15 x i8] c"mytempfile.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Error in fopen()\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Error: unable to delete mytempfile.txt\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1000 x i32], align 16
  %6 = bitcast %struct._IO_FILE** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  %7 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  store i32 1000, i32* %4, align 4, !tbaa !4
  %8 = bitcast [1000 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* nonnull %8) #4
  br label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ 0, %2 ], [ %13, %9 ]
  %11 = getelementptr inbounds [1000 x i32], [1000 x i32]* %5, i64 0, i64 %10
  %12 = trunc i64 %10 to i32
  store i32 %12, i32* %11, align 4, !tbaa !4
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, 1000
  br i1 %14, label %15, label %9, !llvm.loop !8

15:                                               ; preds = %9
  %16 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %3, align 8, !tbaa !11
  %17 = icmp eq %struct._IO_FILE* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %20 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %19) #6
  br label %21

21:                                               ; preds = %18, %15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct._IO_FILE**, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, %struct._IO_FILE** nonnull %3, [1000 x i32]* nonnull %5)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !11
  %23 = call i32 @fclose(%struct._IO_FILE* %22)
  %24 = call i32 @remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %27) #6
  br label %29

29:                                               ; preds = %26, %21
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture nonnull readonly align 4 dereferenceable(4) %2, %struct._IO_FILE** nocapture nonnull readonly align 8 dereferenceable(8) %3, [1000 x i32]* nocapture nonnull readonly align 4 dereferenceable(4000) %4) #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* %2, align 4, !tbaa !4
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %5
  %14 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #4
  store i32 0, i32* %6, align 4, !tbaa !4
  %15 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #4
  store i32 %11, i32* %7, align 4, !tbaa !4
  %16 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4
  store i32 1, i32* %8, align 4, !tbaa !4
  %17 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #4
  store i32 0, i32* %9, align 4, !tbaa !4
  %18 = load i32, i32* %0, align 4, !tbaa !4
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %18, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1)
  %19 = load i32, i32* %7, align 4, !tbaa !4
  %20 = icmp slt i32 %19, %10
  %21 = select i1 %20, i32 %19, i32 %11
  store i32 %21, i32* %7, align 4, !tbaa !4
  %22 = load i32, i32* %6, align 4, !tbaa !4
  %23 = icmp sgt i32 %22, %21
  br i1 %23, label %36, label %24

24:                                               ; preds = %13
  %25 = sext i32 %22 to i64
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %32, %26 ]
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !tbaa !11
  %29 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 %27
  %30 = load i32, i32* %29, align 4, !tbaa !4
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = add nsw i64 %27, 1
  %33 = load i32, i32* %7, align 4, !tbaa !4
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %27, %34
  br i1 %35, label %26, label %36

36:                                               ; preds = %26, %13
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #4
  br label %37

37:                                               ; preds = %36, %5
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
declare dso_local noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @remove(i8* nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nofree nounwind }
attributes #6 = { cold }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14}
!14 = !{i64 2, i64 -1, i64 -1, i1 true}
