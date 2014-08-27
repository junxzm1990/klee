; ModuleID = 'clock_getres.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

define weak i32 @clock_getres(i32 %clock_id, %struct.timespec* %res) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %clock_id}, i64 0, metadata !16), !dbg !22
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %res}, i64 0, metadata !17), !dbg !22
  tail call void @llvm.dbg.value(metadata !23, i64 0, metadata !18), !dbg !24
  %cond = icmp eq i32 %clock_id, 0
  br i1 %cond, label %bb, label %bb6

bb:                                               ; preds = %entry
  %0 = icmp eq %struct.timespec* %res, null, !dbg !25
  br i1 %0, label %bb6, label %bb2, !dbg !25

bb2:                                              ; preds = %bb
  %1 = tail call i64 @sysconf(i32 2) nounwind, !dbg !26
  tail call void @llvm.dbg.value(metadata !{i64 %1}, i64 0, metadata !20), !dbg !26
  %2 = icmp slt i64 %1, 0, !dbg !26
  tail call void @llvm.dbg.value(metadata !27, i64 0, metadata !20), !dbg !28
  %clk_tck.0 = select i1 %2, i64 100, i64 %1
  %3 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 0, !dbg !29
  store i64 0, i64* %3, align 8, !dbg !29
  %4 = sdiv i64 1000000000, %clk_tck.0, !dbg !30
  %5 = getelementptr inbounds %struct.timespec* %res, i64 0, i32 1, !dbg !30
  store i64 %4, i64* %5, align 8, !dbg !30
  br label %bb6, !dbg !30

bb6:                                              ; preds = %bb2, %bb, %entry
  %retval1.0 = phi i32 [ -1, %entry ], [ 0, %bb ], [ 0, %bb2 ]
  ret i32 %retval1.0, !dbg !31
}

declare i64 @sysconf(i32) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}
!llvm.dbg.lv.clock_getres = !{!16, !17, !18, !20}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"clock_getres", metadata !"clock_getres", metadata !"clock_getres", metadata !1, i32 8, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.timespec*)* @clock_getres} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"clock_getres.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"clock_getres.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6, metadata !8}
!5 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"clockid_t", metadata !7, i32 104, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !7, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_structure_type ]
!10 = metadata !{metadata !11, metadata !15}
!11 = metadata !{i32 589837, metadata !9, metadata !"tv_sec", metadata !7, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ]
!12 = metadata !{i32 589846, metadata !13, metadata !"__time_t", metadata !13, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !9, metadata !"tv_nsec", metadata !7, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ]
!16 = metadata !{i32 590081, metadata !0, metadata !"clock_id", metadata !1, i32 7, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 590081, metadata !0, metadata !"res", metadata !1, i32 7, metadata !8, i32 0} ; [ DW_TAG_arg_variable ]
!18 = metadata !{i32 590080, metadata !19, metadata !"retval", metadata !1, i32 9, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!19 = metadata !{i32 589835, metadata !0, i32 8, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!20 = metadata !{i32 590080, metadata !21, metadata !"clk_tck", metadata !1, i32 14, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!21 = metadata !{i32 589835, metadata !19, i32 16, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!22 = metadata !{i32 7, i32 0, metadata !0, null}
!23 = metadata !{i32 -1}                          ; [ DW_TAG_hi_user ]
!24 = metadata !{i32 9, i32 0, metadata !19, null}
!25 = metadata !{i32 13, i32 0, metadata !19, null}
!26 = metadata !{i32 16, i32 0, metadata !21, null}
!27 = metadata !{i64 100}
!28 = metadata !{i32 17, i32 0, metadata !21, null}
!29 = metadata !{i32 18, i32 0, metadata !21, null}
!30 = metadata !{i32 19, i32 0, metadata !21, null}
!31 = metadata !{i32 29, i32 0, metadata !19, null}
