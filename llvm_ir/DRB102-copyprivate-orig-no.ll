; ModuleID = 'dataracebench/DRB102-copyprivate-orig-no.c'
source_filename = "dataracebench/DRB102-copyprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW1x = comdat any

$_ZTW1y = comdat any

@x = dso_local thread_local global float 0.000000e+00, align 4
@y = dso_local thread_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [11 x i8] c"x=%f y=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  %6 = load float, float* @x, align 4
  %7 = fpext float %6 to double
  %8 = load i32, i32* @y, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), double %7, i32 %8)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8*], align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @__kmpc_single(%struct.ident_t* @1, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store float 1.000000e+00, float* @x, align 4
  store i32 1, i32* @y, align 4
  call void @__kmpc_end_single(%struct.ident_t* @1, i32 %8)
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* bitcast (float* @x to i8*), i8** %13, align 8
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* bitcast (i32* @y to i8*), i8** %14, align 8
  %15 = bitcast [2 x i8*]* %6 to i8*
  %16 = load i32, i32* %5, align 4
  call void @__kmpc_copyprivate(%struct.ident_t* @1, i32 %8, i64 16, i8* %15, void (i8*, i8*)* @.omp.copyprivate.copy_func, i32 %16)
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_single(%struct.ident_t*, i32) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_end_single(%struct.ident_t*, i32) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.copyprivate.copy_func(i8* %0, i8* %1) #3 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to [2 x i8*]*
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to [2 x i8*]*
  %9 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to float*
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to float*
  %15 = load float, float* %14, align 4
  store float %15, float* %11, align 4
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 4
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_copyprivate(%struct.ident_t*, i32, i64, i8*, void (i8*, i8*)*, i32) #4

; Function Attrs: nounwind
declare !callback !5 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden float* @_ZTW1x() #6 comdat {
  ret float* @x
}

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW1y() #6 comdat {
  ret i32* @y
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { convergent nounwind }
attributes #3 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = !{i64 2, i64 -1, i64 -1, i1 true}
