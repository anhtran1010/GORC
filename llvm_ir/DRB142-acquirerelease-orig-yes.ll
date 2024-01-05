; ModuleID = 'dataracebench/DRB142-acquirerelease-orig-yes.c'
source_filename = "dataracebench/DRB142-acquirerelease-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@.str = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  call void @__kmpc_push_num_threads(%struct.ident_t* @1, i32 %4, i32 2)
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2, i32* %3)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3) #1 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @omp_get_thread_num()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  call void @__kmpc_critical(%struct.ident_t* @1, i32 %18, [8 x i32]* @.gomp_critical_user_.var)
  store i32 10, i32* %11, align 4
  call void @__kmpc_end_critical(%struct.ident_t* @1, i32 %18, [8 x i32]* @.gomp_critical_user_.var)
  store atomic i32 1, i32* %12 monotonic, align 4
  br label %34

19:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %23, %19
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load atomic i32, i32* %12 acquire, align 4
  call void @__kmpc_flush(%struct.ident_t* @1)
  store i32 %24, i32* %10, align 4
  br label %20, !llvm.loop !5

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  call void @__kmpc_critical(%struct.ident_t* @1, i32 %27, [8 x i32]* @.gomp_critical_user_.var)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  call void @__kmpc_end_critical(%struct.ident_t* @1, i32 %27, [8 x i32]* @.gomp_critical_user_.var)
  br label %34

34:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @omp_get_thread_num() #2

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_flush(%struct.ident_t*) #3

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nounwind }
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
