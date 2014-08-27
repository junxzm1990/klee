; ModuleID = 'getaddrinfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [33 x i8] c"Hello the exp is fucking working\00", align 8
@.str1 = private unnamed_addr constant [31 x i8] c"The address information is %s\0A\00", align 8
@.str2 = private unnamed_addr constant [31 x i8] c"The service information is %s\0A\00", align 8
@.str3 = private unnamed_addr constant [87 x i8] c"**********************This is the weak reference of getaddrinfo***********************\00", align 8
@.str4 = private unnamed_addr constant [36 x i8] c"unsupported family (EAI_ADDRFAMILY)\00", align 8
@.str5 = private unnamed_addr constant [39 x i8] c"unsupported socket type (EAI_SOCKTYPE)\00", align 8
@.str6 = private unnamed_addr constant [35 x i8] c"unsupported protocol (EAI_SERVICE)\00", align 8
@.str7 = private unnamed_addr constant [37 x i8] c"Getting the port number for service\0A\00", align 8
@.str9 = private unnamed_addr constant [47 x i8] c"service name not numeric, unsupported by model\00", align 8
@.str10 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"192.168.1.1\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"resolving to localhost\0A\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"acd.se2.psu.edu\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"The server name is wrong\0A\00", align 1

define i32 @getaddrinfo(i8* %node, i8* %service, %struct.addrinfo* %hints, %struct.addrinfo** nocapture %res) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %node}, i64 0, metadata !44), !dbg !105
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !45), !dbg !105
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo* %hints}, i64 0, metadata !46), !dbg !105
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo** %res}, i64 0, metadata !47), !dbg !105
  %0 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !106
  %1 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i8* %node) nounwind, !dbg !107
  %2 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str2, i64 0, i64 0), i8* %service) nounwind, !dbg !108
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([87 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !109
  %4 = icmp eq i8* %node, null
  %5 = icmp eq i8* %service, null
  %6 = and i1 %4, %5, !dbg !110
  br i1 %6, label %bb123, label %bb1, !dbg !110

bb1:                                              ; preds = %entry
  %7 = icmp eq %struct.addrinfo* %hints, null, !dbg !111
  br i1 %7, label %bb18, label %bb2, !dbg !111

bb2:                                              ; preds = %bb1
  %8 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 1, !dbg !112
  %9 = load i32* %8, align 4, !dbg !112
  switch i32 %9, label %bb5 [
    i32 2, label %bb6
    i32 0, label %bb6
  ]

bb5:                                              ; preds = %bb2
  %10 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([36 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !113
  br label %bb123, !dbg !114

bb6:                                              ; preds = %bb2, %bb2
  %11 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 2, !dbg !115
  %12 = load i32* %11, align 8, !dbg !115
  %13 = icmp ugt i32 %12, 1, !dbg !115
  br i1 %13, label %bb7, label %bb8, !dbg !115

bb7:                                              ; preds = %bb6
  %14 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !116
  br label %bb123, !dbg !117

bb8:                                              ; preds = %bb6
  %15 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 3, !dbg !118
  %16 = load i32* %15, align 4, !dbg !118
  switch i32 %16, label %bb12 [
    i32 6, label %bb13
    i32 0, label %bb13
  ]

bb12:                                             ; preds = %bb8
  %17 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !119
  br label %bb123, !dbg !120

bb13:                                             ; preds = %bb8, %bb8
  %18 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 5, !dbg !121
  %19 = load %struct.sockaddr** %18, align 8, !dbg !121
  %20 = icmp eq %struct.sockaddr* %19, null, !dbg !121
  br i1 %20, label %bb14, label %bb123, !dbg !121

bb14:                                             ; preds = %bb13
  %21 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 4, !dbg !121
  %22 = load i32* %21, align 8, !dbg !121
  %23 = icmp eq i32 %22, 0, !dbg !121
  br i1 %23, label %bb15, label %bb123, !dbg !121

bb15:                                             ; preds = %bb14
  %24 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 6, !dbg !121
  %25 = load i8** %24, align 8, !dbg !121
  %26 = icmp eq i8* %25, null, !dbg !121
  br i1 %26, label %bb16, label %bb123, !dbg !121

bb16:                                             ; preds = %bb15
  %27 = getelementptr inbounds %struct.addrinfo* %hints, i64 0, i32 7, !dbg !121
  %28 = load %struct.addrinfo** %27, align 8, !dbg !121
  %29 = icmp eq %struct.addrinfo* %28, null, !dbg !121
  br i1 %29, label %bb18, label %bb123, !dbg !121

bb18:                                             ; preds = %bb16, %bb1
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !48), !dbg !123
  br i1 %5, label %bb41, label %bb19, !dbg !124

bb19:                                             ; preds = %bb18
  %30 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !125
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !43) nounwind, !dbg !126
  %31 = tail call i64 @strtol(i8* noalias nocapture %service, i8** noalias null, i32 10) nounwind, !dbg !128
  %32 = trunc i64 %31 to i32, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !48), !dbg !127
  %33 = icmp eq i32 %32, 0, !dbg !130
  br i1 %33, label %bb22, label %bb39, !dbg !130

bb22:                                             ; preds = %bb19
  tail call void @llvm.dbg.value(metadata !{i8* %service}, i64 0, metadata !76), !dbg !131
  %34 = load i8* %service, align 1, !dbg !131
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !80), !dbg !131
  %35 = icmp eq i8 %34, 48, !dbg !131
  br i1 %35, label %bb37, label %bb38, !dbg !131

bb37:                                             ; preds = %bb22
  %36 = getelementptr inbounds i8* %service, i64 1, !dbg !131
  %37 = load i8* %36, align 1, !dbg !131
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !80), !dbg !131
  %38 = icmp eq i8 %37, 0, !dbg !132
  br i1 %38, label %bb39, label %bb38, !dbg !132

bb38:                                             ; preds = %bb22, %bb37
  %39 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([47 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !133
  br label %bb123, !dbg !134

bb39:                                             ; preds = %bb37, %bb19
  %40 = icmp ugt i32 %32, 65535, !dbg !135
  br i1 %40, label %bb123, label %bb41, !dbg !135

bb41:                                             ; preds = %bb18, %bb39
  %port.0 = phi i32 [ %32, %bb39 ], [ 0, %bb18 ]
  br i1 %4, label %bb110, label %bb63, !dbg !136

bb63:                                             ; preds = %bb41
  %41 = tail call i32 @strcmp(i8* %node, i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0)) nounwind readonly, !dbg !137
  %phitmp = icmp eq i32 %41, 0
  br i1 %phitmp, label %bb108, label %bb85, !dbg !137

bb85:                                             ; preds = %bb63
  %42 = tail call i32 @strcmp(i8* %node, i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0)) nounwind readonly, !dbg !138
  %phitmp126 = icmp eq i32 %42, 0
  br i1 %phitmp126, label %bb108, label %bb86, !dbg !138

bb86:                                             ; preds = %bb85
  %43 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !139
  br label %bb108, !dbg !139

bb108:                                            ; preds = %bb86, %bb63, %bb85
  %44 = tail call i32 @strcmp(i8* %node, i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) nounwind readonly, !dbg !140
  %phitmp125 = icmp eq i32 %44, 0
  br i1 %phitmp125, label %bb110, label %bb109, !dbg !140

bb109:                                            ; preds = %bb108
  %45 = tail call i32 (...)* @klee_warning(i8* getelementptr inbounds ([26 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !141
  br label %bb123, !dbg !142

bb110:                                            ; preds = %bb108, %bb41
  %46 = tail call noalias i8* @malloc(i64 48) nounwind, !dbg !143
  %47 = bitcast i8* %46 to %struct.addrinfo*, !dbg !143
  tail call void @llvm.dbg.value(metadata !{%struct.addrinfo* %47}, i64 0, metadata !50), !dbg !143
  tail call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 48, i32 8, i1 false), !dbg !144
  %48 = tail call noalias i8* @malloc(i64 16) nounwind, !dbg !145
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !51), !dbg !145
  tail call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 16, i32 4, i1 false), !dbg !146
  %49 = bitcast i8* %48 to %struct.sockaddr*, !dbg !147
  %50 = getelementptr inbounds i8* %46, i64 24
  %51 = bitcast i8* %50 to %struct.sockaddr**, !dbg !147
  store %struct.sockaddr* %49, %struct.sockaddr** %51, align 8, !dbg !147
  %52 = getelementptr inbounds i8* %46, i64 16
  %53 = bitcast i8* %52 to i32*, !dbg !148
  store i32 16, i32* %53, align 8, !dbg !148
  %54 = getelementptr inbounds i8* %46, i64 4
  %55 = bitcast i8* %54 to i32*, !dbg !149
  store i32 2, i32* %55, align 4, !dbg !149
  %56 = getelementptr inbounds i8* %46, i64 12
  %57 = bitcast i8* %56 to i32*, !dbg !150
  store i32 0, i32* %57, align 4, !dbg !150
  %58 = getelementptr inbounds i8* %46, i64 8
  %59 = bitcast i8* %58 to i32*, !dbg !151
  store i32 1, i32* %59, align 8, !dbg !151
  %60 = bitcast i8* %48 to i16*, !dbg !152
  store i16 2, i16* %60, align 4, !dbg !152
  tail call void @llvm.dbg.value(metadata !153, i64 0, metadata !101), !dbg !154
  tail call void @llvm.dbg.value(metadata !155, i64 0, metadata !99), !dbg !154
  %61 = getelementptr inbounds i8* %48, i64 4
  %62 = bitcast i8* %61 to i32*, !dbg !154
  store i32 16885952, i32* %62, align 4, !dbg !154
  %63 = icmp eq i32 %port.0, 0, !dbg !156
  br i1 %63, label %bb122, label %bb121, !dbg !156

bb121:                                            ; preds = %bb110
  %64 = trunc i32 %port.0 to i16, !dbg !157
  %asmtmp120 = tail call i16 @llvm.bswap.i16(i16 %64)
  %65 = getelementptr inbounds i8* %48, i64 2
  %66 = bitcast i8* %65 to i16*, !dbg !157
  store i16 %asmtmp120, i16* %66, align 2, !dbg !157
  br label %bb122, !dbg !157

bb122:                                            ; preds = %bb110, %bb121
  store %struct.addrinfo* %47, %struct.addrinfo** %res, align 8, !dbg !158
  br label %bb123, !dbg !159

bb123:                                            ; preds = %bb39, %bb13, %bb14, %bb15, %bb16, %entry, %bb122, %bb109, %bb38, %bb12, %bb7, %bb5
  %.0 = phi i32 [ -9, %bb5 ], [ -7, %bb7 ], [ -8, %bb12 ], [ -8, %bb38 ], [ -2, %bb109 ], [ 0, %bb122 ], [ -2, %entry ], [ -11, %bb16 ], [ -11, %bb15 ], [ -11, %bb14 ], [ -11, %bb13 ], [ -8, %bb39 ]
  ret i32 %.0, !dbg !160
}

declare i64 @strtol(i8* noalias, i8** noalias nocapture, i32) nounwind

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32 @puts(i8* nocapture) nounwind

declare i32 @klee_warning(...)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare noalias i8* @malloc(i64) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i16 @llvm.bswap.i16(i16) nounwind readnone

!llvm.dbg.sp = !{!0, !10}
!llvm.dbg.lv.atoi = !{!43}
!llvm.dbg.lv.getaddrinfo = !{!44, !45, !46, !47, !48, !50, !51, !70, !75, !76, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"atoi", metadata !"atoi", metadata !"atoi", metadata !3, i32 285, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"getaddrinfo.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"getaddrinfo.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589865, metadata !"stdlib.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, null} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!9 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getaddrinfo", metadata !"getaddrinfo", metadata !"getaddrinfo", metadata !1, i32 12, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, %struct.addrinfo*, %struct.addrinfo**)* @getaddrinfo} ; [ DW_TAG_subprogram ]
!11 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null} ; [ DW_TAG_subroutine_type ]
!12 = metadata !{metadata !6, metadata !7, metadata !7, metadata !13, metadata !42}
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 384, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!15 = metadata !{i32 589843, metadata !1, metadata !"addrinfo", metadata !16, i32 570, i64 384, i64 64, i64 0, i32 0, null, metadata !17, i32 0, null} ; [ DW_TAG_structure_type ]
!16 = metadata !{i32 589865, metadata !"netdb.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !26, metadata !38, metadata !40}
!18 = metadata !{i32 589837, metadata !15, metadata !"ai_flags", metadata !16, i32 571, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!19 = metadata !{i32 589837, metadata !15, metadata !"ai_family", metadata !16, i32 572, i64 32, i64 32, i64 32, i32 0, metadata !6} ; [ DW_TAG_member ]
!20 = metadata !{i32 589837, metadata !15, metadata !"ai_socktype", metadata !16, i32 573, i64 32, i64 32, i64 64, i32 0, metadata !6} ; [ DW_TAG_member ]
!21 = metadata !{i32 589837, metadata !15, metadata !"ai_protocol", metadata !16, i32 574, i64 32, i64 32, i64 96, i32 0, metadata !6} ; [ DW_TAG_member ]
!22 = metadata !{i32 589837, metadata !15, metadata !"ai_addrlen", metadata !16, i32 575, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ]
!23 = metadata !{i32 589846, metadata !24, metadata !"socklen_t", metadata !24, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 589865, metadata !"confname.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 589837, metadata !15, metadata !"ai_addr", metadata !16, i32 576, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !29, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !30, i32 0, null} ; [ DW_TAG_structure_type ]
!29 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!30 = metadata !{metadata !31, metadata !34}
!31 = metadata !{i32 589837, metadata !28, metadata !"sa_family", metadata !29, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 589846, metadata !29, metadata !"sa_family_t", metadata !29, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 589837, metadata !28, metadata !"sa_data", metadata !29, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !9, metadata !36, i32 0, null} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 589857, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 589837, metadata !15, metadata !"ai_canonname", metadata !16, i32 577, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 589837, metadata !15, metadata !"ai_next", metadata !16, i32 578, i64 64, i64 64, i64 320, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!43 = metadata !{i32 590081, metadata !0, metadata !"__nptr", metadata !3, i32 284, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 590081, metadata !10, metadata !"node", metadata !1, i32 9, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 590081, metadata !10, metadata !"service", metadata !1, i32 9, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 590081, metadata !10, metadata !"hints", metadata !1, i32 9, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 590081, metadata !10, metadata !"res", metadata !1, i32 9, metadata !42, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 590080, metadata !49, metadata !"port", metadata !1, i32 50, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 589835, metadata !10, i32 12, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 590080, metadata !49, metadata !"info", metadata !1, i32 80, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 590080, metadata !49, metadata !"addr", metadata !1, i32 83, metadata !52, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ]
!53 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_in", metadata !54, i32 92, i64 128, i64 32, i64 0, i32 0, null, metadata !55, i32 0, null} ; [ DW_TAG_structure_type ]
!54 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!55 = metadata !{metadata !56, metadata !58, metadata !60, metadata !65}
!56 = metadata !{i32 589837, metadata !53, metadata !"sin_family", metadata !57, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ]
!57 = metadata !{i32 589865, metadata !"in.h", metadata !"/usr/include/netinet", metadata !2} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 589837, metadata !53, metadata !"sin_port", metadata !57, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !59} ; [ DW_TAG_member ]
!59 = metadata !{i32 589846, metadata !57, metadata !"in_port_t", metadata !57, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ]
!60 = metadata !{i32 589837, metadata !53, metadata !"sin_addr", metadata !57, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ]
!61 = metadata !{i32 589843, metadata !1, metadata !"in_addr", metadata !57, i32 143, i64 32, i64 32, i64 0, i32 0, null, metadata !62, i32 0, null} ; [ DW_TAG_structure_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 589837, metadata !61, metadata !"s_addr", metadata !57, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ]
!64 = metadata !{i32 589846, metadata !57, metadata !"in_addr_t", metadata !57, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!65 = metadata !{i32 589837, metadata !53, metadata !"sin_zero", metadata !57, i32 235, i64 64, i64 8, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ]
!66 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 8, i64 0, i32 0, metadata !67, metadata !68, i32 0, null} ; [ DW_TAG_array_type ]
!67 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 589857, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!70 = metadata !{i32 590080, metadata !71, metadata !"__s1_len", metadata !1, i32 55, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 589835, metadata !49, i32 55, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 589846, metadata !73, metadata !"size_t", metadata !73, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ]
!73 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!74 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 590080, metadata !71, metadata !"__s2_len", metadata !1, i32 55, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 590080, metadata !77, metadata !"__s1", metadata !1, i32 55, metadata !78, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 589835, metadata !71, i32 55, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ]
!79 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!80 = metadata !{i32 590080, metadata !77, metadata !"__result", metadata !1, i32 55, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 590080, metadata !82, metadata !"__s1_len", metadata !1, i32 67, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 589835, metadata !49, i32 67, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 590080, metadata !82, metadata !"__s2_len", metadata !1, i32 67, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 590080, metadata !85, metadata !"__s1", metadata !1, i32 67, metadata !78, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 589835, metadata !82, i32 67, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 590080, metadata !85, metadata !"__result", metadata !1, i32 67, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 590080, metadata !88, metadata !"__s1_len", metadata !1, i32 67, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 589835, metadata !49, i32 67, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 590080, metadata !88, metadata !"__s2_len", metadata !1, i32 67, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 590080, metadata !91, metadata !"__s1", metadata !1, i32 67, metadata !78, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 589835, metadata !88, i32 67, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 590080, metadata !91, metadata !"__result", metadata !1, i32 67, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 590080, metadata !94, metadata !"__s1_len", metadata !1, i32 71, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 589835, metadata !49, i32 71, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 590080, metadata !94, metadata !"__s2_len", metadata !1, i32 71, metadata !72, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 590080, metadata !97, metadata !"__s1", metadata !1, i32 71, metadata !78, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 589835, metadata !94, i32 71, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 590080, metadata !97, metadata !"__result", metadata !1, i32 71, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 590080, metadata !100, metadata !"__v", metadata !1, i32 93, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 589835, metadata !49, i32 93, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 590080, metadata !100, metadata !"__x", metadata !1, i32 93, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 590080, metadata !103, metadata !"__v", metadata !1, i32 95, metadata !33, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 589835, metadata !49, i32 95, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 590080, metadata !103, metadata !"__x", metadata !1, i32 95, metadata !33, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 9, i32 0, metadata !10, null}
!106 = metadata !{i32 14, i32 0, metadata !49, null}
!107 = metadata !{i32 16, i32 0, metadata !49, null}
!108 = metadata !{i32 17, i32 0, metadata !49, null}
!109 = metadata !{i32 21, i32 0, metadata !49, null}
!110 = metadata !{i32 22, i32 0, metadata !49, null}
!111 = metadata !{i32 26, i32 0, metadata !49, null}
!112 = metadata !{i32 27, i32 0, metadata !49, null}
!113 = metadata !{i32 28, i32 0, metadata !49, null}
!114 = metadata !{i32 29, i32 0, metadata !49, null}
!115 = metadata !{i32 32, i32 0, metadata !49, null}
!116 = metadata !{i32 33, i32 0, metadata !49, null}
!117 = metadata !{i32 34, i32 0, metadata !49, null}
!118 = metadata !{i32 37, i32 0, metadata !49, null}
!119 = metadata !{i32 38, i32 0, metadata !49, null}
!120 = metadata !{i32 39, i32 0, metadata !49, null}
!121 = metadata !{i32 45, i32 0, metadata !49, null}
!122 = metadata !{i32 0}
!123 = metadata !{i32 50, i32 0, metadata !49, null}
!124 = metadata !{i32 52, i32 0, metadata !49, null}
!125 = metadata !{i32 53, i32 0, metadata !49, null}
!126 = metadata !{i32 284, i32 0, metadata !0, metadata !127}
!127 = metadata !{i32 54, i32 0, metadata !49, null}
!128 = metadata !{i32 286, i32 0, metadata !129, metadata !127}
!129 = metadata !{i32 589835, metadata !0, i32 285, i32 0, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 55, i32 0, metadata !49, null}
!131 = metadata !{i32 55, i32 0, metadata !77, null}
!132 = metadata !{i32 55, i32 0, metadata !71, null}
!133 = metadata !{i32 56, i32 0, metadata !49, null}
!134 = metadata !{i32 57, i32 0, metadata !49, null}
!135 = metadata !{i32 60, i32 0, metadata !49, null}
!136 = metadata !{i32 66, i32 0, metadata !49, null}
!137 = metadata !{i32 67, i32 0, metadata !82, null}
!138 = metadata !{i32 67, i32 0, metadata !88, null}
!139 = metadata !{i32 68, i32 0, metadata !49, null}
!140 = metadata !{i32 71, i32 0, metadata !94, null}
!141 = metadata !{i32 73, i32 0, metadata !49, null}
!142 = metadata !{i32 74, i32 0, metadata !49, null}
!143 = metadata !{i32 80, i32 0, metadata !49, null}
!144 = metadata !{i32 81, i32 0, metadata !49, null}
!145 = metadata !{i32 83, i32 0, metadata !49, null}
!146 = metadata !{i32 84, i32 0, metadata !49, null}
!147 = metadata !{i32 86, i32 0, metadata !49, null}
!148 = metadata !{i32 87, i32 0, metadata !49, null}
!149 = metadata !{i32 88, i32 0, metadata !49, null}
!150 = metadata !{i32 89, i32 0, metadata !49, null}
!151 = metadata !{i32 90, i32 0, metadata !49, null}
!152 = metadata !{i32 92, i32 0, metadata !49, null}
!153 = metadata !{i32 -1062731519}                ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 93, i32 0, metadata !100, null}
!155 = metadata !{i32 16885952}                   
!156 = metadata !{i32 94, i32 0, metadata !49, null}
!157 = metadata !{i32 95, i32 0, metadata !103, null}
!158 = metadata !{i32 97, i32 0, metadata !49, null}
!159 = metadata !{i32 98, i32 0, metadata !49, null}
!160 = metadata !{i32 23, i32 0, metadata !49, null}
