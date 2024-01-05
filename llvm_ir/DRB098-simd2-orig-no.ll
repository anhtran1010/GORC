; ModuleID = 'dataracebench/DRB098-simd2-orig-no.c'
source_filename = "dataracebench/DRB098-simd2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"c[50][50]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 100, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %3, align 8
  %27 = mul nuw i64 %23, %25
  %28 = alloca double, i64 %27, align 16
  store i64 %23, i64* %4, align 8
  store i64 %25, i64* %5, align 8
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 %30, %32
  %34 = alloca double, i64 %33, align 16
  store i64 %30, i64* %6, align 8
  store i64 %32, i64* %7, align 8
  %35 = load i32, i32* %2, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* %2, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %36, %38
  %40 = alloca double, i64 %39, align 16
  store i64 %36, i64* %8, align 8
  store i64 %38, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %85, %0
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %81, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = sitofp i32 %51 to double
  %53 = fdiv double %52, 2.000000e+00
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, %25
  %57 = getelementptr inbounds double, double* %28, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  store double %53, double* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 3.000000e+00
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %32
  %67 = getelementptr inbounds double, double* %34, i64 %66
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %63, double* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 7.000000e+00
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, %38
  %77 = getelementptr inbounds double, double* %40, i64 %76
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  store double %73, double* %80, align 8
  br label %81

81:                                               ; preds = %50
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %46, !llvm.loop !5

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %41, !llvm.loop !7

88:                                               ; preds = %41
  %89 = load i32, i32* %2, align 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %2, align 4
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = sub nsw i32 %91, 0
  %93 = sdiv i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 0
  %97 = sdiv i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %94, %98
  %100 = sub nsw i64 %99, 1
  store i64 %100, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 0, %101
  br i1 %102, label %103, label %180

103:                                              ; preds = %88
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 0, %104
  br i1 %105, label %106, label %180

106:                                              ; preds = %103
  store i64 0, i64* %19, align 8
  br label %107

107:                                              ; preds = %166, %106
  %108 = load i64, i64* %19, align 8, !llvm.access.group !8
  %109 = load i64, i64* %16, align 8, !llvm.access.group !8
  %110 = add nsw i64 %109, 1
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %112, label %169

112:                                              ; preds = %107
  %113 = load i64, i64* %19, align 8, !llvm.access.group !8
  %114 = load i32, i32* %15, align 4, !llvm.access.group !8
  %115 = sub nsw i32 %114, 0
  %116 = sdiv i32 %115, 1
  %117 = mul nsw i32 1, %116
  %118 = sext i32 %117 to i64
  %119 = sdiv i64 %113, %118
  %120 = mul nsw i64 %119, 1
  %121 = add nsw i64 0, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %20, align 4, !llvm.access.group !8
  %123 = load i64, i64* %19, align 8, !llvm.access.group !8
  %124 = load i64, i64* %19, align 8, !llvm.access.group !8
  %125 = load i32, i32* %15, align 4, !llvm.access.group !8
  %126 = sub nsw i32 %125, 0
  %127 = sdiv i32 %126, 1
  %128 = mul nsw i32 1, %127
  %129 = sext i32 %128 to i64
  %130 = sdiv i64 %124, %129
  %131 = load i32, i32* %15, align 4, !llvm.access.group !8
  %132 = sub nsw i32 %131, 0
  %133 = sdiv i32 %132, 1
  %134 = mul nsw i32 1, %133
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %130, %135
  %137 = sub nsw i64 %123, %136
  %138 = mul nsw i64 %137, 1
  %139 = add nsw i64 0, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %21, align 4, !llvm.access.group !8
  %141 = load i32, i32* %20, align 4, !llvm.access.group !8
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, %25
  %144 = getelementptr inbounds double, double* %28, i64 %143
  %145 = load i32, i32* %21, align 4, !llvm.access.group !8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  %148 = load double, double* %147, align 8, !llvm.access.group !8
  %149 = load i32, i32* %20, align 4, !llvm.access.group !8
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, %32
  %152 = getelementptr inbounds double, double* %34, i64 %151
  %153 = load i32, i32* %21, align 4, !llvm.access.group !8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %152, i64 %154
  %156 = load double, double* %155, align 8, !llvm.access.group !8
  %157 = fmul double %148, %156
  %158 = load i32, i32* %20, align 4, !llvm.access.group !8
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %159, %38
  %161 = getelementptr inbounds double, double* %40, i64 %160
  %162 = load i32, i32* %21, align 4, !llvm.access.group !8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  store double %157, double* %164, align 8, !llvm.access.group !8
  br label %165

165:                                              ; preds = %112
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %19, align 8, !llvm.access.group !8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %19, align 8, !llvm.access.group !8
  br label %107, !llvm.loop !9

169:                                              ; preds = %107
  %170 = load i32, i32* %14, align 4
  %171 = sub nsw i32 %170, 0
  %172 = sdiv i32 %171, 1
  %173 = mul nsw i32 %172, 1
  %174 = add nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %15, align 4
  %176 = sub nsw i32 %175, 0
  %177 = sdiv i32 %176, 1
  %178 = mul nsw i32 %177, 1
  %179 = add nsw i32 0, %178
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %169, %103, %88
  %181 = mul nsw i64 50, %38
  %182 = getelementptr inbounds double, double* %40, i64 %181
  %183 = getelementptr inbounds double, double* %182, i64 50
  %184 = load double, double* %183, align 8
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double %184)
  store i32 0, i32* %1, align 4
  %186 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %1, align 4
  ret i32 %187
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.parallel_accesses", !8}
!11 = !{!"llvm.loop.vectorize.enable", i1 true}
