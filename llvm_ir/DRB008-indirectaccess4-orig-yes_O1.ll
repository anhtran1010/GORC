; ModuleID = 'dataracebench/DRB008-indirectaccess4-orig-yes.c'
source_filename = "dataracebench/DRB008-indirectaccess4-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@indexSet = dso_local local_unnamed_addr global [180 x i32] [i32 521, i32 533, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 921, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"x1[999]=%f xa2[1285]=%f\0A\00", align 1
@str = private unnamed_addr constant [32 x i8] c"Error in malloc(). Aborting ...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = call noalias align 16 dereferenceable_or_null(16208) i8* @malloc(i64 16208) #5
  %6 = bitcast i8* %5 to double*
  %7 = icmp eq i8* %5, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str, i64 0, i64 0))
  br label %31

10:                                               ; preds = %2
  %11 = bitcast double** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5
  %12 = bitcast double** %3 to i8**
  store i8* %5, i8** %12, align 8, !tbaa !4
  %13 = bitcast double** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #5
  %14 = getelementptr inbounds double, double* %6, i64 12
  store double* %14, double** %4, align 8, !tbaa !4
  br label %15

15:                                               ; preds = %10, %15
  %16 = phi i64 [ 521, %10 ], [ %21, %15 ]
  %17 = trunc i64 %16 to i32
  %18 = sitofp i32 %17 to double
  %19 = fmul double %18, 5.000000e-01
  %20 = getelementptr inbounds double, double* %6, i64 %16
  store double %19, double* %20, align 8, !tbaa !8
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, 2026
  br i1 %22, label %23, label %15, !llvm.loop !10

23:                                               ; preds = %15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** nonnull %3, double** nonnull %4)
  %24 = load double*, double** %3, align 8, !tbaa !4
  %25 = getelementptr inbounds double, double* %24, i64 999
  %26 = load double, double* %25, align 8, !tbaa !8
  %27 = load double*, double** %4, align 8, !tbaa !4
  %28 = getelementptr inbounds double, double* %27, i64 1285
  %29 = load double, double* %28, align 8, !tbaa !8
  %30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %26, double %29)
  call void @free(i8* %5) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5
  br label %31

31:                                               ; preds = %23, %8
  %32 = phi i32 [ 1, %8 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare dso_local noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, double** nocapture nonnull readonly align 8 dereferenceable(8) %2, double** nocapture nonnull readonly align 8 dereferenceable(8) %3) #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #5
  store i32 0, i32* %5, align 4, !tbaa !13
  %10 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5
  store i32 179, i32* %6, align 4, !tbaa !13
  %11 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5
  store i32 1, i32* %7, align 4, !tbaa !13
  %12 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5
  store i32 0, i32* %8, align 4, !tbaa !13
  %13 = load i32, i32* %0, align 4, !tbaa !13
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull @1, i32 %13, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1)
  %14 = load i32, i32* %6, align 4, !tbaa !13
  %15 = icmp slt i32 %14, 179
  %16 = select i1 %15, i32 %14, i32 179
  store i32 %16, i32* %6, align 4, !tbaa !13
  %17 = load i32, i32* %5, align 4, !tbaa !13
  %18 = load double*, double** %2, align 8
  %19 = load double*, double** %3, align 8
  %20 = icmp sgt i32 %17, %16
  br i1 %20, label %38, label %21

21:                                               ; preds = %4
  %22 = sext i32 %17 to i64
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi i64 [ %22, %21 ], [ %35, %24 ]
  %26 = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !13
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %18, i64 %28
  %30 = load double, double* %29, align 8, !tbaa !8
  %31 = fadd double %30, 1.000000e+00
  store double %31, double* %29, align 8, !tbaa !8
  %32 = getelementptr inbounds double, double* %19, i64 %28
  %33 = load double, double* %32, align 8, !tbaa !8
  %34 = fadd double %33, 3.000000e+00
  store double %34, double* %32, align 8, !tbaa !8
  %35 = add nsw i64 %25, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp eq i32 %23, %36
  br i1 %37, label %38, label %24

38:                                               ; preds = %24, %4
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull @1, i32 %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare !callback !15 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }

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
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!16}
!16 = !{i64 2, i64 -1, i64 -1, i1 true}
