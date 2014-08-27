; ModuleID = 'socket_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.end_point_t = type { %struct.sockaddr*, %struct.socket*, i32, i8 }
%struct.event_queue_t = type { i64*, i32 }
%struct.in_addr = type { i32 }
%struct.network_t = type { %struct.in_addr, i16, [32 x %struct.end_point_t] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.socket = type { i32, i32, i32, i32, %struct.end_point_t*, %struct.end_point_t*, %struct.stream_buffer_t*, %struct.stream_buffer_t*, %struct.event_queue_t*, i64, %struct.stream_buffer_t* }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }

@.str = private unnamed_addr constant [13 x i8] c"This is good\00", align 1
@__net = common unnamed_addr global %struct.network_t zeroinitializer, align 32
@.str1 = private unnamed_addr constant [31 x i8] c"The size of set to be 0 is %d\0A\00", align 8

define void @klee_init_network() nounwind {
entry:
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !92
  tail call void @llvm.dbg.value(metadata !93, i64 0, metadata !9), !dbg !94
  tail call void @llvm.dbg.value(metadata !95, i64 0, metadata !5), !dbg !94
  store i32 16885952, i32* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 0, i32 0), align 32, !dbg !94
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !13), !dbg !97
  tail call void @llvm.dbg.value(metadata !98, i64 0, metadata !10), !dbg !97
  store i16 12405, i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !97
  %1 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i64 768) nounwind, !dbg !99
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.end_point_t* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 2, i64 0) to i8*), i8 0, i64 768, i32 8, i1 false), !dbg !100
  ret void, !dbg !101
}

declare i32 @puts(i8* nocapture) nounwind

declare i32 @printf(i8* nocapture, ...) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.sp = !{!0}
!llvm.dbg.lv.klee_init_network = !{!5, !9, !10, !13}
!llvm.dbg.gv = !{!14}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_network", metadata !"klee_init_network", metadata !"klee_init_network", metadata !1, i32 9, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @klee_init_network} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"socket_init.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"socket_init.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null}
!5 = metadata !{i32 590080, metadata !6, metadata !"__v", metadata !1, i32 12, metadata !8, i32 0} ; [ DW_TAG_auto_variable ]
!6 = metadata !{i32 589835, metadata !7, i32 9, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!7 = metadata !{i32 589835, metadata !0, i32 9, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!8 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 590080, metadata !6, metadata !"__x", metadata !1, i32 12, metadata !8, i32 0} ; [ DW_TAG_auto_variable ]
!10 = metadata !{i32 590080, metadata !11, metadata !"__v", metadata !1, i32 13, metadata !12, i32 0} ; [ DW_TAG_auto_variable ]
!11 = metadata !{i32 589835, metadata !7, i32 13, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!12 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 590080, metadata !11, metadata !"__x", metadata !1, i32 13, metadata !12, i32 0} ; [ DW_TAG_auto_variable ]
!14 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__net", metadata !"__net", metadata !"", metadata !1, i32 7, metadata !15, i1 false, i1 true, %struct.network_t* @__net} ; [ DW_TAG_variable ]
!15 = metadata !{i32 589846, metadata !16, metadata !"network_t", metadata !16, i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 589865, metadata !"common.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 589843, metadata !1, metadata !"", metadata !16, i32 50, i64 6208, i64 64, i64 0, i32 0, null, metadata !18, i32 0, null} ; [ DW_TAG_structure_type ]
!18 = metadata !{metadata !19, metadata !25, metadata !27}
!19 = metadata !{i32 589837, metadata !17, metadata !"net_addr", metadata !16, i32 52, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ]
!20 = metadata !{i32 589843, metadata !1, metadata !"in_addr", metadata !21, i32 143, i64 32, i64 32, i64 0, i32 0, null, metadata !22, i32 0, null} ; [ DW_TAG_structure_type ]
!21 = metadata !{i32 589865, metadata !"in.h", metadata !"/usr/include/netinet", metadata !2} ; [ DW_TAG_file_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 589837, metadata !20, metadata !"s_addr", metadata !21, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ]
!24 = metadata !{i32 589846, metadata !21, metadata !"in_addr_t", metadata !21, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 589837, metadata !17, metadata !"next_port", metadata !16, i32 54, i64 16, i64 16, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589846, metadata !21, metadata !"in_port_t", metadata !21, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 589837, metadata !17, metadata !"end_points", metadata !16, i32 56, i64 6144, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 6144, i64 64, i64 0, i32 0, metadata !29, metadata !90, i32 0, null} ; [ DW_TAG_array_type ]
!29 = metadata !{i32 589846, metadata !16, metadata !"end_point_t", metadata !16, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589843, metadata !1, metadata !"", metadata !16, i32 15, i64 192, i64 64, i64 0, i32 0, null, metadata !31, i32 0, null} ; [ DW_TAG_structure_type ]
!31 = metadata !{metadata !32, metadata !44, metadata !88, metadata !89}
!32 = metadata !{i32 589837, metadata !30, metadata !"addr", metadata !16, i32 16, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !35, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !36, i32 0, null} ; [ DW_TAG_structure_type ]
!35 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!36 = metadata !{metadata !37, metadata !39}
!37 = metadata !{i32 589837, metadata !34, metadata !"sa_family", metadata !35, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !35, metadata !"sa_family_t", metadata !35, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589837, metadata !34, metadata !"sa_data", metadata !35, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !41, metadata !42, i32 0, null} ; [ DW_TAG_array_type ]
!41 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 589857, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!44 = metadata !{i32 589837, metadata !30, metadata !"socket", metadata !16, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 589843, metadata !1, metadata !"socket", metadata !16, i32 13, i64 576, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!47 = metadata !{metadata !48, metadata !50, metadata !51, metadata !52, metadata !53, metadata !55, metadata !56, metadata !83, metadata !84, metadata !86, metadata !87}
!48 = metadata !{i32 589837, metadata !46, metadata !"status", metadata !16, i32 28, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 589837, metadata !46, metadata !"type", metadata !16, i32 29, i64 32, i64 32, i64 32, i32 0, metadata !49} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !46, metadata !"domain", metadata !16, i32 30, i64 32, i64 32, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !46, metadata !"protocol", metadata !16, i32 31, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !46, metadata !"local_end", metadata !16, i32 33, i64 64, i64 64, i64 128, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 589837, metadata !46, metadata !"remote_end", metadata !16, i32 34, i64 64, i64 64, i64 192, i32 0, metadata !54} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !46, metadata !"out", metadata !16, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !57} ; [ DW_TAG_member ]
!57 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 589846, metadata !16, metadata !"stream_buffer_t", metadata !16, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!59 = metadata !{i32 589843, metadata !1, metadata !"", metadata !60, i32 27, i64 640, i64 64, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_structure_type ]
!60 = metadata !{i32 589865, metadata !"buffers.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!61 = metadata !{metadata !62, metadata !64, metadata !68, metadata !69, metadata !70, metadata !71, metadata !79, metadata !80, metadata !81, metadata !82}
!62 = metadata !{i32 589837, metadata !59, metadata !"contents", metadata !60, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ]
!63 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 589837, metadata !59, metadata !"max_size", metadata !60, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ]
!65 = metadata !{i32 589846, metadata !66, metadata !"size_t", metadata !66, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 589837, metadata !59, metadata !"max_rsize", metadata !60, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !65} ; [ DW_TAG_member ]
!69 = metadata !{i32 589837, metadata !59, metadata !"start", metadata !60, i32 32, i64 64, i64 64, i64 192, i32 0, metadata !65} ; [ DW_TAG_member ]
!70 = metadata !{i32 589837, metadata !59, metadata !"size", metadata !60, i32 33, i64 64, i64 64, i64 256, i32 0, metadata !65} ; [ DW_TAG_member ]
!71 = metadata !{i32 589837, metadata !59, metadata !"evt_queue", metadata !60, i32 35, i64 128, i64 64, i64 320, i32 0, metadata !72} ; [ DW_TAG_member ]
!72 = metadata !{i32 589846, metadata !60, metadata !"event_queue_t", metadata !60, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ]
!73 = metadata !{i32 589843, metadata !1, metadata !"", metadata !60, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_structure_type ]
!74 = metadata !{metadata !75, metadata !78}
!75 = metadata !{i32 589837, metadata !73, metadata !"queue", metadata !60, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ]
!76 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ]
!77 = metadata !{i32 589846, metadata !60, metadata !"wlist_id_t", metadata !60, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ]
!78 = metadata !{i32 589837, metadata !73, metadata !"count", metadata !60, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ]
!79 = metadata !{i32 589837, metadata !59, metadata !"empty_wlist", metadata !60, i32 36, i64 64, i64 64, i64 448, i32 0, metadata !77} ; [ DW_TAG_member ]
!80 = metadata !{i32 589837, metadata !59, metadata !"full_wlist", metadata !60, i32 37, i64 64, i64 64, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ]
!81 = metadata !{i32 589837, metadata !59, metadata !"queued", metadata !60, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !8} ; [ DW_TAG_member ]
!82 = metadata !{i32 589837, metadata !59, metadata !"status", metadata !60, i32 40, i64 16, i64 16, i64 608, i32 0, metadata !12} ; [ DW_TAG_member ]
!83 = metadata !{i32 589837, metadata !46, metadata !"in", metadata !16, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !57} ; [ DW_TAG_member ]
!84 = metadata !{i32 589837, metadata !46, metadata !"conn_evt_queue", metadata !16, i32 41, i64 64, i64 64, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ]
!85 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 589837, metadata !46, metadata !"conn_wlist", metadata !16, i32 42, i64 64, i64 64, i64 448, i32 0, metadata !77} ; [ DW_TAG_member ]
!87 = metadata !{i32 589837, metadata !46, metadata !"listen", metadata !16, i32 45, i64 64, i64 64, i64 512, i32 0, metadata !57} ; [ DW_TAG_member ]
!88 = metadata !{i32 589837, metadata !30, metadata !"refcount", metadata !16, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ]
!89 = metadata !{i32 589837, metadata !30, metadata !"allocated", metadata !16, i32 21, i64 8, i64 8, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 589857, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!92 = metadata !{i32 10, i32 0, metadata !7, null}
!93 = metadata !{i32 -1062731519}                 ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 12, i32 0, metadata !6, null}
!95 = metadata !{i32 16885952}                    
!96 = metadata !{i16 30000}                       
!97 = metadata !{i32 13, i32 0, metadata !11, null}
!98 = metadata !{i16 12405}                       
!99 = metadata !{i32 14, i32 0, metadata !7, null}
!100 = metadata !{i32 16, i32 0, metadata !7, null}
!101 = metadata !{i32 19, i32 0, metadata !7, null}
