; ModuleID = 'dataracebench/DRB127-tasking-threadprivate1-orig-no.c'
source_filename = "dataracebench/DRB127-tasking-threadprivate1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.anon.1 = type {}
%struct.kmp_task_t_with_privates.2 = type { %struct.kmp_task_t }
%struct.anon.0 = type {}

$_ZTW2tp = comdat any

@tp = dso_local thread_local global i32 0, align 4
@var = dso_local global i32 0, align 4
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.anon, align 1
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* @1)
  store i32 0, i32* %1, align 4
  %4 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*))
  %5 = bitcast i8* %4 to %struct.kmp_task_t_with_privates.3*
  %6 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %5, i32 0, i32 0
  %7 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %3, i8* %4)
  %8 = load i32, i32* @var, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @var, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.1*
  %18 = bitcast %struct.kmp_task_t_with_privates* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  store i32 %11, i32* %3, align 4, !noalias !14
  store i32* %14, i32** %4, align 8, !noalias !14
  store i8* null, i8** %5, align 8, !noalias !14
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !14
  store i8* %18, i8** %7, align 8, !noalias !14
  store %struct.anon.1* %17, %struct.anon.1** %8, align 8, !noalias !14
  %19 = load %struct.anon.1*, %struct.anon.1** %8, align 8, !noalias !14
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) #2

; Function Attrs: nounwind
declare i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*) #2

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon.0*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon.0*
  %18 = bitcast %struct.kmp_task_t_with_privates.2* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store i32 %11, i32* %3, align 4, !noalias !24
  store i32* %14, i32** %4, align 8, !noalias !24
  store i8* null, i8** %5, align 8, !noalias !24
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !24
  store i8* %18, i8** %7, align 8, !noalias !24
  store %struct.anon.0* %17, %struct.anon.0** %8, align 8, !noalias !24
  %19 = load %struct.anon.0*, %struct.anon.0** %8, align 8, !noalias !24
  store i32 1, i32* @tp, align 4
  %20 = load i32, i32* %3, align 4, !noalias !24
  %21 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %20, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #2
  %22 = bitcast i8* %21 to %struct.kmp_task_t_with_privates*
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %22, i32 0, i32 0
  %24 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %20, i8* %21) #2
  %25 = load i32, i32* @tp, align 4
  store i32 %25, i32* @var, align 4
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca void (i8*, ...)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.anon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %10, align 8
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.anon*
  %18 = bitcast %struct.kmp_task_t_with_privates.3* %12 to i8*
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  store i32 %11, i32* %3, align 4, !noalias !34
  store i32* %14, i32** %4, align 8, !noalias !34
  store i8* null, i8** %5, align 8, !noalias !34
  store void (i8*, ...)* null, void (i8*, ...)** %6, align 8, !noalias !34
  store i8* %18, i8** %7, align 8, !noalias !34
  store %struct.anon* %17, %struct.anon** %8, align 8, !noalias !34
  %19 = load %struct.anon*, %struct.anon** %8, align 8, !noalias !34
  %20 = load i32, i32* %3, align 4, !noalias !34
  %21 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* @1, i32 %20, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)) #2
  %22 = bitcast i8* %21 to %struct.kmp_task_t_with_privates.2*
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %22, i32 0, i32 0
  %24 = call i32 @__kmpc_omp_task(%struct.ident_t* @1, i32 %20, i8* %21) #2
  store i32 2, i32* @tp, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(%struct.ident_t*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW2tp() #4 comdat {
  ret i32* @tp
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !".omp_outlined..2: argument 0"}
!7 = distinct !{!7, !".omp_outlined..2"}
!8 = !{!9}
!9 = distinct !{!9, !7, !".omp_outlined..2: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !".omp_outlined..2: argument 2"}
!12 = !{!13}
!13 = distinct !{!13, !7, !".omp_outlined..2: argument 3"}
!14 = !{!6, !9, !11, !13}
!15 = !{!16}
!16 = distinct !{!16, !17, !".omp_outlined..1: argument 0"}
!17 = distinct !{!17, !".omp_outlined..1"}
!18 = !{!19}
!19 = distinct !{!19, !17, !".omp_outlined..1: argument 1"}
!20 = !{!21}
!21 = distinct !{!21, !17, !".omp_outlined..1: argument 2"}
!22 = !{!23}
!23 = distinct !{!23, !17, !".omp_outlined..1: argument 3"}
!24 = !{!16, !19, !21, !23}
!25 = !{!26}
!26 = distinct !{!26, !27, !".omp_outlined.: argument 0"}
!27 = distinct !{!27, !".omp_outlined."}
!28 = !{!29}
!29 = distinct !{!29, !27, !".omp_outlined.: argument 1"}
!30 = !{!31}
!31 = distinct !{!31, !27, !".omp_outlined.: argument 2"}
!32 = !{!33}
!33 = distinct !{!33, !27, !".omp_outlined.: argument 3"}
!34 = !{!26, !29, !31, !33}
