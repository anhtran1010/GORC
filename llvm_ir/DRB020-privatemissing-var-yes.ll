; ModuleID = 'dataracebench/DRB020-privatemissing-var-yes.c'
source_filename = "dataracebench/DRB020-privatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* %16) #5
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %32, %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %23, !llvm.loop !5

35:                                               ; preds = %23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %8, i32* %7, i64 %20, i32* %22)
  store i32 0, i32* %3, align 4
  %36 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i32* nonnull align 4 dereferenceable(4) %3, i64 %4, i32* nonnull align 4 dereferenceable(4) %5) #3 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %23, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sub nsw i32 %28, 0
  %30 = sdiv i32 %29, 1
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 0, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %37, i32 34, i32* %21, i32* %18, i32* %19, i32* %20, i32 1, i32 1)
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %16, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %19, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %67, %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %53, 1
  %55 = add nsw i32 0, %54
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %26, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %22, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %22, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %26, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %73)
  br label %74

74:                                               ; preds = %71, %6
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
