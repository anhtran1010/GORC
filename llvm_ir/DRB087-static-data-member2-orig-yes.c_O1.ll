; ModuleID = 'dataracebench/DRB087-static-data-member2-orig-yes.cpp'
source_filename = "dataracebench/DRB087-static-data-member2-orig-yes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.A = type { i8 }
%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTWN1A8pcounterE = comdat any

@_ZN1A7counterE = dso_local local_unnamed_addr global i32 0, align 4
@_ZN1A8pcounterE = dso_local thread_local global i32 0, align 4
@a = dso_local local_unnamed_addr global %class.A zeroinitializer, align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0) }, align 8

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @1, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*))
  ret i32 0
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal void @.omp_outlined.(i32* noalias nocapture readnone %0, i32* noalias nocapture readnone %1) #1 {
  %3 = load i32, i32* @_ZN1A7counterE, align 4, !tbaa !4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @_ZN1A7counterE, align 4, !tbaa !4
  %5 = load i32, i32* @_ZN1A8pcounterE, align 4, !tbaa !4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @_ZN1A8pcounterE, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare !callback !8 void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr #2

; Function Attrs: uwtable
define weak_odr hidden i32* @_ZTWN1A8pcounterE() local_unnamed_addr #3 comdat {
  ret i32* @_ZN1A8pcounterE
}

attributes #0 = { mustprogress norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!nvvm.annotations = !{}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 50}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project/ 24c8eaec9467b2aaf70b0db33a4e4dd415139a50)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = !{i64 2, i64 -1, i64 -1, i1 true}
