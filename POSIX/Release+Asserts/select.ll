; ModuleID = 'select.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.end_point_t = type { %struct.sockaddr*, %struct.sym_socket*, i32, i8 }
%struct.event_queue_t = type { i64*, i32 }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [16 x %struct.exe_file_t], [16 x %struct.sym_socket], i32, i32, i32 }
%struct.fd_set = type { [16 x i64] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }
%struct.sym_socket = type { i32, i32, i32, i32, %struct.end_point_t*, %struct.end_point_t*, %struct.stream_buffer_t*, %struct.stream_buffer_t*, %struct.event_queue_t*, i64, %struct.stream_buffer_t* }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [43 x i8] c"(event == (1 << 0)) || (event == (1 << 1))\00", align 8
@.str1 = private unnamed_addr constant [9 x i8] c"select.c\00", align 1
@__PRETTY_FUNCTION__.5397 = internal unnamed_addr constant [20 x i8] c"_is_blocking_socket\00", align 16
@.str2 = private unnamed_addr constant [72 x i8] c"The socker is in the block checking process and the status is connected\00", align 8
@.str3 = private unnamed_addr constant [26 x i8] c"The current event is read\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"The current event is write\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"!_stream_is_closed(sock->listen) && \22invalid socket state\22\00", align 8
@.str6 = private unnamed_addr constant [28 x i8] c"0 && \22invalid socket state\22\00", align 1
@__exe_env = external unnamed_addr global %struct.exe_sym_env_t

define i32 @_is_blocking_socket(%struct.sym_socket* nocapture %sock, i32 %event) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !117), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %event}, i64 0, metadata !118), !dbg !121
  %0 = add i32 %event, -1, !dbg !122
  %1 = icmp ugt i32 %0, 1, !dbg !122
  br i1 %1, label %bb, label %bb1, !dbg !122

bb:                                               ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 13, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5397, i64 0, i64 0)) noreturn nounwind, !dbg !122
  unreachable, !dbg !122

bb1:                                              ; preds = %entry
  %2 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 0, !dbg !124
  %3 = load i32* %2, align 8, !dbg !124
  switch i32 %3, label %bb19 [
    i32 1, label %bb26
    i32 4, label %bb4
    i32 8, label %bb6
  ]

bb4:                                              ; preds = %bb1
  %4 = icmp eq i32 %event, 2, !dbg !125
  %5 = zext i1 %4 to i32, !dbg !125
  br label %bb26, !dbg !125

bb6:                                              ; preds = %bb1
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([72 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !126
  switch i32 %event, label %bb6.bb19_crit_edge [
    i32 1, label %bb7
    i32 2, label %bb13
  ], !dbg !127

bb6.bb19_crit_edge:                               ; preds = %bb6
  %.pre = load i32* %2, align 8
  br label %bb19

bb7:                                              ; preds = %bb6
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !128
  %8 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 7, !dbg !129
  %9 = load %struct.stream_buffer_t** %8, align 8, !dbg !129
  %10 = icmp eq %struct.stream_buffer_t* %9, null, !dbg !129
  br i1 %10, label %bb11, label %bb8, !dbg !129

bb8:                                              ; preds = %bb7
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %9}, i64 0, metadata !102), !dbg !130
  %11 = getelementptr inbounds %struct.stream_buffer_t* %9, i64 0, i32 4, !dbg !131
  %12 = load i64* %11, align 8, !dbg !131
  %13 = icmp eq i64 %12, 0, !dbg !131
  br i1 %13, label %bb9, label %bb11, !dbg !129

bb9:                                              ; preds = %bb8
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %9}, i64 0, metadata !104), !dbg !133
  %14 = getelementptr inbounds %struct.stream_buffer_t* %9, i64 0, i32 9, !dbg !134
  %15 = load i16* %14, align 4, !dbg !134
  %16 = zext i16 %15 to i32, !dbg !134
  %17 = and i32 %16, 2, !dbg !134
  %18 = icmp eq i32 %17, 0, !dbg !129
  br i1 %18, label %bb26, label %bb11, !dbg !129

bb11:                                             ; preds = %bb8, %bb9, %bb7
  br label %bb26, !dbg !129

bb13:                                             ; preds = %bb6
  %19 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !136
  %20 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 6, !dbg !137
  %21 = load %struct.stream_buffer_t** %20, align 8, !dbg !137
  %22 = icmp eq %struct.stream_buffer_t* %21, null, !dbg !137
  br i1 %22, label %bb17, label %bb14, !dbg !137

bb14:                                             ; preds = %bb13
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %21}, i64 0, metadata !103), !dbg !138
  %23 = getelementptr inbounds %struct.stream_buffer_t* %21, i64 0, i32 4, !dbg !139
  %24 = load i64* %23, align 8, !dbg !139
  %25 = getelementptr inbounds %struct.stream_buffer_t* %21, i64 0, i32 1, !dbg !139
  %26 = load i64* %25, align 8, !dbg !139
  %27 = icmp eq i64 %24, %26, !dbg !139
  br i1 %27, label %bb15, label %bb17, !dbg !137

bb15:                                             ; preds = %bb14
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %21}, i64 0, metadata !104), !dbg !141
  %28 = getelementptr inbounds %struct.stream_buffer_t* %21, i64 0, i32 9, !dbg !142
  %29 = load i16* %28, align 4, !dbg !142
  %30 = zext i16 %29 to i32, !dbg !142
  %31 = and i32 %30, 2, !dbg !142
  %32 = icmp eq i32 %31, 0, !dbg !137
  br i1 %32, label %bb26, label %bb17, !dbg !137

bb17:                                             ; preds = %bb14, %bb15, %bb13
  br label %bb26, !dbg !137

bb19:                                             ; preds = %bb6.bb19_crit_edge, %bb1
  %33 = phi i32 [ %.pre, %bb6.bb19_crit_edge ], [ %3, %bb1 ]
  %34 = icmp eq i32 %33, 2, !dbg !143
  br i1 %34, label %bb20, label %bb25, !dbg !143

bb20:                                             ; preds = %bb19
  switch i32 %event, label %bb25 [
    i32 1, label %bb21
    i32 2, label %bb26
  ], !dbg !144

bb21:                                             ; preds = %bb20
  %35 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 10, !dbg !145
  %36 = load %struct.stream_buffer_t** %35, align 8, !dbg !145
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %36}, i64 0, metadata !104), !dbg !146
  %37 = getelementptr inbounds %struct.stream_buffer_t* %36, i64 0, i32 9, !dbg !147
  %38 = load i16* %37, align 4, !dbg !147
  %39 = zext i16 %38 to i32, !dbg !147
  %40 = and i32 %39, 2, !dbg !147
  %41 = icmp eq i32 %40, 0, !dbg !145
  br i1 %41, label %bb23, label %bb22, !dbg !145

bb22:                                             ; preds = %bb21
  tail call void @__assert_fail(i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5397, i64 0, i64 0)) noreturn nounwind, !dbg !145
  unreachable, !dbg !145

bb23:                                             ; preds = %bb21
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %36}, i64 0, metadata !102), !dbg !148
  %42 = getelementptr inbounds %struct.stream_buffer_t* %36, i64 0, i32 4, !dbg !150
  %43 = load i64* %42, align 8, !dbg !150
  %44 = icmp eq i64 %43, 0, !dbg !150
  %45 = zext i1 %44 to i32, !dbg !150
  br label %bb26, !dbg !149

bb25:                                             ; preds = %bb20, %bb19
  tail call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5397, i64 0, i64 0)) noreturn nounwind, !dbg !151
  unreachable, !dbg !151

bb26:                                             ; preds = %bb1, %bb20, %bb17, %bb15, %bb11, %bb9, %bb23, %bb4
  %.0 = phi i32 [ %5, %bb4 ], [ %45, %bb23 ], [ 0, %bb1 ], [ 0, %bb11 ], [ 1, %bb9 ], [ 0, %bb17 ], [ 1, %bb15 ], [ 0, %bb20 ]
  ret i32 %.0, !dbg !152
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @select(i32 %nfds, %struct.fd_set* nocapture %readfds, %struct.fd_set* nocapture %writefds, %struct.fd_set* nocapture %exceptfds, %struct.timespec* nocapture %timeout) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nfds}, i64 0, metadata !105), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.fd_set* %readfds}, i64 0, metadata !106), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.fd_set* %writefds}, i64 0, metadata !107), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.fd_set* %exceptfds}, i64 0, metadata !108), !dbg !153
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %timeout}, i64 0, metadata !109), !dbg !153
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !110), !dbg !154
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !112), !dbg !155
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !113), !dbg !156
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !114), !dbg !157
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !115), !dbg !158
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !116), !dbg !159
  ret i32 1, !dbg !160
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32 @puts(i8* nocapture) nounwind

define i32 @_is_blocking(i32 %fd, i32 %event) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !119), !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %event}, i64 0, metadata !120), !dbg !161
  %0 = tail call i32 @__check_is_socket(i32 %fd) nounwind, !dbg !162
  %1 = icmp eq i32 %0, 0, !dbg !162
  br i1 %1, label %bb2, label %bb1, !dbg !162

bb1:                                              ; preds = %entry
  %2 = add nsw i32 %fd, -16, !dbg !164
  %3 = sext i32 %2 to i64, !dbg !164
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, !dbg !164
  %5 = tail call i32 @_is_blocking_socket(%struct.sym_socket* %4, i32 %event) nounwind, !dbg !164
  br label %bb2, !dbg !164

bb2:                                              ; preds = %entry, %bb1
  %.0 = phi i32 [ %5, %bb1 ], [ 0, %entry ]
  ret i32 %.0, !dbg !165
}

declare i32 @__check_is_socket(i32)

!llvm.dbg.sp = !{!0, !36, !37, !38, !61, !99}
!llvm.dbg.lv._stream_is_empty = !{!102}
!llvm.dbg.lv._stream_is_full = !{!103}
!llvm.dbg.lv._stream_is_closed = !{!104}
!llvm.dbg.lv.select = !{!105, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116}
!llvm.dbg.lv._is_blocking_socket = !{!117, !118}
!llvm.dbg.lv._is_blocking = !{!119, !120}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_is_empty", metadata !"_stream_is_empty", metadata !"", metadata !3, i32 75, metadata !4, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"select.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"select.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589865, metadata !"common.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589846, metadata !3, metadata !"stream_buffer_t", metadata !3, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ]
!9 = metadata !{i32 589843, metadata !1, metadata !"", metadata !10, i32 27, i64 640, i64 64, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_structure_type ]
!10 = metadata !{i32 589865, metadata !"buffers.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!11 = metadata !{metadata !12, metadata !15, metadata !19, metadata !20, metadata !21, metadata !22, metadata !31, metadata !32, metadata !33, metadata !34}
!12 = metadata !{i32 589837, metadata !9, metadata !"contents", metadata !10, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !9, metadata !"max_size", metadata !10, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589846, metadata !17, metadata !"size_t", metadata !17, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 589837, metadata !9, metadata !"max_rsize", metadata !10, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!20 = metadata !{i32 589837, metadata !9, metadata !"start", metadata !10, i32 32, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ]
!21 = metadata !{i32 589837, metadata !9, metadata !"size", metadata !10, i32 33, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ]
!22 = metadata !{i32 589837, metadata !9, metadata !"evt_queue", metadata !10, i32 35, i64 128, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ]
!23 = metadata !{i32 589846, metadata !10, metadata !"event_queue_t", metadata !10, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 589843, metadata !1, metadata !"", metadata !10, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !25, i32 0, null} ; [ DW_TAG_structure_type ]
!25 = metadata !{metadata !26, metadata !29}
!26 = metadata !{i32 589837, metadata !24, metadata !"queue", metadata !10, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589846, metadata !10, metadata !"wlist_id_t", metadata !10, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 589837, metadata !24, metadata !"count", metadata !10, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 589837, metadata !9, metadata !"empty_wlist", metadata !10, i32 36, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ]
!32 = metadata !{i32 589837, metadata !9, metadata !"full_wlist", metadata !10, i32 37, i64 64, i64 64, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ]
!33 = metadata !{i32 589837, metadata !9, metadata !"queued", metadata !10, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ]
!34 = metadata !{i32 589837, metadata !9, metadata !"status", metadata !10, i32 40, i64 16, i64 16, i64 608, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_is_full", metadata !"_stream_is_full", metadata !"", metadata !3, i32 79, metadata !4, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_is_closed", metadata !"_stream_is_closed", metadata !"", metadata !3, i32 83, metadata !4, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 589870, i32 0, metadata !1, metadata !"select", metadata !"select", metadata !"select", metadata !1, i32 83, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*)* @select} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !6, metadata !6, metadata !41, metadata !41, metadata !41, metadata !52}
!41 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 589846, metadata !43, metadata !"fd_set", metadata !43, i32 83, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 589865, metadata !"select.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 589843, metadata !1, metadata !"", metadata !43, i32 66, i64 1024, i64 64, i64 0, i32 0, null, metadata !45, i32 0, null} ; [ DW_TAG_structure_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 589837, metadata !44, metadata !"fds_bits", metadata !43, i32 70, i64 1024, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ]
!47 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 1024, i64 64, i64 0, i32 0, metadata !48, metadata !50, i32 0, null} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 589846, metadata !43, metadata !"__fd_mask", metadata !43, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 589857, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ]
!53 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !54, i32 32, i64 128, i64 64, i64 0, i32 0, null, metadata !55, i32 0, null} ; [ DW_TAG_structure_type ]
!54 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!55 = metadata !{metadata !56, metadata !59}
!56 = metadata !{i32 589837, metadata !53, metadata !"tv_sec", metadata !54, i32 33, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ]
!57 = metadata !{i32 589846, metadata !58, metadata !"__time_t", metadata !58, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!59 = metadata !{i32 589837, metadata !53, metadata !"tv_usec", metadata !54, i32 34, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ]
!60 = metadata !{i32 589846, metadata !58, metadata !"__suseconds_t", metadata !58, i32 153, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_is_blocking_socket", metadata !"_is_blocking_socket", metadata !"_is_blocking_socket", metadata !1, i32 12, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.sym_socket*, i32)* @_is_blocking_socket} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, null} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !6, metadata !64, metadata !6}
!64 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 589846, metadata !3, metadata !"sym_socket", metadata !3, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 589843, metadata !1, metadata !"socket", metadata !3, i32 13, i64 576, i64 64, i64 0, i32 0, null, metadata !67, i32 0, null} ; [ DW_TAG_structure_type ]
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !92, metadata !93, metadata !94, metadata !95, metadata !97, metadata !98}
!68 = metadata !{i32 589837, metadata !66, metadata !"status", metadata !3, i32 28, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!69 = metadata !{i32 589837, metadata !66, metadata !"type", metadata !3, i32 29, i64 32, i64 32, i64 32, i32 0, metadata !6} ; [ DW_TAG_member ]
!70 = metadata !{i32 589837, metadata !66, metadata !"domain", metadata !3, i32 30, i64 32, i64 32, i64 64, i32 0, metadata !6} ; [ DW_TAG_member ]
!71 = metadata !{i32 589837, metadata !66, metadata !"protocol", metadata !3, i32 31, i64 32, i64 32, i64 96, i32 0, metadata !6} ; [ DW_TAG_member ]
!72 = metadata !{i32 589837, metadata !66, metadata !"local_end", metadata !3, i32 33, i64 64, i64 64, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ]
!73 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 589846, metadata !3, metadata !"end_point_t", metadata !3, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ]
!75 = metadata !{i32 589843, metadata !1, metadata !"", metadata !3, i32 15, i64 192, i64 64, i64 0, i32 0, null, metadata !76, i32 0, null} ; [ DW_TAG_structure_type ]
!76 = metadata !{metadata !77, metadata !88, metadata !90, metadata !91}
!77 = metadata !{i32 589837, metadata !75, metadata !"addr", metadata !3, i32 16, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ]
!78 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !80, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_structure_type ]
!80 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!81 = metadata !{metadata !82, metadata !84}
!82 = metadata !{i32 589837, metadata !79, metadata !"sa_family", metadata !80, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ]
!83 = metadata !{i32 589846, metadata !80, metadata !"sa_family_t", metadata !80, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!84 = metadata !{i32 589837, metadata !79, metadata !"sa_data", metadata !80, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !85} ; [ DW_TAG_member ]
!85 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !14, metadata !86, i32 0, null} ; [ DW_TAG_array_type ]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 589857, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!88 = metadata !{i32 589837, metadata !75, metadata !"socket", metadata !3, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ]
!89 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!90 = metadata !{i32 589837, metadata !75, metadata !"refcount", metadata !3, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ]
!91 = metadata !{i32 589837, metadata !75, metadata !"allocated", metadata !3, i32 21, i64 8, i64 8, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ]
!92 = metadata !{i32 589837, metadata !66, metadata !"remote_end", metadata !3, i32 34, i64 64, i64 64, i64 192, i32 0, metadata !73} ; [ DW_TAG_member ]
!93 = metadata !{i32 589837, metadata !66, metadata !"out", metadata !3, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !7} ; [ DW_TAG_member ]
!94 = metadata !{i32 589837, metadata !66, metadata !"in", metadata !3, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !7} ; [ DW_TAG_member ]
!95 = metadata !{i32 589837, metadata !66, metadata !"conn_evt_queue", metadata !3, i32 41, i64 64, i64 64, i64 384, i32 0, metadata !96} ; [ DW_TAG_member ]
!96 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!97 = metadata !{i32 589837, metadata !66, metadata !"conn_wlist", metadata !3, i32 42, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ]
!98 = metadata !{i32 589837, metadata !66, metadata !"listen", metadata !3, i32 45, i64 64, i64 64, i64 512, i32 0, metadata !7} ; [ DW_TAG_member ]
!99 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_is_blocking", metadata !"_is_blocking", metadata !"_is_blocking", metadata !1, i32 53, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @_is_blocking} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !6, metadata !6, metadata !6}
!102 = metadata !{i32 590081, metadata !0, metadata !"buff", metadata !3, i32 75, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 590081, metadata !36, metadata !"buff", metadata !3, i32 79, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 590081, metadata !37, metadata !"buff", metadata !3, i32 83, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 590081, metadata !38, metadata !"nfds", metadata !1, i32 82, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 590081, metadata !38, metadata !"readfds", metadata !1, i32 82, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 590081, metadata !38, metadata !"writefds", metadata !1, i32 82, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 590081, metadata !38, metadata !"exceptfds", metadata !1, i32 82, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 590081, metadata !38, metadata !"timeout", metadata !1, i32 82, metadata !52, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 590080, metadata !111, metadata !"totalfds", metadata !1, i32 95, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 589835, metadata !38, i32 83, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 590080, metadata !111, metadata !"setsize", metadata !1, i32 141, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 590080, metadata !111, metadata !"out_readfds", metadata !1, i32 143, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 590080, metadata !111, metadata !"out_writefds", metadata !1, i32 144, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 590080, metadata !111, metadata !"wlist", metadata !1, i32 175, metadata !28, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 590080, metadata !111, metadata !"res", metadata !1, i32 176, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 590081, metadata !61, metadata !"sock", metadata !1, i32 12, metadata !64, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 590081, metadata !61, metadata !"event", metadata !1, i32 12, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 590081, metadata !99, metadata !"fd", metadata !1, i32 53, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 590081, metadata !99, metadata !"event", metadata !1, i32 53, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 12, i32 0, metadata !61, null}
!122 = metadata !{i32 13, i32 0, metadata !123, null}
!123 = metadata !{i32 589835, metadata !61, i32 12, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 15, i32 0, metadata !123, null}
!125 = metadata !{i32 19, i32 0, metadata !123, null}
!126 = metadata !{i32 23, i32 0, metadata !123, null}
!127 = metadata !{i32 25, i32 0, metadata !123, null}
!128 = metadata !{i32 28, i32 0, metadata !123, null}
!129 = metadata !{i32 29, i32 0, metadata !123, null}
!130 = metadata !{i32 75, i32 0, metadata !0, metadata !129}
!131 = metadata !{i32 76, i32 0, metadata !132, metadata !129}
!132 = metadata !{i32 589835, metadata !0, i32 75, i32 0, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 83, i32 0, metadata !37, metadata !129}
!134 = metadata !{i32 84, i32 0, metadata !135, metadata !129}
!135 = metadata !{i32 589835, metadata !37, i32 83, i32 0, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 32, i32 0, metadata !123, null}
!137 = metadata !{i32 34, i32 0, metadata !123, null}
!138 = metadata !{i32 79, i32 0, metadata !36, metadata !137}
!139 = metadata !{i32 80, i32 0, metadata !140, metadata !137}
!140 = metadata !{i32 589835, metadata !36, i32 79, i32 0, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 83, i32 0, metadata !37, metadata !137}
!142 = metadata !{i32 84, i32 0, metadata !135, metadata !137}
!143 = metadata !{i32 38, i32 0, metadata !123, null}
!144 = metadata !{i32 39, i32 0, metadata !123, null}
!145 = metadata !{i32 41, i32 0, metadata !123, null}
!146 = metadata !{i32 83, i32 0, metadata !37, metadata !145}
!147 = metadata !{i32 84, i32 0, metadata !135, metadata !145}
!148 = metadata !{i32 75, i32 0, metadata !0, metadata !149}
!149 = metadata !{i32 42, i32 0, metadata !123, null}
!150 = metadata !{i32 76, i32 0, metadata !132, metadata !149}
!151 = metadata !{i32 49, i32 0, metadata !123, null}
!152 = metadata !{i32 16, i32 0, metadata !123, null}
!153 = metadata !{i32 82, i32 0, metadata !38, null}
!154 = metadata !{i32 95, i32 0, metadata !111, null}
!155 = metadata !{i32 141, i32 0, metadata !111, null}
!156 = metadata !{i32 143, i32 0, metadata !111, null}
!157 = metadata !{i32 144, i32 0, metadata !111, null}
!158 = metadata !{i32 175, i32 0, metadata !111, null}
!159 = metadata !{i32 176, i32 0, metadata !111, null}
!160 = metadata !{i32 86, i32 0, metadata !111, null}
!161 = metadata !{i32 53, i32 0, metadata !99, null}
!162 = metadata !{i32 54, i32 0, metadata !163, null}
!163 = metadata !{i32 589835, metadata !99, i32 53, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 58, i32 0, metadata !163, null}
!165 = metadata !{i32 55, i32 0, metadata !163, null}
