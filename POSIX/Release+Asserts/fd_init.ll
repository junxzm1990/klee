; ModuleID = 'fd_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.end_point_t = type { %struct.sockaddr*, %struct.sym_socket*, i32, i8 }
%struct.event_queue_t = type { i64*, i32 }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat64* }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [16 x %struct.exe_file_t], [16 x %struct.sym_socket], i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }
%struct.sym_socket = type { i32, i32, i32, i32, %struct.end_point_t*, %struct.end_point_t*, %struct.stream_buffer_t*, %struct.stream_buffer_t*, %struct.event_queue_t*, i64, %struct.stream_buffer_t* }
%struct.timespec = type { i64, i64 }

@__exe_env = common unnamed_addr global %struct.exe_sym_env_t zeroinitializer, align 32
@.str = private unnamed_addr constant [6 x i8] c"-stat\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"fd_init.c\00", align 1
@__PRETTY_FUNCTION__.5647 = internal unnamed_addr constant [19 x i8] c"__create_new_dfile\00", align 16
@.str4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__exe_fs = common unnamed_addr global %struct.exe_file_system_t zeroinitializer, align 32
@.str5 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"read_fail\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"write_fail\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"close_fail\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"ftruncate_fail\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"getcwd_fail\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"model_version\00", align 1

define void @klee_init_fds(i32 %n_files, i32 %file_length, i32 %sym_stdout_flag, i32 %save_all_writes_flag, i32 %max_failures) nounwind {
entry:
  %x.i = alloca i32, align 4
  %name = alloca [7 x i8], align 1
  %s = alloca %struct.stat64, align 8
  call void @llvm.dbg.value(metadata !{i32 %n_files}, i64 0, metadata !88), !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %file_length}, i64 0, metadata !89), !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %sym_stdout_flag}, i64 0, metadata !90), !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %save_all_writes_flag}, i64 0, metadata !91), !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %max_failures}, i64 0, metadata !92), !dbg !203
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %name}, metadata !95), !dbg !204
  call void @llvm.dbg.declare(metadata !{%struct.stat64* %s}, metadata !99), !dbg !205
  %0 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 0, !dbg !204
  store i8 63, i8* %0, align 1, !dbg !204
  %1 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 1, !dbg !204
  store i8 45, i8* %1, align 1, !dbg !204
  %2 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 2, !dbg !204
  store i8 100, i8* %2, align 1, !dbg !204
  %3 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 3, !dbg !204
  store i8 97, i8* %3, align 1, !dbg !204
  %4 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 4, !dbg !204
  store i8 116, i8* %4, align 1, !dbg !204
  %5 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 5, !dbg !204
  store i8 97, i8* %5, align 1, !dbg !204
  %6 = getelementptr inbounds [7 x i8]* %name, i64 0, i64 6, !dbg !204
  store i8 0, i8* %6, align 1, !dbg !204
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.exe_sym_env_t* @__exe_env to i8*), i8 0, i64 384, i32 32, i1 false) nounwind, !dbg !206
  store i32 0, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 0), align 32, !dbg !209
  store i32 5, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 1), align 4, !dbg !209
  store i64 0, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 2), align 8, !dbg !209
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 16, !dbg !209
  store i32 1, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 0), align 8, !dbg !210
  store i32 9, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 1), align 4, !dbg !210
  store i64 0, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 2), align 8, !dbg !210
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !210
  store i32 2, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 2, i32 0), align 16, !dbg !211
  store i32 9, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 2, i32 1), align 4, !dbg !211
  store i64 0, i64* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 2, i32 2), align 8, !dbg !211
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 2, i32 3), align 16, !dbg !211
  store i32 18, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 32, !dbg !212
  store i32 0, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 4, !dbg !213
  store i32 0, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 4), align 8, !dbg !214
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.sym_socket* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 1, i64 0) to i8*), i8 0, i64 1152, i32 32, i1 false) nounwind, !dbg !215
  call void @llvm.dbg.value(metadata !216, i64 0, metadata !75) nounwind, !dbg !217
  call void @llvm.dbg.value(metadata !{%struct.stat64* %s}, i64 0, metadata !76) nounwind, !dbg !217
  %7 = call i32 @__xstat64(i32 1, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !219
  store i32 %n_files, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 32, !dbg !221
  %8 = zext i32 %n_files to i64, !dbg !222
  %9 = mul i64 %8, 24, !dbg !222
  %10 = call noalias i8* @malloc(i64 %9) nounwind, !dbg !222
  %11 = bitcast i8* %10 to %struct.exe_disk_file_t*, !dbg !222
  store %struct.exe_disk_file_t* %11, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 32, !dbg !222
  call void @llvm.dbg.value(metadata !223, i64 0, metadata !93), !dbg !224
  %12 = icmp eq i32 %n_files, 0, !dbg !224
  br i1 %12, label %bb3, label %bb, !dbg !224

bb:                                               ; preds = %entry, %bb.bb_crit_edge
  %13 = phi %struct.exe_disk_file_t* [ %.pre, %bb.bb_crit_edge ], [ %11, %entry ]
  %indvar = phi i64 [ %indvar.next, %bb.bb_crit_edge ], [ 0, %entry ]
  %tmp13 = add i64 %indvar, 65
  %tmp14 = trunc i64 %tmp13 to i8
  store i8 %tmp14, i8* %0, align 1, !dbg !225
  %scevgep = getelementptr %struct.exe_disk_file_t* %13, i64 %indvar
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %scevgep, i32 %file_length, i8* %0, %struct.stat64* %s) nounwind, !dbg !226
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, %8
  br i1 %exitcond, label %bb3, label %bb.bb_crit_edge, !dbg !224

bb.bb_crit_edge:                                  ; preds = %bb
  %.pre = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 32
  br label %bb

bb3:                                              ; preds = %bb, %entry
  %14 = icmp eq i32 %file_length, 0, !dbg !227
  br i1 %14, label %bb5, label %bb4, !dbg !227

bb4:                                              ; preds = %bb3
  %15 = call noalias i8* @malloc(i64 24) nounwind, !dbg !228
  %16 = bitcast i8* %15 to %struct.exe_disk_file_t*, !dbg !228
  store %struct.exe_disk_file_t* %16, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !228
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %16, i32 %file_length, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !229
  %17 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !230
  store %struct.exe_disk_file_t* %17, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 0, i32 3), align 16, !dbg !230
  br label %bb6, !dbg !230

bb5:                                              ; preds = %bb3
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 1), align 8, !dbg !231
  br label %bb6, !dbg !231

bb6:                                              ; preds = %bb5, %bb4
  store i32 %max_failures, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !232
  %18 = icmp eq i32 %max_failures, 0, !dbg !233
  br i1 %18, label %bb8, label %bb7, !dbg !233

bb7:                                              ; preds = %bb6
  %19 = call noalias i8* @malloc(i64 4) nounwind, !dbg !234
  %20 = bitcast i8* %19 to i32*, !dbg !234
  store i32* %20, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 16, !dbg !234
  %21 = call noalias i8* @malloc(i64 4) nounwind, !dbg !235
  %22 = bitcast i8* %21 to i32*, !dbg !235
  store i32* %22, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !235
  %23 = call noalias i8* @malloc(i64 4) nounwind, !dbg !236
  %24 = bitcast i8* %23 to i32*, !dbg !236
  store i32* %24, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 32, !dbg !236
  %25 = call noalias i8* @malloc(i64 4) nounwind, !dbg !237
  %26 = bitcast i8* %25 to i32*, !dbg !237
  store i32* %26, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !237
  %27 = call noalias i8* @malloc(i64 4) nounwind, !dbg !238
  %28 = bitcast i8* %27 to i32*, !dbg !238
  store i32* %28, i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 16, !dbg !238
  call void @klee_make_symbolic(i8* %19, i64 4, i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !239
  %29 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !240
  %30 = bitcast i32* %29 to i8*, !dbg !240
  call void @klee_make_symbolic(i8* %30, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !240
  %31 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 32, !dbg !241
  %32 = bitcast i32* %31 to i8*, !dbg !241
  call void @klee_make_symbolic(i8* %32, i64 4, i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !241
  %33 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !242
  %34 = bitcast i32* %33 to i8*, !dbg !242
  call void @klee_make_symbolic(i8* %34, i64 4, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !242
  %35 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 16, !dbg !243
  %36 = bitcast i32* %35 to i8*, !dbg !243
  call void @klee_make_symbolic(i8* %36, i64 4, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !243
  br label %bb8, !dbg !243

bb8:                                              ; preds = %bb6, %bb7
  %37 = icmp eq i32 %sym_stdout_flag, 0, !dbg !244
  br i1 %37, label %bb10, label %bb9, !dbg !244

bb9:                                              ; preds = %bb8
  %38 = call noalias i8* @malloc(i64 24) nounwind, !dbg !245
  %39 = bitcast i8* %38 to %struct.exe_disk_file_t*, !dbg !245
  store %struct.exe_disk_file_t* %39, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 16, !dbg !245
  call fastcc void @__create_new_dfile(%struct.exe_disk_file_t* %39, i32 1024, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), %struct.stat64* %s) nounwind, !dbg !246
  %40 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 16, !dbg !247
  store %struct.exe_disk_file_t* %40, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 1, i32 3), align 8, !dbg !247
  store i32 0, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !248
  br label %bb11, !dbg !248

bb10:                                             ; preds = %bb8
  store %struct.exe_disk_file_t* null, %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 16, !dbg !249
  br label %bb11, !dbg !249

bb11:                                             ; preds = %bb10, %bb9
  store i32 %save_all_writes_flag, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 4), align 8, !dbg !250
  call void @llvm.dbg.value(metadata !251, i64 0, metadata !72) nounwind, !dbg !252
  call void @llvm.dbg.declare(metadata !{i32* %x.i}, metadata !73) nounwind, !dbg !254
  %x1.i = bitcast i32* %x.i to i8*, !dbg !255
  call void @klee_make_symbolic(i8* %x1.i, i64 4, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !255
  %41 = load i32* %x.i, align 4, !dbg !256
  store i32 %41, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 3), align 4, !dbg !253
  %42 = icmp eq i32 %41, 1, !dbg !257
  %43 = zext i1 %42 to i64, !dbg !257
  call void @klee_assume(i64 %43) nounwind, !dbg !257
  ret void, !dbg !258
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @klee_make_symbolic(i8*, i64, i8*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare i32 @__xstat64(i32, i8*, %struct.stat64*) nounwind

define internal fastcc void @__create_new_dfile(%struct.exe_disk_file_t* nocapture %dfile, i32 %size, i8* %name, %struct.stat64* nocapture %defaults) nounwind {
entry:
  %sname = alloca [64 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %dfile}, i64 0, metadata !77), !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !78), !dbg !259
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !79), !dbg !260
  call void @llvm.dbg.value(metadata !{%struct.stat64* %defaults}, i64 0, metadata !80), !dbg !260
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %sname}, metadata !84), !dbg !261
  %0 = call noalias i8* @malloc(i64 144) nounwind, !dbg !262
  %1 = bitcast i8* %0 to %struct.stat64*, !dbg !262
  call void @llvm.dbg.value(metadata !{%struct.stat64* %1}, i64 0, metadata !81), !dbg !262
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !83), !dbg !263
  %2 = load i8* %name, align 1, !dbg !263
  %3 = icmp eq i8 %2, 0, !dbg !263
  %4 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 0, !dbg !264
  br i1 %3, label %bb2, label %bb, !dbg !263

bb:                                               ; preds = %entry, %bb
  %indvar = phi i64 [ %tmp, %bb ], [ 0, %entry ]
  %5 = phi i8* [ %9, %bb ], [ %4, %entry ]
  %6 = phi i8 [ %7, %bb ], [ %2, %entry ]
  %tmp = add i64 %indvar, 1
  %scevgep = getelementptr i8* %name, i64 %tmp
  store i8 %6, i8* %5, align 1, !dbg !265
  %7 = load i8* %scevgep, align 1, !dbg !263
  %8 = icmp eq i8 %7, 0, !dbg !263
  %9 = getelementptr inbounds [64 x i8]* %sname, i64 0, i64 %tmp, !dbg !264
  br i1 %8, label %bb2, label %bb, !dbg !263

bb2:                                              ; preds = %bb, %entry
  %.lcssa = phi i8* [ %4, %entry ], [ %9, %bb ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %.lcssa, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i64 6, i32 1, i1 false), !dbg !264
  %10 = icmp eq i32 %size, 0, !dbg !266
  br i1 %10, label %bb3, label %bb4, !dbg !266

bb3:                                              ; preds = %bb2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([19 x i8]* @__PRETTY_FUNCTION__.5647, i64 0, i64 0)) noreturn nounwind, !dbg !266
  unreachable, !dbg !266

bb4:                                              ; preds = %bb2
  %11 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 0, !dbg !267
  store i32 %size, i32* %11, align 8, !dbg !267
  %12 = zext i32 %size to i64, !dbg !268
  %13 = call noalias i8* @malloc(i64 %12) nounwind, !dbg !268
  %14 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 1, !dbg !268
  store i8* %13, i8** %14, align 8, !dbg !268
  call void @klee_make_symbolic(i8* %13, i64 %12, i8* %name) nounwind, !dbg !269
  call void @klee_make_symbolic(i8* %0, i64 144, i8* %4) nounwind, !dbg !270
  %15 = getelementptr inbounds i8* %0, i64 8
  %16 = bitcast i8* %15 to i64*, !dbg !271
  %17 = load i64* %16, align 8, !dbg !271
  %18 = call i32 @klee_is_symbolic(i64 %17) nounwind, !dbg !271
  %19 = icmp eq i32 %18, 0, !dbg !271
  %20 = load i64* %16, align 8, !dbg !271
  br i1 %19, label %bb6, label %bb8, !dbg !271

bb6:                                              ; preds = %bb4
  %21 = and i64 %20, 2147483647, !dbg !271
  %22 = icmp eq i64 %21, 0, !dbg !271
  br i1 %22, label %bb7, label %bb8, !dbg !271

bb7:                                              ; preds = %bb6
  %23 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 1, !dbg !272
  %24 = load i64* %23, align 8, !dbg !272
  store i64 %24, i64* %16, align 8, !dbg !272
  br label %bb8, !dbg !272

bb8:                                              ; preds = %bb4, %bb7, %bb6
  %25 = phi i64 [ %24, %bb7 ], [ %20, %bb6 ], [ %20, %bb4 ]
  %26 = and i64 %25, 2147483647, !dbg !273
  %27 = icmp ne i64 %26, 0, !dbg !273
  %28 = zext i1 %27 to i64, !dbg !273
  call void @klee_assume(i64 %28) nounwind, !dbg !273
  %29 = getelementptr inbounds i8* %0, i64 56
  %30 = bitcast i8* %29 to i64*, !dbg !274
  %31 = load i64* %30, align 8, !dbg !274
  %32 = icmp ult i64 %31, 65536, !dbg !274
  %33 = zext i1 %32 to i64, !dbg !274
  call void @klee_assume(i64 %33) nounwind, !dbg !274
  %34 = getelementptr inbounds i8* %0, i64 24
  %35 = bitcast i8* %34 to i32*, !dbg !275
  %36 = load i32* %35, align 8, !dbg !275
  %37 = and i32 %36, -61952, !dbg !275
  %38 = icmp eq i32 %37, 0, !dbg !275
  %39 = zext i1 %38 to i64, !dbg !275
  call void @klee_prefer_cex(i8* %0, i64 %39) nounwind, !dbg !275
  %40 = bitcast i8* %0 to i64*, !dbg !276
  %41 = load i64* %40, align 8, !dbg !276
  %42 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 0, !dbg !276
  %43 = load i64* %42, align 8, !dbg !276
  %44 = icmp eq i64 %41, %43, !dbg !276
  %45 = zext i1 %44 to i64, !dbg !276
  call void @klee_prefer_cex(i8* %0, i64 %45) nounwind, !dbg !276
  %46 = getelementptr inbounds i8* %0, i64 40
  %47 = bitcast i8* %46 to i64*, !dbg !277
  %48 = load i64* %47, align 8, !dbg !277
  %49 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 7, !dbg !277
  %50 = load i64* %49, align 8, !dbg !277
  %51 = icmp eq i64 %48, %50, !dbg !277
  %52 = zext i1 %51 to i64, !dbg !277
  call void @klee_prefer_cex(i8* %0, i64 %52) nounwind, !dbg !277
  %53 = load i32* %35, align 8, !dbg !278
  %54 = and i32 %53, 448, !dbg !278
  %55 = icmp eq i32 %54, 384, !dbg !278
  %56 = zext i1 %55 to i64, !dbg !278
  call void @klee_prefer_cex(i8* %0, i64 %56) nounwind, !dbg !278
  %57 = load i32* %35, align 8, !dbg !279
  %58 = and i32 %57, 56, !dbg !279
  %59 = icmp eq i32 %58, 16, !dbg !279
  %60 = zext i1 %59 to i64, !dbg !279
  call void @klee_prefer_cex(i8* %0, i64 %60) nounwind, !dbg !279
  %61 = load i32* %35, align 8, !dbg !280
  %62 = and i32 %61, 7, !dbg !280
  %63 = icmp eq i32 %62, 2, !dbg !280
  %64 = zext i1 %63 to i64, !dbg !280
  call void @klee_prefer_cex(i8* %0, i64 %64) nounwind, !dbg !280
  %65 = load i32* %35, align 8, !dbg !281
  %66 = and i32 %65, 61440, !dbg !281
  %67 = icmp eq i32 %66, 32768, !dbg !281
  %68 = zext i1 %67 to i64, !dbg !281
  call void @klee_prefer_cex(i8* %0, i64 %68) nounwind, !dbg !281
  %69 = getelementptr inbounds i8* %0, i64 16
  %70 = bitcast i8* %69 to i64*, !dbg !282
  %71 = load i64* %70, align 8, !dbg !282
  %72 = icmp eq i64 %71, 1, !dbg !282
  %73 = zext i1 %72 to i64, !dbg !282
  call void @klee_prefer_cex(i8* %0, i64 %73) nounwind, !dbg !282
  %74 = getelementptr inbounds i8* %0, i64 28
  %75 = bitcast i8* %74 to i32*, !dbg !283
  %76 = load i32* %75, align 4, !dbg !283
  %77 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 4, !dbg !283
  %78 = load i32* %77, align 4, !dbg !283
  %79 = icmp eq i32 %76, %78, !dbg !283
  %80 = zext i1 %79 to i64, !dbg !283
  call void @klee_prefer_cex(i8* %0, i64 %80) nounwind, !dbg !283
  %81 = getelementptr inbounds i8* %0, i64 32
  %82 = bitcast i8* %81 to i32*, !dbg !284
  %83 = load i32* %82, align 8, !dbg !284
  %84 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 5, !dbg !284
  %85 = load i32* %84, align 8, !dbg !284
  %86 = icmp eq i32 %83, %85, !dbg !284
  %87 = zext i1 %86 to i64, !dbg !284
  call void @klee_prefer_cex(i8* %0, i64 %87) nounwind, !dbg !284
  %88 = load i64* %30, align 8, !dbg !285
  %89 = icmp eq i64 %88, 4096, !dbg !285
  %90 = zext i1 %89 to i64, !dbg !285
  call void @klee_prefer_cex(i8* %0, i64 %90) nounwind, !dbg !285
  %91 = getelementptr inbounds i8* %0, i64 72
  %92 = bitcast i8* %91 to i64*, !dbg !286
  %93 = load i64* %92, align 8, !dbg !286
  %94 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 11, i32 0, !dbg !286
  %95 = load i64* %94, align 8, !dbg !286
  %96 = icmp eq i64 %93, %95, !dbg !286
  %97 = zext i1 %96 to i64, !dbg !286
  call void @klee_prefer_cex(i8* %0, i64 %97) nounwind, !dbg !286
  %98 = getelementptr inbounds i8* %0, i64 88
  %99 = bitcast i8* %98 to i64*, !dbg !287
  %100 = load i64* %99, align 8, !dbg !287
  %101 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 12, i32 0, !dbg !287
  %102 = load i64* %101, align 8, !dbg !287
  %103 = icmp eq i64 %100, %102, !dbg !287
  %104 = zext i1 %103 to i64, !dbg !287
  call void @klee_prefer_cex(i8* %0, i64 %104) nounwind, !dbg !287
  %105 = getelementptr inbounds i8* %0, i64 104
  %106 = bitcast i8* %105 to i64*, !dbg !288
  %107 = load i64* %106, align 8, !dbg !288
  %108 = getelementptr inbounds %struct.stat64* %defaults, i64 0, i32 13, i32 0, !dbg !288
  %109 = load i64* %108, align 8, !dbg !288
  %110 = icmp eq i64 %107, %109, !dbg !288
  %111 = zext i1 %110 to i64, !dbg !288
  call void @klee_prefer_cex(i8* %0, i64 %111) nounwind, !dbg !288
  %112 = load i32* %11, align 8, !dbg !289
  %113 = zext i32 %112 to i64, !dbg !289
  %114 = getelementptr inbounds i8* %0, i64 48
  %115 = bitcast i8* %114 to i64*, !dbg !289
  store i64 %113, i64* %115, align 8, !dbg !289
  %116 = getelementptr inbounds i8* %0, i64 64
  %117 = bitcast i8* %116 to i64*, !dbg !290
  store i64 8, i64* %117, align 8, !dbg !290
  %118 = getelementptr inbounds %struct.exe_disk_file_t* %dfile, i64 0, i32 2, !dbg !291
  store %struct.stat64* %1, %struct.stat64** %118, align 8, !dbg !291
  ret void, !dbg !292
}

declare noalias i8* @malloc(i64) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i32 @klee_is_symbolic(i64)

declare void @klee_assume(i64)

declare void @klee_prefer_cex(i8*, i64)

!llvm.dbg.sp = !{!0, !9, !12, !57, !69}
!llvm.dbg.lv.__sym_uint32 = !{!72, !73}
!llvm.dbg.lv.stat64 = !{!75, !76}
!llvm.dbg.lv.__create_new_dfile = !{!77, !78, !79, !80, !81, !83, !84}
!llvm.dbg.lv.klee_init_fds = !{!88, !89, !90, !91, !92, !93, !95, !99}
!llvm.dbg.gv = !{!100, !118}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__sym_uint32", metadata !"__sym_uint32", metadata !"", metadata !1, i32 107, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_init.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_init.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!6 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ]
!7 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ]
!8 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 589870, i32 0, metadata !1, metadata !"init_exe_env", metadata !"init_exe_env", metadata !"", metadata !1, i32 40, metadata !10, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!10 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null}
!12 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !13, i32 505, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !16, metadata !6, metadata !17}
!16 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!17 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !19, i32 120, i64 1152, i64 64, i64 0, i32 0, null, metadata !20, i32 0, null} ; [ DW_TAG_structure_type ]
!19 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!20 = metadata !{metadata !21, metadata !25, metadata !27, metadata !29, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !40, metadata !42, metadata !44, metadata !51, metadata !52, metadata !53}
!21 = metadata !{i32 589837, metadata !18, metadata !"st_dev", metadata !19, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ]
!22 = metadata !{i32 589846, metadata !23, metadata !"__dev_t", metadata !23, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 589837, metadata !18, metadata !"st_ino", metadata !19, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ]
!26 = metadata !{i32 589846, metadata !23, metadata !"__ino64_t", metadata !23, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 589837, metadata !18, metadata !"st_nlink", metadata !19, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 589846, metadata !23, metadata !"__nlink_t", metadata !23, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 589837, metadata !18, metadata !"st_mode", metadata !19, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 589846, metadata !23, metadata !"__mode_t", metadata !23, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 589837, metadata !18, metadata !"st_uid", metadata !19, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !32} ; [ DW_TAG_member ]
!32 = metadata !{i32 589846, metadata !23, metadata !"__uid_t", metadata !23, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!33 = metadata !{i32 589837, metadata !18, metadata !"st_gid", metadata !19, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 589846, metadata !23, metadata !"__gid_t", metadata !23, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!35 = metadata !{i32 589837, metadata !18, metadata !"__pad0", metadata !19, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !16} ; [ DW_TAG_member ]
!36 = metadata !{i32 589837, metadata !18, metadata !"st_rdev", metadata !19, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !18, metadata !"st_size", metadata !19, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !23, metadata !"__off_t", metadata !23, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 589837, metadata !18, metadata !"st_blksize", metadata !19, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !23, metadata !"__blksize_t", metadata !23, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !18, metadata !"st_blocks", metadata !19, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !23, metadata !"__blkcnt64_t", metadata !23, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !18, metadata !"st_atim", metadata !19, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !46, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!46 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 589837, metadata !45, metadata !"tv_sec", metadata !46, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589846, metadata !23, metadata !"__time_t", metadata !23, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 589837, metadata !45, metadata !"tv_nsec", metadata !46, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !18, metadata !"st_mtim", metadata !19, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !18, metadata !"st_ctim", metadata !19, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !18, metadata !"__unused", metadata !19, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !39, metadata !55, i32 0, null} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__create_new_dfile", metadata !"__create_new_dfile", metadata !"", metadata !1, i32 57, metadata !58, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.exe_disk_file_t*, i32, i8*, %struct.stat64*)* @__create_new_dfile} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !60, metadata !5, metadata !6, metadata !17}
!60 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 589846, metadata !62, metadata !"exe_disk_file_t", metadata !62, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 589843, metadata !1, metadata !"", metadata !62, i32 39, i64 192, i64 64, i64 0, i32 0, null, metadata !64, i32 0, null} ; [ DW_TAG_structure_type ]
!64 = metadata !{metadata !65, metadata !66, metadata !68}
!65 = metadata !{i32 589837, metadata !63, metadata !"size", metadata !62, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !5} ; [ DW_TAG_member ]
!66 = metadata !{i32 589837, metadata !63, metadata !"contents", metadata !62, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ]
!67 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 589837, metadata !63, metadata !"stat", metadata !62, i32 42, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ]
!69 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !"klee_init_fds", metadata !1, i32 122, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32, i32, i32)* @klee_init_fds} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, null} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !5, metadata !5, metadata !16, metadata !16, metadata !5}
!72 = metadata !{i32 590081, metadata !0, metadata !"name", metadata !1, i32 107, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 590080, metadata !74, metadata !"x", metadata !1, i32 108, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 589835, metadata !0, i32 107, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 590081, metadata !12, metadata !"__path", metadata !13, i32 504, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 590081, metadata !12, metadata !"__statbuf", metadata !13, i32 504, metadata !17, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 590081, metadata !57, metadata !"dfile", metadata !1, i32 56, metadata !60, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 590081, metadata !57, metadata !"size", metadata !1, i32 56, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 590081, metadata !57, metadata !"name", metadata !1, i32 57, metadata !6, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 590081, metadata !57, metadata !"defaults", metadata !1, i32 57, metadata !17, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 590080, metadata !82, metadata !"s", metadata !1, i32 58, metadata !17, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 589835, metadata !57, i32 57, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 590080, metadata !82, metadata !"sp", metadata !1, i32 59, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 590080, metadata !82, metadata !"sname", metadata !1, i32 60, metadata !85, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 512, i64 8, i64 0, i32 0, metadata !8, metadata !86, i32 0, null} ; [ DW_TAG_array_type ]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 589857, i64 0, i64 63}       ; [ DW_TAG_subrange_type ]
!88 = metadata !{i32 590081, metadata !69, metadata !"n_files", metadata !1, i32 120, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 590081, metadata !69, metadata !"file_length", metadata !1, i32 120, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !69, metadata !"sym_stdout_flag", metadata !1, i32 121, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590081, metadata !69, metadata !"save_all_writes_flag", metadata !1, i32 121, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 590081, metadata !69, metadata !"max_failures", metadata !1, i32 122, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 590080, metadata !94, metadata !"k", metadata !1, i32 126, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 589835, metadata !69, i32 122, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 590080, metadata !94, metadata !"name", metadata !1, i32 127, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 56, i64 8, i64 0, i32 0, metadata !8, metadata !97, i32 0, null} ; [ DW_TAG_array_type ]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 589857, i64 0, i64 6}        ; [ DW_TAG_subrange_type ]
!99 = metadata !{i32 590080, metadata !94, metadata !"s", metadata !1, i32 128, metadata !18, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_fs", metadata !"__exe_fs", metadata !"", metadata !1, i32 24, metadata !101, i1 false, i1 true, %struct.exe_file_system_t* @__exe_fs} ; [ DW_TAG_variable ]
!101 = metadata !{i32 589846, metadata !62, metadata !"exe_file_system_t", metadata !62, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ]
!102 = metadata !{i32 589843, metadata !1, metadata !"", metadata !62, i32 61, i64 832, i64 64, i64 0, i32 0, null, metadata !103, i32 0, null} ; [ DW_TAG_structure_type ]
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!104 = metadata !{i32 589837, metadata !102, metadata !"n_sym_files", metadata !62, i32 62, i64 32, i64 32, i64 0, i32 0, metadata !5} ; [ DW_TAG_member ]
!105 = metadata !{i32 589837, metadata !102, metadata !"sym_stdin", metadata !62, i32 63, i64 64, i64 64, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ]
!106 = metadata !{i32 589837, metadata !102, metadata !"sym_stdout", metadata !62, i32 63, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ]
!107 = metadata !{i32 589837, metadata !102, metadata !"stdout_writes", metadata !62, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !5} ; [ DW_TAG_member ]
!108 = metadata !{i32 589837, metadata !102, metadata !"sym_files", metadata !62, i32 65, i64 64, i64 64, i64 256, i32 0, metadata !60} ; [ DW_TAG_member ]
!109 = metadata !{i32 589837, metadata !102, metadata !"max_failures", metadata !62, i32 68, i64 32, i64 32, i64 320, i32 0, metadata !5} ; [ DW_TAG_member ]
!110 = metadata !{i32 589837, metadata !102, metadata !"read_fail", metadata !62, i32 71, i64 64, i64 64, i64 384, i32 0, metadata !111} ; [ DW_TAG_member ]
!111 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 589837, metadata !102, metadata !"write_fail", metadata !62, i32 71, i64 64, i64 64, i64 448, i32 0, metadata !111} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !102, metadata !"close_fail", metadata !62, i32 71, i64 64, i64 64, i64 512, i32 0, metadata !111} ; [ DW_TAG_member ]
!114 = metadata !{i32 589837, metadata !102, metadata !"ftruncate_fail", metadata !62, i32 71, i64 64, i64 64, i64 576, i32 0, metadata !111} ; [ DW_TAG_member ]
!115 = metadata !{i32 589837, metadata !102, metadata !"getcwd_fail", metadata !62, i32 71, i64 64, i64 64, i64 640, i32 0, metadata !111} ; [ DW_TAG_member ]
!116 = metadata !{i32 589837, metadata !102, metadata !"chmod_fail", metadata !62, i32 72, i64 64, i64 64, i64 704, i32 0, metadata !111} ; [ DW_TAG_member ]
!117 = metadata !{i32 589837, metadata !102, metadata !"fchmod_fail", metadata !62, i32 72, i64 64, i64 64, i64 768, i32 0, metadata !111} ; [ DW_TAG_member ]
!118 = metadata !{i32 589876, i32 0, metadata !1, metadata !"__exe_env", metadata !"__exe_env", metadata !"", metadata !1, i32 37, metadata !119, i1 false, i1 true, %struct.exe_sym_env_t* @__exe_env} ; [ DW_TAG_variable ]
!119 = metadata !{i32 589846, metadata !120, metadata !"exe_sym_env_t", metadata !120, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ]
!120 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/klee/Downloads/llvm-gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!121 = metadata !{i32 589843, metadata !1, metadata !"", metadata !62, i32 80, i64 12416, i64 64, i64 0, i32 0, null, metadata !122, i32 0, null} ; [ DW_TAG_structure_type ]
!122 = metadata !{metadata !123, metadata !136, metadata !197, metadata !199, metadata !200}
!123 = metadata !{i32 589837, metadata !121, metadata !"fds", metadata !62, i32 81, i64 3072, i64 64, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ]
!124 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 3072, i64 64, i64 0, i32 0, metadata !125, metadata !134, i32 0, null} ; [ DW_TAG_array_type ]
!125 = metadata !{i32 589846, metadata !62, metadata !"exe_file_t", metadata !62, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ]
!126 = metadata !{i32 589843, metadata !1, metadata !"", metadata !62, i32 52, i64 192, i64 64, i64 0, i32 0, null, metadata !127, i32 0, null} ; [ DW_TAG_structure_type ]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !133}
!128 = metadata !{i32 589837, metadata !126, metadata !"fd", metadata !62, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!129 = metadata !{i32 589837, metadata !126, metadata !"flags", metadata !62, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !5} ; [ DW_TAG_member ]
!130 = metadata !{i32 589837, metadata !126, metadata !"off", metadata !62, i32 57, i64 64, i64 64, i64 64, i32 0, metadata !131} ; [ DW_TAG_member ]
!131 = metadata !{i32 589846, metadata !132, metadata !"off64_t", metadata !132, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!132 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!133 = metadata !{i32 589837, metadata !126, metadata !"dfile", metadata !62, i32 58, i64 64, i64 64, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 589857, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!136 = metadata !{i32 589837, metadata !121, metadata !"sct", metadata !62, i32 83, i64 9216, i64 64, i64 3072, i32 0, metadata !137} ; [ DW_TAG_member ]
!137 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 9216, i64 64, i64 0, i32 0, metadata !138, metadata !134, i32 0, null} ; [ DW_TAG_array_type ]
!138 = metadata !{i32 589846, metadata !139, metadata !"sym_socket", metadata !139, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ]
!139 = metadata !{i32 589865, metadata !"common.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!140 = metadata !{i32 589843, metadata !1, metadata !"socket", metadata !139, i32 13, i64 576, i64 64, i64 0, i32 0, null, metadata !141, i32 0, null} ; [ DW_TAG_structure_type ]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !167, metadata !168, metadata !192, metadata !193, metadata !195, metadata !196}
!142 = metadata !{i32 589837, metadata !140, metadata !"status", metadata !139, i32 28, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ]
!143 = metadata !{i32 589837, metadata !140, metadata !"type", metadata !139, i32 29, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ]
!144 = metadata !{i32 589837, metadata !140, metadata !"domain", metadata !139, i32 30, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ]
!145 = metadata !{i32 589837, metadata !140, metadata !"protocol", metadata !139, i32 31, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ]
!146 = metadata !{i32 589837, metadata !140, metadata !"local_end", metadata !139, i32 33, i64 64, i64 64, i64 128, i32 0, metadata !147} ; [ DW_TAG_member ]
!147 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ]
!148 = metadata !{i32 589846, metadata !139, metadata !"end_point_t", metadata !139, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ]
!149 = metadata !{i32 589843, metadata !1, metadata !"", metadata !139, i32 15, i64 192, i64 64, i64 0, i32 0, null, metadata !150, i32 0, null} ; [ DW_TAG_structure_type ]
!150 = metadata !{metadata !151, metadata !163, metadata !165, metadata !166}
!151 = metadata !{i32 589837, metadata !149, metadata !"addr", metadata !139, i32 16, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ]
!152 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ]
!153 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !154, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !155, i32 0, null} ; [ DW_TAG_structure_type ]
!154 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!155 = metadata !{metadata !156, metadata !159}
!156 = metadata !{i32 589837, metadata !153, metadata !"sa_family", metadata !154, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !157} ; [ DW_TAG_member ]
!157 = metadata !{i32 589846, metadata !154, metadata !"sa_family_t", metadata !154, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ]
!158 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!159 = metadata !{i32 589837, metadata !153, metadata !"sa_data", metadata !154, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !160} ; [ DW_TAG_member ]
!160 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !8, metadata !161, i32 0, null} ; [ DW_TAG_array_type ]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 589857, i64 0, i64 13}      ; [ DW_TAG_subrange_type ]
!163 = metadata !{i32 589837, metadata !149, metadata !"socket", metadata !139, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !164} ; [ DW_TAG_member ]
!164 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ]
!165 = metadata !{i32 589837, metadata !149, metadata !"refcount", metadata !139, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !5} ; [ DW_TAG_member ]
!166 = metadata !{i32 589837, metadata !149, metadata !"allocated", metadata !139, i32 21, i64 8, i64 8, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ]
!167 = metadata !{i32 589837, metadata !140, metadata !"remote_end", metadata !139, i32 34, i64 64, i64 64, i64 192, i32 0, metadata !147} ; [ DW_TAG_member ]
!168 = metadata !{i32 589837, metadata !140, metadata !"out", metadata !139, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !169} ; [ DW_TAG_member ]
!169 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ]
!170 = metadata !{i32 589846, metadata !139, metadata !"stream_buffer_t", metadata !139, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ]
!171 = metadata !{i32 589843, metadata !1, metadata !"", metadata !172, i32 27, i64 640, i64 64, i64 0, i32 0, null, metadata !173, i32 0, null} ; [ DW_TAG_structure_type ]
!172 = metadata !{i32 589865, metadata !"buffers.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!173 = metadata !{metadata !174, metadata !175, metadata !177, metadata !178, metadata !179, metadata !180, metadata !188, metadata !189, metadata !190, metadata !191}
!174 = metadata !{i32 589837, metadata !171, metadata !"contents", metadata !172, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ]
!175 = metadata !{i32 589837, metadata !171, metadata !"max_size", metadata !172, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !176} ; [ DW_TAG_member ]
!176 = metadata !{i32 589846, metadata !132, metadata !"size_t", metadata !132, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!177 = metadata !{i32 589837, metadata !171, metadata !"max_rsize", metadata !172, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !176} ; [ DW_TAG_member ]
!178 = metadata !{i32 589837, metadata !171, metadata !"start", metadata !172, i32 32, i64 64, i64 64, i64 192, i32 0, metadata !176} ; [ DW_TAG_member ]
!179 = metadata !{i32 589837, metadata !171, metadata !"size", metadata !172, i32 33, i64 64, i64 64, i64 256, i32 0, metadata !176} ; [ DW_TAG_member ]
!180 = metadata !{i32 589837, metadata !171, metadata !"evt_queue", metadata !172, i32 35, i64 128, i64 64, i64 320, i32 0, metadata !181} ; [ DW_TAG_member ]
!181 = metadata !{i32 589846, metadata !172, metadata !"event_queue_t", metadata !172, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ]
!182 = metadata !{i32 589843, metadata !1, metadata !"", metadata !172, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !183, i32 0, null} ; [ DW_TAG_structure_type ]
!183 = metadata !{metadata !184, metadata !187}
!184 = metadata !{i32 589837, metadata !182, metadata !"queue", metadata !172, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_member ]
!185 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ]
!186 = metadata !{i32 589846, metadata !172, metadata !"wlist_id_t", metadata !172, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!187 = metadata !{i32 589837, metadata !182, metadata !"count", metadata !172, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !5} ; [ DW_TAG_member ]
!188 = metadata !{i32 589837, metadata !171, metadata !"empty_wlist", metadata !172, i32 36, i64 64, i64 64, i64 448, i32 0, metadata !186} ; [ DW_TAG_member ]
!189 = metadata !{i32 589837, metadata !171, metadata !"full_wlist", metadata !172, i32 37, i64 64, i64 64, i64 512, i32 0, metadata !186} ; [ DW_TAG_member ]
!190 = metadata !{i32 589837, metadata !171, metadata !"queued", metadata !172, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !5} ; [ DW_TAG_member ]
!191 = metadata !{i32 589837, metadata !171, metadata !"status", metadata !172, i32 40, i64 16, i64 16, i64 608, i32 0, metadata !158} ; [ DW_TAG_member ]
!192 = metadata !{i32 589837, metadata !140, metadata !"in", metadata !139, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !169} ; [ DW_TAG_member ]
!193 = metadata !{i32 589837, metadata !140, metadata !"conn_evt_queue", metadata !139, i32 41, i64 64, i64 64, i64 384, i32 0, metadata !194} ; [ DW_TAG_member ]
!194 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 589837, metadata !140, metadata !"conn_wlist", metadata !139, i32 42, i64 64, i64 64, i64 448, i32 0, metadata !186} ; [ DW_TAG_member ]
!196 = metadata !{i32 589837, metadata !140, metadata !"listen", metadata !139, i32 45, i64 64, i64 64, i64 512, i32 0, metadata !169} ; [ DW_TAG_member ]
!197 = metadata !{i32 589837, metadata !121, metadata !"umask", metadata !62, i32 85, i64 32, i64 32, i64 12288, i32 0, metadata !198} ; [ DW_TAG_member ]
!198 = metadata !{i32 589846, metadata !132, metadata !"mode_t", metadata !132, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !5} ; [ DW_TAG_typedef ]
!199 = metadata !{i32 589837, metadata !121, metadata !"version", metadata !62, i32 86, i64 32, i64 32, i64 12320, i32 0, metadata !5} ; [ DW_TAG_member ]
!200 = metadata !{i32 589837, metadata !121, metadata !"save_all_writes", metadata !62, i32 90, i64 32, i64 32, i64 12352, i32 0, metadata !16} ; [ DW_TAG_member ]
!201 = metadata !{i32 120, i32 0, metadata !69, null}
!202 = metadata !{i32 121, i32 0, metadata !69, null}
!203 = metadata !{i32 122, i32 0, metadata !69, null}
!204 = metadata !{i32 127, i32 0, metadata !94, null}
!205 = metadata !{i32 128, i32 0, metadata !94, null}
!206 = metadata !{i32 42, i32 0, metadata !207, metadata !208}
!207 = metadata !{i32 589835, metadata !9, i32 40, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 130, i32 0, metadata !94, null}
!209 = metadata !{i32 43, i32 0, metadata !207, metadata !208}
!210 = metadata !{i32 44, i32 0, metadata !207, metadata !208}
!211 = metadata !{i32 45, i32 0, metadata !207, metadata !208}
!212 = metadata !{i32 47, i32 0, metadata !207, metadata !208}
!213 = metadata !{i32 48, i32 0, metadata !207, metadata !208}
!214 = metadata !{i32 49, i32 0, metadata !207, metadata !208}
!215 = metadata !{i32 51, i32 0, metadata !207, metadata !208}
!216 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)}
!217 = metadata !{i32 504, i32 0, metadata !12, metadata !218}
!218 = metadata !{i32 132, i32 0, metadata !94, null}
!219 = metadata !{i32 506, i32 0, metadata !220, metadata !218}
!220 = metadata !{i32 589835, metadata !12, i32 505, i32 0, metadata !13, i32 2} ; [ DW_TAG_lexical_block ]
!221 = metadata !{i32 134, i32 0, metadata !94, null}
!222 = metadata !{i32 135, i32 0, metadata !94, null}
!223 = metadata !{i32 0}
!224 = metadata !{i32 136, i32 0, metadata !94, null}
!225 = metadata !{i32 137, i32 0, metadata !94, null}
!226 = metadata !{i32 138, i32 0, metadata !94, null}
!227 = metadata !{i32 142, i32 0, metadata !94, null}
!228 = metadata !{i32 143, i32 0, metadata !94, null}
!229 = metadata !{i32 144, i32 0, metadata !94, null}
!230 = metadata !{i32 145, i32 0, metadata !94, null}
!231 = metadata !{i32 147, i32 0, metadata !94, null}
!232 = metadata !{i32 149, i32 0, metadata !94, null}
!233 = metadata !{i32 150, i32 0, metadata !94, null}
!234 = metadata !{i32 151, i32 0, metadata !94, null}
!235 = metadata !{i32 152, i32 0, metadata !94, null}
!236 = metadata !{i32 153, i32 0, metadata !94, null}
!237 = metadata !{i32 154, i32 0, metadata !94, null}
!238 = metadata !{i32 155, i32 0, metadata !94, null}
!239 = metadata !{i32 157, i32 0, metadata !94, null}
!240 = metadata !{i32 158, i32 0, metadata !94, null}
!241 = metadata !{i32 159, i32 0, metadata !94, null}
!242 = metadata !{i32 160, i32 0, metadata !94, null}
!243 = metadata !{i32 161, i32 0, metadata !94, null}
!244 = metadata !{i32 165, i32 0, metadata !94, null}
!245 = metadata !{i32 166, i32 0, metadata !94, null}
!246 = metadata !{i32 167, i32 0, metadata !94, null}
!247 = metadata !{i32 168, i32 0, metadata !94, null}
!248 = metadata !{i32 169, i32 0, metadata !94, null}
!249 = metadata !{i32 171, i32 0, metadata !94, null}
!250 = metadata !{i32 173, i32 0, metadata !94, null}
!251 = metadata !{i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)}
!252 = metadata !{i32 107, i32 0, metadata !0, metadata !253}
!253 = metadata !{i32 174, i32 0, metadata !94, null}
!254 = metadata !{i32 108, i32 0, metadata !74, metadata !253}
!255 = metadata !{i32 109, i32 0, metadata !74, metadata !253}
!256 = metadata !{i32 110, i32 0, metadata !74, metadata !253}
!257 = metadata !{i32 175, i32 0, metadata !94, null}
!258 = metadata !{i32 176, i32 0, metadata !94, null}
!259 = metadata !{i32 56, i32 0, metadata !57, null}
!260 = metadata !{i32 57, i32 0, metadata !57, null}
!261 = metadata !{i32 60, i32 0, metadata !82, null}
!262 = metadata !{i32 58, i32 0, metadata !82, null}
!263 = metadata !{i32 61, i32 0, metadata !82, null}
!264 = metadata !{i32 63, i32 0, metadata !82, null}
!265 = metadata !{i32 62, i32 0, metadata !82, null}
!266 = metadata !{i32 65, i32 0, metadata !82, null}
!267 = metadata !{i32 67, i32 0, metadata !82, null}
!268 = metadata !{i32 68, i32 0, metadata !82, null}
!269 = metadata !{i32 69, i32 0, metadata !82, null}
!270 = metadata !{i32 71, i32 0, metadata !82, null}
!271 = metadata !{i32 74, i32 0, metadata !82, null}
!272 = metadata !{i32 76, i32 0, metadata !82, null}
!273 = metadata !{i32 81, i32 0, metadata !82, null}
!274 = metadata !{i32 85, i32 0, metadata !82, null}
!275 = metadata !{i32 87, i32 0, metadata !82, null}
!276 = metadata !{i32 88, i32 0, metadata !82, null}
!277 = metadata !{i32 89, i32 0, metadata !82, null}
!278 = metadata !{i32 90, i32 0, metadata !82, null}
!279 = metadata !{i32 91, i32 0, metadata !82, null}
!280 = metadata !{i32 92, i32 0, metadata !82, null}
!281 = metadata !{i32 93, i32 0, metadata !82, null}
!282 = metadata !{i32 94, i32 0, metadata !82, null}
!283 = metadata !{i32 95, i32 0, metadata !82, null}
!284 = metadata !{i32 96, i32 0, metadata !82, null}
!285 = metadata !{i32 97, i32 0, metadata !82, null}
!286 = metadata !{i32 98, i32 0, metadata !82, null}
!287 = metadata !{i32 99, i32 0, metadata !82, null}
!288 = metadata !{i32 100, i32 0, metadata !82, null}
!289 = metadata !{i32 102, i32 0, metadata !82, null}
!290 = metadata !{i32 103, i32 0, metadata !82, null}
!291 = metadata !{i32 104, i32 0, metadata !82, null}
!292 = metadata !{i32 105, i32 0, metadata !82, null}
