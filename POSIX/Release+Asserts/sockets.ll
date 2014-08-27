; ModuleID = 'sockets.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.end_point_t = type { %struct.sockaddr*, %struct.sym_socket*, i32, i8 }
%struct.event_queue_t = type { i64*, i32 }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [16 x %struct.exe_file_t], [16 x %struct.sym_socket], i32, i32, i32 }
%struct.in_addr = type { i32 }
%struct.network_t = type { %struct.in_addr, i16, [32 x %struct.end_point_t] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }
%struct.sym_socket = type { i32, i32, i32, i32, %struct.end_point_t*, %struct.end_point_t*, %struct.stream_buffer_t*, %struct.stream_buffer_t*, %struct.event_queue_t*, i64, %struct.stream_buffer_t* }
%struct.timespec = type { i64, i64 }

@__exe_env = external unnamed_addr global %struct.exe_sym_env_t
@.str = private unnamed_addr constant [58 x i8] c"TTTTTTTTTTTTTTTTTTTTTTTTTTTTT the number of socket is %d\0A\00", align 8
@.str1 = private unnamed_addr constant [50 x i8] c"STATUSSTATUSSTATUSThe status of the socket is %d\0A\00", align 8
@.str2 = private unnamed_addr constant [79 x i8] c"The socket is created successfully!!!AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 8
@.str3 = private unnamed_addr constant [49 x i8] c"you have entered the _get_endpoint_name function\00", align 8
@.str4 = private unnamed_addr constant [28 x i8] c"the size of sockaddr is %d\0A\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"the size of sockaddr_in is %d\0A\00", align 8
@.str6 = private unnamed_addr constant [31 x i8] c"the length to be copied is %d\0A\00", align 8
@.str7 = private unnamed_addr constant [58 x i8] c"You have successfully went out of the memory copy process\00", align 8
@.str8 = private unnamed_addr constant [22 x i8] c"0 && \22invalid socket\22\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"sockets.c\00", align 1
@__PRETTY_FUNCTION__.5464 = internal unnamed_addr constant [19 x i8] c"_get_endpoint_name\00", align 16
@.str10 = private unnamed_addr constant [44 x i8] c"the addr is null in the getsockname section\00", align 8
@.str11 = private unnamed_addr constant [43 x i8] c"The socker number in the getsocknum is %d\0A\00", align 8
@.str12 = private unnamed_addr constant [20 x i8] c"addr != ((void *)0)\00", align 1
@__PRETTY_FUNCTION__.5631 = internal unnamed_addr constant [16 x i8] c"__find_inet_end\00", align 16
@.str13 = private unnamed_addr constant [20 x i8] c"addr->sin_port != 0\00", align 1
@.str14 = private unnamed_addr constant [72 x i8] c"you have reached the find_inet function, the port to be searched is %d\0A\00", align 8
@__net = external unnamed_addr global %struct.network_t
@.str15 = private unnamed_addr constant [27 x i8] c"domain == 2 || domain == 1\00", align 1
@__PRETTY_FUNCTION__.5497 = internal unnamed_addr constant [21 x i8] c"_validate_net_socket\00", align 16
@.str16 = private unnamed_addr constant [21 x i8] c"unsupported protocol\00", align 1
@.str17 = private unnamed_addr constant [43 x i8] c"unsupported protocol: UDP for AF_INET only\00", align 8
@.str18 = private unnamed_addr constant [24 x i8] c"unsupported socket type\00", align 1
@.str19 = private unnamed_addr constant [47 x i8] c"you are in the read stream socket raw function\00", align 8
@.str20 = private unnamed_addr constant [65 x i8] c"you are in the read stream socket raw function and the if branch\00", align 8
@.str21 = private unnamed_addr constant [43 x i8] c"you are in the read stream socket function\00", align 8
@.str22 = private unnamed_addr constant [36 x i8] c"The socket is shut down for reading\00", align 8
@.str23 = private unnamed_addr constant [27 x i8] c"0 && \22invalid socket type\22\00", align 1
@__PRETTY_FUNCTION__.5996 = internal unnamed_addr constant [13 x i8] c"_read_socket\00"
@.str24 = private unnamed_addr constant [33 x i8] c"recv() flags unsupported for now\00", align 8
@.str25 = private unnamed_addr constant [44 x i8] c"you are going into the read socket function\00", align 8
@__PRETTY_FUNCTION__.5958 = internal unnamed_addr constant [14 x i8] c"_write_socket\00"
@.str26 = private unnamed_addr constant [30 x i8] c"The size of FD_SETSIZE is %d\0A\00", align 1
@.str27 = private unnamed_addr constant [43 x i8] c"The listen process if finished sucessfully\00", align 8
@.str28 = private unnamed_addr constant [61 x i8] c"the port number is not 0, you will try to locate the socket!\00", align 8
@.str29 = private unnamed_addr constant [81 x i8] c"*******************************************Now get the socket for the local end!\00", align 8
@.str30 = private unnamed_addr constant [32 x i8] c"sock->remote_end == ((void *)0)\00", align 8
@__PRETTY_FUNCTION__.5702 = internal unnamed_addr constant [19 x i8] c"_inet_stream_reach\00", align 16
@.str31 = private unnamed_addr constant [21 x i8] c"end_point->allocated\00", align 1
@__PRETTY_FUNCTION__.5471 = internal unnamed_addr constant [20 x i8] c"__release_end_point\00", align 16
@.str32 = private unnamed_addr constant [24 x i8] c"end_point->refcount > 0\00", align 1
@.str33 = private unnamed_addr constant [111 x i8] c"You are in the libc_accept process ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\00", align 8
@.str34 = private unnamed_addr constant [126 x i8] c"the socket number of the server is %d***************************************************************************************\0A\00", align 8
@.str35 = private unnamed_addr constant [27 x i8] c"res == sizeof(sym_socket*)\00", align 1
@__PRETTY_FUNCTION__.5874 = internal unnamed_addr constant [14 x i8] c"__libc_accept\00"
@.str36 = private unnamed_addr constant [27 x i8] c"remote->status == (1 << 2)\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"Connected socket created\0A\00", align 1
@.str38 = private unnamed_addr constant [43 x i8] c"new the socket number of the server is %d\0A\00", align 8
@.str39 = private unnamed_addr constant [43 x i8] c"The bind process is finished successfully!\00", align 8
@.str40 = private unnamed_addr constant [75 x i8] c"The socket connection process is not right................................\00", align 8
@__PRETTY_FUNCTION__.5753 = internal unnamed_addr constant [16 x i8] c"_stream_connect\00", align 16
@.str41 = private unnamed_addr constant [99 x i8] c"**********************This is the strong reference of Fucking C O N N E C T***********************\00", align 8
@.str42 = private unnamed_addr constant [71 x i8] c"The local socket numebr is %d, the remote address to be connected is \0A\00", align 8
@.str43 = private unnamed_addr constant [70 x i8] c"Attempting to create a socket: domain = %d, type = %d, protocol = %d\0A\00", align 8
@.str44 = private unnamed_addr constant [26 x i8] c"unsupported socket domain\00", align 1
@.str46 = private unnamed_addr constant [97 x i8] c"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!the socker is null and everything is all right!\00", align 8
@.str47 = private unnamed_addr constant [40 x i8] c"The number of the socket created is %d\0A\00", align 8

define %struct.sym_socket* @get_sym_socket(i32 %fd) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !162), !dbg !307
  %0 = add nsw i32 %fd, -16, !dbg !308
  %1 = sext i32 %0 to i64, !dbg !308
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, !dbg !308
  ret %struct.sym_socket* %2, !dbg !308
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare i32 @printf(i8* nocapture, ...) nounwind

declare i32* @__errno_location() nounwind readnone

define i32 @__check_is_socket(i32 %sockfd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165), !dbg !310
  %0 = add nsw i32 %sockfd, -16, !dbg !311
  %1 = sext i32 %0 to i64, !dbg !311
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, i32 0, !dbg !311
  %3 = load i32* %2, align 8, !dbg !311
  %4 = and i32 %3, 1
  %toBool = icmp eq i32 %4, 0, !dbg !311
  br i1 %toBool, label %bb1, label %bb, !dbg !311

bb:                                               ; preds = %entry
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !313
  br label %bb2, !dbg !314

bb1:                                              ; preds = %entry
  %6 = tail call i32* @__errno_location() nounwind readnone, !dbg !315
  store i32 88, i32* %6, align 4, !dbg !315
  br label %bb2, !dbg !316

bb2:                                              ; preds = %bb1, %bb
  %.0 = phi i32 [ 1, %bb ], [ -1, %bb1 ]
  ret i32 %.0, !dbg !314
}

declare i32 @puts(i8* nocapture) nounwind

define internal fastcc void @_get_endpoint_name(%struct.sym_socket* nocapture %sock, %struct.end_point_t* nocapture %end_point, %struct.sockaddr* nocapture %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !166), !dbg !317
  tail call void @llvm.dbg.value(metadata !{%struct.end_point_t* %end_point}, i64 0, metadata !167), !dbg !317
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !168), !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !169), !dbg !318
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !319
  %1 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0), i64 16) nounwind, !dbg !320
  %2 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 16) nounwind, !dbg !321
  tail call void @llvm.dbg.value(metadata !322, i64 0, metadata !170), !dbg !323
  %3 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 2, !dbg !324
  %4 = load i32* %3, align 8, !dbg !324
  %5 = icmp eq i32 %4, 2, !dbg !324
  br i1 %5, label %bb2, label %bb4, !dbg !324

bb2:                                              ; preds = %entry
  %6 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i32 16) nounwind, !dbg !325
  %7 = getelementptr inbounds %struct.end_point_t* %end_point, i64 0, i32 0, !dbg !326
  %8 = load %struct.sockaddr** %7, align 8, !dbg !326
  %9 = bitcast %struct.sockaddr* %addr to i8*, !dbg !326
  %10 = bitcast %struct.sockaddr* %8 to i8*, !dbg !326
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 16, i32 2, i1 false), !dbg !326
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !327
  %12 = icmp eq i32* %addrlen, null, !dbg !328
  br i1 %12, label %return, label %bb3, !dbg !328

bb3:                                              ; preds = %bb2
  store i32 16, i32* %addrlen, align 4, !dbg !329
  br label %return, !dbg !329

bb4:                                              ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([19 x i8]* @__PRETTY_FUNCTION__.5464, i64 0, i64 0)) noreturn nounwind, !dbg !330
  unreachable, !dbg !330

return:                                           ; preds = %bb2, %bb3
  ret void, !dbg !331
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define i32 @getsockname(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !172), !dbg !332
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !173), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !174), !dbg !332
  %0 = icmp eq %struct.sockaddr* %addr, null, !dbg !333
  br i1 %0, label %bb, label %bb1, !dbg !333

bb:                                               ; preds = %entry
  %1 = tail call noalias i8* @malloc(i64 16) nounwind, !dbg !334
  %2 = bitcast i8* %1 to %struct.sockaddr*, !dbg !334
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %2}, i64 0, metadata !173), !dbg !334
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !335
  br label %bb1, !dbg !335

bb1:                                              ; preds = %bb, %entry
  %addr_addr.0 = phi %struct.sockaddr* [ %2, %bb ], [ %addr, %entry ]
  %4 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0), i32 %sockfd) nounwind, !dbg !336
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !337
  %5 = add nsw i32 %sockfd, -16, !dbg !339
  %6 = sext i32 %5 to i64, !dbg !339
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %6, i32 0, !dbg !339
  %8 = load i32* %7, align 8, !dbg !339
  %9 = and i32 %8, 1
  %toBool.i = icmp eq i32 %9, 0, !dbg !339
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !339

bb.i:                                             ; preds = %bb1
  %10 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !340
  br label %__check_is_socket.exit, !dbg !341

bb1.i:                                            ; preds = %bb1
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !342
  store i32 88, i32* %11, align 4, !dbg !342
  br label %__check_is_socket.exit, !dbg !343

__check_is_socket.exit:                           ; preds = %bb.i, %bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !344
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %16}, i64 0, metadata !175), !dbg !345
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %6, i32 4, !dbg !346
  %13 = load %struct.end_point_t** %12, align 8, !dbg !346
  %14 = icmp eq %struct.end_point_t* %13, null, !dbg !346
  br i1 %14, label %bb2, label %bb3, !dbg !346

bb2:                                              ; preds = %__check_is_socket.exit
  %15 = tail call i32* @__errno_location() nounwind readnone, !dbg !347
  store i32 22, i32* %15, align 4, !dbg !347
  br label %bb4, !dbg !348

bb3:                                              ; preds = %__check_is_socket.exit
  %16 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %6, !dbg !349
  tail call fastcc void @_get_endpoint_name(%struct.sym_socket* %16, %struct.end_point_t* %13, %struct.sockaddr* %addr_addr.0, i32* %addrlen) nounwind, !dbg !350
  br label %bb4, !dbg !351

bb4:                                              ; preds = %bb3, %bb2
  %.0 = phi i32 [ -1, %bb2 ], [ 0, %bb3 ]
  ret i32 %.0, !dbg !348
}

declare noalias i8* @malloc(i64) nounwind

declare void @klee_warning(i8*)

define i64 @__read_stream_socket_raw(%struct.sym_socket* nocapture %sock, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !186), !dbg !352
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !187), !dbg !352
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !188), !dbg !352
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @.str19, i64 0, i64 0)) nounwind, !dbg !353
  %1 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 7, !dbg !354
  %2 = load %struct.stream_buffer_t** %1, align 8, !dbg !354
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %2}, i64 0, metadata !159), !dbg !355
  %3 = getelementptr inbounds %struct.stream_buffer_t* %2, i64 0, i32 4, !dbg !356
  %4 = load i64* %3, align 8, !dbg !356
  %5 = icmp eq i64 %4, 0, !dbg !356
  br i1 %5, label %bb, label %bb2, !dbg !354

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %2}, i64 0, metadata !161), !dbg !358
  %6 = getelementptr inbounds %struct.stream_buffer_t* %2, i64 0, i32 9, !dbg !359
  %7 = load i16* %6, align 4, !dbg !359
  %8 = zext i16 %7 to i32, !dbg !359
  %9 = and i32 %8, 2, !dbg !359
  %10 = icmp eq i32 %9, 0, !dbg !354
  br i1 %10, label %bb1, label %bb2, !dbg !354

bb1:                                              ; preds = %bb
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !361
  store i32 11, i32* %11, align 4, !dbg !361
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0)) nounwind, !dbg !362
  br label %bb7, !dbg !363

bb2:                                              ; preds = %entry, %bb
  %13 = tail call i64 @_stream_read(%struct.stream_buffer_t* %2, i8* %buf, i64 %count) nounwind, !dbg !364
  tail call void @llvm.dbg.value(metadata !{i64 %13}, i64 0, metadata !189), !dbg !364
  %14 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 0, !dbg !365
  %15 = load i32* %14, align 8, !dbg !365
  %16 = icmp eq i32 %15, 16, !dbg !365
  br i1 %16, label %bb3, label %bb4, !dbg !365

bb3:                                              ; preds = %bb2
  %17 = bitcast %struct.sym_socket* %sock to i8*, !dbg !366
  tail call void @free(i8* %17) nounwind, !dbg !366
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !367
  store i32 22, i32* %18, align 4, !dbg !367
  br label %bb7, !dbg !368

bb4:                                              ; preds = %bb2
  %19 = icmp eq i64 %13, -1, !dbg !369
  br i1 %19, label %bb5, label %bb7, !dbg !369

bb5:                                              ; preds = %bb4
  %20 = tail call i32* @__errno_location() nounwind readnone, !dbg !370
  store i32 22, i32* %20, align 4, !dbg !370
  br label %bb7, !dbg !370

bb7:                                              ; preds = %bb4, %bb5, %bb3, %bb1
  %.0 = phi i64 [ -1, %bb1 ], [ -1, %bb3 ], [ -1, %bb5 ], [ %13, %bb4 ]
  ret i64 %.0, !dbg !363
}

declare i64 @_stream_read(%struct.stream_buffer_t*, i8*, i64)

declare void @free(i8* nocapture) nounwind

define i64 @__read_stream_socket(%struct.sym_socket* nocapture %sock, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !191), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !192), !dbg !371
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !193), !dbg !371
  %0 = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0)) nounwind, !dbg !372
  %1 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 0, !dbg !374
  %2 = load i32* %1, align 8, !dbg !374
  %3 = icmp eq i32 %2, 8, !dbg !374
  br i1 %3, label %bb1, label %bb, !dbg !374

bb:                                               ; preds = %entry
  %4 = tail call i32* @__errno_location() nounwind readnone, !dbg !375
  store i32 107, i32* %4, align 4, !dbg !375
  br label %bb6, !dbg !376

bb1:                                              ; preds = %entry
  %5 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 7, !dbg !377
  %6 = load %struct.stream_buffer_t** %5, align 8, !dbg !377
  %7 = icmp eq %struct.stream_buffer_t* %6, null, !dbg !377
  br i1 %7, label %bb2, label %bb3, !dbg !377

bb2:                                              ; preds = %bb1
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0)) nounwind, !dbg !378
  br label %bb6, !dbg !379

bb3:                                              ; preds = %bb1
  %9 = icmp eq i64 %count, 0, !dbg !380
  br i1 %9, label %bb6, label %bb5, !dbg !380

bb5:                                              ; preds = %bb3
  %10 = tail call i64 @__read_stream_socket_raw(%struct.sym_socket* %sock, i8* %buf, i64 %count) nounwind, !dbg !381
  br label %bb6, !dbg !381

bb6:                                              ; preds = %bb3, %bb5, %bb2, %bb
  %.0 = phi i64 [ -1, %bb ], [ 0, %bb2 ], [ %10, %bb5 ], [ 0, %bb3 ]
  ret i64 %.0, !dbg !376
}

define i64 @_read_socket(%struct.sym_socket* nocapture %sock, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !194), !dbg !382
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !195), !dbg !382
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !196), !dbg !382
  %0 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 1, !dbg !383
  %1 = load i32* %0, align 4, !dbg !383
  %2 = icmp eq i32 %1, 1, !dbg !383
  br i1 %2, label %bb, label %bb1, !dbg !383

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !191) nounwind, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !192) nounwind, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !193) nounwind, !dbg !385
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0)) nounwind, !dbg !387
  %4 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 0, !dbg !388
  %5 = load i32* %4, align 8, !dbg !388
  %6 = icmp eq i32 %5, 8, !dbg !388
  br i1 %6, label %bb1.i, label %bb.i, !dbg !388

bb.i:                                             ; preds = %bb
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !389
  store i32 107, i32* %7, align 4, !dbg !389
  br label %__read_stream_socket.exit, !dbg !390

bb1.i:                                            ; preds = %bb
  %8 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 7, !dbg !391
  %9 = load %struct.stream_buffer_t** %8, align 8, !dbg !391
  %10 = icmp eq %struct.stream_buffer_t* %9, null, !dbg !391
  br i1 %10, label %bb2.i, label %bb3.i, !dbg !391

bb2.i:                                            ; preds = %bb1.i
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0)) nounwind, !dbg !392
  br label %__read_stream_socket.exit, !dbg !393

bb3.i:                                            ; preds = %bb1.i
  %12 = icmp eq i64 %count, 0, !dbg !394
  br i1 %12, label %__read_stream_socket.exit, label %bb5.i, !dbg !394

bb5.i:                                            ; preds = %bb3.i
  %13 = tail call i64 @__read_stream_socket_raw(%struct.sym_socket* %sock, i8* %buf, i64 %count) nounwind, !dbg !395
  br label %__read_stream_socket.exit, !dbg !395

__read_stream_socket.exit:                        ; preds = %bb.i, %bb2.i, %bb3.i, %bb5.i
  %.0.i = phi i64 [ -1, %bb.i ], [ 0, %bb2.i ], [ %13, %bb5.i ], [ 0, %bb3.i ]
  ret i64 %.0.i, !dbg !396

bb1:                                              ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 704, i8* getelementptr inbounds ([13 x i8]* @__PRETTY_FUNCTION__.5996, i64 0, i64 0)) noreturn nounwind, !dbg !396
  unreachable, !dbg !396
}

define i64 @__libc_recv(i32 %sockfd, i8* %buffer, i64 %len, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !197), !dbg !397
  tail call void @llvm.dbg.value(metadata !{i8* %buffer}, i64 0, metadata !198), !dbg !397
  tail call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !199), !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !200), !dbg !397
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !398
  %0 = add nsw i32 %sockfd, -16, !dbg !400
  %1 = sext i32 %0 to i64, !dbg !400
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, i32 0, !dbg !400
  %3 = load i32* %2, align 8, !dbg !400
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !400
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !400

bb.i:                                             ; preds = %entry
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !401
  br label %__check_is_socket.exit, !dbg !402

bb1.i:                                            ; preds = %entry
  %6 = tail call i32* @__errno_location() nounwind readnone, !dbg !403
  store i32 88, i32* %6, align 4, !dbg !403
  br label %__check_is_socket.exit, !dbg !404

__check_is_socket.exit:                           ; preds = %bb.i, %bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !405
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, !dbg !407
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %7}, i64 0, metadata !201), !dbg !406
  %8 = icmp eq i32 %flags, 0, !dbg !408
  br i1 %8, label %bb1, label %bb, !dbg !408

bb:                                               ; preds = %__check_is_socket.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0)) nounwind, !dbg !409
  br label %bb1, !dbg !409

bb1:                                              ; preds = %__check_is_socket.exit, %bb
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @.str25, i64 0, i64 0)) nounwind, !dbg !410
  %10 = tail call i64 @_read_socket(%struct.sym_socket* %7, i8* %buffer, i64 %len) nounwind, !dbg !411
  ret i64 %10, !dbg !411
}

define i64 @__write_stream_socket(%struct.sym_socket* nocapture %sock, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !203), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !204), !dbg !412
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !205), !dbg !412
  %0 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 0, !dbg !413
  %1 = load i32* %0, align 8, !dbg !413
  %2 = icmp eq i32 %1, 8, !dbg !413
  br i1 %2, label %bb1, label %bb, !dbg !413

bb:                                               ; preds = %entry
  %3 = tail call i32* @__errno_location() nounwind readnone, !dbg !414
  store i32 107, i32* %3, align 4, !dbg !414
  br label %bb11, !dbg !415

bb1:                                              ; preds = %entry
  %4 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 6, !dbg !416
  %5 = load %struct.stream_buffer_t** %4, align 8, !dbg !416
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %5}, i64 0, metadata !206), !dbg !416
  %6 = icmp eq %struct.stream_buffer_t* %5, null, !dbg !417
  br i1 %6, label %bb3, label %bb2, !dbg !417

bb2:                                              ; preds = %bb1
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %5}, i64 0, metadata !161), !dbg !418
  %7 = getelementptr inbounds %struct.stream_buffer_t* %5, i64 0, i32 9, !dbg !419
  %8 = load i16* %7, align 4, !dbg !419
  %9 = zext i16 %8 to i32, !dbg !419
  %10 = and i32 %9, 2, !dbg !419
  %11 = icmp eq i32 %10, 0, !dbg !417
  br i1 %11, label %bb4, label %bb3, !dbg !417

bb3:                                              ; preds = %bb2, %bb1
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !420
  store i32 32, i32* %12, align 4, !dbg !420
  br label %bb11, !dbg !421

bb4:                                              ; preds = %bb2
  %13 = icmp eq i64 %count, 0, !dbg !422
  br i1 %13, label %bb11, label %bb6, !dbg !422

bb6:                                              ; preds = %bb4
  %14 = tail call i64 @_stream_write(%struct.stream_buffer_t* %5, i8* %buf, i64 %count) nounwind, !dbg !423
  tail call void @llvm.dbg.value(metadata !{i64 %14}, i64 0, metadata !208), !dbg !423
  %15 = load i32* %0, align 8, !dbg !424
  %16 = icmp eq i32 %15, 16, !dbg !424
  br i1 %16, label %bb7, label %bb8, !dbg !424

bb7:                                              ; preds = %bb6
  %17 = bitcast %struct.sym_socket* %sock to i8*, !dbg !425
  tail call void @free(i8* %17) nounwind, !dbg !425
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !426
  store i32 22, i32* %18, align 4, !dbg !426
  br label %bb11, !dbg !427

bb8:                                              ; preds = %bb6
  %19 = icmp eq i64 %14, -1, !dbg !428
  br i1 %19, label %bb9, label %bb11, !dbg !428

bb9:                                              ; preds = %bb8
  %20 = tail call i32* @__errno_location() nounwind readnone, !dbg !429
  store i32 22, i32* %20, align 4, !dbg !429
  br label %bb11, !dbg !429

bb11:                                             ; preds = %bb8, %bb9, %bb4, %bb7, %bb3, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb7 ], [ 0, %bb4 ], [ -1, %bb9 ], [ %14, %bb8 ]
  ret i64 %.0, !dbg !415
}

declare i64 @_stream_write(%struct.stream_buffer_t*, i8*, i64)

define i64 @_write_socket(%struct.sym_socket* nocapture %sock, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %sock}, i64 0, metadata !209), !dbg !430
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !210), !dbg !430
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !211), !dbg !430
  %0 = getelementptr inbounds %struct.sym_socket* %sock, i64 0, i32 1, !dbg !431
  %1 = load i32* %0, align 4, !dbg !431
  %2 = icmp eq i32 %1, 1, !dbg !431
  br i1 %2, label %bb, label %bb1, !dbg !431

bb:                                               ; preds = %entry
  %3 = tail call i64 @__write_stream_socket(%struct.sym_socket* %sock, i8* %buf, i64 %count) nounwind, !dbg !433
  ret i64 %3, !dbg !434

bb1:                                              ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 647, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5958, i64 0, i64 0)) noreturn nounwind, !dbg !434
  unreachable, !dbg !434
}

define i32 @listen(i32 %sockfd, i32 %backlog) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !212), !dbg !435
  tail call void @llvm.dbg.value(metadata !{i32 %backlog}, i64 0, metadata !213), !dbg !435
  tail call void @llvm.dbg.value(metadata !436, i64 0, metadata !214), !dbg !437
  %0 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([30 x i8]* @.str26, i64 0, i64 0), i32 1024) nounwind, !dbg !438
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !439
  %1 = add nsw i32 %sockfd, -16, !dbg !441
  %2 = sext i32 %1 to i64, !dbg !441
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %2, i32 0, !dbg !441
  %4 = load i32* %3, align 8, !dbg !441
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !441
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !441

bb.i:                                             ; preds = %entry
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !442
  br label %__check_is_socket.exit, !dbg !443

bb1.i:                                            ; preds = %entry
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !444
  store i32 88, i32* %7, align 4, !dbg !444
  br label %__check_is_socket.exit, !dbg !445

__check_is_socket.exit:                           ; preds = %bb.i, %bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !446
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !216), !dbg !447
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %2, i32 1, !dbg !448
  %9 = load i32* %8, align 4, !dbg !448
  %10 = icmp eq i32 %9, 1, !dbg !448
  br i1 %10, label %bb1, label %bb, !dbg !448

bb:                                               ; preds = %__check_is_socket.exit
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !449
  store i32 95, i32* %11, align 4, !dbg !449
  br label %bb7, !dbg !450

bb1:                                              ; preds = %__check_is_socket.exit
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %2, i32 4, !dbg !451
  %13 = load %struct.end_point_t** %12, align 8, !dbg !451
  %14 = icmp eq %struct.end_point_t* %13, null, !dbg !451
  br i1 %14, label %bb3, label %bb2, !dbg !451

bb2:                                              ; preds = %bb1
  %15 = load i32* %3, align 8, !dbg !451
  %16 = add i32 %15, -1, !dbg !451
  %17 = icmp ugt i32 %16, 1, !dbg !451
  br i1 %17, label %bb3, label %bb4, !dbg !451

bb3:                                              ; preds = %bb2, %bb1
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !452
  store i32 95, i32* %18, align 4, !dbg !452
  br label %bb7, !dbg !453

bb4:                                              ; preds = %bb2
  %19 = icmp eq i32 %15, 2, !dbg !454
  br i1 %19, label %bb6, label %bb5, !dbg !454

bb5:                                              ; preds = %bb4
  store i32 2, i32* %3, align 8, !dbg !455
  %20 = sext i32 %backlog to i64, !dbg !456
  %21 = shl nsw i64 %20, 3, !dbg !456
  %22 = tail call i32 (...)* @_stream_create(i64 %21, i32 1) nounwind, !dbg !456
  %23 = sext i32 %22 to i64, !dbg !456
  %24 = inttoptr i64 %23 to %struct.stream_buffer_t*, !dbg !456
  %25 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %2, i32 10, !dbg !456
  store %struct.stream_buffer_t* %24, %struct.stream_buffer_t** %25, align 8, !dbg !456
  br label %bb6, !dbg !456

bb6:                                              ; preds = %bb4, %bb5
  %26 = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @.str27, i64 0, i64 0)) nounwind, !dbg !457
  br label %bb7, !dbg !458

bb7:                                              ; preds = %bb6, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ 0, %bb6 ]
  ret i32 %.0, !dbg !450
}

declare i32 @_stream_create(...)

define zeroext i16 @__get_unused_port() nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !459, i64 0, metadata !219), !dbg !460
  br label %bb2

bb2:                                              ; preds = %bb16.backedge.thread, %entry, %bb16.backedge
  %i.035 = phi i32 [ 0, %entry ], [ %11, %bb16.backedge ], [ 0, %bb16.backedge.thread ]
  %0 = zext i32 %i.035 to i64, !dbg !461
  %1 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %0, i32 3, !dbg !461
  %2 = load i8* %1, align 4, !dbg !461
  %3 = icmp eq i8 %2, 0, !dbg !461
  br i1 %3, label %bb16.backedge, label %bb3, !dbg !461

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %0, i32 0, !dbg !462
  %5 = load %struct.sockaddr** %4, align 8, !dbg !462
  %6 = load i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !463
  %7 = getelementptr inbounds %struct.sockaddr* %5, i64 0, i32 1
  %8 = bitcast [14 x i8]* %7 to i16*, !dbg !463
  %9 = load i16* %8, align 2, !dbg !463
  %10 = icmp eq i16 %6, %9, !dbg !463
  br i1 %10, label %bb16.backedge.thread, label %bb16.backedge, !dbg !463

bb16.backedge.thread:                             ; preds = %bb3
  %asmtmp9 = tail call i16 @llvm.bswap.i16(i16 %6)
  %phitmp33 = add i16 %asmtmp9, 1
  %asmtmp13 = tail call i16 @llvm.bswap.i16(i16 %phitmp33)
  store i16 %asmtmp13, i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !464
  br label %bb2

bb16.backedge:                                    ; preds = %bb2, %bb3
  %11 = add i32 %i.035, 1, !dbg !465
  %12 = icmp ult i32 %11, 32, !dbg !465
  br i1 %12, label %bb2, label %bb18, !dbg !465

bb18:                                             ; preds = %bb16.backedge
  %13 = load i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !466
  tail call void @llvm.dbg.value(metadata !{i16 %13}, i64 0, metadata !220), !dbg !466
  tail call void @llvm.dbg.value(metadata !{i16 %13}, i64 0, metadata !234), !dbg !467
  %asmtmp25 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void @llvm.dbg.value(metadata !{i16 %asmtmp25}, i64 0, metadata !232), !dbg !467
  %phitmp = add i16 %asmtmp25, 1
  tail call void @llvm.dbg.value(metadata !{i16 %phitmp}, i64 0, metadata !231), !dbg !467
  tail call void @llvm.dbg.value(metadata !{i16 %asmtmp29}, i64 0, metadata !229), !dbg !468
  %asmtmp29 = tail call i16 @llvm.bswap.i16(i16 %phitmp)
  store i16 %asmtmp29, i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !468
  ret i16 %13, !dbg !469
}

declare i16 @llvm.bswap.i16(i16) nounwind readnone

define internal fastcc %struct.end_point_t* @__get_inet_end(%struct.sockaddr_in* %addr) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr_in* %addr}, i64 0, metadata !235), !dbg !470
  %0 = getelementptr inbounds %struct.sockaddr_in* %addr, i64 0, i32 2, i32 0, !dbg !471
  %1 = load i32* %0, align 4, !dbg !471
  switch i32 %1, label %bb5 [
    i32 0, label %bb7
    i32 16777343, label %bb7
  ]

bb5:                                              ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 0, i32 0), align 8, !dbg !471
  %3 = icmp eq i32 %1, %2, !dbg !471
  br i1 %3, label %bb7, label %bb19, !dbg !471

bb7:                                              ; preds = %entry, %entry, %bb5
  %4 = getelementptr inbounds %struct.sockaddr_in* %addr, i64 0, i32 1, !dbg !472
  %5 = load i16* %4, align 2, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i16 %5}, i64 0, metadata !236), !dbg !472
  %6 = icmp eq i16 %5, 0, !dbg !473
  br i1 %6, label %bb2.i, label %bb9, !dbg !473

bb2.i:                                            ; preds = %bb16.backedge.i, %bb16.backedge.thread.i, %bb7
  %i.035.i = phi i32 [ 0, %bb7 ], [ %18, %bb16.backedge.i ], [ 0, %bb16.backedge.thread.i ]
  %7 = zext i32 %i.035.i to i64, !dbg !474
  %8 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %7, i32 3, !dbg !474
  %9 = load i8* %8, align 4, !dbg !474
  %10 = icmp eq i8 %9, 0, !dbg !474
  br i1 %10, label %bb16.backedge.i, label %bb3.i, !dbg !474

bb3.i:                                            ; preds = %bb2.i
  %11 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %7, i32 0, !dbg !476
  %12 = load %struct.sockaddr** %11, align 8, !dbg !476
  %13 = load i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !477
  %14 = getelementptr inbounds %struct.sockaddr* %12, i64 0, i32 1
  %15 = bitcast [14 x i8]* %14 to i16*, !dbg !477
  %16 = load i16* %15, align 2, !dbg !477
  %17 = icmp eq i16 %13, %16, !dbg !477
  br i1 %17, label %bb16.backedge.thread.i, label %bb16.backedge.i, !dbg !477

bb16.backedge.thread.i:                           ; preds = %bb3.i
  %asmtmp9.i = tail call i16 @llvm.bswap.i16(i16 %13) nounwind
  %phitmp33.i = add i16 %asmtmp9.i, 1
  %asmtmp13.i = tail call i16 @llvm.bswap.i16(i16 %phitmp33.i) nounwind
  store i16 %asmtmp13.i, i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !478
  br label %bb2.i

bb16.backedge.i:                                  ; preds = %bb3.i, %bb2.i
  %18 = add i32 %i.035.i, 1, !dbg !479
  %19 = icmp ult i32 %18, 32, !dbg !479
  br i1 %19, label %bb2.i, label %__get_unused_port.exit, !dbg !479

__get_unused_port.exit:                           ; preds = %bb16.backedge.i
  %20 = load i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !480
  tail call void @llvm.dbg.value(metadata !{i16 %20}, i64 0, metadata !220) nounwind, !dbg !480
  tail call void @llvm.dbg.value(metadata !{i16 %20}, i64 0, metadata !234) nounwind, !dbg !481
  %asmtmp25.i = tail call i16 @llvm.bswap.i16(i16 %20) nounwind
  tail call void @llvm.dbg.value(metadata !{i16 %asmtmp25.i}, i64 0, metadata !232) nounwind, !dbg !481
  %phitmp.i = add i16 %asmtmp25.i, 1
  tail call void @llvm.dbg.value(metadata !{i16 %phitmp.i}, i64 0, metadata !231) nounwind, !dbg !481
  tail call void @llvm.dbg.value(metadata !482, i64 0, metadata !229) nounwind, !dbg !483
  %asmtmp29.i = tail call i16 @llvm.bswap.i16(i16 %phitmp.i) nounwind
  store i16 %asmtmp29.i, i16* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 1), align 4, !dbg !483
  tail call void @llvm.dbg.value(metadata !{i16 %20}, i64 0, metadata !236), !dbg !475
  br label %bb11, !dbg !475

bb9:                                              ; preds = %bb7
  %21 = tail call i32 @puts(i8* getelementptr inbounds ([61 x i8]* @.str28, i64 0, i64 0)) nounwind, !dbg !484
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr_in* %addr}, i64 0, metadata !177) nounwind, !dbg !485
  %22 = icmp eq %struct.sockaddr_in* %addr, null, !dbg !487
  br i1 %22, label %bb.i, label %bb1.i, !dbg !487

bb.i:                                             ; preds = %bb9
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 211, i8* getelementptr inbounds ([16 x i8]* @__PRETTY_FUNCTION__.5631, i64 0, i64 0)) noreturn nounwind, !dbg !487
  unreachable, !dbg !487

bb1.i:                                            ; preds = %bb9
  %23 = load i16* %4, align 2, !dbg !488
  %24 = icmp eq i16 %23, 0, !dbg !488
  br i1 %24, label %bb2.i22, label %bb3.i23, !dbg !488

bb2.i22:                                          ; preds = %bb1.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 212, i8* getelementptr inbounds ([16 x i8]* @__PRETTY_FUNCTION__.5631, i64 0, i64 0)) noreturn nounwind, !dbg !488
  unreachable, !dbg !488

bb3.i23:                                          ; preds = %bb1.i
  %25 = zext i16 %23 to i32, !dbg !489
  %26 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([72 x i8]* @.str14, i64 0, i64 0), i32 %25) nounwind, !dbg !489
  tail call void @llvm.dbg.value(metadata !490, i64 0, metadata !178) nounwind, !dbg !491
  br label %bb9.i, !dbg !491

bb5.i:                                            ; preds = %bb9.i
  %scevgep14.i = getelementptr %struct.network_t* @__net, i64 0, i32 2, i64 %35, i32 3
  %27 = load i8* %scevgep14.i, align 4, !dbg !492
  %28 = icmp eq i8 %27, 0, !dbg !492
  br i1 %28, label %bb8.i, label %bb6.i, !dbg !492

bb6.i:                                            ; preds = %bb5.i
  %29 = load %struct.sockaddr** %scevgep13.i, align 8, !dbg !493
  %30 = getelementptr inbounds %struct.sockaddr* %29, i64 0, i32 1
  %31 = bitcast [14 x i8]* %30 to i16*, !dbg !494
  %32 = load i16* %31, align 2, !dbg !494
  %33 = load i16* %4, align 2, !dbg !494
  %34 = icmp eq i16 %32, %33, !dbg !494
  br i1 %34, label %__find_inet_end.exit, label %bb8.i, !dbg !494

bb8.i:                                            ; preds = %bb6.i, %bb5.i
  %indvar.next.i = add i64 %35, 1
  br label %bb9.i, !dbg !491

bb9.i:                                            ; preds = %bb8.i, %bb3.i23
  %35 = phi i64 [ %indvar.next.i, %bb8.i ], [ 0, %bb3.i23 ]
  %scevgep13.i = getelementptr %struct.network_t* @__net, i64 0, i32 2, i64 %35, i32 0
  %i.0.i = trunc i64 %35 to i32
  %36 = icmp ult i32 %i.0.i, 32, !dbg !491
  br i1 %36, label %bb5.i, label %bb11, !dbg !491

__find_inet_end.exit:                             ; preds = %bb6.i
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !180) nounwind, !dbg !493
  %37 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %35, !dbg !495
  tail call void @llvm.dbg.value(metadata !{%struct.end_point_t* %37}, i64 0, metadata !243), !dbg !486
  %38 = icmp eq %struct.end_point_t* %37, null, !dbg !496
  br i1 %38, label %bb11, label %bb10, !dbg !496

bb10:                                             ; preds = %__find_inet_end.exit
  %39 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %35, i32 2, !dbg !497
  %40 = load i32* %39, align 8, !dbg !497
  %41 = add i32 %40, 1, !dbg !497
  store i32 %41, i32* %39, align 8, !dbg !497
  br label %bb19, !dbg !498

bb11:                                             ; preds = %bb9.i, %__find_inet_end.exit, %__get_unused_port.exit
  %port.0 = phi i16 [ %20, %__get_unused_port.exit ], [ %5, %__find_inet_end.exit ], [ %5, %bb9.i ]
  tail call void @llvm.dbg.value(metadata !499, i64 0, metadata !238), !dbg !500
  tail call void @llvm.dbg.value(metadata !490, i64 0, metadata !245), !dbg !500
  br label %bb15, !dbg !500

bb12:                                             ; preds = %bb15
  %42 = load i8* %scevgep30, align 4, !dbg !500
  %43 = icmp eq i8 %42, 0, !dbg !500
  br i1 %43, label %bb16, label %bb14, !dbg !500

bb14:                                             ; preds = %bb12
  %indvar.next = add i64 %indvar, 1
  br label %bb15, !dbg !500

bb15:                                             ; preds = %bb14, %bb11
  %indvar = phi i64 [ %indvar.next, %bb14 ], [ 0, %bb11 ]
  %__i.0 = trunc i64 %indvar to i32
  %scevgep30 = getelementptr %struct.network_t* @__net, i64 0, i32 2, i64 %indvar, i32 3
  %44 = icmp ult i32 %__i.0, 32, !dbg !500
  br i1 %44, label %bb12, label %bb19, !dbg !500

bb16:                                             ; preds = %bb12
  store i8 1, i8* %scevgep30, align 4, !dbg !500
  tail call void @llvm.dbg.value(metadata !501, i64 0, metadata !238), !dbg !500
  %45 = icmp eq i32 %__i.0, 32, !dbg !502
  br i1 %45, label %bb19, label %bb18, !dbg !502

bb18:                                             ; preds = %bb16
  %46 = tail call noalias i8* @malloc(i64 16) nounwind, !dbg !503
  %47 = bitcast i8* %46 to %struct.sockaddr*, !dbg !503
  %48 = and i64 %indvar, 4294967295, !dbg !503
  %49 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %48, i32 0, !dbg !503
  store %struct.sockaddr* %47, %struct.sockaddr** %49, align 8, !dbg !503
  %50 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %48, i32 2, !dbg !504
  store i32 1, i32* %50, align 8, !dbg !504
  %51 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %48, i32 1, !dbg !505
  store %struct.sym_socket* null, %struct.sym_socket** %51, align 8, !dbg !505
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !239), !dbg !506
  %52 = bitcast i8* %46 to i16*, !dbg !507
  store i16 2, i16* %52, align 4, !dbg !507
  %53 = load i32* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 0, i32 0), align 8, !dbg !508
  %54 = getelementptr inbounds i8* %46, i64 4
  %55 = bitcast i8* %54 to i32*, !dbg !508
  store i32 %53, i32* %55, align 4, !dbg !508
  %56 = getelementptr inbounds i8* %46, i64 2
  %57 = bitcast i8* %56 to i16*, !dbg !509
  store i16 %port.0, i16* %57, align 2, !dbg !509
  %58 = getelementptr inbounds %struct.network_t* @__net, i64 0, i32 2, i64 %48, !dbg !510
  br label %bb19, !dbg !510

bb19:                                             ; preds = %bb15, %bb16, %bb5, %bb18, %bb10
  %.0 = phi %struct.end_point_t* [ %58, %bb18 ], [ %37, %bb10 ], [ null, %bb5 ], [ null, %bb16 ], [ null, %bb15 ]
  ret %struct.end_point_t* %.0, !dbg !511
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define i32 @__libc_accept(i32 %sockfd, %struct.sockaddr* %addr, i32* %addrlen) nounwind {
entry:
  %remote = alloca %struct.sym_socket*, align 8
  %local_addr = alloca %struct.sockaddr_in, align 8
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !254), !dbg !512
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !255), !dbg !512
  call void @llvm.dbg.value(metadata !{i32* %addrlen}, i64 0, metadata !256), !dbg !512
  call void @llvm.dbg.declare(metadata !{%struct.sym_socket** %remote}, metadata !259), !dbg !513
  %0 = call i32 @puts(i8* getelementptr inbounds ([111 x i8]* @.str33, i64 0, i64 0)) nounwind, !dbg !514
  %1 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([126 x i8]* @.str34, i64 0, i64 0), i32 %sockfd) nounwind, !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !516
  %2 = add nsw i32 %sockfd, -16, !dbg !518
  %3 = sext i32 %2 to i64, !dbg !518
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 0, !dbg !518
  %5 = load i32* %4, align 8, !dbg !518
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !518
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !518

bb.i:                                             ; preds = %entry
  %7 = call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !519
  br label %__check_is_socket.exit, !dbg !520

bb1.i:                                            ; preds = %entry
  %8 = call i32* @__errno_location() nounwind readnone, !dbg !521
  store i32 88, i32* %8, align 4, !dbg !521
  br label %__check_is_socket.exit, !dbg !522

__check_is_socket.exit:                           ; preds = %bb.i, %bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !523
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, !dbg !525
  call void @llvm.dbg.value(metadata !{%struct.sym_socket* %9}, i64 0, metadata !257), !dbg !524
  %10 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 1, !dbg !526
  %11 = load i32* %10, align 4, !dbg !526
  %12 = icmp eq i32 %11, 1, !dbg !526
  br i1 %12, label %bb1, label %bb, !dbg !526

bb:                                               ; preds = %__check_is_socket.exit
  %13 = call i32* @__errno_location() nounwind readnone, !dbg !527
  store i32 95, i32* %13, align 4, !dbg !527
  br label %bb25, !dbg !528

bb1:                                              ; preds = %__check_is_socket.exit
  %14 = load i32* %4, align 8, !dbg !529
  %15 = icmp eq i32 %14, 2, !dbg !529
  br i1 %15, label %bb3, label %bb2, !dbg !529

bb2:                                              ; preds = %bb1
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !530
  store i32 22, i32* %16, align 4, !dbg !530
  br label %bb25, !dbg !531

bb3:                                              ; preds = %bb1
  %remote4 = bitcast %struct.sym_socket** %remote to i8*, !dbg !532
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 10, !dbg !532
  %18 = load %struct.stream_buffer_t** %17, align 8, !dbg !532
  %19 = call i64 @_stream_read(%struct.stream_buffer_t* %18, i8* %remote4, i64 8) nounwind, !dbg !532
  call void @llvm.dbg.value(metadata !{i64 %19}, i64 0, metadata !262), !dbg !532
  %20 = load i32* %4, align 8, !dbg !533
  %21 = icmp eq i32 %20, 16, !dbg !533
  br i1 %21, label %bb6, label %bb7, !dbg !533

bb6:                                              ; preds = %bb3
  %22 = bitcast %struct.sym_socket* %9 to i8*, !dbg !534
  call void @free(i8* %22) nounwind, !dbg !534
  %23 = call i32* @__errno_location() nounwind readnone, !dbg !535
  store i32 22, i32* %23, align 4, !dbg !535
  br label %bb25, !dbg !536

bb7:                                              ; preds = %bb3
  %24 = icmp eq i64 %19, 8, !dbg !537
  br i1 %24, label %bb9, label %bb8, !dbg !537

bb8:                                              ; preds = %bb7
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 507, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5874, i64 0, i64 0)) noreturn nounwind, !dbg !537
  unreachable, !dbg !537

bb9:                                              ; preds = %bb7
  %25 = load %struct.sym_socket** %remote, align 8, !dbg !538
  %26 = getelementptr inbounds %struct.sym_socket* %25, i64 0, i32 0, !dbg !538
  %27 = load i32* %26, align 8, !dbg !538
  switch i32 %27, label %bb12 [
    i32 16, label %bb10
    i32 4, label %bb13
  ]

bb10:                                             ; preds = %bb9
  %28 = bitcast %struct.sym_socket* %25 to i8*, !dbg !539
  call void @free(i8* %28) nounwind, !dbg !539
  %29 = call i32* @__errno_location() nounwind readnone, !dbg !540
  store i32 103, i32* %29, align 4, !dbg !540
  br label %bb25, !dbg !541

bb12:                                             ; preds = %bb9
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 517, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5874, i64 0, i64 0)) noreturn nounwind, !dbg !542
  unreachable, !dbg !542

bb13:                                             ; preds = %bb9
  %30 = getelementptr inbounds %struct.sym_socket* %25, i64 0, i32 9, !dbg !543
  store i64 0, i64* %30, align 8, !dbg !543
  %31 = load %struct.sym_socket** %remote, align 8, !dbg !544
  %32 = getelementptr inbounds %struct.sym_socket* %31, i64 0, i32 8, !dbg !544
  %33 = load %struct.event_queue_t** %32, align 8, !dbg !544
  %34 = bitcast %struct.event_queue_t* %33 to i8*, !dbg !544
  call void @free(i8* %34) nounwind, !dbg !544
  %35 = load %struct.sym_socket** %remote, align 8, !dbg !545
  %36 = getelementptr inbounds %struct.sym_socket* %35, i64 0, i32 8, !dbg !545
  store %struct.event_queue_t* null, %struct.event_queue_t** %36, align 8, !dbg !545
  call void @llvm.dbg.value(metadata !490, i64 0, metadata !263), !dbg !546
  %37 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 2, !dbg !547
  %38 = load i32* %37, align 8, !dbg !547
  %39 = icmp eq i32 %38, 2, !dbg !547
  br i1 %39, label %bb14, label %bb16, !dbg !547

bb14:                                             ; preds = %bb13
  call void @llvm.dbg.declare(metadata !{%struct.sockaddr_in* %local_addr}, metadata !265), !dbg !548
  %40 = getelementptr inbounds %struct.sockaddr_in* %local_addr, i64 0, i32 0, !dbg !549
  store i16 2, i16* %40, align 8, !dbg !549
  %41 = load i32* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 0, i32 0), align 8, !dbg !550
  %42 = getelementptr inbounds %struct.sockaddr_in* %local_addr, i64 0, i32 2, i32 0, !dbg !550
  store i32 %41, i32* %42, align 4, !dbg !550
  %43 = getelementptr inbounds %struct.sockaddr_in* %local_addr, i64 0, i32 1, !dbg !551
  store i16 0, i16* %43, align 2, !dbg !551
  %44 = call fastcc %struct.end_point_t* @__get_inet_end(%struct.sockaddr_in* %local_addr) nounwind, !dbg !552
  call void @llvm.dbg.value(metadata !{%struct.end_point_t* %44}, i64 0, metadata !261), !dbg !552
  %45 = icmp eq %struct.end_point_t* %44, null, !dbg !553
  br i1 %45, label %bb17, label %bb2.i, !dbg !553

bb16:                                             ; preds = %bb13
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 538, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.5874, i64 0, i64 0)) noreturn nounwind, !dbg !554
  unreachable, !dbg !554

bb17:                                             ; preds = %bb14
  %46 = call i32* @__errno_location() nounwind readnone, !dbg !555
  store i32 22, i32* %46, align 4, !dbg !555
  call void @llvm.dbg.value(metadata !556, i64 0, metadata !263), !dbg !557
  br label %bb21

bb.i28:                                           ; preds = %bb2.i
  %47 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), i32 %fd.0.i) nounwind, !dbg !558
  %48 = load i32* %scevgep12.i, align 8, !dbg !560
  %49 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 %48) nounwind, !dbg !560
  %50 = load i32* %scevgep12.i, align 8, !dbg !561
  %51 = icmp eq i32 %50, 0, !dbg !561
  br i1 %51, label %_create_socket_file.exit, label %bb1.i29, !dbg !561

bb1.i29:                                          ; preds = %bb.i28
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb2.i, !dbg !562

bb2.i:                                            ; preds = %bb14, %bb1.i29
  %indvar.i = phi i64 [ %indvar.next.i, %bb1.i29 ], [ 0, %bb14 ]
  %scevgep12.i = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %indvar.i, i32 0
  %fd.0.i = trunc i64 %indvar.i to i32
  %52 = icmp slt i32 %fd.0.i, 16, !dbg !562
  br i1 %52, label %bb.i28, label %bb3.i, !dbg !562

bb3.i:                                            ; preds = %bb2.i
  %53 = icmp eq i32 %fd.0.i, 16, !dbg !563
  br i1 %53, label %_create_socket_file.exit.thread, label %_create_socket_file.exit, !dbg !563

_create_socket_file.exit.thread:                  ; preds = %bb3.i
  %54 = call i32* @__errno_location() nounwind readnone, !dbg !564
  store i32 24, i32* %54, align 4, !dbg !564
  call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !264), !dbg !559
  br label %bb22

_create_socket_file.exit:                         ; preds = %bb.i28, %bb3.i
  %55 = add nsw i32 %fd.0.i, 16, !dbg !565
  call void @llvm.dbg.value(metadata !{i32 %55}, i64 0, metadata !264), !dbg !559
  %56 = icmp eq i32 %fd.0.i, 0, !dbg !566
  br i1 %56, label %bb19, label %bb22, !dbg !566

bb19:                                             ; preds = %_create_socket_file.exit
  call void @llvm.dbg.value(metadata !{%struct.end_point_t* %44}, i64 0, metadata !253) nounwind, !dbg !567
  %57 = getelementptr inbounds %struct.end_point_t* %44, i64 0, i32 3, !dbg !569
  %58 = load i8* %57, align 4, !dbg !569
  %59 = icmp eq i8 %58, 0, !dbg !569
  br i1 %59, label %bb.i31, label %bb1.i32, !dbg !569

bb.i31:                                           ; preds = %bb19
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !569
  unreachable, !dbg !569

bb1.i32:                                          ; preds = %bb19
  %60 = getelementptr inbounds %struct.end_point_t* %44, i64 0, i32 2, !dbg !571
  %61 = load i32* %60, align 8, !dbg !571
  %62 = icmp eq i32 %61, 0, !dbg !571
  br i1 %62, label %bb2.i33, label %bb3.i34, !dbg !571

bb2.i33:                                          ; preds = %bb1.i32
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !571
  unreachable, !dbg !571

bb3.i34:                                          ; preds = %bb1.i32
  %63 = add i32 %61, -1, !dbg !572
  store i32 %63, i32* %60, align 8, !dbg !572
  %64 = icmp eq i32 %63, 0, !dbg !573
  br i1 %64, label %bb4.i35, label %__release_end_point.exit, !dbg !573

bb4.i35:                                          ; preds = %bb3.i34
  %65 = getelementptr inbounds %struct.end_point_t* %44, i64 0, i32 0, !dbg !574
  %66 = load %struct.sockaddr** %65, align 8, !dbg !574
  %67 = icmp eq %struct.sockaddr* %66, null, !dbg !574
  br i1 %67, label %bb6.i, label %bb5.i36, !dbg !574

bb5.i36:                                          ; preds = %bb4.i35
  %68 = bitcast %struct.sockaddr* %66 to i8*, !dbg !575
  call void @free(i8* %68) nounwind, !dbg !575
  br label %bb6.i, !dbg !575

bb6.i:                                            ; preds = %bb5.i36, %bb4.i35
  %69 = bitcast %struct.end_point_t* %44 to i8*, !dbg !576
  call void @llvm.memset.p0i8.i64(i8* %69, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !576
  br label %__release_end_point.exit, !dbg !576

__release_end_point.exit:                         ; preds = %bb3.i34, %bb6.i
  %70 = call i32* @__errno_location() nounwind readnone, !dbg !577
  store i32 23, i32* %70, align 4, !dbg !577
  call void @llvm.dbg.value(metadata !556, i64 0, metadata !263), !dbg !578
  br label %bb21, !dbg !578

bb21:                                             ; preds = %__release_end_point.exit, %bb17
  %71 = load %struct.sym_socket** %remote, align 8, !dbg !579
  %72 = getelementptr inbounds %struct.sym_socket* %71, i64 0, i32 0, !dbg !579
  store i32 1, i32* %72, align 8, !dbg !579
  %73 = load %struct.sym_socket** %remote, align 8, !dbg !580
  %74 = getelementptr inbounds %struct.sym_socket* %73, i64 0, i32 5, !dbg !580
  %75 = load %struct.end_point_t** %74, align 8, !dbg !580
  call void @llvm.dbg.value(metadata !{%struct.end_point_t* %75}, i64 0, metadata !253) nounwind, !dbg !581
  %76 = getelementptr inbounds %struct.end_point_t* %75, i64 0, i32 3, !dbg !582
  %77 = load i8* %76, align 4, !dbg !582
  %78 = icmp eq i8 %77, 0, !dbg !582
  br i1 %78, label %bb.i37, label %bb1.i38, !dbg !582

bb.i37:                                           ; preds = %bb21
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !582
  unreachable, !dbg !582

bb1.i38:                                          ; preds = %bb21
  %79 = getelementptr inbounds %struct.end_point_t* %75, i64 0, i32 2, !dbg !583
  %80 = load i32* %79, align 8, !dbg !583
  %81 = icmp eq i32 %80, 0, !dbg !583
  br i1 %81, label %bb2.i39, label %bb3.i40, !dbg !583

bb2.i39:                                          ; preds = %bb1.i38
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !583
  unreachable, !dbg !583

bb3.i40:                                          ; preds = %bb1.i38
  %82 = add i32 %80, -1, !dbg !584
  store i32 %82, i32* %79, align 8, !dbg !584
  %83 = icmp eq i32 %82, 0, !dbg !585
  br i1 %83, label %bb4.i41, label %__release_end_point.exit44, !dbg !585

bb4.i41:                                          ; preds = %bb3.i40
  %84 = getelementptr inbounds %struct.end_point_t* %75, i64 0, i32 0, !dbg !586
  %85 = load %struct.sockaddr** %84, align 8, !dbg !586
  %86 = icmp eq %struct.sockaddr* %85, null, !dbg !586
  br i1 %86, label %bb6.i43, label %bb5.i42, !dbg !586

bb5.i42:                                          ; preds = %bb4.i41
  %87 = bitcast %struct.sockaddr* %85 to i8*, !dbg !587
  call void @free(i8* %87) nounwind, !dbg !587
  br label %bb6.i43, !dbg !587

bb6.i43:                                          ; preds = %bb5.i42, %bb4.i41
  %88 = bitcast %struct.end_point_t* %75 to i8*, !dbg !588
  call void @llvm.memset.p0i8.i64(i8* %88, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !588
  br label %__release_end_point.exit44, !dbg !588

__release_end_point.exit44:                       ; preds = %bb3.i40, %bb6.i43
  %89 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 5, !dbg !589
  store %struct.end_point_t* null, %struct.end_point_t** %89, align 8, !dbg !589
  br label %bb25, !dbg !590

bb22:                                             ; preds = %_create_socket_file.exit, %_create_socket_file.exit.thread
  %fd.0.ph = phi i32 [ %55, %_create_socket_file.exit ], [ -1, %_create_socket_file.exit.thread ]
  %90 = add nsw i32 %fd.0.ph, -16, !dbg !591
  %91 = sext i32 %90 to i64, !dbg !591
  %92 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, !dbg !591
  call void @llvm.dbg.value(metadata !{%struct.sym_socket* %92}, i64 0, metadata !260), !dbg !591
  %93 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 0, !dbg !592
  store i32 8, i32* %93, align 8, !dbg !592
  %94 = load %struct.sym_socket** %remote, align 8, !dbg !593
  %95 = getelementptr inbounds %struct.sym_socket* %94, i64 0, i32 2, !dbg !593
  %96 = load i32* %95, align 8, !dbg !593
  %97 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 2, !dbg !593
  store i32 %96, i32* %97, align 8, !dbg !593
  %98 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 1, !dbg !594
  store i32 1, i32* %98, align 4, !dbg !594
  %99 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 4, !dbg !595
  store %struct.end_point_t* %44, %struct.end_point_t** %99, align 8, !dbg !595
  %100 = getelementptr inbounds %struct.end_point_t* %44, i64 0, i32 1, !dbg !596
  store %struct.sym_socket* %92, %struct.sym_socket** %100, align 8, !dbg !596
  %101 = load %struct.sym_socket** %remote, align 8, !dbg !597
  %102 = getelementptr inbounds %struct.sym_socket* %101, i64 0, i32 5, !dbg !597
  %103 = load %struct.end_point_t** %102, align 8, !dbg !597
  call void @llvm.dbg.value(metadata !{%struct.end_point_t* %103}, i64 0, metadata !253) nounwind, !dbg !598
  %104 = getelementptr inbounds %struct.end_point_t* %103, i64 0, i32 3, !dbg !599
  %105 = load i8* %104, align 4, !dbg !599
  %106 = icmp eq i8 %105, 0, !dbg !599
  br i1 %106, label %bb.i45, label %bb1.i46, !dbg !599

bb.i45:                                           ; preds = %bb22
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !599
  unreachable, !dbg !599

bb1.i46:                                          ; preds = %bb22
  %107 = getelementptr inbounds %struct.end_point_t* %103, i64 0, i32 2, !dbg !600
  %108 = load i32* %107, align 8, !dbg !600
  %109 = icmp eq i32 %108, 0, !dbg !600
  br i1 %109, label %bb2.i47, label %bb3.i48, !dbg !600

bb2.i47:                                          ; preds = %bb1.i46
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !600
  unreachable, !dbg !600

bb3.i48:                                          ; preds = %bb1.i46
  %110 = add i32 %108, -1, !dbg !601
  store i32 %110, i32* %107, align 8, !dbg !601
  %111 = icmp eq i32 %110, 0, !dbg !602
  br i1 %111, label %bb4.i49, label %__release_end_point.exit52, !dbg !602

bb4.i49:                                          ; preds = %bb3.i48
  %112 = getelementptr inbounds %struct.end_point_t* %103, i64 0, i32 0, !dbg !603
  %113 = load %struct.sockaddr** %112, align 8, !dbg !603
  %114 = icmp eq %struct.sockaddr* %113, null, !dbg !603
  br i1 %114, label %bb6.i51, label %bb5.i50, !dbg !603

bb5.i50:                                          ; preds = %bb4.i49
  %115 = bitcast %struct.sockaddr* %113 to i8*, !dbg !604
  call void @free(i8* %115) nounwind, !dbg !604
  br label %bb6.i51, !dbg !604

bb6.i51:                                          ; preds = %bb5.i50, %bb4.i49
  %116 = bitcast %struct.end_point_t* %103 to i8*, !dbg !605
  call void @llvm.memset.p0i8.i64(i8* %116, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !605
  br label %__release_end_point.exit52, !dbg !605

__release_end_point.exit52:                       ; preds = %bb3.i48, %bb6.i51
  %117 = load %struct.sym_socket** %remote, align 8, !dbg !606
  %118 = getelementptr inbounds %struct.sym_socket* %117, i64 0, i32 5, !dbg !606
  store %struct.end_point_t* %44, %struct.end_point_t** %118, align 8, !dbg !606
  %119 = load %struct.sym_socket** %remote, align 8, !dbg !607
  %120 = getelementptr inbounds %struct.sym_socket* %119, i64 0, i32 5, !dbg !607
  %121 = load %struct.end_point_t** %120, align 8, !dbg !607
  %122 = getelementptr inbounds %struct.end_point_t* %121, i64 0, i32 2, !dbg !607
  %123 = load i32* %122, align 8, !dbg !607
  %124 = add i32 %123, 1, !dbg !607
  store i32 %124, i32* %122, align 8, !dbg !607
  %125 = load %struct.sym_socket** %remote, align 8, !dbg !608
  %126 = getelementptr inbounds %struct.sym_socket* %125, i64 0, i32 4, !dbg !608
  %127 = load %struct.end_point_t** %126, align 8, !dbg !608
  %128 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 5, !dbg !608
  store %struct.end_point_t* %127, %struct.end_point_t** %128, align 8, !dbg !608
  %129 = getelementptr inbounds %struct.end_point_t* %127, i64 0, i32 2, !dbg !609
  %130 = load i32* %129, align 8, !dbg !609
  %131 = add i32 %130, 1, !dbg !609
  store i32 %131, i32* %129, align 8, !dbg !609
  %132 = call i32 (...)* @_stream_create(i32 4096, i32 1) nounwind, !dbg !610
  %133 = sext i32 %132 to i64, !dbg !610
  %134 = inttoptr i64 %133 to %struct.stream_buffer_t*, !dbg !610
  %135 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 7, !dbg !610
  store %struct.stream_buffer_t* %134, %struct.stream_buffer_t** %135, align 8, !dbg !610
  %136 = load %struct.sym_socket** %remote, align 8, !dbg !611
  %137 = getelementptr inbounds %struct.sym_socket* %136, i64 0, i32 6, !dbg !611
  store %struct.stream_buffer_t* %134, %struct.stream_buffer_t** %137, align 8, !dbg !611
  %138 = call i32 (...)* @_stream_create(i32 4096, i32 1) nounwind, !dbg !612
  %139 = sext i32 %138 to i64, !dbg !612
  %140 = inttoptr i64 %139 to %struct.stream_buffer_t*, !dbg !612
  %141 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %91, i32 6, !dbg !612
  store %struct.stream_buffer_t* %140, %struct.stream_buffer_t** %141, align 8, !dbg !612
  %142 = load %struct.sym_socket** %remote, align 8, !dbg !613
  %143 = getelementptr inbounds %struct.sym_socket* %142, i64 0, i32 7, !dbg !613
  store %struct.stream_buffer_t* %140, %struct.stream_buffer_t** %143, align 8, !dbg !613
  %144 = load %struct.sym_socket** %remote, align 8, !dbg !614
  %145 = getelementptr inbounds %struct.sym_socket* %144, i64 0, i32 0, !dbg !614
  store i32 8, i32* %145, align 8, !dbg !614
  %146 = icmp eq %struct.sockaddr* %addr, null, !dbg !615
  br i1 %146, label %bb24, label %bb23, !dbg !615

bb23:                                             ; preds = %__release_end_point.exit52
  %147 = load %struct.end_point_t** %128, align 8, !dbg !616
  call fastcc void @_get_endpoint_name(%struct.sym_socket* %92, %struct.end_point_t* %147, %struct.sockaddr* %addr, i32* %addrlen) nounwind, !dbg !616
  br label %bb24, !dbg !616

bb24:                                             ; preds = %__release_end_point.exit52, %bb23
  call void @klee_warning(i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0)) nounwind, !dbg !617
  %148 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([43 x i8]* @.str38, i64 0, i64 0), i32 %fd.0.ph) nounwind, !dbg !618
  br label %bb25, !dbg !619

bb25:                                             ; preds = %bb24, %__release_end_point.exit44, %bb10, %bb6, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb6 ], [ -1, %bb10 ], [ -1, %__release_end_point.exit44 ], [ %fd.0.ph, %bb24 ]
  ret i32 %.0, !dbg !528
}

define i32 @bind(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !272), !dbg !620
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !273), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !274), !dbg !620
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !621
  %0 = add nsw i32 %sockfd, -16, !dbg !623
  %1 = sext i32 %0 to i64, !dbg !623
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, i32 0, !dbg !623
  %3 = load i32* %2, align 8, !dbg !623
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !623
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !623

bb.i:                                             ; preds = %entry
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !624
  br label %__check_is_socket.exit, !dbg !625

bb1.i:                                            ; preds = %entry
  %6 = tail call i32* @__errno_location() nounwind readnone, !dbg !626
  store i32 88, i32* %6, align 4, !dbg !626
  br label %__check_is_socket.exit, !dbg !627

__check_is_socket.exit:                           ; preds = %bb.i, %bb1.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !628
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, !dbg !630
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %7}, i64 0, metadata !275), !dbg !629
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !267) nounwind, !dbg !631
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !268) nounwind, !dbg !631
  tail call void @llvm.dbg.value(metadata !490, i64 0, metadata !269) nounwind, !dbg !631
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, i32 4, !dbg !633
  %9 = load %struct.end_point_t** %8, align 8, !dbg !633
  %10 = icmp eq %struct.end_point_t* %9, null, !dbg !633
  br i1 %10, label %bb1.i3, label %bb.i2, !dbg !633

bb.i2:                                            ; preds = %__check_is_socket.exit
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !634
  store i32 22, i32* %11, align 4, !dbg !634
  br label %_bind.exit, !dbg !635

bb1.i3:                                           ; preds = %__check_is_socket.exit
  %12 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !636
  %13 = load i16* %12, align 2, !dbg !636
  %14 = zext i16 %13 to i32, !dbg !636
  %15 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %1, i32 2, !dbg !636
  %16 = load i32* %15, align 8, !dbg !636
  %17 = icmp eq i32 %14, %16, !dbg !636
  br i1 %17, label %bb3.i, label %bb2.i, !dbg !636

bb2.i:                                            ; preds = %bb1.i3
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !637
  store i32 22, i32* %18, align 4, !dbg !637
  br label %_bind.exit, !dbg !638

bb3.i:                                            ; preds = %bb1.i3
  %19 = icmp eq i32 %16, 2, !dbg !639
  br i1 %19, label %bb5.i, label %bb6.i, !dbg !639

bb5.i:                                            ; preds = %bb3.i
  %20 = bitcast %struct.sockaddr* %addr to %struct.sockaddr_in*, !dbg !640
  %21 = tail call fastcc %struct.end_point_t* @__get_inet_end(%struct.sockaddr_in* %20) nounwind, !dbg !640
  tail call void @llvm.dbg.value(metadata !{%struct.end_point_t* %21}, i64 0, metadata !270) nounwind, !dbg !640
  %22 = icmp eq %struct.end_point_t* %21, null, !dbg !641
  br i1 %22, label %bb6.i, label %bb7.i, !dbg !641

bb6.i:                                            ; preds = %bb5.i, %bb3.i
  %23 = tail call i32* @__errno_location() nounwind readnone, !dbg !642
  store i32 22, i32* %23, align 4, !dbg !642
  br label %_bind.exit, !dbg !643

bb7.i:                                            ; preds = %bb5.i
  %24 = getelementptr inbounds %struct.end_point_t* %21, i64 0, i32 1, !dbg !644
  %25 = load %struct.sym_socket** %24, align 8, !dbg !644
  %26 = icmp eq %struct.sym_socket* %25, null, !dbg !644
  br i1 %26, label %bb9.i, label %bb8.i, !dbg !644

bb8.i:                                            ; preds = %bb7.i
  tail call void @llvm.dbg.value(metadata !{%struct.end_point_t* %21}, i64 0, metadata !253) nounwind, !dbg !645
  %27 = getelementptr inbounds %struct.end_point_t* %21, i64 0, i32 3, !dbg !647
  %28 = load i8* %27, align 4, !dbg !647
  %29 = icmp eq i8 %28, 0, !dbg !647
  br i1 %29, label %bb.i.i, label %bb1.i.i, !dbg !647

bb.i.i:                                           ; preds = %bb8.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !647
  unreachable, !dbg !647

bb1.i.i:                                          ; preds = %bb8.i
  %30 = getelementptr inbounds %struct.end_point_t* %21, i64 0, i32 2, !dbg !648
  %31 = load i32* %30, align 8, !dbg !648
  %32 = icmp eq i32 %31, 0, !dbg !648
  br i1 %32, label %bb2.i.i, label %bb3.i.i, !dbg !648

bb2.i.i:                                          ; preds = %bb1.i.i
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !648
  unreachable, !dbg !648

bb3.i.i:                                          ; preds = %bb1.i.i
  %33 = add i32 %31, -1, !dbg !649
  store i32 %33, i32* %30, align 8, !dbg !649
  %34 = icmp eq i32 %33, 0, !dbg !650
  br i1 %34, label %bb4.i.i, label %__release_end_point.exit.i, !dbg !650

bb4.i.i:                                          ; preds = %bb3.i.i
  %35 = getelementptr inbounds %struct.end_point_t* %21, i64 0, i32 0, !dbg !651
  %36 = load %struct.sockaddr** %35, align 8, !dbg !651
  %37 = icmp eq %struct.sockaddr* %36, null, !dbg !651
  br i1 %37, label %bb6.i.i, label %bb5.i.i, !dbg !651

bb5.i.i:                                          ; preds = %bb4.i.i
  %38 = bitcast %struct.sockaddr* %36 to i8*, !dbg !652
  tail call void @free(i8* %38) nounwind, !dbg !652
  br label %bb6.i.i, !dbg !652

bb6.i.i:                                          ; preds = %bb5.i.i, %bb4.i.i
  %39 = bitcast %struct.end_point_t* %21 to i8*, !dbg !653
  tail call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !653
  br label %__release_end_point.exit.i, !dbg !653

__release_end_point.exit.i:                       ; preds = %bb6.i.i, %bb3.i.i
  %40 = tail call i32* @__errno_location() nounwind readnone, !dbg !654
  store i32 98, i32* %40, align 4, !dbg !654
  br label %_bind.exit, !dbg !655

bb9.i:                                            ; preds = %bb7.i
  store %struct.end_point_t* %21, %struct.end_point_t** %8, align 8, !dbg !656
  store %struct.sym_socket* %7, %struct.sym_socket** %24, align 8, !dbg !657
  %41 = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8]* @.str39, i64 0, i64 0)) nounwind, !dbg !658
  br label %_bind.exit, !dbg !659

_bind.exit:                                       ; preds = %bb.i2, %bb2.i, %bb6.i, %__release_end_point.exit.i, %bb9.i
  %.0.i4 = phi i32 [ -1, %bb.i2 ], [ -1, %bb2.i ], [ -1, %bb6.i ], [ -1, %__release_end_point.exit.i ], [ 0, %bb9.i ]
  ret i32 %.0.i4, !dbg !632
}

define i32 @__libc_connect(i32 %sockfd, %struct.sockaddr* %addr, i32 %addrlen) nounwind {
entry:
  %local_addr.i.i = alloca %struct.sockaddr_in, align 8
  %sock_addr.i = alloca %struct.sym_socket*, align 8
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !283), !dbg !660
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !284), !dbg !660
  call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !285), !dbg !660
  %0 = call i32 @puts(i8* getelementptr inbounds ([99 x i8]* @.str41, i64 0, i64 0)) nounwind, !dbg !661
  %1 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([71 x i8]* @.str42, i64 0, i64 0), i32 %sockfd) nounwind, !dbg !662
  call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !165) nounwind, !dbg !663
  %2 = add nsw i32 %sockfd, -16, !dbg !665
  %3 = sext i32 %2 to i64, !dbg !665
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 0, !dbg !665
  %5 = load i32* %4, align 8, !dbg !665
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !665
  br i1 %toBool.i, label %bb1.i, label %bb.i, !dbg !665

bb.i:                                             ; preds = %entry
  %7 = call i32 @puts(i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !666
  br label %bb1, !dbg !667

bb1.i:                                            ; preds = %entry
  %8 = call i32* @__errno_location() nounwind readnone, !dbg !668
  store i32 88, i32* %8, align 4, !dbg !668
  br label %bb1, !dbg !669

bb1:                                              ; preds = %bb1.i, %bb.i
  tail call void @llvm.dbg.value(metadata !{i32 %sockfd}, i64 0, metadata !162), !dbg !670
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, !dbg !672
  call void @llvm.dbg.value(metadata !{%struct.sym_socket* %9}, i64 0, metadata !286), !dbg !671
  %10 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 1, !dbg !673
  %11 = load i32* %10, align 4, !dbg !673
  %12 = icmp eq i32 %11, 1, !dbg !673
  br i1 %12, label %bb2, label %bb4, !dbg !673

bb2:                                              ; preds = %bb1
  call void @llvm.dbg.declare(metadata !{%struct.sym_socket** %sock_addr.i}, metadata !277) nounwind, !dbg !674
  store %struct.sym_socket* %9, %struct.sym_socket** %sock_addr.i, align 8
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !278) nounwind, !dbg !674
  call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !279) nounwind, !dbg !674
  %13 = load i32* %4, align 8, !dbg !676
  %14 = icmp eq i32 %13, 1, !dbg !676
  br i1 %14, label %bb3.i, label %bb.i6, !dbg !676

bb.i6:                                            ; preds = %bb2
  %15 = icmp eq i32 %13, 8, !dbg !677
  %16 = call i32* @__errno_location() nounwind readnone, !dbg !678
  br i1 %15, label %bb1.i7, label %bb2.i, !dbg !677

bb1.i7:                                           ; preds = %bb.i6
  store i32 106, i32* %16, align 4, !dbg !678
  br label %bb4, !dbg !679

bb2.i:                                            ; preds = %bb.i6
  store i32 22, i32* %16, align 4, !dbg !680
  br label %bb4, !dbg !681

bb3.i:                                            ; preds = %bb2
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 2, !dbg !682
  %18 = load i32* %17, align 8, !dbg !682
  %19 = icmp eq i32 %18, 2, !dbg !682
  br i1 %19, label %bb4.i, label %bb6.i, !dbg !682

bb4.i:                                            ; preds = %bb3.i
  call void @llvm.dbg.value(metadata !{%struct.sym_socket* %9}, i64 0, metadata !247) nounwind, !dbg !683
  call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !248) nounwind, !dbg !683
  call void @llvm.dbg.value(metadata !{i32 %addrlen}, i64 0, metadata !249) nounwind, !dbg !683
  %20 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 4, !dbg !685
  %21 = load %struct.end_point_t** %20, align 8, !dbg !685
  %22 = icmp eq %struct.end_point_t* %21, null, !dbg !685
  br i1 %22, label %bb.i.i, label %bb2.i.i, !dbg !685

bb.i.i:                                           ; preds = %bb4.i
  call void @llvm.dbg.declare(metadata !{%struct.sockaddr_in* %local_addr.i.i}, metadata !250) nounwind, !dbg !686
  %23 = getelementptr inbounds %struct.sockaddr_in* %local_addr.i.i, i64 0, i32 0, !dbg !687
  store i16 2, i16* %23, align 8, !dbg !687
  %24 = load i32* getelementptr inbounds (%struct.network_t* @__net, i64 0, i32 0, i32 0), align 8, !dbg !688
  %25 = getelementptr inbounds %struct.sockaddr_in* %local_addr.i.i, i64 0, i32 2, i32 0, !dbg !688
  store i32 %24, i32* %25, align 4, !dbg !688
  %26 = getelementptr inbounds %struct.sockaddr_in* %local_addr.i.i, i64 0, i32 1, !dbg !689
  store i16 0, i16* %26, align 2, !dbg !689
  %27 = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @.str29, i64 0, i64 0)) nounwind, !dbg !690
  %28 = call fastcc %struct.end_point_t* @__get_inet_end(%struct.sockaddr_in* %local_addr.i.i) nounwind, !dbg !691
  store %struct.end_point_t* %28, %struct.end_point_t** %20, align 8, !dbg !691
  %29 = icmp eq %struct.end_point_t* %28, null, !dbg !692
  br i1 %29, label %bb1.i.i, label %bb2.i.i, !dbg !692

bb1.i.i:                                          ; preds = %bb.i.i
  %30 = call i32* @__errno_location() nounwind readnone, !dbg !693
  store i32 11, i32* %30, align 4, !dbg !693
  br label %bb4, !dbg !694

bb2.i.i:                                          ; preds = %bb.i.i, %bb4.i
  %31 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %3, i32 5, !dbg !695
  %32 = load %struct.end_point_t** %31, align 8, !dbg !695
  %33 = icmp eq %struct.end_point_t* %32, null, !dbg !695
  br i1 %33, label %bb4.i.i, label %bb3.i.i, !dbg !695

bb3.i.i:                                          ; preds = %bb2.i.i
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([19 x i8]* @__PRETTY_FUNCTION__.5702, i64 0, i64 0)) noreturn nounwind, !dbg !695
  unreachable, !dbg !695

bb4.i.i:                                          ; preds = %bb2.i.i
  %34 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !696
  %35 = load i16* %34, align 2, !dbg !696
  %36 = icmp ne i16 %35, 2, !dbg !696
  %37 = icmp ult i32 %addrlen, 16, !dbg !696
  %38 = or i1 %36, %37, !dbg !696
  br i1 %38, label %bb7.i.i, label %bb8.i.i, !dbg !696

bb7.i.i:                                          ; preds = %bb4.i.i
  %39 = call i32* @__errno_location() nounwind readnone, !dbg !697
  store i32 97, i32* %39, align 4, !dbg !697
  br label %bb4, !dbg !698

bb8.i.i:                                          ; preds = %bb4.i.i
  %40 = bitcast %struct.sockaddr* %addr to %struct.sockaddr_in*, !dbg !699
  %41 = call fastcc %struct.end_point_t* @__get_inet_end(%struct.sockaddr_in* %40) nounwind, !dbg !699
  store %struct.end_point_t* %41, %struct.end_point_t** %31, align 8, !dbg !699
  %42 = icmp eq %struct.end_point_t* %41, null, !dbg !700
  br i1 %42, label %bb9.i.i, label %bb8.i.bb6_crit_edge.i, !dbg !700

bb8.i.bb6_crit_edge.i:                            ; preds = %bb8.i.i
  %.pre.i = load %struct.sym_socket** %sock_addr.i, align 8
  br label %bb6.i

bb9.i.i:                                          ; preds = %bb8.i.i
  %43 = call i32* @__errno_location() nounwind readnone, !dbg !701
  store i32 22, i32* %43, align 4, !dbg !701
  br label %bb4, !dbg !702

bb6.i:                                            ; preds = %bb8.i.bb6_crit_edge.i, %bb3.i
  %44 = phi %struct.sym_socket* [ %.pre.i, %bb8.i.bb6_crit_edge.i ], [ %9, %bb3.i ]
  %45 = getelementptr inbounds %struct.sym_socket* %44, i64 0, i32 5, !dbg !703
  %46 = load %struct.end_point_t** %45, align 8, !dbg !703
  %47 = getelementptr inbounds %struct.end_point_t* %46, i64 0, i32 1, !dbg !703
  %48 = load %struct.sym_socket** %47, align 8, !dbg !703
  %49 = icmp eq %struct.sym_socket* %48, null, !dbg !703
  br i1 %49, label %bb9.i, label %bb7.i, !dbg !703

bb7.i:                                            ; preds = %bb6.i
  %50 = getelementptr inbounds %struct.sym_socket* %48, i64 0, i32 0, !dbg !703
  %51 = load i32* %50, align 8, !dbg !703
  %52 = icmp eq i32 %51, 2, !dbg !703
  br i1 %52, label %bb8.i, label %bb9.i, !dbg !703

bb8.i:                                            ; preds = %bb7.i
  %53 = getelementptr inbounds %struct.sym_socket* %48, i64 0, i32 2, !dbg !703
  %54 = load i32* %53, align 8, !dbg !703
  %55 = getelementptr inbounds %struct.sym_socket* %44, i64 0, i32 2, !dbg !703
  %56 = load i32* %55, align 8, !dbg !703
  %57 = icmp eq i32 %54, %56, !dbg !703
  br i1 %57, label %bb10.i, label %bb9.i, !dbg !703

bb9.i:                                            ; preds = %bb8.i, %bb7.i, %bb6.i
  %58 = call i32 @puts(i8* getelementptr inbounds ([75 x i8]* @.str40, i64 0, i64 0)) nounwind, !dbg !704
  %59 = load %struct.sym_socket** %sock_addr.i, align 8, !dbg !705
  %60 = getelementptr inbounds %struct.sym_socket* %59, i64 0, i32 5, !dbg !705
  store %struct.end_point_t* null, %struct.end_point_t** %60, align 8, !dbg !705
  %61 = call i32* @__errno_location() nounwind readnone, !dbg !706
  store i32 111, i32* %61, align 4, !dbg !706
  br label %bb4, !dbg !707

bb10.i:                                           ; preds = %bb8.i
  call void @llvm.dbg.value(metadata !{%struct.sym_socket* %48}, i64 0, metadata !280) nounwind, !dbg !708
  %62 = getelementptr inbounds %struct.sym_socket* %48, i64 0, i32 10, !dbg !709
  %63 = load %struct.stream_buffer_t** %62, align 8, !dbg !709
  call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %63}, i64 0, metadata !160) nounwind, !dbg !710
  %64 = getelementptr inbounds %struct.stream_buffer_t* %63, i64 0, i32 4, !dbg !711
  %65 = load i64* %64, align 8, !dbg !711
  %66 = getelementptr inbounds %struct.stream_buffer_t* %63, i64 0, i32 1, !dbg !711
  %67 = load i64* %66, align 8, !dbg !711
  %68 = icmp eq i64 %65, %67, !dbg !711
  br i1 %68, label %bb11.i, label %bb12.i, !dbg !709

bb11.i:                                           ; preds = %bb10.i
  call void @llvm.dbg.value(metadata !{%struct.end_point_t* %46}, i64 0, metadata !253) nounwind, !dbg !713
  %69 = getelementptr inbounds %struct.end_point_t* %46, i64 0, i32 3, !dbg !715
  %70 = load i8* %69, align 4, !dbg !715
  %71 = icmp eq i8 %70, 0, !dbg !715
  br i1 %71, label %bb.i21.i, label %bb1.i22.i, !dbg !715

bb.i21.i:                                         ; preds = %bb11.i
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !715
  unreachable, !dbg !715

bb1.i22.i:                                        ; preds = %bb11.i
  %72 = getelementptr inbounds %struct.end_point_t* %46, i64 0, i32 2, !dbg !716
  %73 = load i32* %72, align 8, !dbg !716
  %74 = icmp eq i32 %73, 0, !dbg !716
  br i1 %74, label %bb2.i23.i, label %bb3.i24.i, !dbg !716

bb2.i23.i:                                        ; preds = %bb1.i22.i
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([20 x i8]* @__PRETTY_FUNCTION__.5471, i64 0, i64 0)) noreturn nounwind, !dbg !716
  unreachable, !dbg !716

bb3.i24.i:                                        ; preds = %bb1.i22.i
  %75 = add i32 %73, -1, !dbg !717
  store i32 %75, i32* %72, align 8, !dbg !717
  %76 = icmp eq i32 %75, 0, !dbg !718
  br i1 %76, label %bb4.i25.i, label %__release_end_point.exit.i, !dbg !718

bb4.i25.i:                                        ; preds = %bb3.i24.i
  %77 = getelementptr inbounds %struct.end_point_t* %46, i64 0, i32 0, !dbg !719
  %78 = load %struct.sockaddr** %77, align 8, !dbg !719
  %79 = icmp eq %struct.sockaddr* %78, null, !dbg !719
  br i1 %79, label %bb6.i.i, label %bb5.i.i, !dbg !719

bb5.i.i:                                          ; preds = %bb4.i25.i
  %80 = bitcast %struct.sockaddr* %78 to i8*, !dbg !720
  call void @free(i8* %80) nounwind, !dbg !720
  br label %bb6.i.i, !dbg !720

bb6.i.i:                                          ; preds = %bb5.i.i, %bb4.i25.i
  %81 = bitcast %struct.end_point_t* %46 to i8*, !dbg !721
  call void @llvm.memset.p0i8.i64(i8* %81, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !721
  br label %__release_end_point.exit.i, !dbg !721

__release_end_point.exit.i:                       ; preds = %bb6.i.i, %bb3.i24.i
  %82 = load %struct.sym_socket** %sock_addr.i, align 8, !dbg !722
  %83 = getelementptr inbounds %struct.sym_socket* %82, i64 0, i32 5, !dbg !722
  store %struct.end_point_t* null, %struct.end_point_t** %83, align 8, !dbg !722
  %84 = call i32* @__errno_location() nounwind readnone, !dbg !723
  store i32 111, i32* %84, align 4, !dbg !723
  br label %bb4, !dbg !724

bb12.i:                                           ; preds = %bb10.i
  %85 = getelementptr inbounds %struct.sym_socket* %44, i64 0, i32 0, !dbg !725
  store i32 4, i32* %85, align 8, !dbg !725
  %sock_addr13.i = bitcast %struct.sym_socket** %sock_addr.i to i8*, !dbg !726
  %86 = load %struct.stream_buffer_t** %62, align 8, !dbg !726
  %87 = call i64 @_stream_write(%struct.stream_buffer_t* %86, i8* %sock_addr13.i, i64 8) nounwind, !dbg !726
  call void @llvm.dbg.value(metadata !{i64 %87}, i64 0, metadata !282) nounwind, !dbg !726
  %88 = icmp eq i64 %87, 8, !dbg !727
  br i1 %88, label %bb16.i, label %bb15.i, !dbg !727

bb15.i:                                           ; preds = %bb12.i
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 350, i8* getelementptr inbounds ([16 x i8]* @__PRETTY_FUNCTION__.5753, i64 0, i64 0)) noreturn nounwind, !dbg !727
  unreachable, !dbg !727

bb16.i:                                           ; preds = %bb12.i
  %89 = load %struct.sym_socket** %sock_addr.i, align 8, !dbg !728
  %90 = call noalias i8* @malloc(i64 16) nounwind, !dbg !728
  %91 = bitcast i8* %90 to %struct.event_queue_t*, !dbg !728
  %92 = getelementptr inbounds %struct.sym_socket* %89, i64 0, i32 8, !dbg !728
  store %struct.event_queue_t* %91, %struct.event_queue_t** %92, align 8, !dbg !728
  %93 = load %struct.sym_socket** %sock_addr.i, align 8, !dbg !729
  %94 = getelementptr inbounds %struct.sym_socket* %93, i64 0, i32 0, !dbg !729
  %95 = load i32* %94, align 8, !dbg !729
  %96 = icmp eq i32 %95, 16, !dbg !729
  br i1 %96, label %bb17.i, label %bb4, !dbg !729

bb17.i:                                           ; preds = %bb16.i
  %97 = bitcast %struct.sym_socket* %93 to i8*, !dbg !730
  call void @free(i8* %97) nounwind, !dbg !730
  %98 = call i32* @__errno_location() nounwind readnone, !dbg !731
  store i32 22, i32* %98, align 4, !dbg !731
  br label %bb4, !dbg !732

bb4:                                              ; preds = %bb17.i, %bb16.i, %__release_end_point.exit.i, %bb9.i, %bb9.i.i, %bb7.i.i, %bb1.i.i, %bb2.i, %bb1.i7, %bb1
  %.0 = phi i32 [ 1, %bb1 ], [ -1, %bb1.i7 ], [ -1, %bb2.i ], [ -1, %bb9.i ], [ -1, %__release_end_point.exit.i ], [ -1, %bb17.i ], [ 0, %bb16.i ], [ -1, %bb1.i.i ], [ -1, %bb7.i.i ], [ -1, %bb9.i.i ]
  ret i32 %.0, !dbg !733
}

define i32 @_get_socket_num(%struct.sockaddr* nocapture %addr) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sockaddr* %addr}, i64 0, metadata !288), !dbg !734
  tail call void @llvm.dbg.value(metadata !490, i64 0, metadata !289), !dbg !735
  %0 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 1, i64 0, !dbg !736
  %1 = getelementptr inbounds %struct.sockaddr* %addr, i64 0, i32 0, !dbg !737
  br label %bb3, !dbg !735

bb:                                               ; preds = %bb3
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %indvar, i32 4
  %2 = load %struct.end_point_t** %scevgep, align 8, !dbg !737
  %3 = getelementptr inbounds %struct.end_point_t* %2, i64 0, i32 0, !dbg !737
  %4 = load %struct.sockaddr** %3, align 8, !dbg !737
  %5 = getelementptr inbounds %struct.sockaddr* %4, i64 0, i32 0, !dbg !737
  %6 = load i16* %5, align 2, !dbg !737
  %7 = load i16* %1, align 2, !dbg !737
  %8 = icmp eq i16 %6, %7, !dbg !737
  br i1 %8, label %bb1, label %bb2, !dbg !737

bb1:                                              ; preds = %bb
  %9 = getelementptr inbounds %struct.sockaddr* %4, i64 0, i32 1, i64 0, !dbg !736
  %10 = tail call i32 @strcmp(i8* %9, i8* %0) nounwind readonly, !dbg !736
  %11 = icmp eq i32 %10, 0, !dbg !736
  br i1 %11, label %bb4, label %bb2, !dbg !736

bb2:                                              ; preds = %bb1, %bb
  %indvar.next = add i64 %indvar, 1
  br label %bb3, !dbg !735

bb3:                                              ; preds = %bb2, %entry
  %indvar = phi i64 [ %indvar.next, %bb2 ], [ 0, %entry ]
  %fd.0 = trunc i64 %indvar to i32
  %12 = icmp slt i32 %fd.0, 16, !dbg !735
  br i1 %12, label %bb, label %bb4, !dbg !735

bb4:                                              ; preds = %bb3, %bb1
  %13 = add nsw i32 %fd.0, 16, !dbg !738
  ret i32 %13, !dbg !738
}

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define i32 @socket(i32 %domain, i32 %type, i32 %protocol) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !294), !dbg !739
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !295), !dbg !739
  tail call void @llvm.dbg.value(metadata !{i32 %protocol}, i64 0, metadata !296), !dbg !739
  %0 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([70 x i8]* @.str43, i64 0, i64 0), i32 %domain, i32 %type, i32 %protocol) nounwind, !dbg !740
  %1 = and i32 %type, -526337, !dbg !741
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !297), !dbg !741
  switch i32 %domain, label %bb4 [
    i32 1, label %bb
    i32 2, label %bb
    i32 16, label %bb2
  ], !dbg !742

bb:                                               ; preds = %entry, %entry
  tail call void @llvm.dbg.value(metadata !{i32 %domain}, i64 0, metadata !183) nounwind, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !184) nounwind, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %protocol}, i64 0, metadata !185) nounwind, !dbg !743
  %2 = add i32 %domain, -1, !dbg !745
  %3 = icmp ugt i32 %2, 1, !dbg !745
  br i1 %3, label %bb.i, label %bb1.i, !dbg !745

bb.i:                                             ; preds = %bb
  tail call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([21 x i8]* @__PRETTY_FUNCTION__.5497, i64 0, i64 0)) noreturn nounwind, !dbg !745
  unreachable, !dbg !745

bb1.i:                                            ; preds = %bb
  switch i32 %1, label %bb13.i [
    i32 1, label %bb2.i
    i32 2, label %bb6.i
  ], !dbg !747

bb2.i:                                            ; preds = %bb1.i
  switch i32 %protocol, label %bb5.i [
    i32 6, label %bb2.i13
    i32 0, label %bb2.i13
  ]

bb5.i:                                            ; preds = %bb2.i
  tail call void @klee_warning(i8* getelementptr inbounds ([21 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !748
  %4 = tail call i32* @__errno_location() nounwind readnone, !dbg !749
  store i32 93, i32* %4, align 4, !dbg !749
  br label %bb9, !dbg !750

bb6.i:                                            ; preds = %bb1.i
  %5 = icmp eq i32 %domain, 1, !dbg !751
  br i1 %5, label %bb7.i, label %bb8.i, !dbg !751

bb7.i:                                            ; preds = %bb6.i
  tail call void @klee_warning(i8* getelementptr inbounds ([43 x i8]* @.str17, i64 0, i64 0)) nounwind, !dbg !752
  %6 = tail call i32* @__errno_location() nounwind readnone, !dbg !753
  store i32 93, i32* %6, align 4, !dbg !753
  br label %bb9, !dbg !754

bb8.i:                                            ; preds = %bb6.i
  switch i32 %protocol, label %bb12.i [
    i32 17, label %bb2.i13
    i32 0, label %bb2.i13
  ]

bb12.i:                                           ; preds = %bb8.i
  tail call void @klee_warning(i8* getelementptr inbounds ([21 x i8]* @.str16, i64 0, i64 0)) nounwind, !dbg !755
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !756
  store i32 93, i32* %7, align 4, !dbg !756
  br label %bb9, !dbg !757

bb13.i:                                           ; preds = %bb1.i
  tail call void @klee_warning(i8* getelementptr inbounds ([24 x i8]* @.str18, i64 0, i64 0)) nounwind, !dbg !758
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !759
  store i32 93, i32* %8, align 4, !dbg !759
  br label %bb9, !dbg !760

bb2:                                              ; preds = %entry
  %9 = tail call i32 (...)* @_validate_netlink_socket(i32 %domain, i32 %1, i32 %protocol) nounwind, !dbg !761
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !299), !dbg !761
  %10 = icmp eq i32 %9, -1, !dbg !762
  br i1 %10, label %bb9, label %bb2.i13, !dbg !762

bb4:                                              ; preds = %entry
  tail call void @klee_warning(i8* getelementptr inbounds ([26 x i8]* @.str44, i64 0, i64 0)) nounwind, !dbg !763
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !764
  store i32 22, i32* %11, align 4, !dbg !764
  br label %bb9, !dbg !765

bb.i11:                                           ; preds = %bb2.i13
  %12 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), i32 %fd.0.i) nounwind, !dbg !766
  %13 = load i32* %scevgep12.i, align 8, !dbg !768
  %14 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), i32 %13) nounwind, !dbg !768
  %15 = load i32* %scevgep12.i, align 8, !dbg !769
  %16 = icmp eq i32 %15, 0, !dbg !769
  br i1 %16, label %_create_socket_file.exit, label %bb1.i12, !dbg !769

bb1.i12:                                          ; preds = %bb.i11
  %indvar.next.i = add i64 %indvar.i, 1
  br label %bb2.i13, !dbg !770

bb2.i13:                                          ; preds = %bb2.i, %bb2.i, %bb8.i, %bb8.i, %bb2, %bb1.i12
  %indvar.i = phi i64 [ %indvar.next.i, %bb1.i12 ], [ 0, %bb2 ], [ 0, %bb8.i ], [ 0, %bb8.i ], [ 0, %bb2.i ], [ 0, %bb2.i ]
  %scevgep12.i = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %indvar.i, i32 0
  %fd.0.i = trunc i64 %indvar.i to i32
  %17 = icmp slt i32 %fd.0.i, 16, !dbg !770
  br i1 %17, label %bb.i11, label %bb3.i, !dbg !770

bb3.i:                                            ; preds = %bb2.i13
  %18 = icmp eq i32 %fd.0.i, 16, !dbg !771
  br i1 %18, label %_create_socket_file.exit.thread, label %_create_socket_file.exit, !dbg !771

_create_socket_file.exit.thread:                  ; preds = %bb3.i
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !772
  store i32 24, i32* %19, align 4, !dbg !772
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !300), !dbg !767
  br label %bb8

_create_socket_file.exit:                         ; preds = %bb.i11, %bb3.i
  %20 = add nsw i32 %fd.0.i, 16, !dbg !773
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !300), !dbg !767
  %21 = icmp sgt i32 %20, -1, !dbg !774
  br i1 %21, label %bb6, label %bb8, !dbg !774

bb6:                                              ; preds = %_create_socket_file.exit
  tail call void @llvm.dbg.declare(metadata !{null}, metadata !301), !dbg !775
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !162), !dbg !776
  %22 = sext i32 %fd.0.i to i64, !dbg !778
  %23 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, !dbg !778
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %23}, i64 0, metadata !306), !dbg !777
  %24 = bitcast %struct.sym_socket* %23 to i8*, !dbg !779
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 72, i32 8, i1 false), !dbg !779
  %25 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, i32 0, !dbg !780
  store i32 1, i32* %25, align 8, !dbg !780
  %26 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, i32 1, !dbg !781
  store i32 %1, i32* %26, align 4, !dbg !781
  %27 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, i32 2, !dbg !782
  store i32 %domain, i32* %27, align 8, !dbg !782
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, i32 3, !dbg !783
  store i32 %protocol, i32* %28, align 4, !dbg !783
  %29 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 %22, i32 5, !dbg !784
  %30 = load %struct.end_point_t** %29, align 8, !dbg !784
  %31 = icmp eq %struct.end_point_t* %30, null, !dbg !784
  br i1 %31, label %bb7, label %bb8, !dbg !784

bb7:                                              ; preds = %bb6
  %32 = tail call i32 @puts(i8* getelementptr inbounds ([97 x i8]* @.str46, i64 0, i64 0)) nounwind, !dbg !785
  br label %bb8, !dbg !785

bb8:                                              ; preds = %_create_socket_file.exit.thread, %bb7, %bb6, %_create_socket_file.exit
  %.0.i1519 = phi i32 [ -1, %_create_socket_file.exit.thread ], [ %20, %bb7 ], [ %20, %bb6 ], [ %20, %_create_socket_file.exit ]
  %33 = tail call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([40 x i8]* @.str47, i64 0, i64 0), i32 %.0.i1519) nounwind, !dbg !786
  br label %bb9, !dbg !787

bb9:                                              ; preds = %bb5.i, %bb12.i, %bb7.i, %bb13.i, %bb2, %bb8, %bb4
  %.0 = phi i32 [ -1, %bb4 ], [ %.0.i1519, %bb8 ], [ -1, %bb2 ], [ -1, %bb13.i ], [ -1, %bb7.i ], [ -1, %bb12.i ], [ -1, %bb5.i ]
  ret i32 %.0, !dbg !788
}

declare i32 @_validate_netlink_socket(...)

!llvm.dbg.sp = !{!0, !36, !37, !38, !76, !79, !82, !88, !91, !113, !116, !122, !123, !124, !127, !132, !133, !136, !139, !140, !145, !148, !149, !150, !153, !154, !155, !158}
!llvm.dbg.lv._stream_is_empty = !{!159}
!llvm.dbg.lv._stream_is_full = !{!160}
!llvm.dbg.lv._stream_is_closed = !{!161}
!llvm.dbg.lv.get_sym_socket = !{!162}
!llvm.dbg.lv._create_socket_file = !{!163}
!llvm.dbg.lv.__check_is_socket = !{!165}
!llvm.dbg.lv._get_endpoint_name = !{!166, !167, !168, !169, !170}
!llvm.dbg.lv.getsockname = !{!172, !173, !174, !175}
!llvm.dbg.lv.__find_inet_end = !{!177, !178, !180}
!llvm.dbg.lv._validate_net_socket = !{!183, !184, !185}
!llvm.dbg.lv.__read_stream_socket_raw = !{!186, !187, !188, !189}
!llvm.dbg.lv.__read_stream_socket = !{!191, !192, !193}
!llvm.dbg.lv._read_socket = !{!194, !195, !196}
!llvm.dbg.lv.__libc_recv = !{!197, !198, !199, !200, !201}
!llvm.dbg.lv.__write_stream_socket = !{!203, !204, !205, !206, !208}
!llvm.dbg.lv._write_socket = !{!209, !210, !211}
!llvm.dbg.lv.listen = !{!212, !213, !214, !216}
!llvm.dbg.lv.__get_unused_port = !{!217, !219, !220, !221, !223, !225, !226, !228, !229, !231, !232, !234}
!llvm.dbg.lv.__get_inet_end = !{!235, !236, !238, !239, !240, !242, !243, !245}
!llvm.dbg.lv._inet_stream_reach = !{!247, !248, !249, !250}
!llvm.dbg.lv.__release_end_point = !{!253}
!llvm.dbg.lv.__libc_accept = !{!254, !255, !256, !257, !259, !260, !261, !262, !263, !264, !265}
!llvm.dbg.lv._bind = !{!267, !268, !269, !270}
!llvm.dbg.lv.bind = !{!272, !273, !274, !275}
!llvm.dbg.lv._stream_connect = !{!277, !278, !279, !280, !282}
!llvm.dbg.lv.__libc_connect = !{!283, !284, !285, !286}
!llvm.dbg.lv._get_socket_num = !{!288, !289, !291, !293}
!llvm.dbg.lv.socket = !{!294, !295, !296, !297, !299, !300, !301, !306}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_is_empty", metadata !"_stream_is_empty", metadata !"", metadata !3, i32 75, metadata !4, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"sockets.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"sockets.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
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
!38 = metadata !{i32 589870, i32 0, metadata !1, metadata !"get_sym_socket", metadata !"get_sym_socket", metadata !"get_sym_socket", metadata !1, i32 109, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.sym_socket* (i32)* @get_sym_socket} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !41, metadata !6}
!41 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 589846, metadata !3, metadata !"sym_socket", metadata !3, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 589843, metadata !1, metadata !"socket", metadata !3, i32 13, i64 576, i64 64, i64 0, i32 0, null, metadata !44, i32 0, null} ; [ DW_TAG_structure_type ]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !69, metadata !70, metadata !71, metadata !72, metadata !74, metadata !75}
!45 = metadata !{i32 589837, metadata !43, metadata !"status", metadata !3, i32 28, i64 32, i64 32, i64 0, i32 0, metadata !6} ; [ DW_TAG_member ]
!46 = metadata !{i32 589837, metadata !43, metadata !"type", metadata !3, i32 29, i64 32, i64 32, i64 32, i32 0, metadata !6} ; [ DW_TAG_member ]
!47 = metadata !{i32 589837, metadata !43, metadata !"domain", metadata !3, i32 30, i64 32, i64 32, i64 64, i32 0, metadata !6} ; [ DW_TAG_member ]
!48 = metadata !{i32 589837, metadata !43, metadata !"protocol", metadata !3, i32 31, i64 32, i64 32, i64 96, i32 0, metadata !6} ; [ DW_TAG_member ]
!49 = metadata !{i32 589837, metadata !43, metadata !"local_end", metadata !3, i32 33, i64 64, i64 64, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ]
!50 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ]
!51 = metadata !{i32 589846, metadata !3, metadata !"end_point_t", metadata !3, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 589843, metadata !1, metadata !"", metadata !3, i32 15, i64 192, i64 64, i64 0, i32 0, null, metadata !53, i32 0, null} ; [ DW_TAG_structure_type ]
!53 = metadata !{metadata !54, metadata !65, metadata !67, metadata !68}
!54 = metadata !{i32 589837, metadata !52, metadata !"addr", metadata !3, i32 16, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ]
!55 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !57, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !58, i32 0, null} ; [ DW_TAG_structure_type ]
!57 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!58 = metadata !{metadata !59, metadata !61}
!59 = metadata !{i32 589837, metadata !56, metadata !"sa_family", metadata !57, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ]
!60 = metadata !{i32 589846, metadata !57, metadata !"sa_family_t", metadata !57, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!61 = metadata !{i32 589837, metadata !56, metadata !"sa_data", metadata !57, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !62} ; [ DW_TAG_member ]
!62 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !14, metadata !63, i32 0, null} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 589857, i64 0, i64 13}       ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 589837, metadata !52, metadata !"socket", metadata !3, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ]
!66 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ]
!67 = metadata !{i32 589837, metadata !52, metadata !"refcount", metadata !3, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ]
!68 = metadata !{i32 589837, metadata !52, metadata !"allocated", metadata !3, i32 21, i64 8, i64 8, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ]
!69 = metadata !{i32 589837, metadata !43, metadata !"remote_end", metadata !3, i32 34, i64 64, i64 64, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ]
!70 = metadata !{i32 589837, metadata !43, metadata !"out", metadata !3, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !7} ; [ DW_TAG_member ]
!71 = metadata !{i32 589837, metadata !43, metadata !"in", metadata !3, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !7} ; [ DW_TAG_member ]
!72 = metadata !{i32 589837, metadata !43, metadata !"conn_evt_queue", metadata !3, i32 41, i64 64, i64 64, i64 384, i32 0, metadata !73} ; [ DW_TAG_member ]
!73 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 589837, metadata !43, metadata !"conn_wlist", metadata !3, i32 42, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ]
!75 = metadata !{i32 589837, metadata !43, metadata !"listen", metadata !3, i32 45, i64 64, i64 64, i64 512, i32 0, metadata !7} ; [ DW_TAG_member ]
!76 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_create_socket_file", metadata !"_create_socket_file", metadata !"", metadata !1, i32 56, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !6}
!79 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__check_is_socket", metadata !"__check_is_socket", metadata !"__check_is_socket", metadata !1, i32 168, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @__check_is_socket} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{metadata !6, metadata !6}
!82 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_get_endpoint_name", metadata !"_get_endpoint_name", metadata !"", metadata !1, i32 9, metadata !83, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.sym_socket*, %struct.end_point_t*, %struct.sockaddr*, i32*)* @_get_endpoint_name} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !41, metadata !50, metadata !55, metadata !85}
!85 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 589846, metadata !87, metadata !"socklen_t", metadata !87, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!87 = metadata !{i32 589865, metadata !"confname.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!88 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getsockname", metadata !"getsockname", metadata !"getsockname", metadata !1, i32 730, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @getsockname} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !6, metadata !6, metadata !55, metadata !85}
!91 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__find_inet_end", metadata !"__find_inet_end", metadata !"", metadata !1, i32 210, metadata !92, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, null} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{metadata !50, metadata !94}
!94 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_const_type ]
!96 = metadata !{i32 589843, metadata !1, metadata !"sockaddr_in", metadata !97, i32 92, i64 128, i64 32, i64 0, i32 0, null, metadata !98, i32 0, null} ; [ DW_TAG_structure_type ]
!97 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!98 = metadata !{metadata !99, metadata !101, metadata !103, metadata !108}
!99 = metadata !{i32 589837, metadata !96, metadata !"sin_family", metadata !100, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ]
!100 = metadata !{i32 589865, metadata !"in.h", metadata !"/usr/include/netinet", metadata !2} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 589837, metadata !96, metadata !"sin_port", metadata !100, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !102} ; [ DW_TAG_member ]
!102 = metadata !{i32 589846, metadata !100, metadata !"in_port_t", metadata !100, i32 101, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ]
!103 = metadata !{i32 589837, metadata !96, metadata !"sin_addr", metadata !100, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !104} ; [ DW_TAG_member ]
!104 = metadata !{i32 589843, metadata !1, metadata !"in_addr", metadata !100, i32 143, i64 32, i64 32, i64 0, i32 0, null, metadata !105, i32 0, null} ; [ DW_TAG_structure_type ]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 589837, metadata !104, metadata !"s_addr", metadata !100, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ]
!107 = metadata !{i32 589846, metadata !100, metadata !"in_addr_t", metadata !100, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!108 = metadata !{i32 589837, metadata !96, metadata !"sin_zero", metadata !100, i32 235, i64 64, i64 8, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ]
!109 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 8, i64 0, i32 0, metadata !110, metadata !111, i32 0, null} ; [ DW_TAG_array_type ]
!110 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 589857, i64 0, i64 7}       ; [ DW_TAG_subrange_type ]
!113 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_validate_net_socket", metadata !"_validate_net_socket", metadata !"", metadata !1, i32 77, metadata !114, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !6, metadata !6, metadata !6, metadata !6}
!116 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__read_stream_socket_raw", metadata !"__read_stream_socket_raw", metadata !"__read_stream_socket_raw", metadata !1, i32 652, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.sym_socket*, i8*, i64)* @__read_stream_socket_raw} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, null} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{metadata !119, metadata !41, metadata !121, metadata !16}
!119 = metadata !{i32 589846, metadata !17, metadata !"ssize_t", metadata !17, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ]
!120 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!122 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__read_stream_socket", metadata !"__read_stream_socket", metadata !"__read_stream_socket", metadata !1, i32 679, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.sym_socket*, i8*, i64)* @__read_stream_socket} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_read_socket", metadata !"_read_socket", metadata !"_read_socket", metadata !1, i32 700, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.sym_socket*, i8*, i64)* @_read_socket} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__libc_recv", metadata !"__libc_recv", metadata !"__libc_recv", metadata !1, i32 710, metadata !125, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i32)* @__libc_recv} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null} ; [ DW_TAG_subroutine_type ]
!126 = metadata !{metadata !119, metadata !6, metadata !121, metadata !16, metadata !6}
!127 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__write_stream_socket", metadata !"__write_stream_socket", metadata !"__write_stream_socket", metadata !1, i32 606, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.sym_socket*, i8*, i64)* @__write_stream_socket} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, null} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !119, metadata !41, metadata !130, metadata !16}
!130 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!132 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_write_socket", metadata !"_write_socket", metadata !"_write_socket", metadata !1, i32 642, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.sym_socket*, i8*, i64)* @_write_socket} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 589870, i32 0, metadata !1, metadata !"listen", metadata !"listen", metadata !"listen", metadata !1, i32 444, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @listen} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !6, metadata !6, metadata !6}
!136 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_unused_port", metadata !"__get_unused_port", metadata !"__get_unused_port", metadata !1, i32 180, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 ()* @__get_unused_port} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, null} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !102}
!139 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_inet_end", metadata !"__get_inet_end", metadata !"", metadata !1, i32 230, metadata !92, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.end_point_t* (%struct.sockaddr_in*)* @__get_inet_end} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_inet_stream_reach", metadata !"_inet_stream_reach", metadata !"", metadata !1, i32 267, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, null} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{metadata !6, metadata !41, metadata !143, metadata !86}
!143 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!144 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 16, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!145 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__release_end_point", metadata !"__release_end_point", metadata !"", metadata !1, i32 39, metadata !146, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !50}
!148 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__libc_accept", metadata !"__libc_accept", metadata !"__libc_accept", metadata !1, i32 474, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32*)* @__libc_accept} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_bind", metadata !"_bind", metadata !"", metadata !1, i32 395, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 589870, i32 0, metadata !1, metadata !"bind", metadata !"bind", metadata !"bind", metadata !1, i32 433, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @bind} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !6, metadata !6, metadata !143, metadata !86}
!153 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_connect", metadata !"_stream_connect", metadata !"", metadata !1, i32 311, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__libc_connect", metadata !"__libc_connect", metadata !"__libc_connect", metadata !1, i32 377, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.sockaddr*, i32)* @__libc_connect} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_get_socket_num", metadata !"_get_socket_num", metadata !"_get_socket_num", metadata !1, i32 300, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.sockaddr*)* @_get_socket_num} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{metadata !6, metadata !55}
!158 = metadata !{i32 589870, i32 0, metadata !1, metadata !"socket", metadata !"socket", metadata !"socket", metadata !1, i32 114, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @socket} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 590081, metadata !0, metadata !"buff", metadata !3, i32 75, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 590081, metadata !36, metadata !"buff", metadata !3, i32 79, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 590081, metadata !37, metadata !"buff", metadata !3, i32 83, metadata !7, i32 0} ; [ DW_TAG_arg_variable ]
!162 = metadata !{i32 590081, metadata !38, metadata !"fd", metadata !1, i32 108, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 590080, metadata !164, metadata !"fd", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 589835, metadata !76, i32 56, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 590081, metadata !79, metadata !"sockfd", metadata !1, i32 167, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 590081, metadata !82, metadata !"sock", metadata !1, i32 8, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 590081, metadata !82, metadata !"end_point", metadata !1, i32 8, metadata !50, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 590081, metadata !82, metadata !"addr", metadata !1, i32 8, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 590081, metadata !82, metadata !"addrlen", metadata !1, i32 9, metadata !85, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 590080, metadata !171, metadata !"len", metadata !1, i32 19, metadata !86, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 589835, metadata !82, i32 9, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 590081, metadata !88, metadata !"sockfd", metadata !1, i32 729, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 590081, metadata !88, metadata !"addr", metadata !1, i32 729, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 590081, metadata !88, metadata !"addrlen", metadata !1, i32 729, metadata !85, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 590080, metadata !176, metadata !"sock", metadata !1, i32 742, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 589835, metadata !88, i32 730, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 590081, metadata !91, metadata !"addr", metadata !1, i32 210, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 590080, metadata !179, metadata !"i", metadata !1, i32 216, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 589835, metadata !91, i32 210, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 590080, metadata !181, metadata !"crt", metadata !1, i32 221, metadata !182, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 589835, metadata !179, i32 218, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ]
!183 = metadata !{i32 590081, metadata !113, metadata !"domain", metadata !1, i32 77, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!184 = metadata !{i32 590081, metadata !113, metadata !"type", metadata !1, i32 77, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 590081, metadata !113, metadata !"protocol", metadata !1, i32 77, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 590081, metadata !116, metadata !"sock", metadata !1, i32 652, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 590081, metadata !116, metadata !"buf", metadata !1, i32 652, metadata !121, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 590081, metadata !116, metadata !"count", metadata !1, i32 652, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 590080, metadata !190, metadata !"res", metadata !1, i32 661, metadata !119, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 589835, metadata !116, i32 652, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 590081, metadata !122, metadata !"sock", metadata !1, i32 679, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 590081, metadata !122, metadata !"buf", metadata !1, i32 679, metadata !121, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 590081, metadata !122, metadata !"count", metadata !1, i32 679, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 590081, metadata !123, metadata !"sock", metadata !1, i32 700, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 590081, metadata !123, metadata !"buf", metadata !1, i32 700, metadata !121, i32 0} ; [ DW_TAG_arg_variable ]
!196 = metadata !{i32 590081, metadata !123, metadata !"count", metadata !1, i32 700, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 590081, metadata !124, metadata !"sockfd", metadata !1, i32 709, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 590081, metadata !124, metadata !"buffer", metadata !1, i32 709, metadata !121, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 590081, metadata !124, metadata !"len", metadata !1, i32 709, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 590081, metadata !124, metadata !"flags", metadata !1, i32 709, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 590080, metadata !202, metadata !"sock", metadata !1, i32 714, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 589835, metadata !124, i32 710, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 590081, metadata !127, metadata !"sock", metadata !1, i32 606, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 590081, metadata !127, metadata !"buf", metadata !1, i32 606, metadata !130, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 590081, metadata !127, metadata !"count", metadata !1, i32 606, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 590080, metadata !207, metadata !"out_stream", metadata !1, i32 612, metadata !7, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 589835, metadata !127, i32 606, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 590080, metadata !207, metadata !"res", metadata !1, i32 624, metadata !119, i32 0} ; [ DW_TAG_auto_variable ]
!209 = metadata !{i32 590081, metadata !132, metadata !"sock", metadata !1, i32 642, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 590081, metadata !132, metadata !"buf", metadata !1, i32 642, metadata !121, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 590081, metadata !132, metadata !"count", metadata !1, i32 642, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 590081, metadata !133, metadata !"sockfd", metadata !1, i32 444, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 590081, metadata !133, metadata !"backlog", metadata !1, i32 444, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 590080, metadata !215, metadata !"a", metadata !1, i32 446, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 589835, metadata !133, i32 444, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!216 = metadata !{i32 590080, metadata !215, metadata !"sock", metadata !1, i32 451, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!217 = metadata !{i32 590080, metadata !218, metadata !"i", metadata !1, i32 181, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 589835, metadata !136, i32 180, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 590080, metadata !218, metadata !"found", metadata !1, i32 182, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!220 = metadata !{i32 590080, metadata !218, metadata !"res", metadata !1, i32 201, metadata !102, i32 0} ; [ DW_TAG_auto_variable ]
!221 = metadata !{i32 590080, metadata !222, metadata !"addr", metadata !1, i32 191, metadata !182, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 589835, metadata !218, i32 188, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 590080, metadata !224, metadata !"__v", metadata !1, i32 194, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 589835, metadata !222, i32 194, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 590080, metadata !224, metadata !"__x", metadata !1, i32 194, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 590080, metadata !227, metadata !"__v", metadata !1, i32 194, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 589835, metadata !224, i32 194, i32 0, metadata !1, i32 21} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 590080, metadata !227, metadata !"__x", metadata !1, i32 194, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 590080, metadata !230, metadata !"__v", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 589835, metadata !218, i32 203, i32 0, metadata !1, i32 22} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 590080, metadata !230, metadata !"__x", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!232 = metadata !{i32 590080, metadata !233, metadata !"__v", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!233 = metadata !{i32 589835, metadata !230, i32 203, i32 0, metadata !1, i32 23} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 590080, metadata !233, metadata !"__x", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!235 = metadata !{i32 590081, metadata !139, metadata !"addr", metadata !1, i32 230, metadata !94, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 590080, metadata !237, metadata !"port", metadata !1, i32 235, metadata !102, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 589835, metadata !139, i32 230, i32 0, metadata !1, i32 24} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 590080, metadata !237, metadata !"i", metadata !1, i32 248, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 590080, metadata !237, metadata !"newaddr", metadata !1, i32 259, metadata !182, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 590080, metadata !241, metadata !"__v", metadata !1, i32 231, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 589835, metadata !237, i32 231, i32 0, metadata !1, i32 25} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 590080, metadata !241, metadata !"__x", metadata !1, i32 231, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 590080, metadata !244, metadata !"exising_endpoint", metadata !1, i32 241, metadata !50, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 589835, metadata !237, i32 240, i32 0, metadata !1, i32 26} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 590080, metadata !246, metadata !"__i", metadata !1, i32 249, metadata !30, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 589835, metadata !237, i32 249, i32 0, metadata !1, i32 27} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 590081, metadata !140, metadata !"sock", metadata !1, i32 267, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 590081, metadata !140, metadata !"addr", metadata !1, i32 267, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 590081, metadata !140, metadata !"addrlen", metadata !1, i32 267, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 590080, metadata !251, metadata !"local_addr", metadata !1, i32 270, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 589835, metadata !252, i32 271, i32 0, metadata !1, i32 29} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 589835, metadata !140, i32 267, i32 0, metadata !1, i32 28} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 590081, metadata !145, metadata !"end_point", metadata !1, i32 39, metadata !50, i32 0} ; [ DW_TAG_arg_variable ]
!254 = metadata !{i32 590081, metadata !148, metadata !"sockfd", metadata !1, i32 474, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 590081, metadata !148, metadata !"addr", metadata !1, i32 474, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!256 = metadata !{i32 590081, metadata !148, metadata !"addrlen", metadata !1, i32 474, metadata !85, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 590080, metadata !258, metadata !"sock", metadata !1, i32 483, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 589835, metadata !148, i32 474, i32 0, metadata !1, i32 31} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 590080, metadata !258, metadata !"remote", metadata !1, i32 496, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 590080, metadata !258, metadata !"local", metadata !1, i32 496, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 590080, metadata !258, metadata !"end_point", metadata !1, i32 497, metadata !50, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 590080, metadata !258, metadata !"res", metadata !1, i32 499, metadata !119, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 590080, metadata !258, metadata !"failure", metadata !1, i32 523, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!264 = metadata !{i32 590080, metadata !258, metadata !"fd", metadata !1, i32 542, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 590080, metadata !266, metadata !"local_addr", metadata !1, i32 526, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 589835, metadata !258, i32 527, i32 0, metadata !1, i32 32} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 590081, metadata !149, metadata !"sock", metadata !1, i32 395, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 590081, metadata !149, metadata !"addr", metadata !1, i32 395, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 590081, metadata !149, metadata !"addrlen", metadata !1, i32 395, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 590080, metadata !271, metadata !"end_point", metadata !1, i32 406, metadata !50, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 589835, metadata !149, i32 395, i32 0, metadata !1, i32 33} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 590081, metadata !150, metadata !"sockfd", metadata !1, i32 433, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 590081, metadata !150, metadata !"addr", metadata !1, i32 433, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 590081, metadata !150, metadata !"addrlen", metadata !1, i32 433, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 590080, metadata !276, metadata !"sock", metadata !1, i32 437, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 589835, metadata !150, i32 433, i32 0, metadata !1, i32 34} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 590081, metadata !153, metadata !"sock", metadata !1, i32 311, metadata !41, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 590081, metadata !153, metadata !"addr", metadata !1, i32 311, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!279 = metadata !{i32 590081, metadata !153, metadata !"addrlen", metadata !1, i32 311, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 590080, metadata !281, metadata !"remote", metadata !1, i32 338, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!281 = metadata !{i32 589835, metadata !153, i32 311, i32 0, metadata !1, i32 35} ; [ DW_TAG_lexical_block ]
!282 = metadata !{i32 590080, metadata !281, metadata !"res", metadata !1, i32 349, metadata !119, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 590081, metadata !154, metadata !"sockfd", metadata !1, i32 376, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!284 = metadata !{i32 590081, metadata !154, metadata !"addr", metadata !1, i32 376, metadata !143, i32 0} ; [ DW_TAG_arg_variable ]
!285 = metadata !{i32 590081, metadata !154, metadata !"addrlen", metadata !1, i32 376, metadata !86, i32 0} ; [ DW_TAG_arg_variable ]
!286 = metadata !{i32 590080, metadata !287, metadata !"sock", metadata !1, i32 386, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!287 = metadata !{i32 589835, metadata !154, i32 377, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 590081, metadata !155, metadata !"addr", metadata !1, i32 299, metadata !55, i32 0} ; [ DW_TAG_arg_variable ]
!289 = metadata !{i32 590080, metadata !290, metadata !"fd", metadata !1, i32 301, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!290 = metadata !{i32 589835, metadata !155, i32 300, i32 0, metadata !1, i32 37} ; [ DW_TAG_lexical_block ]
!291 = metadata !{i32 590080, metadata !292, metadata !"__s1_len", metadata !1, i32 304, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!292 = metadata !{i32 589835, metadata !290, i32 304, i32 0, metadata !1, i32 38} ; [ DW_TAG_lexical_block ]
!293 = metadata !{i32 590080, metadata !292, metadata !"__s2_len", metadata !1, i32 304, metadata !16, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 590081, metadata !158, metadata !"domain", metadata !1, i32 113, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 590081, metadata !158, metadata !"type", metadata !1, i32 113, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!296 = metadata !{i32 590081, metadata !158, metadata !"protocol", metadata !1, i32 113, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 590080, metadata !298, metadata !"base_type", metadata !1, i32 118, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!298 = metadata !{i32 589835, metadata !158, i32 114, i32 0, metadata !1, i32 39} ; [ DW_TAG_lexical_block ]
!299 = metadata !{i32 590080, metadata !298, metadata !"res", metadata !1, i32 119, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!300 = metadata !{i32 590080, metadata !298, metadata !"socknum", metadata !1, i32 139, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!301 = metadata !{i32 590080, metadata !302, metadata !"name", metadata !1, i32 142, metadata !303, i32 0} ; [ DW_TAG_auto_variable ]
!302 = metadata !{i32 589835, metadata !298, i32 142, i32 0, metadata !1, i32 40} ; [ DW_TAG_lexical_block ]
!303 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 56, i64 8, i64 0, i32 0, metadata !14, metadata !304, i32 0, null} ; [ DW_TAG_array_type ]
!304 = metadata !{metadata !305}
!305 = metadata !{i32 589857, i64 0, i64 6}       ; [ DW_TAG_subrange_type ]
!306 = metadata !{i32 590080, metadata !302, metadata !"sock", metadata !1, i32 145, metadata !41, i32 0} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 108, i32 0, metadata !38, null}
!308 = metadata !{i32 110, i32 0, metadata !309, null}
!309 = metadata !{i32 589835, metadata !38, i32 109, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!310 = metadata !{i32 167, i32 0, metadata !79, null}
!311 = metadata !{i32 169, i32 0, metadata !312, null}
!312 = metadata !{i32 589835, metadata !79, i32 168, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 171, i32 0, metadata !312, null}
!314 = metadata !{i32 172, i32 0, metadata !312, null}
!315 = metadata !{i32 174, i32 0, metadata !312, null}
!316 = metadata !{i32 175, i32 0, metadata !312, null}
!317 = metadata !{i32 8, i32 0, metadata !82, null}
!318 = metadata !{i32 9, i32 0, metadata !82, null}
!319 = metadata !{i32 12, i32 0, metadata !171, null}
!320 = metadata !{i32 15, i32 0, metadata !171, null}
!321 = metadata !{i32 18, i32 0, metadata !171, null}
!322 = metadata !{i32 16}
!323 = metadata !{i32 19, i32 0, metadata !171, null}
!324 = metadata !{i32 20, i32 0, metadata !171, null}
!325 = metadata !{i32 26, i32 0, metadata !171, null}
!326 = metadata !{i32 28, i32 0, metadata !171, null}
!327 = metadata !{i32 30, i32 0, metadata !171, null}
!328 = metadata !{i32 32, i32 0, metadata !171, null}
!329 = metadata !{i32 33, i32 0, metadata !171, null}
!330 = metadata !{i32 35, i32 0, metadata !171, null}
!331 = metadata !{i32 37, i32 0, metadata !171, null}
!332 = metadata !{i32 729, i32 0, metadata !88, null}
!333 = metadata !{i32 733, i32 0, metadata !176, null}
!334 = metadata !{i32 735, i32 0, metadata !176, null}
!335 = metadata !{i32 736, i32 0, metadata !176, null}
!336 = metadata !{i32 738, i32 0, metadata !176, null}
!337 = metadata !{i32 167, i32 0, metadata !79, metadata !338}
!338 = metadata !{i32 740, i32 0, metadata !176, null}
!339 = metadata !{i32 169, i32 0, metadata !312, metadata !338}
!340 = metadata !{i32 171, i32 0, metadata !312, metadata !338}
!341 = metadata !{i32 172, i32 0, metadata !312, metadata !338}
!342 = metadata !{i32 174, i32 0, metadata !312, metadata !338}
!343 = metadata !{i32 175, i32 0, metadata !312, metadata !338}
!344 = metadata !{i32 108, i32 0, metadata !38, metadata !345}
!345 = metadata !{i32 742, i32 0, metadata !176, null}
!346 = metadata !{i32 743, i32 0, metadata !176, null}
!347 = metadata !{i32 744, i32 0, metadata !176, null}
!348 = metadata !{i32 745, i32 0, metadata !176, null}
!349 = metadata !{i32 110, i32 0, metadata !309, metadata !345}
!350 = metadata !{i32 748, i32 0, metadata !176, null}
!351 = metadata !{i32 750, i32 0, metadata !176, null}
!352 = metadata !{i32 652, i32 0, metadata !116, null}
!353 = metadata !{i32 653, i32 0, metadata !190, null}
!354 = metadata !{i32 654, i32 0, metadata !190, null}
!355 = metadata !{i32 75, i32 0, metadata !0, metadata !354}
!356 = metadata !{i32 76, i32 0, metadata !357, metadata !354}
!357 = metadata !{i32 589835, metadata !0, i32 75, i32 0, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!358 = metadata !{i32 83, i32 0, metadata !37, metadata !354}
!359 = metadata !{i32 84, i32 0, metadata !360, metadata !354}
!360 = metadata !{i32 589835, metadata !37, i32 83, i32 0, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!361 = metadata !{i32 655, i32 0, metadata !190, null}
!362 = metadata !{i32 656, i32 0, metadata !190, null}
!363 = metadata !{i32 658, i32 0, metadata !190, null}
!364 = metadata !{i32 661, i32 0, metadata !190, null}
!365 = metadata !{i32 663, i32 0, metadata !190, null}
!366 = metadata !{i32 664, i32 0, metadata !190, null}
!367 = metadata !{i32 666, i32 0, metadata !190, null}
!368 = metadata !{i32 667, i32 0, metadata !190, null}
!369 = metadata !{i32 670, i32 0, metadata !190, null}
!370 = metadata !{i32 672, i32 0, metadata !190, null}
!371 = metadata !{i32 679, i32 0, metadata !122, null}
!372 = metadata !{i32 682, i32 0, metadata !373, null}
!373 = metadata !{i32 589835, metadata !122, i32 679, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!374 = metadata !{i32 683, i32 0, metadata !373, null}
!375 = metadata !{i32 684, i32 0, metadata !373, null}
!376 = metadata !{i32 685, i32 0, metadata !373, null}
!377 = metadata !{i32 688, i32 0, metadata !373, null}
!378 = metadata !{i32 690, i32 0, metadata !373, null}
!379 = metadata !{i32 691, i32 0, metadata !373, null}
!380 = metadata !{i32 693, i32 0, metadata !373, null}
!381 = metadata !{i32 696, i32 0, metadata !373, null}
!382 = metadata !{i32 700, i32 0, metadata !123, null}
!383 = metadata !{i32 701, i32 0, metadata !384, null}
!384 = metadata !{i32 589835, metadata !123, i32 700, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!385 = metadata !{i32 679, i32 0, metadata !122, metadata !386}
!386 = metadata !{i32 702, i32 0, metadata !384, null}
!387 = metadata !{i32 682, i32 0, metadata !373, metadata !386}
!388 = metadata !{i32 683, i32 0, metadata !373, metadata !386}
!389 = metadata !{i32 684, i32 0, metadata !373, metadata !386}
!390 = metadata !{i32 685, i32 0, metadata !373, metadata !386}
!391 = metadata !{i32 688, i32 0, metadata !373, metadata !386}
!392 = metadata !{i32 690, i32 0, metadata !373, metadata !386}
!393 = metadata !{i32 691, i32 0, metadata !373, metadata !386}
!394 = metadata !{i32 693, i32 0, metadata !373, metadata !386}
!395 = metadata !{i32 696, i32 0, metadata !373, metadata !386}
!396 = metadata !{i32 704, i32 0, metadata !384, null}
!397 = metadata !{i32 709, i32 0, metadata !124, null}
!398 = metadata !{i32 167, i32 0, metadata !79, metadata !399}
!399 = metadata !{i32 712, i32 0, metadata !202, null}
!400 = metadata !{i32 169, i32 0, metadata !312, metadata !399}
!401 = metadata !{i32 171, i32 0, metadata !312, metadata !399}
!402 = metadata !{i32 172, i32 0, metadata !312, metadata !399}
!403 = metadata !{i32 174, i32 0, metadata !312, metadata !399}
!404 = metadata !{i32 175, i32 0, metadata !312, metadata !399}
!405 = metadata !{i32 108, i32 0, metadata !38, metadata !406}
!406 = metadata !{i32 714, i32 0, metadata !202, null}
!407 = metadata !{i32 110, i32 0, metadata !309, metadata !406}
!408 = metadata !{i32 716, i32 0, metadata !202, null}
!409 = metadata !{i32 717, i32 0, metadata !202, null}
!410 = metadata !{i32 723, i32 0, metadata !202, null}
!411 = metadata !{i32 724, i32 0, metadata !202, null}
!412 = metadata !{i32 606, i32 0, metadata !127, null}
!413 = metadata !{i32 607, i32 0, metadata !207, null}
!414 = metadata !{i32 608, i32 0, metadata !207, null}
!415 = metadata !{i32 609, i32 0, metadata !207, null}
!416 = metadata !{i32 612, i32 0, metadata !207, null}
!417 = metadata !{i32 614, i32 0, metadata !207, null}
!418 = metadata !{i32 83, i32 0, metadata !37, metadata !417}
!419 = metadata !{i32 84, i32 0, metadata !360, metadata !417}
!420 = metadata !{i32 616, i32 0, metadata !207, null}
!421 = metadata !{i32 617, i32 0, metadata !207, null}
!422 = metadata !{i32 620, i32 0, metadata !207, null}
!423 = metadata !{i32 624, i32 0, metadata !207, null}
!424 = metadata !{i32 626, i32 0, metadata !207, null}
!425 = metadata !{i32 627, i32 0, metadata !207, null}
!426 = metadata !{i32 629, i32 0, metadata !207, null}
!427 = metadata !{i32 630, i32 0, metadata !207, null}
!428 = metadata !{i32 633, i32 0, metadata !207, null}
!429 = metadata !{i32 635, i32 0, metadata !207, null}
!430 = metadata !{i32 642, i32 0, metadata !132, null}
!431 = metadata !{i32 643, i32 0, metadata !432, null}
!432 = metadata !{i32 589835, metadata !132, i32 642, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!433 = metadata !{i32 644, i32 0, metadata !432, null}
!434 = metadata !{i32 647, i32 0, metadata !432, null}
!435 = metadata !{i32 444, i32 0, metadata !133, null}
!436 = metadata !{i32 1024}
!437 = metadata !{i32 446, i32 0, metadata !215, null}
!438 = metadata !{i32 448, i32 0, metadata !215, null}
!439 = metadata !{i32 167, i32 0, metadata !79, metadata !440}
!440 = metadata !{i32 450, i32 0, metadata !215, null}
!441 = metadata !{i32 169, i32 0, metadata !312, metadata !440}
!442 = metadata !{i32 171, i32 0, metadata !312, metadata !440}
!443 = metadata !{i32 172, i32 0, metadata !312, metadata !440}
!444 = metadata !{i32 174, i32 0, metadata !312, metadata !440}
!445 = metadata !{i32 175, i32 0, metadata !312, metadata !440}
!446 = metadata !{i32 108, i32 0, metadata !38, metadata !447}
!447 = metadata !{i32 451, i32 0, metadata !215, null}
!448 = metadata !{i32 453, i32 0, metadata !215, null}
!449 = metadata !{i32 454, i32 0, metadata !215, null}
!450 = metadata !{i32 455, i32 0, metadata !215, null}
!451 = metadata !{i32 458, i32 0, metadata !215, null}
!452 = metadata !{i32 460, i32 0, metadata !215, null}
!453 = metadata !{i32 461, i32 0, metadata !215, null}
!454 = metadata !{i32 464, i32 0, metadata !215, null}
!455 = metadata !{i32 465, i32 0, metadata !215, null}
!456 = metadata !{i32 466, i32 0, metadata !215, null}
!457 = metadata !{i32 469, i32 0, metadata !215, null}
!458 = metadata !{i32 471, i32 0, metadata !215, null}
!459 = metadata !{i8 0}                           
!460 = metadata !{i32 182, i32 0, metadata !218, null}
!461 = metadata !{i32 188, i32 0, metadata !222, null}
!462 = metadata !{i32 191, i32 0, metadata !222, null}
!463 = metadata !{i32 193, i32 0, metadata !222, null}
!464 = metadata !{i32 194, i32 0, metadata !224, null}
!465 = metadata !{i32 187, i32 0, metadata !218, null}
!466 = metadata !{i32 201, i32 0, metadata !218, null}
!467 = metadata !{i32 203, i32 0, metadata !233, null}
!468 = metadata !{i32 203, i32 0, metadata !230, null}
!469 = metadata !{i32 205, i32 0, metadata !218, null}
!470 = metadata !{i32 230, i32 0, metadata !139, null}
!471 = metadata !{i32 231, i32 0, metadata !237, null}
!472 = metadata !{i32 235, i32 0, metadata !237, null}
!473 = metadata !{i32 236, i32 0, metadata !237, null}
!474 = metadata !{i32 188, i32 0, metadata !222, metadata !475}
!475 = metadata !{i32 237, i32 0, metadata !237, null}
!476 = metadata !{i32 191, i32 0, metadata !222, metadata !475}
!477 = metadata !{i32 193, i32 0, metadata !222, metadata !475}
!478 = metadata !{i32 194, i32 0, metadata !224, metadata !475}
!479 = metadata !{i32 187, i32 0, metadata !218, metadata !475}
!480 = metadata !{i32 201, i32 0, metadata !218, metadata !475}
!481 = metadata !{i32 203, i32 0, metadata !233, metadata !475}
!482 = metadata !{null}
!483 = metadata !{i32 203, i32 0, metadata !230, metadata !475}
!484 = metadata !{i32 240, i32 0, metadata !244, null}
!485 = metadata !{i32 210, i32 0, metadata !91, metadata !486}
!486 = metadata !{i32 241, i32 0, metadata !244, null}
!487 = metadata !{i32 211, i32 0, metadata !179, metadata !486}
!488 = metadata !{i32 212, i32 0, metadata !179, metadata !486}
!489 = metadata !{i32 214, i32 0, metadata !179, metadata !486}
!490 = metadata !{i32 0}
!491 = metadata !{i32 217, i32 0, metadata !179, metadata !486}
!492 = metadata !{i32 218, i32 0, metadata !181, metadata !486}
!493 = metadata !{i32 221, i32 0, metadata !181, metadata !486}
!494 = metadata !{i32 223, i32 0, metadata !181, metadata !486}
!495 = metadata !{i32 224, i32 0, metadata !181, metadata !486}
!496 = metadata !{i32 242, i32 0, metadata !244, null}
!497 = metadata !{i32 243, i32 0, metadata !244, null}
!498 = metadata !{i32 244, i32 0, metadata !244, null}
!499 = metadata !{i32 32}
!500 = metadata !{i32 249, i32 0, metadata !246, null}
!501 = metadata !{i32 undef}
!502 = metadata !{i32 251, i32 0, metadata !237, null}
!503 = metadata !{i32 254, i32 0, metadata !237, null}
!504 = metadata !{i32 256, i32 0, metadata !237, null}
!505 = metadata !{i32 257, i32 0, metadata !237, null}
!506 = metadata !{i32 259, i32 0, metadata !237, null}
!507 = metadata !{i32 260, i32 0, metadata !237, null}
!508 = metadata !{i32 261, i32 0, metadata !237, null}
!509 = metadata !{i32 262, i32 0, metadata !237, null}
!510 = metadata !{i32 263, i32 0, metadata !237, null}
!511 = metadata !{i32 233, i32 0, metadata !237, null}
!512 = metadata !{i32 474, i32 0, metadata !148, null}
!513 = metadata !{i32 496, i32 0, metadata !258, null}
!514 = metadata !{i32 477, i32 0, metadata !258, null}
!515 = metadata !{i32 479, i32 0, metadata !258, null}
!516 = metadata !{i32 167, i32 0, metadata !79, metadata !517}
!517 = metadata !{i32 481, i32 0, metadata !258, null}
!518 = metadata !{i32 169, i32 0, metadata !312, metadata !517}
!519 = metadata !{i32 171, i32 0, metadata !312, metadata !517}
!520 = metadata !{i32 172, i32 0, metadata !312, metadata !517}
!521 = metadata !{i32 174, i32 0, metadata !312, metadata !517}
!522 = metadata !{i32 175, i32 0, metadata !312, metadata !517}
!523 = metadata !{i32 108, i32 0, metadata !38, metadata !524}
!524 = metadata !{i32 483, i32 0, metadata !258, null}
!525 = metadata !{i32 110, i32 0, metadata !309, metadata !524}
!526 = metadata !{i32 485, i32 0, metadata !258, null}
!527 = metadata !{i32 486, i32 0, metadata !258, null}
!528 = metadata !{i32 487, i32 0, metadata !258, null}
!529 = metadata !{i32 490, i32 0, metadata !258, null}
!530 = metadata !{i32 491, i32 0, metadata !258, null}
!531 = metadata !{i32 492, i32 0, metadata !258, null}
!532 = metadata !{i32 499, i32 0, metadata !258, null}
!533 = metadata !{i32 501, i32 0, metadata !258, null}
!534 = metadata !{i32 502, i32 0, metadata !258, null}
!535 = metadata !{i32 503, i32 0, metadata !258, null}
!536 = metadata !{i32 504, i32 0, metadata !258, null}
!537 = metadata !{i32 507, i32 0, metadata !258, null}
!538 = metadata !{i32 509, i32 0, metadata !258, null}
!539 = metadata !{i32 510, i32 0, metadata !258, null}
!540 = metadata !{i32 513, i32 0, metadata !258, null}
!541 = metadata !{i32 514, i32 0, metadata !258, null}
!542 = metadata !{i32 517, i32 0, metadata !258, null}
!543 = metadata !{i32 519, i32 0, metadata !258, null}
!544 = metadata !{i32 520, i32 0, metadata !258, null}
!545 = metadata !{i32 521, i32 0, metadata !258, null}
!546 = metadata !{i32 523, i32 0, metadata !258, null}
!547 = metadata !{i32 525, i32 0, metadata !258, null}
!548 = metadata !{i32 526, i32 0, metadata !266, null}
!549 = metadata !{i32 527, i32 0, metadata !266, null}
!550 = metadata !{i32 528, i32 0, metadata !266, null}
!551 = metadata !{i32 529, i32 0, metadata !266, null}
!552 = metadata !{i32 531, i32 0, metadata !266, null}
!553 = metadata !{i32 533, i32 0, metadata !266, null}
!554 = metadata !{i32 538, i32 0, metadata !258, null}
!555 = metadata !{i32 534, i32 0, metadata !266, null}
!556 = metadata !{i32 1}
!557 = metadata !{i32 535, i32 0, metadata !266, null}
!558 = metadata !{i32 62, i32 0, metadata !164, metadata !559}
!559 = metadata !{i32 545, i32 0, metadata !258, null}
!560 = metadata !{i32 63, i32 0, metadata !164, metadata !559}
!561 = metadata !{i32 65, i32 0, metadata !164, metadata !559}
!562 = metadata !{i32 58, i32 0, metadata !164, metadata !559}
!563 = metadata !{i32 70, i32 0, metadata !164, metadata !559}
!564 = metadata !{i32 71, i32 0, metadata !164, metadata !559}
!565 = metadata !{i32 74, i32 0, metadata !164, metadata !559}
!566 = metadata !{i32 546, i32 0, metadata !258, null}
!567 = metadata !{i32 39, i32 0, metadata !145, metadata !568}
!568 = metadata !{i32 547, i32 0, metadata !258, null}
!569 = metadata !{i32 40, i32 0, metadata !570, metadata !568}
!570 = metadata !{i32 589835, metadata !145, i32 39, i32 0, metadata !1, i32 30} ; [ DW_TAG_lexical_block ]
!571 = metadata !{i32 41, i32 0, metadata !570, metadata !568}
!572 = metadata !{i32 43, i32 0, metadata !570, metadata !568}
!573 = metadata !{i32 44, i32 0, metadata !570, metadata !568}
!574 = metadata !{i32 45, i32 0, metadata !570, metadata !568}
!575 = metadata !{i32 46, i32 0, metadata !570, metadata !568}
!576 = metadata !{i32 48, i32 0, metadata !570, metadata !568}
!577 = metadata !{i32 548, i32 0, metadata !258, null}
!578 = metadata !{i32 549, i32 0, metadata !258, null}
!579 = metadata !{i32 554, i32 0, metadata !258, null}
!580 = metadata !{i32 556, i32 0, metadata !258, null}
!581 = metadata !{i32 39, i32 0, metadata !145, metadata !580}
!582 = metadata !{i32 40, i32 0, metadata !570, metadata !580}
!583 = metadata !{i32 41, i32 0, metadata !570, metadata !580}
!584 = metadata !{i32 43, i32 0, metadata !570, metadata !580}
!585 = metadata !{i32 44, i32 0, metadata !570, metadata !580}
!586 = metadata !{i32 45, i32 0, metadata !570, metadata !580}
!587 = metadata !{i32 46, i32 0, metadata !570, metadata !580}
!588 = metadata !{i32 48, i32 0, metadata !570, metadata !580}
!589 = metadata !{i32 557, i32 0, metadata !258, null}
!590 = metadata !{i32 559, i32 0, metadata !258, null}
!591 = metadata !{i32 567, i32 0, metadata !258, null}
!592 = metadata !{i32 572, i32 0, metadata !258, null}
!593 = metadata !{i32 573, i32 0, metadata !258, null}
!594 = metadata !{i32 574, i32 0, metadata !258, null}
!595 = metadata !{i32 577, i32 0, metadata !258, null}
!596 = metadata !{i32 578, i32 0, metadata !258, null}
!597 = metadata !{i32 579, i32 0, metadata !258, null}
!598 = metadata !{i32 39, i32 0, metadata !145, metadata !597}
!599 = metadata !{i32 40, i32 0, metadata !570, metadata !597}
!600 = metadata !{i32 41, i32 0, metadata !570, metadata !597}
!601 = metadata !{i32 43, i32 0, metadata !570, metadata !597}
!602 = metadata !{i32 44, i32 0, metadata !570, metadata !597}
!603 = metadata !{i32 45, i32 0, metadata !570, metadata !597}
!604 = metadata !{i32 46, i32 0, metadata !570, metadata !597}
!605 = metadata !{i32 48, i32 0, metadata !570, metadata !597}
!606 = metadata !{i32 580, i32 0, metadata !258, null}
!607 = metadata !{i32 581, i32 0, metadata !258, null}
!608 = metadata !{i32 583, i32 0, metadata !258, null}
!609 = metadata !{i32 584, i32 0, metadata !258, null}
!610 = metadata !{i32 587, i32 0, metadata !258, null}
!611 = metadata !{i32 588, i32 0, metadata !258, null}
!612 = metadata !{i32 590, i32 0, metadata !258, null}
!613 = metadata !{i32 591, i32 0, metadata !258, null}
!614 = metadata !{i32 594, i32 0, metadata !258, null}
!615 = metadata !{i32 595, i32 0, metadata !258, null}
!616 = metadata !{i32 596, i32 0, metadata !258, null}
!617 = metadata !{i32 598, i32 0, metadata !258, null}
!618 = metadata !{i32 601, i32 0, metadata !258, null}
!619 = metadata !{i32 603, i32 0, metadata !258, null}
!620 = metadata !{i32 433, i32 0, metadata !150, null}
!621 = metadata !{i32 167, i32 0, metadata !79, metadata !622}
!622 = metadata !{i32 435, i32 0, metadata !276, null}
!623 = metadata !{i32 169, i32 0, metadata !312, metadata !622}
!624 = metadata !{i32 171, i32 0, metadata !312, metadata !622}
!625 = metadata !{i32 172, i32 0, metadata !312, metadata !622}
!626 = metadata !{i32 174, i32 0, metadata !312, metadata !622}
!627 = metadata !{i32 175, i32 0, metadata !312, metadata !622}
!628 = metadata !{i32 108, i32 0, metadata !38, metadata !629}
!629 = metadata !{i32 437, i32 0, metadata !276, null}
!630 = metadata !{i32 110, i32 0, metadata !309, metadata !629}
!631 = metadata !{i32 395, i32 0, metadata !149, metadata !632}
!632 = metadata !{i32 439, i32 0, metadata !276, null}
!633 = metadata !{i32 396, i32 0, metadata !271, metadata !632}
!634 = metadata !{i32 397, i32 0, metadata !271, metadata !632}
!635 = metadata !{i32 398, i32 0, metadata !271, metadata !632}
!636 = metadata !{i32 401, i32 0, metadata !271, metadata !632}
!637 = metadata !{i32 402, i32 0, metadata !271, metadata !632}
!638 = metadata !{i32 403, i32 0, metadata !271, metadata !632}
!639 = metadata !{i32 408, i32 0, metadata !271, metadata !632}
!640 = metadata !{i32 409, i32 0, metadata !271, metadata !632}
!641 = metadata !{i32 412, i32 0, metadata !271, metadata !632}
!642 = metadata !{i32 413, i32 0, metadata !271, metadata !632}
!643 = metadata !{i32 414, i32 0, metadata !271, metadata !632}
!644 = metadata !{i32 417, i32 0, metadata !271, metadata !632}
!645 = metadata !{i32 39, i32 0, metadata !145, metadata !646}
!646 = metadata !{i32 418, i32 0, metadata !271, metadata !632}
!647 = metadata !{i32 40, i32 0, metadata !570, metadata !646}
!648 = metadata !{i32 41, i32 0, metadata !570, metadata !646}
!649 = metadata !{i32 43, i32 0, metadata !570, metadata !646}
!650 = metadata !{i32 44, i32 0, metadata !570, metadata !646}
!651 = metadata !{i32 45, i32 0, metadata !570, metadata !646}
!652 = metadata !{i32 46, i32 0, metadata !570, metadata !646}
!653 = metadata !{i32 48, i32 0, metadata !570, metadata !646}
!654 = metadata !{i32 419, i32 0, metadata !271, metadata !632}
!655 = metadata !{i32 420, i32 0, metadata !271, metadata !632}
!656 = metadata !{i32 423, i32 0, metadata !271, metadata !632}
!657 = metadata !{i32 424, i32 0, metadata !271, metadata !632}
!658 = metadata !{i32 425, i32 0, metadata !271, metadata !632}
!659 = metadata !{i32 430, i32 0, metadata !271, metadata !632}
!660 = metadata !{i32 376, i32 0, metadata !154, null}
!661 = metadata !{i32 380, i32 0, metadata !287, null}
!662 = metadata !{i32 381, i32 0, metadata !287, null}
!663 = metadata !{i32 167, i32 0, metadata !79, metadata !664}
!664 = metadata !{i32 383, i32 0, metadata !287, null}
!665 = metadata !{i32 169, i32 0, metadata !312, metadata !664}
!666 = metadata !{i32 171, i32 0, metadata !312, metadata !664}
!667 = metadata !{i32 172, i32 0, metadata !312, metadata !664}
!668 = metadata !{i32 174, i32 0, metadata !312, metadata !664}
!669 = metadata !{i32 175, i32 0, metadata !312, metadata !664}
!670 = metadata !{i32 108, i32 0, metadata !38, metadata !671}
!671 = metadata !{i32 386, i32 0, metadata !287, null}
!672 = metadata !{i32 110, i32 0, metadata !309, metadata !671}
!673 = metadata !{i32 388, i32 0, metadata !287, null}
!674 = metadata !{i32 311, i32 0, metadata !153, metadata !675}
!675 = metadata !{i32 389, i32 0, metadata !287, null}
!676 = metadata !{i32 312, i32 0, metadata !281, metadata !675}
!677 = metadata !{i32 313, i32 0, metadata !281, metadata !675}
!678 = metadata !{i32 314, i32 0, metadata !281, metadata !675}
!679 = metadata !{i32 315, i32 0, metadata !281, metadata !675}
!680 = metadata !{i32 317, i32 0, metadata !281, metadata !675}
!681 = metadata !{i32 318, i32 0, metadata !281, metadata !675}
!682 = metadata !{i32 322, i32 0, metadata !281, metadata !675}
!683 = metadata !{i32 267, i32 0, metadata !140, metadata !684}
!684 = metadata !{i32 323, i32 0, metadata !281, metadata !675}
!685 = metadata !{i32 268, i32 0, metadata !252, metadata !684}
!686 = metadata !{i32 270, i32 0, metadata !251, metadata !684}
!687 = metadata !{i32 271, i32 0, metadata !251, metadata !684}
!688 = metadata !{i32 272, i32 0, metadata !251, metadata !684}
!689 = metadata !{i32 273, i32 0, metadata !251, metadata !684}
!690 = metadata !{i32 274, i32 0, metadata !251, metadata !684}
!691 = metadata !{i32 275, i32 0, metadata !251, metadata !684}
!692 = metadata !{i32 277, i32 0, metadata !251, metadata !684}
!693 = metadata !{i32 278, i32 0, metadata !251, metadata !684}
!694 = metadata !{i32 279, i32 0, metadata !251, metadata !684}
!695 = metadata !{i32 282, i32 0, metadata !252, metadata !684}
!696 = metadata !{i32 284, i32 0, metadata !252, metadata !684}
!697 = metadata !{i32 285, i32 0, metadata !252, metadata !684}
!698 = metadata !{i32 286, i32 0, metadata !252, metadata !684}
!699 = metadata !{i32 289, i32 0, metadata !252, metadata !684}
!700 = metadata !{i32 290, i32 0, metadata !252, metadata !684}
!701 = metadata !{i32 291, i32 0, metadata !252, metadata !684}
!702 = metadata !{i32 292, i32 0, metadata !252, metadata !684}
!703 = metadata !{i32 327, i32 0, metadata !281, metadata !675}
!704 = metadata !{i32 332, i32 0, metadata !281, metadata !675}
!705 = metadata !{i32 333, i32 0, metadata !281, metadata !675}
!706 = metadata !{i32 334, i32 0, metadata !281, metadata !675}
!707 = metadata !{i32 335, i32 0, metadata !281, metadata !675}
!708 = metadata !{i32 338, i32 0, metadata !281, metadata !675}
!709 = metadata !{i32 340, i32 0, metadata !281, metadata !675}
!710 = metadata !{i32 79, i32 0, metadata !36, metadata !709}
!711 = metadata !{i32 80, i32 0, metadata !712, metadata !709}
!712 = metadata !{i32 589835, metadata !36, i32 79, i32 0, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!713 = metadata !{i32 39, i32 0, metadata !145, metadata !714}
!714 = metadata !{i32 341, i32 0, metadata !281, metadata !675}
!715 = metadata !{i32 40, i32 0, metadata !570, metadata !714}
!716 = metadata !{i32 41, i32 0, metadata !570, metadata !714}
!717 = metadata !{i32 43, i32 0, metadata !570, metadata !714}
!718 = metadata !{i32 44, i32 0, metadata !570, metadata !714}
!719 = metadata !{i32 45, i32 0, metadata !570, metadata !714}
!720 = metadata !{i32 46, i32 0, metadata !570, metadata !714}
!721 = metadata !{i32 48, i32 0, metadata !570, metadata !714}
!722 = metadata !{i32 342, i32 0, metadata !281, metadata !675}
!723 = metadata !{i32 343, i32 0, metadata !281, metadata !675}
!724 = metadata !{i32 344, i32 0, metadata !281, metadata !675}
!725 = metadata !{i32 347, i32 0, metadata !281, metadata !675}
!726 = metadata !{i32 349, i32 0, metadata !281, metadata !675}
!727 = metadata !{i32 350, i32 0, metadata !281, metadata !675}
!728 = metadata !{i32 352, i32 0, metadata !281, metadata !675}
!729 = metadata !{i32 354, i32 0, metadata !281, metadata !675}
!730 = metadata !{i32 356, i32 0, metadata !281, metadata !675}
!731 = metadata !{i32 357, i32 0, metadata !281, metadata !675}
!732 = metadata !{i32 358, i32 0, metadata !281, metadata !675}
!733 = metadata !{i32 384, i32 0, metadata !287, null}
!734 = metadata !{i32 299, i32 0, metadata !155, null}
!735 = metadata !{i32 302, i32 0, metadata !290, null}
!736 = metadata !{i32 304, i32 0, metadata !292, null}
!737 = metadata !{i32 304, i32 0, metadata !290, null}
!738 = metadata !{i32 308, i32 0, metadata !290, null}
!739 = metadata !{i32 113, i32 0, metadata !158, null}
!740 = metadata !{i32 116, i32 0, metadata !298, null}
!741 = metadata !{i32 118, i32 0, metadata !298, null}
!742 = metadata !{i32 121, i32 0, metadata !298, null}
!743 = metadata !{i32 77, i32 0, metadata !113, metadata !744}
!744 = metadata !{i32 124, i32 0, metadata !298, null}
!745 = metadata !{i32 78, i32 0, metadata !746, metadata !744}
!746 = metadata !{i32 589835, metadata !113, i32 77, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!747 = metadata !{i32 80, i32 0, metadata !746, metadata !744}
!748 = metadata !{i32 83, i32 0, metadata !746, metadata !744}
!749 = metadata !{i32 84, i32 0, metadata !746, metadata !744}
!750 = metadata !{i32 85, i32 0, metadata !746, metadata !744}
!751 = metadata !{i32 89, i32 0, metadata !746, metadata !744}
!752 = metadata !{i32 90, i32 0, metadata !746, metadata !744}
!753 = metadata !{i32 91, i32 0, metadata !746, metadata !744}
!754 = metadata !{i32 92, i32 0, metadata !746, metadata !744}
!755 = metadata !{i32 95, i32 0, metadata !746, metadata !744}
!756 = metadata !{i32 96, i32 0, metadata !746, metadata !744}
!757 = metadata !{i32 97, i32 0, metadata !746, metadata !744}
!758 = metadata !{i32 101, i32 0, metadata !746, metadata !744}
!759 = metadata !{i32 102, i32 0, metadata !746, metadata !744}
!760 = metadata !{i32 103, i32 0, metadata !746, metadata !744}
!761 = metadata !{i32 129, i32 0, metadata !298, null}
!762 = metadata !{i32 130, i32 0, metadata !298, null}
!763 = metadata !{i32 134, i32 0, metadata !298, null}
!764 = metadata !{i32 135, i32 0, metadata !298, null}
!765 = metadata !{i32 136, i32 0, metadata !298, null}
!766 = metadata !{i32 62, i32 0, metadata !164, metadata !767}
!767 = metadata !{i32 139, i32 0, metadata !298, null}
!768 = metadata !{i32 63, i32 0, metadata !164, metadata !767}
!769 = metadata !{i32 65, i32 0, metadata !164, metadata !767}
!770 = metadata !{i32 58, i32 0, metadata !164, metadata !767}
!771 = metadata !{i32 70, i32 0, metadata !164, metadata !767}
!772 = metadata !{i32 71, i32 0, metadata !164, metadata !767}
!773 = metadata !{i32 74, i32 0, metadata !164, metadata !767}
!774 = metadata !{i32 140, i32 0, metadata !298, null}
!775 = metadata !{i32 142, i32 0, metadata !302, null}
!776 = metadata !{i32 108, i32 0, metadata !38, metadata !777}
!777 = metadata !{i32 147, i32 0, metadata !302, null}
!778 = metadata !{i32 110, i32 0, metadata !309, metadata !777}
!779 = metadata !{i32 151, i32 0, metadata !302, null}
!780 = metadata !{i32 153, i32 0, metadata !302, null}
!781 = metadata !{i32 154, i32 0, metadata !302, null}
!782 = metadata !{i32 155, i32 0, metadata !302, null}
!783 = metadata !{i32 156, i32 0, metadata !302, null}
!784 = metadata !{i32 159, i32 0, metadata !302, null}
!785 = metadata !{i32 160, i32 0, metadata !302, null}
!786 = metadata !{i32 163, i32 0, metadata !298, null}
!787 = metadata !{i32 164, i32 0, metadata !298, null}
!788 = metadata !{i32 126, i32 0, metadata !298, null}
