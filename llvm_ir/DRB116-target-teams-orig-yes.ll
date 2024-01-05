; ModuleID = 'dataracebench/DRB116-target-teams-orig-yes.c'
source_filename = "dataracebench/DRB116-target-teams-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [10 x i8] c"a[50]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca double, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 2.000000e+00
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %13, i64 %23
  store double %21, double* %24, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %14, !llvm.loop !5

28:                                               ; preds = %14
  call void @__omp_offloading_10302_803f34_main_l63(i64 %11, double* %13) #3
  %29 = getelementptr inbounds double, double* %13, i64 50
  %30 = load double, double* %29, align 16
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %30)
  store i32 0, i32* %3, align 4
  %32 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10302_803f34_main_l63(i64 %0, double* nonnull align 8 dereferenceable(8) %1) #2 {
  %3 = alloca i64, align 8
  %4 = alloca double*, align 8
  %5 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i64 %0, i64* %3, align 8
  store double* %1, double** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load double*, double** %4, align 8
  call void @__kmpc_push_num_teams(%struct.ident_t* @1, i32 %5, i32 2, i32 0)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* @1, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %6, double* %7)
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i64 %2, double* nonnull align 8 dereferenceable(8) %3) #2 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store double* %3, double** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load double*, double** %8, align 8
  %11 = getelementptr inbounds double, double* %10, i64 50
  %12 = load double, double* %11, align 16
  %13 = fmul double %12, 2.000000e+00
  store double %13, double* %11, align 16
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32) #3

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
