; ModuleID = 'dataracebench/DRB025-simdtruedep-var-yes.c'
source_filename = "dataracebench/DRB025-simdtruedep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @atoi(i8* %22) #3
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %46, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %28, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %31, i64 %44
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %32, !llvm.loop !5

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %52, 0
  %54 = sdiv i32 %53, 1
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 0, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %15, align 4, !llvm.access.group !7
  %61 = load i32, i32* %13, align 4, !llvm.access.group !7
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4, !llvm.access.group !7
  %66 = mul nsw i32 %65, 1
  %67 = add nsw i32 0, %66
  store i32 %67, i32* %16, align 4, !llvm.access.group !7
  %68 = load i32, i32* %16, align 4, !llvm.access.group !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %28, i64 %69
  %71 = load i32, i32* %70, align 4, !llvm.access.group !7
  %72 = load i32, i32* %16, align 4, !llvm.access.group !7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %31, i64 %73
  %75 = load i32, i32* %74, align 4, !llvm.access.group !7
  %76 = mul nsw i32 %71, %75
  %77 = load i32, i32* %16, align 4, !llvm.access.group !7
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %28, i64 %79
  store i32 %76, i32* %80, align 4, !llvm.access.group !7
  br label %81

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4, !llvm.access.group !7
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4, !llvm.access.group !7
  br label %59, !llvm.loop !8

85:                                               ; preds = %59
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 0
  %88 = sdiv i32 %87, 1
  %89 = mul nsw i32 %88, 1
  %90 = add nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %85, %49
  store i32 0, i32* %3, align 4
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.parallel_accesses", !7}
!10 = !{!"llvm.loop.vectorize.enable", i1 true}
