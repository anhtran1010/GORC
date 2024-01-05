; ModuleID = 'dataracebench/DRB094-doall2-ordered-orig-no.c'
source_filename = "dataracebench/DRB094-doall2-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_dim = type { i64, i64, i64 }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [16 x i8] c"test i=%d j=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %0, i32* noalias %1) #1 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.kmp_dim], align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i64], align 8
  %15 = alloca [2 x i64], align 8
  %16 = alloca [2 x i64], align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = bitcast [2 x %struct.kmp_dim]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 48, i1 false)
  %18 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %7, i64 0, i64 0
  %19 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %18, i32 0, i32 1
  store i64 100, i64* %19, align 8
  %20 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %18, i32 0, i32 2
  store i64 1, i64* %20, align 8
  %21 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %7, i64 0, i64 1
  %22 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %21, i32 0, i32 1
  store i64 100, i64* %22, align 8
  %23 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %21, i32 0, i32 2
  store i64 1, i64* %23, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %7, i64 0, i64 0
  %27 = bitcast %struct.kmp_dim* %26 to i8*
  call void @__kmpc_doacross_init(%struct.ident_t* @1, i32 %25, i32 2, i8* %27)
  store i32 0, i32* %8, align 4
  store i32 99, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  call void @__kmpc_for_static_init_4(%struct.ident_t* @2, i32 %25, i32 33, i32* %11, i32* %8, i32* %9, i32* %10, i32 1, i32 1)
  br label %28

28:                                               ; preds = %114, %2
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 99
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 99, %31 ], [ %33, %32 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %110, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 1
  %48 = add nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %105, %45
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 100
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %54
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [100 x i32], [100 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [100 x i32], [100 x i32]* %63, i64 0, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sub nsw i32 %68, 0
  %70 = sdiv i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %73, 0
  %75 = sdiv i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  call void @__kmpc_doacross_wait(%struct.ident_t* @1, i32 %25, i64* %78)
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, 0
  %81 = sdiv i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sub nsw i32 %85, 0
  %87 = sdiv i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  call void @__kmpc_doacross_wait(%struct.ident_t* @1, i32 %25, i64* %90)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 0
  %96 = sdiv i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, 0
  %101 = sdiv i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  call void @__kmpc_doacross_post(%struct.ident_t* @1, i32 %25, i64* %104)
  br label %105

105:                                              ; preds = %52
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %49, !llvm.loop !5

108:                                              ; preds = %49
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %41

113:                                              ; preds = %41
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %9, align 4
  br label %28

121:                                              ; preds = %34
  call void @__kmpc_for_static_fini(%struct.ident_t* @2, i32 %25)
  call void @__kmpc_doacross_fini(%struct.ident_t* @1, i32 %25)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_init(%struct.ident_t*, i32, i32, i8*) #3

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_fini(%struct.ident_t*, i32) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_wait(%struct.ident_t*, i32, i64*) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: convergent nounwind
declare void @__kmpc_doacross_post(%struct.ident_t*, i32, i64*) #3

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(%struct.ident_t*, i32) #5

; Function Attrs: nounwind
declare !callback !7 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { convergent nounwind }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
