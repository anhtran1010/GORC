; ModuleID = 'dataracebench/DRB008-indirectaccess4-orig-yes.c'
source_filename = "dataracebench/DRB008-indirectaccess4-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@indexSet = dso_local global [180 x i32] [i32 521, i32 533, i32 525, i32 527, i32 529, i32 531, i32 547, i32 549, i32 551, i32 553, i32 555, i32 557, i32 573, i32 575, i32 577, i32 579, i32 581, i32 583, i32 599, i32 601, i32 603, i32 605, i32 607, i32 609, i32 625, i32 627, i32 629, i32 631, i32 633, i32 635, i32 651, i32 653, i32 655, i32 657, i32 659, i32 661, i32 859, i32 861, i32 863, i32 865, i32 867, i32 869, i32 885, i32 887, i32 889, i32 891, i32 893, i32 895, i32 911, i32 913, i32 915, i32 917, i32 919, i32 921, i32 937, i32 939, i32 941, i32 943, i32 945, i32 947, i32 963, i32 965, i32 967, i32 969, i32 971, i32 973, i32 989, i32 991, i32 993, i32 995, i32 997, i32 999, i32 1197, i32 1199, i32 1201, i32 1203, i32 1205, i32 1207, i32 1223, i32 1225, i32 1227, i32 1229, i32 1231, i32 1233, i32 1249, i32 1251, i32 1253, i32 1255, i32 1257, i32 1259, i32 1275, i32 1277, i32 1279, i32 1281, i32 1283, i32 1285, i32 1301, i32 1303, i32 1305, i32 1307, i32 1309, i32 1311, i32 1327, i32 1329, i32 1331, i32 1333, i32 1335, i32 1337, i32 1535, i32 1537, i32 1539, i32 1541, i32 1543, i32 1545, i32 1561, i32 1563, i32 1565, i32 1567, i32 1569, i32 1571, i32 1587, i32 1589, i32 1591, i32 1593, i32 1595, i32 1597, i32 1613, i32 1615, i32 1617, i32 1619, i32 1621, i32 1623, i32 1639, i32 1641, i32 1643, i32 1645, i32 1647, i32 1649, i32 1665, i32 1667, i32 1669, i32 1671, i32 1673, i32 1675, i32 1873, i32 1875, i32 1877, i32 1879, i32 1881, i32 1883, i32 1899, i32 1901, i32 1903, i32 1905, i32 1907, i32 1909, i32 1925, i32 1927, i32 1929, i32 1931, i32 1933, i32 1935, i32 1951, i32 1953, i32 1955, i32 1957, i32 1959, i32 1961, i32 1977, i32 1979, i32 1981, i32 1983, i32 1985, i32 1987, i32 2003, i32 2005, i32 2007, i32 2009, i32 2011, i32 2013], align 16
@.str = private unnamed_addr constant [33 x i8] c"Error in malloc(). Aborting ...\0A\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"x1[999]=%f xa2[1285]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call noalias align 16 i8* @malloc(i64 16208) #4
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %6, align 8
  %12 = load double*, double** %6, align 8
  %13 = icmp eq double* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load double*, double** %6, align 8
  store double* %17, double** %7, align 8
  %18 = load double*, double** %7, align 8
  %19 = getelementptr inbounds double, double* %18, i64 12
  store double* %19, double** %8, align 8
  store i32 521, i32* %9, align 4
  br label %20

20:                                               ; preds = %31, %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp sle i32 %21, 2025
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double 5.000000e-01, %25
  %27 = load double*, double** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  store double %26, double* %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %20, !llvm.loop !5

34:                                               ; preds = %20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), double** %7, double** %8)
  %35 = load double*, double** %7, align 8
  %36 = getelementptr inbounds double, double* %35, i64 999
  %37 = load double, double* %36, align 8
  %38 = load double*, double** %8, align 8
  %39 = getelementptr inbounds double, double* %38, i64 1285
  %40 = load double, double* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %37, double %40)
  %42 = load double*, double** %6, align 8
  %43 = bitcast double* %42 to i8*
  call void @free(i8* %43) #4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, double** nonnull align 8 dereferenceable(8) %2, double** nonnull align 8 dereferenceable(8) %3) #3 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store double** %2, double*** %7, align 8
  store double** %3, double*** %8, align 8
  %17 = load double**, double*** %7, align 8
  %18 = load double**, double*** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 179, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %20, i32 34, i32* %14, i32* %11, i32* %12, i32* %13, i32 1, i32 1)
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 179
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 179, %23 ], [ %25, %24 ]
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %54, %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %34, 1
  %36 = add nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [180 x i32], [180 x i32]* @indexSet, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  %41 = load double*, double** %17, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fadd double %45, 1.000000e+00
  store double %46, double* %44, align 8
  %47 = load double*, double** %18, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fadd double %51, 3.000000e+00
  store double %52, double* %50, align 8
  br label %53

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %29

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %20)
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8}
!8 = !{i64 2, i64 -1, i64 -1, i1 true}
