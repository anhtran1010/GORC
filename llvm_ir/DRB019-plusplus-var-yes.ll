; ModuleID = 'dataracebench/DRB019-plusplus-var-yes.c'
source_filename = "dataracebench/DRB019-plusplus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [14 x i8] c"output[0]=%d\0A\00", align 1

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
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* %17) #6
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %36, %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %23, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %27, !llvm.loop !5

39:                                               ; preds = %27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @2, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %7, i64 %25, i32* %26, i32* %8, i64 %21, i32* %23)
  %40 = getelementptr inbounds i32, i32* %26, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  %43 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1, i32* nonnull align 4 dereferenceable(4) %2, i64 %3, i32* nonnull align 4 dereferenceable(4) %4, i32* nonnull align 4 dereferenceable(4) %5, i64 %6, i32* nonnull align 4 dereferenceable(4) %7) #3 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %27, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %19, align 4
  %35 = sub nsw i32 %34, 0
  %36 = sdiv i32 %35, 1
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %8
  store i32 0, i32* %22, align 4
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %23, align 4
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @1, i32 %43, i32 34, i32* %25, i32* %22, i32* %23, i32* %24, i32 1, i32 1)
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %20, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %23, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %22, align 4
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %71, %51
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %59, 1
  %61 = add nsw i32 0, %60
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %32, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %30, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %30, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %29, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %54

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  call void @__kmpc_for_static_fini(%struct.ident_t* @1, i32 %77)
  br label %78

78:                                               ; preds = %75, %8
  ret void
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #4

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }

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
