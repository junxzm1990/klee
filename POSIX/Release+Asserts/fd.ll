; ModuleID = 'fd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent64 = type { i64, i64, i16, i8, [256 x i8] }
%struct.end_point_t = type { %struct.sockaddr*, %struct.sym_socket*, i32, i8 }
%struct.event_queue_t = type { i64*, i32 }
%struct.exe_disk_file_t = type { i32, i8*, %struct.stat* }
%struct.exe_file_system_t = type { i32, %struct.exe_disk_file_t*, %struct.exe_disk_file_t*, i32, %struct.exe_disk_file_t*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.exe_file_t = type { i32, i32, i64, %struct.exe_disk_file_t* }
%struct.exe_sym_env_t = type { [16 x %struct.exe_file_t], [16 x %struct.sym_socket], i32, i32, i32 }
%struct.iovec = type { i8*, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }
%struct.sym_socket = type { i32, i32, i32, i32, %struct.end_point_t*, %struct.end_point_t*, %struct.stream_buffer_t*, %struct.stream_buffer_t*, %struct.event_queue_t*, i64, %struct.stream_buffer_t* }
%struct.timespec = type { i64, i64 }

@__exe_fs = external unnamed_addr global %struct.exe_file_system_t
@__exe_env = external unnamed_addr global %struct.exe_sym_env_t
@.str = private unnamed_addr constant [18 x i8] c"ignoring (ENOENT)\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"ignoring (EPERM)\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EPERM)\00", align 8
@.str3 = private unnamed_addr constant [32 x i8] c"symbolic file, ignoring (EBADF)\00", align 8
@n_calls.6363 = internal unnamed_addr global i32 0
@.str4 = private unnamed_addr constant [30 x i8] c"symbolic file, ignoring (EIO)\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (ENOENT)\00", align 8
@n_calls.6743 = internal unnamed_addr global i32 0
@.str6 = private unnamed_addr constant [44 x i8] c"symbolic file descriptor, ignoring (ENOENT)\00", align 8
@.str7 = private unnamed_addr constant [33 x i8] c"symbolic file, ignoring (EINVAL)\00", align 8
@.str8 = private unnamed_addr constant [41 x i8] c"(TCGETS) symbolic file, incomplete model\00", align 8
@.str9 = private unnamed_addr constant [42 x i8] c"(TCSETS) symbolic file, silently ignoring\00", align 8
@.str10 = private unnamed_addr constant [43 x i8] c"(TCSETSW) symbolic file, silently ignoring\00", align 8
@.str11 = private unnamed_addr constant [43 x i8] c"(TCSETSF) symbolic file, silently ignoring\00", align 8
@.str12 = private unnamed_addr constant [45 x i8] c"(TIOCGWINSZ) symbolic file, incomplete model\00", align 8
@.str13 = private unnamed_addr constant [46 x i8] c"(TIOCSWINSZ) symbolic file, ignoring (EINVAL)\00", align 8
@.str14 = private unnamed_addr constant [43 x i8] c"(FIONREAD) symbolic file, incomplete model\00", align 8
@.str15 = private unnamed_addr constant [44 x i8] c"(MTIOCGET) symbolic file, ignoring (EINVAL)\00", align 8
@n_calls.5929 = internal unnamed_addr global i32 0
@.str16 = private unnamed_addr constant [18 x i8] c"s != (off64_t) -1\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"fd.c\00", align 1
@__PRETTY_FUNCTION__.6400 = internal unnamed_addr constant [14 x i8] c"__fd_getdents\00"
@.str18 = private unnamed_addr constant [18 x i8] c"new_off == f->off\00", align 1
@__PRETTY_FUNCTION__.6124 = internal unnamed_addr constant [11 x i8] c"__fd_lseek\00"
@n_calls.5949 = internal unnamed_addr global i32 0
@.str19 = private unnamed_addr constant [12 x i8] c"f->off >= 0\00", align 1
@__PRETTY_FUNCTION__.5952 = internal unnamed_addr constant [5 x i8] c"read\00"
@n_calls.6270 = internal unnamed_addr global i32 0
@n_calls.6247 = internal unnamed_addr global i32 0
@stderr = external unnamed_addr global %struct._IO_FILE*
@.str20 = private unnamed_addr constant [47 x i8] c"Undefined call to open(): O_EXCL w/o O_RDONLY\0A\00", align 8
@n_calls.6046 = internal unnamed_addr global i32 0
@.str21 = private unnamed_addr constant [7 x i8] c"r >= 0\00", align 1
@__PRETTY_FUNCTION__.6049 = internal unnamed_addr constant [6 x i8] c"write\00"
@.str22 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str23 = private unnamed_addr constant [33 x i8] c"WARNING: write() ignores bytes.\0A\00", align 8
@.str24 = private unnamed_addr constant [11 x i8] c"count == 0\00", align 1
@__PRETTY_FUNCTION__.6024 = internal unnamed_addr constant [14 x i8] c"_gather_write\00"

define i32 @access(i8* %pathname, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !399), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !400), !dbg !661
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !662
  %0 = load i8* %pathname, align 1, !dbg !664
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !664
  %1 = icmp eq i8 %0, 0, !dbg !665
  br i1 %1, label %bb1, label %bb.i, !dbg !665

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !665
  %3 = load i8* %2, align 1, !dbg !665
  %4 = icmp eq i8 %3, 0, !dbg !665
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !665

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !666
  %6 = sext i8 %0 to i32, !dbg !667
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !667
  %8 = add nsw i32 %7, 65, !dbg !667
  %9 = icmp eq i32 %6, %8, !dbg !667
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !667

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !668
  %11 = zext i32 %18 to i64, !dbg !668
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !668
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !670
  %13 = load %struct.stat** %12, align 8, !dbg !670
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !670
  %15 = load i64* %14, align 8, !dbg !670
  %16 = icmp eq i64 %15, 0, !dbg !670
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !670

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !666
  br label %bb8.i, !dbg !666

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !666
  br i1 %19, label %bb3.i, label %bb1, !dbg !666

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !668
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !401), !dbg !663
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !671
  br i1 %21, label %bb1, label %bb4, !dbg !671

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !354) nounwind, !dbg !672
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !344) nounwind, !dbg !674
  %22 = ptrtoint i8* %pathname to i64, !dbg !676
  %23 = tail call i64 @klee_get_valuel(i64 %22) nounwind, !dbg !676
  %24 = inttoptr i64 %23 to i8*, !dbg !676
  tail call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !345) nounwind, !dbg !676
  %25 = icmp eq i8* %24, %pathname, !dbg !677
  %26 = zext i1 %25 to i64, !dbg !677
  tail call void @klee_assume(i64 %26) nounwind, !dbg !677
  tail call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !355) nounwind, !dbg !675
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !679
  br label %bb.i6, !dbg !679

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %24, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %27 = phi i32 [ 0, %bb1 ], [ %39, %bb6.i8 ]
  %tmp.i = add i32 %27, -1
  %28 = load i8* %sc.0.i, align 1, !dbg !680
  %29 = and i32 %tmp.i, %27, !dbg !681
  %30 = icmp eq i32 %29, 0, !dbg !681
  br i1 %30, label %bb1.i, label %bb5.i, !dbg !681

bb1.i:                                            ; preds = %bb.i6
  switch i8 %28, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %28}, i64 0, metadata !358) nounwind, !dbg !680
  store i8 0, i8* %sc.0.i, align 1, !dbg !682
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !682
  br label %__concretize_string.exit, !dbg !682

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !683
  %31 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !683
  br label %bb6.i8, !dbg !683

bb5.i:                                            ; preds = %bb.i6
  %32 = sext i8 %28 to i64, !dbg !684
  %33 = tail call i64 @klee_get_valuel(i64 %32) nounwind, !dbg !684
  %34 = trunc i64 %33 to i8, !dbg !684
  %35 = icmp eq i8 %34, %28, !dbg !685
  %36 = zext i1 %35 to i64, !dbg !685
  tail call void @klee_assume(i64 %36) nounwind, !dbg !685
  store i8 %34, i8* %sc.0.i, align 1, !dbg !686
  %37 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !686
  %38 = icmp eq i8 %34, 0, !dbg !687
  br i1 %38, label %__concretize_string.exit, label %bb6.i8, !dbg !687

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %31, %bb4.i7 ], [ %37, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %39 = add i32 %27, 1, !dbg !679
  br label %bb.i6, !dbg !679

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %40 = tail call i64 (i64, ...)* @syscall(i64 21, i8* %pathname, i32 %mode) nounwind, !dbg !673
  %41 = trunc i64 %40 to i32, !dbg !673
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !403), !dbg !673
  %42 = icmp eq i32 %41, -1, !dbg !688
  br i1 %42, label %bb2, label %bb4, !dbg !688

bb2:                                              ; preds = %__concretize_string.exit
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !689
  %44 = tail call i32 @klee_get_errno() nounwind, !dbg !689
  store i32 %44, i32* %43, align 4, !dbg !689
  br label %bb4, !dbg !689

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %__get_sym_file.exit
  %.0 = phi i32 [ 0, %__get_sym_file.exit ], [ -1, %bb2 ], [ %41, %__concretize_string.exit ]
  ret i32 %.0, !dbg !690
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @umask(i32 %mask) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %mask}, i64 0, metadata !277), !dbg !691
  %0 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 8, !dbg !692
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !278), !dbg !692
  %1 = and i32 %mask, 511, !dbg !693
  store i32 %1, i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 8, !dbg !693
  ret i32 %0, !dbg !694
}

define i32 @chroot(i8* nocapture %path) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !286), !dbg !695
  %0 = load i8* %path, align 1, !dbg !696
  switch i8 %0, label %bb4 [
    i8 0, label %bb
    i8 47, label %bb2
  ]

bb:                                               ; preds = %entry
  %1 = tail call i32* @__errno_location() nounwind readnone, !dbg !698
  store i32 2, i32* %1, align 4, !dbg !698
  br label %bb5, !dbg !699

bb2:                                              ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !700
  %3 = load i8* %2, align 1, !dbg !700
  %4 = icmp eq i8 %3, 0, !dbg !700
  br i1 %4, label %bb5, label %bb4, !dbg !700

bb4:                                              ; preds = %entry, %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !701
  %5 = tail call i32* @__errno_location() nounwind readnone, !dbg !702
  store i32 2, i32* %5, align 4, !dbg !702
  br label %bb5, !dbg !703

bb5:                                              ; preds = %bb2, %bb4, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb4 ], [ 0, %bb2 ]
  ret i32 %.0, !dbg !699
}

declare i32* @__errno_location() nounwind readnone

declare void @klee_warning(i8*)

define i32 @unlinkat(i32 %dirfd, i8* nocapture %pathname, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dirfd}, i64 0, metadata !287), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !288), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !289), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !705
  %0 = load i8* %pathname, align 1, !dbg !707
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !707
  %1 = icmp eq i8 %0, 0, !dbg !708
  br i1 %1, label %bb5, label %bb.i, !dbg !708

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !708
  %3 = load i8* %2, align 1, !dbg !708
  %4 = icmp eq i8 %3, 0, !dbg !708
  br i1 %4, label %bb8.preheader.i, label %bb5, !dbg !708

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !709
  %6 = sext i8 %0 to i32, !dbg !710
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !710
  %8 = add nsw i32 %7, 65, !dbg !710
  %9 = icmp eq i32 %6, %8, !dbg !710
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !710

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !711
  %11 = zext i32 %18 to i64, !dbg !711
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !711
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !712
  %13 = load %struct.stat** %12, align 8, !dbg !712
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !712
  %15 = load i64* %14, align 8, !dbg !712
  %16 = icmp eq i64 %15, 0, !dbg !712
  br i1 %16, label %bb5, label %__get_sym_file.exit, !dbg !712

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !709
  br label %bb8.i, !dbg !709

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !709
  br i1 %19, label %bb3.i, label %bb5, !dbg !709

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !711
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !290), !dbg !706
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !713
  br i1 %21, label %bb5, label %bb, !dbg !713

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !714
  %23 = load i32* %22, align 8, !dbg !714
  %24 = and i32 %23, 61440, !dbg !714
  %25 = icmp eq i32 %24, 32768, !dbg !714
  br i1 %25, label %bb1, label %bb2, !dbg !714

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !715
  br label %bb6, !dbg !716

bb2:                                              ; preds = %bb
  %26 = icmp eq i32 %24, 16384, !dbg !717
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !718
  br i1 %26, label %bb3, label %bb4, !dbg !717

bb3:                                              ; preds = %bb2
  store i32 21, i32* %27, align 4, !dbg !718
  br label %bb6, !dbg !719

bb4:                                              ; preds = %bb2
  store i32 1, i32* %27, align 4, !dbg !720
  br label %bb6, !dbg !721

bb5:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !722
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !723
  store i32 1, i32* %28, align 4, !dbg !723
  br label %bb6, !dbg !724

bb6:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb3 ], [ -1, %bb4 ], [ -1, %bb5 ]
  ret i32 %.0, !dbg !716
}

define i32 @unlink(i8* nocapture %pathname) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !292), !dbg !725
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !726
  %0 = load i8* %pathname, align 1, !dbg !728
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !728
  %1 = icmp eq i8 %0, 0, !dbg !729
  br i1 %1, label %bb5, label %bb.i, !dbg !729

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !729
  %3 = load i8* %2, align 1, !dbg !729
  %4 = icmp eq i8 %3, 0, !dbg !729
  br i1 %4, label %bb8.preheader.i, label %bb5, !dbg !729

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !730
  %6 = sext i8 %0 to i32, !dbg !731
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !731
  %8 = add nsw i32 %7, 65, !dbg !731
  %9 = icmp eq i32 %6, %8, !dbg !731
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !731

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !732
  %11 = zext i32 %18 to i64, !dbg !732
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !732
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !733
  %13 = load %struct.stat** %12, align 8, !dbg !733
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !733
  %15 = load i64* %14, align 8, !dbg !733
  %16 = icmp eq i64 %15, 0, !dbg !733
  br i1 %16, label %bb5, label %__get_sym_file.exit, !dbg !733

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !730
  br label %bb8.i, !dbg !730

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !730
  br i1 %19, label %bb3.i, label %bb5, !dbg !730

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !732
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !293), !dbg !727
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !734
  br i1 %21, label %bb5, label %bb, !dbg !734

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !735
  %23 = load i32* %22, align 8, !dbg !735
  %24 = and i32 %23, 61440, !dbg !735
  %25 = icmp eq i32 %24, 32768, !dbg !735
  br i1 %25, label %bb1, label %bb2, !dbg !735

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !736
  br label %bb6, !dbg !737

bb2:                                              ; preds = %bb
  %26 = icmp eq i32 %24, 16384, !dbg !738
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !739
  br i1 %26, label %bb3, label %bb4, !dbg !738

bb3:                                              ; preds = %bb2
  store i32 21, i32* %27, align 4, !dbg !739
  br label %bb6, !dbg !740

bb4:                                              ; preds = %bb2
  store i32 1, i32* %27, align 4, !dbg !741
  br label %bb6, !dbg !742

bb5:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !743
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !744
  store i32 1, i32* %28, align 4, !dbg !744
  br label %bb6, !dbg !745

bb6:                                              ; preds = %bb5, %bb4, %bb3, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb3 ], [ -1, %bb4 ], [ -1, %bb5 ]
  ret i32 %.0, !dbg !737
}

define i32 @rmdir(i8* nocapture %pathname) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !295), !dbg !746
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !747
  %0 = load i8* %pathname, align 1, !dbg !749
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !749
  %1 = icmp eq i8 %0, 0, !dbg !750
  br i1 %1, label %bb3, label %bb.i, !dbg !750

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %pathname, i64 1, !dbg !750
  %3 = load i8* %2, align 1, !dbg !750
  %4 = icmp eq i8 %3, 0, !dbg !750
  br i1 %4, label %bb8.preheader.i, label %bb3, !dbg !750

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !751
  %6 = sext i8 %0 to i32, !dbg !752
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !752
  %8 = add nsw i32 %7, 65, !dbg !752
  %9 = icmp eq i32 %6, %8, !dbg !752
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !752

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !753
  %11 = zext i32 %18 to i64, !dbg !753
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !753
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !754
  %13 = load %struct.stat** %12, align 8, !dbg !754
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !754
  %15 = load i64* %14, align 8, !dbg !754
  %16 = icmp eq i64 %15, 0, !dbg !754
  br i1 %16, label %bb3, label %__get_sym_file.exit, !dbg !754

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !751
  br label %bb8.i, !dbg !751

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !751
  br i1 %19, label %bb3.i, label %bb3, !dbg !751

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !753
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !296), !dbg !748
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !755
  br i1 %21, label %bb3, label %bb, !dbg !755

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !756
  %23 = load i32* %22, align 8, !dbg !756
  %24 = and i32 %23, 61440, !dbg !756
  %25 = icmp eq i32 %24, 16384, !dbg !756
  br i1 %25, label %bb1, label %bb2, !dbg !756

bb1:                                              ; preds = %bb
  store i64 0, i64* %14, align 8, !dbg !757
  br label %bb4, !dbg !758

bb2:                                              ; preds = %bb
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !759
  store i32 20, i32* %26, align 4, !dbg !759
  br label %bb4, !dbg !760

bb3:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !761
  %27 = tail call i32* @__errno_location() nounwind readnone, !dbg !762
  store i32 1, i32* %27, align 4, !dbg !762
  br label %bb4, !dbg !763

bb4:                                              ; preds = %bb3, %bb2, %bb1
  %.0 = phi i32 [ 0, %bb1 ], [ -1, %bb2 ], [ -1, %bb3 ]
  ret i32 %.0, !dbg !758
}

define i64 @readlink(i8* %path, i8* %buf, i64 %bufsize) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !301), !dbg !764
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !302), !dbg !764
  tail call void @llvm.dbg.value(metadata !{i64 %bufsize}, i64 0, metadata !303), !dbg !764
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !765
  %0 = load i8* %path, align 1, !dbg !767
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !767
  %1 = icmp eq i8 %0, 0, !dbg !768
  br i1 %1, label %bb12, label %bb.i, !dbg !768

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !768
  %3 = load i8* %2, align 1, !dbg !768
  %4 = icmp eq i8 %3, 0, !dbg !768
  br i1 %4, label %bb8.preheader.i, label %bb12, !dbg !768

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !769
  %6 = sext i8 %0 to i32, !dbg !770
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !770
  %8 = add nsw i32 %7, 65, !dbg !770
  %9 = icmp eq i32 %6, %8, !dbg !770
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !770

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !771
  %11 = zext i32 %18 to i64, !dbg !771
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !771
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !772
  %13 = load %struct.stat** %12, align 8, !dbg !772
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !772
  %15 = load i64* %14, align 8, !dbg !772
  %16 = icmp eq i64 %15, 0, !dbg !772
  br i1 %16, label %bb12, label %__get_sym_file.exit, !dbg !772

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !769
  br label %bb8.i, !dbg !769

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !769
  br i1 %19, label %bb3.i, label %bb12, !dbg !769

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !771
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !304), !dbg !766
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !773
  br i1 %21, label %bb12, label %bb, !dbg !773

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.stat* %13, i64 0, i32 3, !dbg !774
  %23 = load i32* %22, align 8, !dbg !774
  %24 = and i32 %23, 61440, !dbg !774
  %25 = icmp eq i32 %24, 40960, !dbg !774
  br i1 %25, label %bb1, label %bb11, !dbg !774

bb1:                                              ; preds = %bb
  store i8 %0, i8* %buf, align 1, !dbg !775
  %26 = icmp ugt i64 %bufsize, 1, !dbg !776
  br i1 %26, label %bb3, label %bb9, !dbg !776

bb3:                                              ; preds = %bb1
  %27 = getelementptr inbounds i8* %buf, i64 1, !dbg !776
  store i8 46, i8* %27, align 1, !dbg !776
  %28 = icmp ugt i64 %bufsize, 2, !dbg !777
  br i1 %28, label %bb5, label %bb9, !dbg !777

bb5:                                              ; preds = %bb3
  %29 = getelementptr inbounds i8* %buf, i64 2, !dbg !777
  store i8 108, i8* %29, align 1, !dbg !777
  %30 = icmp ugt i64 %bufsize, 3, !dbg !778
  br i1 %30, label %bb7, label %bb9, !dbg !778

bb7:                                              ; preds = %bb5
  %31 = getelementptr inbounds i8* %buf, i64 3, !dbg !778
  store i8 110, i8* %31, align 1, !dbg !778
  %32 = icmp ugt i64 %bufsize, 4, !dbg !779
  br i1 %32, label %bb8, label %bb9, !dbg !779

bb8:                                              ; preds = %bb7
  %33 = getelementptr inbounds i8* %buf, i64 4, !dbg !779
  store i8 107, i8* %33, align 1, !dbg !779
  br label %bb9, !dbg !779

bb9:                                              ; preds = %bb3, %bb1, %bb5, %bb8, %bb7
  %34 = icmp ugt i64 %bufsize, 5, !dbg !780
  %min = select i1 %34, i64 5, i64 %bufsize, !dbg !780
  br label %bb15, !dbg !780

bb11:                                             ; preds = %bb
  %35 = tail call i32* @__errno_location() nounwind readnone, !dbg !781
  store i32 22, i32* %35, align 4, !dbg !781
  br label %bb15, !dbg !782

bb12:                                             ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  %36 = tail call i64 (i64, ...)* @syscall(i64 89, i8* %path, i8* %buf, i64 %bufsize) nounwind, !dbg !783
  %37 = trunc i64 %36 to i32, !dbg !783
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !306), !dbg !783
  %38 = icmp eq i32 %37, -1, !dbg !784
  br i1 %38, label %bb13, label %bb14, !dbg !784

bb13:                                             ; preds = %bb12
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !785
  %40 = tail call i32 @klee_get_errno() nounwind, !dbg !785
  store i32 %40, i32* %39, align 4, !dbg !785
  br label %bb14, !dbg !785

bb14:                                             ; preds = %bb13, %bb12
  %41 = sext i32 %37 to i64, !dbg !786
  br label %bb15, !dbg !786

bb15:                                             ; preds = %bb14, %bb11, %bb9
  %.0 = phi i64 [ %min, %bb9 ], [ -1, %bb11 ], [ %41, %bb14 ]
  ret i64 %.0, !dbg !780
}

declare i64 @syscall(i64, ...) nounwind

declare i32 @klee_get_errno()

define i32 @fsync(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !308), !dbg !787
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !788
  %0 = icmp ult i32 %fd, 16, !dbg !790
  br i1 %0, label %bb.i, label %bb, !dbg !790

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !791
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !791
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !792
  %3 = load i32* %2, align 4, !dbg !792
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !792
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !792

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !791
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !309), !dbg !789
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !793
  br i1 %6, label %bb, label %bb1, !dbg !793

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !794
  store i32 9, i32* %7, align 4, !dbg !794
  br label %bb6, !dbg !795

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !796
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !796
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !796
  br i1 %10, label %bb3, label %bb6, !dbg !796

bb3:                                              ; preds = %bb1
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !797
  %12 = load i32* %11, align 8, !dbg !797
  %13 = tail call i64 (i64, ...)* @syscall(i64 74, i32 %12) nounwind, !dbg !797
  %14 = trunc i64 %13 to i32, !dbg !797
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !311), !dbg !797
  %15 = icmp eq i32 %14, -1, !dbg !798
  br i1 %15, label %bb4, label %bb6, !dbg !798

bb4:                                              ; preds = %bb3
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !799
  %17 = tail call i32 @klee_get_errno() nounwind, !dbg !799
  store i32 %17, i32* %16, align 4, !dbg !799
  br label %bb6, !dbg !799

bb6:                                              ; preds = %bb3, %bb4, %bb1, %bb
  %.0 = phi i32 [ -1, %bb ], [ 0, %bb1 ], [ -1, %bb4 ], [ %14, %bb3 ]
  ret i32 %.0, !dbg !795
}

define i32 @fstatfs(i32 %fd, %struct.statfs* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !313), !dbg !800
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf}, i64 0, metadata !314), !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !801
  %0 = icmp ult i32 %fd, 16, !dbg !803
  br i1 %0, label %bb.i, label %bb, !dbg !803

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !804
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !804
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !805
  %3 = load i32* %2, align 4, !dbg !805
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !805
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !805

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !804
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !315), !dbg !802
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !806
  br i1 %6, label %bb, label %bb1, !dbg !806

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !807
  store i32 9, i32* %7, align 4, !dbg !807
  br label %bb6, !dbg !808

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !809
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !809
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !809
  br i1 %10, label %bb3, label %bb2, !dbg !809

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !810
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !811
  store i32 9, i32* %11, align 4, !dbg !811
  br label %bb6, !dbg !812

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !813
  %13 = load i32* %12, align 8, !dbg !813
  %14 = tail call i64 (i64, ...)* @syscall(i64 138, i32 %13, %struct.statfs* %buf) nounwind, !dbg !813
  %15 = trunc i64 %14 to i32, !dbg !813
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !317), !dbg !813
  %16 = icmp eq i32 %15, -1, !dbg !814
  br i1 %16, label %bb4, label %bb6, !dbg !814

bb4:                                              ; preds = %bb3
  %17 = tail call i32* @__errno_location() nounwind readnone, !dbg !815
  %18 = tail call i32 @klee_get_errno() nounwind, !dbg !815
  store i32 %18, i32* %17, align 4, !dbg !815
  br label %bb6, !dbg !815

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %15, %bb3 ]
  ret i32 %.0, !dbg !808
}

define i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !319), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !320), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !817
  %0 = icmp ult i32 %fd, 16, !dbg !819
  br i1 %0, label %bb.i, label %__get_file.exit.thread, !dbg !819

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !820
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !820
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !821
  %3 = load i32* %2, align 4, !dbg !821
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !821
  br i1 %toBool.i, label %__get_file.exit.thread, label %__get_file.exit, !dbg !821

__get_file.exit.thread:                           ; preds = %bb.i, %entry
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !321), !dbg !818
  %5 = load i32* @n_calls.6363, align 4, !dbg !822
  %6 = add nsw i32 %5, 1, !dbg !822
  store i32 %6, i32* @n_calls.6363, align 4, !dbg !822
  br label %bb

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !820
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !321), !dbg !818
  %8 = load i32* @n_calls.6363, align 4, !dbg !822
  %9 = add nsw i32 %8, 1, !dbg !822
  store i32 %9, i32* @n_calls.6363, align 4, !dbg !822
  %10 = icmp eq %struct.exe_file_t* %7, null, !dbg !823
  br i1 %10, label %bb, label %bb1, !dbg !823

bb:                                               ; preds = %__get_file.exit.thread, %__get_file.exit
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !824
  store i32 9, i32* %11, align 4, !dbg !824
  br label %bb9, !dbg !825

bb1:                                              ; preds = %__get_file.exit
  %12 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !826
  %13 = icmp eq i32 %12, 0, !dbg !826
  br i1 %13, label %bb4, label %bb2, !dbg !826

bb2:                                              ; preds = %bb1
  %14 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 9), align 8, !dbg !826
  %15 = load i32* %14, align 4, !dbg !826
  %16 = icmp eq i32 %15, %9, !dbg !826
  br i1 %16, label %bb3, label %bb4, !dbg !826

bb3:                                              ; preds = %bb2
  %17 = add i32 %12, -1, !dbg !827
  store i32 %17, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !827
  %18 = tail call i32* @__errno_location() nounwind readnone, !dbg !828
  store i32 5, i32* %18, align 4, !dbg !828
  br label %bb9, !dbg !829

bb4:                                              ; preds = %bb1, %bb2
  %19 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !830
  %20 = load %struct.exe_disk_file_t** %19, align 8, !dbg !830
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !830
  br i1 %21, label %bb6, label %bb5, !dbg !830

bb5:                                              ; preds = %bb4
  tail call void @klee_warning(i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !831
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !832
  store i32 5, i32* %22, align 4, !dbg !832
  br label %bb9, !dbg !833

bb6:                                              ; preds = %bb4
  %23 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !834
  %24 = load i32* %23, align 8, !dbg !834
  %25 = tail call i64 (i64, ...)* @syscall(i64 77, i32 %24, i64 %length) nounwind, !dbg !834
  %26 = trunc i64 %25 to i32, !dbg !834
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !323), !dbg !834
  %27 = icmp eq i32 %26, -1, !dbg !835
  br i1 %27, label %bb7, label %bb9, !dbg !835

bb7:                                              ; preds = %bb6
  %28 = tail call i32* @__errno_location() nounwind readnone, !dbg !836
  %29 = tail call i32 @klee_get_errno() nounwind, !dbg !836
  store i32 %29, i32* %28, align 4, !dbg !836
  br label %bb9, !dbg !836

bb9:                                              ; preds = %bb6, %bb7, %bb5, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb5 ], [ -1, %bb7 ], [ %26, %bb6 ]
  ret i32 %.0, !dbg !825
}

define i32 @fchown(i32 %fd, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !332), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !333), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !334), !dbg !837
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !838
  %0 = icmp ult i32 %fd, 16, !dbg !840
  br i1 %0, label %bb.i, label %bb, !dbg !840

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !841
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !841
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !842
  %3 = load i32* %2, align 4, !dbg !842
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !842
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !842

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !841
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !335), !dbg !839
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !843
  br i1 %6, label %bb, label %bb1, !dbg !843

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !844
  store i32 9, i32* %7, align 4, !dbg !844
  br label %bb6, !dbg !845

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !846
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !846
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !846
  br i1 %10, label %bb3, label %bb2, !dbg !846

bb2:                                              ; preds = %bb1
  tail call void @llvm.dbg.value(metadata !847, i64 0, metadata !298) nounwind, !dbg !848
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !299) nounwind, !dbg !848
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !300) nounwind, !dbg !848
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !850
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !852
  store i32 1, i32* %11, align 4, !dbg !852
  br label %bb6, !dbg !849

bb3:                                              ; preds = %bb1
  %12 = tail call i64 (i64, ...)* @syscall(i64 93, i32 %fd, i32 %owner, i32 %group) nounwind, !dbg !853
  %13 = trunc i64 %12 to i32, !dbg !853
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !337), !dbg !853
  %14 = icmp eq i32 %13, -1, !dbg !854
  br i1 %14, label %bb4, label %bb6, !dbg !854

bb4:                                              ; preds = %bb3
  %15 = tail call i32* @__errno_location() nounwind readnone, !dbg !855
  %16 = tail call i32 @klee_get_errno() nounwind, !dbg !855
  store i32 %16, i32* %15, align 4, !dbg !855
  br label %bb6, !dbg !855

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %13, %bb3 ]
  ret i32 %.0, !dbg !845
}

define i32 @fchdir(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !339), !dbg !856
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !857
  %0 = icmp ult i32 %fd, 16, !dbg !859
  br i1 %0, label %bb.i, label %bb, !dbg !859

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !860
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !860
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !861
  %3 = load i32* %2, align 4, !dbg !861
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !861
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !861

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !860
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !340), !dbg !858
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !862
  br i1 %6, label %bb, label %bb1, !dbg !862

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !863
  store i32 9, i32* %7, align 4, !dbg !863
  br label %bb6, !dbg !864

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !865
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !865
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !865
  br i1 %10, label %bb3, label %bb2, !dbg !865

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !866
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !867
  store i32 2, i32* %11, align 4, !dbg !867
  br label %bb6, !dbg !868

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !869
  %13 = load i32* %12, align 8, !dbg !869
  %14 = tail call i64 (i64, ...)* @syscall(i64 81, i32 %13) nounwind, !dbg !869
  %15 = trunc i64 %14 to i32, !dbg !869
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !342), !dbg !869
  %16 = icmp eq i32 %15, -1, !dbg !870
  br i1 %16, label %bb4, label %bb6, !dbg !870

bb4:                                              ; preds = %bb3
  %17 = tail call i32* @__errno_location() nounwind readnone, !dbg !871
  %18 = tail call i32 @klee_get_errno() nounwind, !dbg !871
  store i32 %18, i32* %17, align 4, !dbg !871
  br label %bb6, !dbg !871

bb6:                                              ; preds = %bb3, %bb4, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb4 ], [ %15, %bb3 ]
  ret i32 %.0, !dbg !864
}

declare i64 @klee_get_valuel(i64)

declare void @klee_assume(i64)

define i8* @getcwd(i8* %buf, i64 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !350), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i64 %size}, i64 0, metadata !351), !dbg !872
  %0 = load i32* @n_calls.6743, align 4, !dbg !873
  %1 = add nsw i32 %0, 1, !dbg !873
  store i32 %1, i32* @n_calls.6743, align 4, !dbg !873
  %2 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !874
  %3 = icmp eq i32 %2, 0, !dbg !874
  br i1 %3, label %bb2, label %bb, !dbg !874

bb:                                               ; preds = %entry
  %4 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 10), align 8, !dbg !874
  %5 = load i32* %4, align 4, !dbg !874
  %6 = icmp eq i32 %5, %1, !dbg !874
  br i1 %6, label %bb1, label %bb2, !dbg !874

bb1:                                              ; preds = %bb
  %7 = add i32 %2, -1, !dbg !875
  store i32 %7, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !875
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !876
  store i32 34, i32* %8, align 4, !dbg !876
  br label %bb9, !dbg !877

bb2:                                              ; preds = %entry, %bb
  %9 = icmp eq i8* %buf, null, !dbg !878
  br i1 %9, label %bb3, label %bb6, !dbg !878

bb3:                                              ; preds = %bb2
  %10 = icmp eq i64 %size, 0, !dbg !879
  tail call void @llvm.dbg.value(metadata !880, i64 0, metadata !351), !dbg !881
  %size_addr.0 = select i1 %10, i64 1024, i64 %size
  %11 = tail call noalias i8* @malloc(i64 %size_addr.0) nounwind, !dbg !882
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !350), !dbg !882
  br label %bb6, !dbg !882

bb6:                                              ; preds = %bb3, %bb2
  %size_addr.1 = phi i64 [ %size_addr.0, %bb3 ], [ %size, %bb2 ]
  %buf_addr.0 = phi i8* [ %11, %bb3 ], [ %buf, %bb2 ]
  tail call void @llvm.dbg.value(metadata !{i8* %buf_addr.0}, i64 0, metadata !344) nounwind, !dbg !883
  %12 = ptrtoint i8* %buf_addr.0 to i64, !dbg !885
  %13 = tail call i64 @klee_get_valuel(i64 %12) nounwind, !dbg !885
  %14 = inttoptr i64 %13 to i8*, !dbg !885
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !345) nounwind, !dbg !885
  %15 = icmp eq i8* %14, %buf_addr.0, !dbg !886
  %16 = zext i1 %15 to i64, !dbg !886
  tail call void @klee_assume(i64 %16) nounwind, !dbg !886
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !350), !dbg !884
  tail call void @llvm.dbg.value(metadata !{i64 %size_addr.1}, i64 0, metadata !347) nounwind, !dbg !887
  %17 = tail call i64 @klee_get_valuel(i64 %size_addr.1) nounwind, !dbg !889
  tail call void @llvm.dbg.value(metadata !{i64 %17}, i64 0, metadata !348) nounwind, !dbg !889
  %18 = icmp eq i64 %17, %size_addr.1, !dbg !890
  %19 = zext i1 %18 to i64, !dbg !890
  tail call void @klee_assume(i64 %19) nounwind, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i64 %17}, i64 0, metadata !351), !dbg !888
  tail call void @klee_check_memory_access(i8* %14, i64 %17) nounwind, !dbg !891
  %20 = tail call i64 (i64, ...)* @syscall(i64 79, i8* %14, i64 %17) nounwind, !dbg !892
  %21 = trunc i64 %20 to i32, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !352), !dbg !892
  %22 = icmp eq i32 %21, -1, !dbg !893
  br i1 %22, label %bb7, label %bb9, !dbg !893

bb7:                                              ; preds = %bb6
  %23 = tail call i32* @__errno_location() nounwind readnone, !dbg !894
  %24 = tail call i32 @klee_get_errno() nounwind, !dbg !894
  store i32 %24, i32* %23, align 4, !dbg !894
  br label %bb9, !dbg !895

bb9:                                              ; preds = %bb6, %bb7, %bb1
  %.0 = phi i8* [ null, %bb1 ], [ null, %bb7 ], [ %14, %bb6 ]
  ret i8* %.0, !dbg !877
}

declare noalias i8* @malloc(i64) nounwind

declare void @klee_check_memory_access(i8*, i64)

define i32 @__fd_statfs(i8* %path, %struct.statfs* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !362), !dbg !896
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf}, i64 0, metadata !363), !dbg !896
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !897
  %0 = load i8* %path, align 1, !dbg !899
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !899
  %1 = icmp eq i8 %0, 0, !dbg !900
  br i1 %1, label %bb1, label %bb.i, !dbg !900

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !900
  %3 = load i8* %2, align 1, !dbg !900
  %4 = icmp eq i8 %3, 0, !dbg !900
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !900

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !901
  %6 = sext i8 %0 to i32, !dbg !902
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !902
  %8 = add nsw i32 %7, 65, !dbg !902
  %9 = icmp eq i32 %6, %8, !dbg !902
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !902

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !903
  %11 = zext i32 %18 to i64, !dbg !903
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !903
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !904
  %13 = load %struct.stat** %12, align 8, !dbg !904
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !904
  %15 = load i64* %14, align 8, !dbg !904
  %16 = icmp eq i64 %15, 0, !dbg !904
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !904

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !901
  br label %bb8.i, !dbg !901

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !901
  br i1 %19, label %bb3.i, label %bb1, !dbg !901

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !903
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !364), !dbg !898
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !905
  br i1 %21, label %bb1, label %bb, !dbg !905

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !906
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !907
  store i32 2, i32* %22, align 4, !dbg !907
  br label %bb4, !dbg !908

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !909
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !911
  %23 = ptrtoint i8* %path to i64, !dbg !913
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !913
  %25 = inttoptr i64 %24 to i8*, !dbg !913
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !345) nounwind, !dbg !913
  %26 = icmp eq i8* %25, %path, !dbg !914
  %27 = zext i1 %26 to i64, !dbg !914
  tail call void @klee_assume(i64 %27) nounwind, !dbg !914
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !355) nounwind, !dbg !912
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !915
  br label %bb.i6, !dbg !915

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !916
  %30 = and i32 %tmp.i, %28, !dbg !917
  %31 = icmp eq i32 %30, 0, !dbg !917
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !917

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !358) nounwind, !dbg !916
  store i8 0, i8* %sc.0.i, align 1, !dbg !918
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !918
  br label %__concretize_string.exit, !dbg !918

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !919
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !919
  br label %bb6.i8, !dbg !919

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !920
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !920
  %35 = trunc i64 %34 to i8, !dbg !920
  %36 = icmp eq i8 %35, %29, !dbg !921
  %37 = zext i1 %36 to i64, !dbg !921
  tail call void @klee_assume(i64 %37) nounwind, !dbg !921
  store i8 %35, i8* %sc.0.i, align 1, !dbg !922
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !922
  %39 = icmp eq i8 %35, 0, !dbg !923
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !923

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !915
  br label %bb.i6, !dbg !915

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 137, i8* %path, %struct.statfs* %buf) nounwind, !dbg !910
  %42 = trunc i64 %41 to i32, !dbg !910
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !366), !dbg !910
  %43 = icmp eq i32 %42, -1, !dbg !924
  br i1 %43, label %bb2, label %bb4, !dbg !924

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !925
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !925
  store i32 %45, i32* %44, align 4, !dbg !925
  br label %bb4, !dbg !925

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !908
}

define i32 @lchown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !368), !dbg !926
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !369), !dbg !926
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !370), !dbg !926
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !927
  %0 = load i8* %path, align 1, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !929
  %1 = icmp eq i8 %0, 0, !dbg !930
  br i1 %1, label %bb1, label %bb.i, !dbg !930

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !930
  %3 = load i8* %2, align 1, !dbg !930
  %4 = icmp eq i8 %3, 0, !dbg !930
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !930

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !931
  %6 = sext i8 %0 to i32, !dbg !932
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !932
  %8 = add nsw i32 %7, 65, !dbg !932
  %9 = icmp eq i32 %6, %8, !dbg !932
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !932

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !933
  %11 = zext i32 %18 to i64, !dbg !933
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !933
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !934
  %13 = load %struct.stat** %12, align 8, !dbg !934
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !934
  %15 = load i64* %14, align 8, !dbg !934
  %16 = icmp eq i64 %15, 0, !dbg !934
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !934

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !931
  br label %bb8.i, !dbg !931

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !931
  br i1 %19, label %bb3.i, label %bb1, !dbg !931

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !933
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !371), !dbg !928
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !935
  br i1 %21, label %bb1, label %bb, !dbg !935

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !847, i64 0, metadata !298) nounwind, !dbg !936
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !299) nounwind, !dbg !936
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !300) nounwind, !dbg !936
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !938
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !939
  store i32 1, i32* %22, align 4, !dbg !939
  br label %bb4, !dbg !937

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !940
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !942
  %23 = ptrtoint i8* %path to i64, !dbg !944
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !944
  %25 = inttoptr i64 %24 to i8*, !dbg !944
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !345) nounwind, !dbg !944
  %26 = icmp eq i8* %25, %path, !dbg !945
  %27 = zext i1 %26 to i64, !dbg !945
  tail call void @klee_assume(i64 %27) nounwind, !dbg !945
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !355) nounwind, !dbg !943
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !946
  br label %bb.i6, !dbg !946

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !947
  %30 = and i32 %tmp.i, %28, !dbg !948
  %31 = icmp eq i32 %30, 0, !dbg !948
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !948

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !358) nounwind, !dbg !947
  store i8 0, i8* %sc.0.i, align 1, !dbg !949
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !949
  br label %__concretize_string.exit, !dbg !949

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !950
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !950
  br label %bb6.i8, !dbg !950

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !951
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !951
  %35 = trunc i64 %34 to i8, !dbg !951
  %36 = icmp eq i8 %35, %29, !dbg !952
  %37 = zext i1 %36 to i64, !dbg !952
  tail call void @klee_assume(i64 %37) nounwind, !dbg !952
  store i8 %35, i8* %sc.0.i, align 1, !dbg !953
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !953
  %39 = icmp eq i8 %35, 0, !dbg !954
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !954

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !946
  br label %bb.i6, !dbg !946

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) nounwind, !dbg !941
  %42 = trunc i64 %41 to i32, !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !373), !dbg !941
  %43 = icmp eq i32 %42, -1, !dbg !955
  br i1 %43, label %bb2, label %bb4, !dbg !955

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !956
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !956
  store i32 %45, i32* %44, align 4, !dbg !956
  br label %bb4, !dbg !956

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !937
}

define i32 @chown(i8* %path, i32 %owner, i32 %group) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !375), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i32 %owner}, i64 0, metadata !376), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !377), !dbg !957
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !958
  %0 = load i8* %path, align 1, !dbg !960
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !960
  %1 = icmp eq i8 %0, 0, !dbg !961
  br i1 %1, label %bb1, label %bb.i, !dbg !961

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !961
  %3 = load i8* %2, align 1, !dbg !961
  %4 = icmp eq i8 %3, 0, !dbg !961
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !961

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !962
  %6 = sext i8 %0 to i32, !dbg !963
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !963
  %8 = add nsw i32 %7, 65, !dbg !963
  %9 = icmp eq i32 %6, %8, !dbg !963
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !963

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !964
  %11 = zext i32 %18 to i64, !dbg !964
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !964
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !965
  %13 = load %struct.stat** %12, align 8, !dbg !965
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !965
  %15 = load i64* %14, align 8, !dbg !965
  %16 = icmp eq i64 %15, 0, !dbg !965
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !965

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !962
  br label %bb8.i, !dbg !962

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !962
  br i1 %19, label %bb3.i, label %bb1, !dbg !962

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !964
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !378), !dbg !959
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !966
  br i1 %21, label %bb1, label %bb, !dbg !966

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !847, i64 0, metadata !298) nounwind, !dbg !967
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !299) nounwind, !dbg !967
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !300) nounwind, !dbg !967
  tail call void @klee_warning(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !969
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !970
  store i32 1, i32* %22, align 4, !dbg !970
  br label %bb4, !dbg !968

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !971
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !973
  %23 = ptrtoint i8* %path to i64, !dbg !975
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !975
  %25 = inttoptr i64 %24 to i8*, !dbg !975
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !345) nounwind, !dbg !975
  %26 = icmp eq i8* %25, %path, !dbg !976
  %27 = zext i1 %26 to i64, !dbg !976
  tail call void @klee_assume(i64 %27) nounwind, !dbg !976
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !355) nounwind, !dbg !974
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !977
  br label %bb.i6, !dbg !977

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !978
  %30 = and i32 %tmp.i, %28, !dbg !979
  %31 = icmp eq i32 %30, 0, !dbg !979
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !979

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !358) nounwind, !dbg !978
  store i8 0, i8* %sc.0.i, align 1, !dbg !980
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !980
  br label %__concretize_string.exit, !dbg !980

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !981
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !981
  br label %bb6.i8, !dbg !981

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !982
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !982
  %35 = trunc i64 %34 to i8, !dbg !982
  %36 = icmp eq i8 %35, %29, !dbg !983
  %37 = zext i1 %36 to i64, !dbg !983
  tail call void @klee_assume(i64 %37) nounwind, !dbg !983
  store i8 %35, i8* %sc.0.i, align 1, !dbg !984
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !984
  %39 = icmp eq i8 %35, 0, !dbg !985
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !985

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !977
  br label %bb.i6, !dbg !977

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 92, i8* %path, i32 %owner, i32 %group) nounwind, !dbg !972
  %42 = trunc i64 %41 to i32, !dbg !972
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !380), !dbg !972
  %43 = icmp eq i32 %42, -1, !dbg !986
  br i1 %43, label %bb2, label %bb4, !dbg !986

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !987
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !987
  store i32 %45, i32* %44, align 4, !dbg !987
  br label %bb4, !dbg !987

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !968
}

define i32 @chdir(i8* %path) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !382), !dbg !988
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !989
  %0 = load i8* %path, align 1, !dbg !991
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !991
  %1 = icmp eq i8 %0, 0, !dbg !992
  br i1 %1, label %bb1, label %bb.i, !dbg !992

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !992
  %3 = load i8* %2, align 1, !dbg !992
  %4 = icmp eq i8 %3, 0, !dbg !992
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !992

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !993
  %6 = sext i8 %0 to i32, !dbg !994
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !994
  %8 = add nsw i32 %7, 65, !dbg !994
  %9 = icmp eq i32 %6, %8, !dbg !994
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !994

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !995
  %11 = zext i32 %18 to i64, !dbg !995
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !995
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !996
  %13 = load %struct.stat** %12, align 8, !dbg !996
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !996
  %15 = load i64* %14, align 8, !dbg !996
  %16 = icmp eq i64 %15, 0, !dbg !996
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !996

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !993
  br label %bb8.i, !dbg !993

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !993
  br i1 %19, label %bb3.i, label %bb1, !dbg !993

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !995
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !383), !dbg !990
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !997
  br i1 %21, label %bb1, label %bb, !dbg !997

bb:                                               ; preds = %__get_sym_file.exit
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !998
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !999
  store i32 2, i32* %22, align 4, !dbg !999
  br label %bb4, !dbg !1000

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1001
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1003
  %23 = ptrtoint i8* %path to i64, !dbg !1005
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !1005
  %25 = inttoptr i64 %24 to i8*, !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !345) nounwind, !dbg !1005
  %26 = icmp eq i8* %25, %path, !dbg !1006
  %27 = zext i1 %26 to i64, !dbg !1006
  tail call void @klee_assume(i64 %27) nounwind, !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !355) nounwind, !dbg !1004
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1007
  br label %bb.i6, !dbg !1007

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %25, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %28 = phi i32 [ 0, %bb1 ], [ %40, %bb6.i8 ]
  %tmp.i = add i32 %28, -1
  %29 = load i8* %sc.0.i, align 1, !dbg !1008
  %30 = and i32 %tmp.i, %28, !dbg !1009
  %31 = icmp eq i32 %30, 0, !dbg !1009
  br i1 %31, label %bb1.i, label %bb5.i, !dbg !1009

bb1.i:                                            ; preds = %bb.i6
  switch i8 %29, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %29}, i64 0, metadata !358) nounwind, !dbg !1008
  store i8 0, i8* %sc.0.i, align 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1010
  br label %__concretize_string.exit, !dbg !1010

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1011
  %32 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1011
  br label %bb6.i8, !dbg !1011

bb5.i:                                            ; preds = %bb.i6
  %33 = sext i8 %29 to i64, !dbg !1012
  %34 = tail call i64 @klee_get_valuel(i64 %33) nounwind, !dbg !1012
  %35 = trunc i64 %34 to i8, !dbg !1012
  %36 = icmp eq i8 %35, %29, !dbg !1013
  %37 = zext i1 %36 to i64, !dbg !1013
  tail call void @klee_assume(i64 %37) nounwind, !dbg !1013
  store i8 %35, i8* %sc.0.i, align 1, !dbg !1014
  %38 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1014
  %39 = icmp eq i8 %35, 0, !dbg !1015
  br i1 %39, label %__concretize_string.exit, label %bb6.i8, !dbg !1015

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %32, %bb4.i7 ], [ %38, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %40 = add i32 %28, 1, !dbg !1007
  br label %bb.i6, !dbg !1007

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %41 = tail call i64 (i64, ...)* @syscall(i64 80, i8* %path) nounwind, !dbg !1002
  %42 = trunc i64 %41 to i32, !dbg !1002
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !385), !dbg !1002
  %43 = icmp eq i32 %42, -1, !dbg !1016
  br i1 %43, label %bb2, label %bb4, !dbg !1016

bb2:                                              ; preds = %__concretize_string.exit
  %44 = tail call i32* @__errno_location() nounwind readnone, !dbg !1017
  %45 = tail call i32 @klee_get_errno() nounwind, !dbg !1017
  store i32 %45, i32* %44, align 4, !dbg !1017
  br label %bb4, !dbg !1017

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ %42, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1000
}

define i32 @utimes(i8* %path, %struct.timespec* %times) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !387), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %times}, i64 0, metadata !388), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1019
  %0 = load i8* %path, align 1, !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !1021
  %1 = icmp eq i8 %0, 0, !dbg !1022
  br i1 %1, label %bb1, label %bb.i, !dbg !1022

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1022
  %3 = load i8* %2, align 1, !dbg !1022
  %4 = icmp eq i8 %3, 0, !dbg !1022
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !1022

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1023
  %6 = sext i8 %0 to i32, !dbg !1024
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1024
  %8 = add nsw i32 %7, 65, !dbg !1024
  %9 = icmp eq i32 %6, %8, !dbg !1024
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1024

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1025
  %11 = zext i32 %18 to i64, !dbg !1025
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1025
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1026
  %13 = load %struct.stat** %12, align 8, !dbg !1026
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1026
  %15 = load i64* %14, align 8, !dbg !1026
  %16 = icmp eq i64 %15, 0, !dbg !1026
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !1026

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !1023
  br label %bb8.i, !dbg !1023

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !1023
  br i1 %19, label %bb3.i, label %bb1, !dbg !1023

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !389), !dbg !1020
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !1027
  br i1 %21, label %bb1, label %bb, !dbg !1027

bb:                                               ; preds = %__get_sym_file.exit
  %22 = getelementptr inbounds %struct.timespec* %times, i64 0, i32 0, !dbg !1028
  %23 = load i64* %22, align 8, !dbg !1028
  %24 = getelementptr inbounds %struct.stat* %13, i64 0, i32 11, i32 0, !dbg !1028
  store i64 %23, i64* %24, align 8, !dbg !1028
  %25 = load %struct.stat** %12, align 8, !dbg !1029
  %26 = getelementptr inbounds %struct.timespec* %times, i64 1, i32 0, !dbg !1029
  %27 = load i64* %26, align 8, !dbg !1029
  %28 = getelementptr inbounds %struct.stat* %25, i64 0, i32 12, i32 0, !dbg !1029
  store i64 %27, i64* %28, align 8, !dbg !1029
  %29 = load %struct.stat** %12, align 8, !dbg !1030
  %30 = load i64* %22, align 8, !dbg !1030
  %31 = mul nsw i64 %30, 1000000000, !dbg !1030
  %32 = getelementptr inbounds %struct.stat* %29, i64 0, i32 11, i32 1, !dbg !1030
  store i64 %31, i64* %32, align 8, !dbg !1030
  %33 = load %struct.stat** %12, align 8, !dbg !1031
  %34 = load i64* %26, align 8, !dbg !1031
  %35 = mul nsw i64 %34, 1000000000, !dbg !1031
  %36 = getelementptr inbounds %struct.stat* %33, i64 0, i32 12, i32 1, !dbg !1031
  store i64 %35, i64* %36, align 8, !dbg !1031
  br label %bb4, !dbg !1032

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1033
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1035
  %37 = ptrtoint i8* %path to i64, !dbg !1037
  %38 = tail call i64 @klee_get_valuel(i64 %37) nounwind, !dbg !1037
  %39 = inttoptr i64 %38 to i8*, !dbg !1037
  tail call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !345) nounwind, !dbg !1037
  %40 = icmp eq i8* %39, %path, !dbg !1038
  %41 = zext i1 %40 to i64, !dbg !1038
  tail call void @klee_assume(i64 %41) nounwind, !dbg !1038
  tail call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !355) nounwind, !dbg !1036
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1039
  br label %bb.i6, !dbg !1039

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %39, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %42 = phi i32 [ 0, %bb1 ], [ %54, %bb6.i8 ]
  %tmp.i = add i32 %42, -1
  %43 = load i8* %sc.0.i, align 1, !dbg !1040
  %44 = and i32 %tmp.i, %42, !dbg !1041
  %45 = icmp eq i32 %44, 0, !dbg !1041
  br i1 %45, label %bb1.i, label %bb5.i, !dbg !1041

bb1.i:                                            ; preds = %bb.i6
  switch i8 %43, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %43}, i64 0, metadata !358) nounwind, !dbg !1040
  store i8 0, i8* %sc.0.i, align 1, !dbg !1042
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1042
  br label %__concretize_string.exit, !dbg !1042

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1043
  %46 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1043
  br label %bb6.i8, !dbg !1043

bb5.i:                                            ; preds = %bb.i6
  %47 = sext i8 %43 to i64, !dbg !1044
  %48 = tail call i64 @klee_get_valuel(i64 %47) nounwind, !dbg !1044
  %49 = trunc i64 %48 to i8, !dbg !1044
  %50 = icmp eq i8 %49, %43, !dbg !1045
  %51 = zext i1 %50 to i64, !dbg !1045
  tail call void @klee_assume(i64 %51) nounwind, !dbg !1045
  store i8 %49, i8* %sc.0.i, align 1, !dbg !1046
  %52 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1046
  %53 = icmp eq i8 %49, 0, !dbg !1047
  br i1 %53, label %__concretize_string.exit, label %bb6.i8, !dbg !1047

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %46, %bb4.i7 ], [ %52, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %54 = add i32 %42, 1, !dbg !1039
  br label %bb.i6, !dbg !1039

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %55 = tail call i64 (i64, ...)* @syscall(i64 235, i8* %path, %struct.timespec* %times) nounwind, !dbg !1034
  %56 = trunc i64 %55 to i32, !dbg !1034
  tail call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !391), !dbg !1034
  %57 = icmp eq i32 %56, -1, !dbg !1048
  br i1 %57, label %bb2, label %bb4, !dbg !1048

bb2:                                              ; preds = %__concretize_string.exit
  %58 = tail call i32* @__errno_location() nounwind readnone, !dbg !1049
  %59 = tail call i32 @klee_get_errno() nounwind, !dbg !1049
  store i32 %59, i32* %58, align 4, !dbg !1049
  br label %bb4, !dbg !1049

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %56, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1032
}

define i32 @futimesat(i32 %fd, i8* %path, %struct.timespec* %times) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !392), !dbg !1050
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !393), !dbg !1050
  tail call void @llvm.dbg.value(metadata !{%struct.timespec* %times}, i64 0, metadata !394), !dbg !1050
  %0 = icmp eq i32 %fd, -100, !dbg !1051
  br i1 %0, label %bb5, label %bb, !dbg !1051

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1052
  %1 = icmp ult i32 %fd, 16, !dbg !1054
  br i1 %1, label %bb.i, label %bb1, !dbg !1054

bb.i:                                             ; preds = %bb
  %2 = sext i32 %fd to i64, !dbg !1055
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1055
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1056
  %4 = load i32* %3, align 4, !dbg !1056
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1056
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1056

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1055
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !397), !dbg !1053
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1057
  br i1 %7, label %bb1, label %bb2, !dbg !1057

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1058
  store i32 9, i32* %8, align 4, !dbg !1058
  br label %bb13, !dbg !1059

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1060
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1060
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1060
  br i1 %11, label %bb4, label %bb3, !dbg !1060

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1061
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1062
  store i32 2, i32* %12, align 4, !dbg !1062
  br label %bb13, !dbg !1063

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1064
  %14 = load i32* %13, align 8, !dbg !1064
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !392), !dbg !1064
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1064

bb5:                                              ; preds = %entry, %bb4
  %fd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1065
  %15 = load i8* %path, align 1, !dbg !1067
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !268), !dbg !1067
  %16 = icmp eq i8 %15, 0, !dbg !1068
  br i1 %16, label %bb7, label %bb.i17, !dbg !1068

bb.i17:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %path, i64 1, !dbg !1068
  %18 = load i8* %17, align 1, !dbg !1068
  %19 = icmp eq i8 %18, 0, !dbg !1068
  br i1 %19, label %bb8.preheader.i, label %bb7, !dbg !1068

bb8.preheader.i:                                  ; preds = %bb.i17
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1069
  %21 = sext i8 %15 to i32, !dbg !1070
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1070
  %23 = add nsw i32 %22, 65, !dbg !1070
  %24 = icmp eq i32 %21, %23, !dbg !1070
  br i1 %24, label %bb4.i18, label %bb7.i, !dbg !1070

bb4.i18:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1071
  %26 = zext i32 %33 to i64, !dbg !1071
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1071
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1072
  %28 = load %struct.stat** %27, align 8, !dbg !1072
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1072
  %30 = load i64* %29, align 8, !dbg !1072
  %31 = icmp eq i64 %30, 0, !dbg !1072
  br i1 %31, label %bb7, label %__get_sym_file.exit, !dbg !1072

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1069
  br label %bb8.i, !dbg !1069

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1069
  br i1 %34, label %bb3.i, label %bb7, !dbg !1069

__get_sym_file.exit:                              ; preds = %bb4.i18
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1071
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1066
  br i1 %36, label %bb7, label %bb6, !dbg !1066

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = tail call i32 @utimes(i8* %path, %struct.timespec* %times) nounwind, !dbg !1073
  br label %bb13, !dbg !1073

bb7:                                              ; preds = %bb8.i, %bb4.i18, %bb5, %bb.i17, %__get_sym_file.exit
  %38 = icmp eq i8* %path, null, !dbg !1074
  br i1 %38, label %bb10, label %bb8, !dbg !1074

bb8:                                              ; preds = %bb7
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1075
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1076
  %39 = ptrtoint i8* %path to i64, !dbg !1078
  %40 = tail call i64 @klee_get_valuel(i64 %39) nounwind, !dbg !1078
  %41 = inttoptr i64 %40 to i8*, !dbg !1078
  tail call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !345) nounwind, !dbg !1078
  %42 = icmp eq i8* %41, %path, !dbg !1079
  %43 = zext i1 %42 to i64, !dbg !1079
  tail call void @klee_assume(i64 %43) nounwind, !dbg !1079
  tail call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !355) nounwind, !dbg !1077
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1080
  br label %bb.i15, !dbg !1080

bb.i15:                                           ; preds = %bb6.i, %bb8
  %sc.0.i = phi i8* [ %41, %bb8 ], [ %sc.1.i, %bb6.i ]
  %44 = phi i32 [ 0, %bb8 ], [ %56, %bb6.i ]
  %tmp.i = add i32 %44, -1
  %45 = load i8* %sc.0.i, align 1, !dbg !1081
  %46 = and i32 %tmp.i, %44, !dbg !1082
  %47 = icmp eq i32 %46, 0, !dbg !1082
  br i1 %47, label %bb1.i16, label %bb5.i, !dbg !1082

bb1.i16:                                          ; preds = %bb.i15
  switch i8 %45, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i16
  tail call void @llvm.dbg.value(metadata !{i8 %45}, i64 0, metadata !358) nounwind, !dbg !1081
  store i8 0, i8* %sc.0.i, align 1, !dbg !1083
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1083
  br label %bb10, !dbg !1083

bb4.i:                                            ; preds = %bb1.i16
  store i8 47, i8* %sc.0.i, align 1, !dbg !1084
  %48 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1084
  br label %bb6.i, !dbg !1084

bb5.i:                                            ; preds = %bb.i15
  %49 = sext i8 %45 to i64, !dbg !1085
  %50 = tail call i64 @klee_get_valuel(i64 %49) nounwind, !dbg !1085
  %51 = trunc i64 %50 to i8, !dbg !1085
  %52 = icmp eq i8 %51, %45, !dbg !1086
  %53 = zext i1 %52 to i64, !dbg !1086
  tail call void @klee_assume(i64 %53) nounwind, !dbg !1086
  store i8 %51, i8* %sc.0.i, align 1, !dbg !1087
  %54 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1087
  %55 = icmp eq i8 %51, 0, !dbg !1088
  br i1 %55, label %bb10, label %bb6.i, !dbg !1088

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i16
  %sc.1.i = phi i8* [ %48, %bb4.i ], [ %54, %bb5.i ], [ %sc.0.i, %bb1.i16 ]
  %56 = add i32 %44, 1, !dbg !1080
  br label %bb.i15, !dbg !1080

bb10:                                             ; preds = %bb5.i, %bb2.i, %bb7
  %iftmp.34.0 = phi i8* [ null, %bb7 ], [ %path, %bb2.i ], [ %path, %bb5.i ]
  %57 = tail call i64 (i64, ...)* @syscall(i64 261, i64 %fd_addr.0, i8* %iftmp.34.0, %struct.timespec* %times) nounwind, !dbg !1074
  %58 = trunc i64 %57 to i32, !dbg !1074
  tail call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !395), !dbg !1074
  %59 = icmp eq i32 %58, -1, !dbg !1089
  br i1 %59, label %bb11, label %bb13, !dbg !1089

bb11:                                             ; preds = %bb10
  %60 = tail call i32* @__errno_location() nounwind readnone, !dbg !1090
  %61 = tail call i32 @klee_get_errno() nounwind, !dbg !1090
  store i32 %61, i32* %60, align 4, !dbg !1090
  br label %bb13, !dbg !1090

bb13:                                             ; preds = %bb10, %bb11, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ %37, %bb6 ], [ -1, %bb11 ], [ %58, %bb10 ]
  ret i32 %.0, !dbg !1059
}

define i32 @fcntl(i32 %fd, i32 %cmd, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !405), !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %cmd}, i64 0, metadata !406), !dbg !1091
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !409), !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1093
  %0 = icmp ult i32 %fd, 16, !dbg !1095
  br i1 %0, label %bb.i, label %bb, !dbg !1095

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1096
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1096
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1097
  %3 = load i32* %2, align 4, !dbg !1097
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1097
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1097

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1096
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !407), !dbg !1094
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1098
  br i1 %6, label %bb, label %bb1, !dbg !1098

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1099
  store i32 9, i32* %7, align 4, !dbg !1099
  br label %bb35, !dbg !1100

bb1:                                              ; preds = %__get_file.exit
  switch i32 %cmd, label %bb8 [
    i32 3, label %bb21
    i32 1, label %bb21
    i32 11, label %bb21
    i32 9, label %bb21
  ]

bb8:                                              ; preds = %bb1
  %cmd.off = add i32 %cmd, -1025
  %8 = icmp ult i32 %cmd.off, 2
  br i1 %8, label %bb21, label %bb13, !dbg !1101

bb13:                                             ; preds = %bb8
  %ap1415 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1102
  call void @llvm.va_start(i8* %ap1415), !dbg !1102
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1103
  %10 = load i32* %9, align 8, !dbg !1103
  %11 = icmp ugt i32 %10, 47, !dbg !1103
  br i1 %11, label %bb17, label %bb16, !dbg !1103

bb16:                                             ; preds = %bb13
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1103
  %13 = load i8** %12, align 8, !dbg !1103
  %tmp = zext i32 %10 to i64
  %14 = ptrtoint i8* %13 to i64, !dbg !1103
  %15 = add i64 %14, %tmp, !dbg !1103
  %16 = inttoptr i64 %15 to i8*, !dbg !1103
  %17 = add i32 %10, 8, !dbg !1103
  store i32 %17, i32* %9, align 8, !dbg !1103
  br label %bb18, !dbg !1103

bb17:                                             ; preds = %bb13
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1103
  %19 = load i8** %18, align 8, !dbg !1103
  %20 = getelementptr inbounds i8* %19, i64 8, !dbg !1103
  store i8* %20, i8** %18, align 8, !dbg !1103
  br label %bb18, !dbg !1103

bb18:                                             ; preds = %bb17, %bb16
  %addr.57.0 = phi i8* [ %19, %bb17 ], [ %16, %bb16 ]
  %21 = bitcast i8* %addr.57.0 to i32*, !dbg !1103
  %22 = load i32* %21, align 4, !dbg !1103
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !422), !dbg !1103
  call void @llvm.va_end(i8* %ap1415), !dbg !1104
  br label %bb21, !dbg !1104

bb21:                                             ; preds = %bb1, %bb1, %bb1, %bb1, %bb8, %bb18
  %arg.0 = phi i32 [ %22, %bb18 ], [ 0, %bb1 ], [ 0, %bb1 ], [ 0, %bb8 ], [ 0, %bb1 ], [ 0, %bb1 ]
  %23 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1105
  %24 = load %struct.exe_disk_file_t** %23, align 8, !dbg !1105
  %25 = icmp eq %struct.exe_disk_file_t* %24, null, !dbg !1105
  br i1 %25, label %bb32, label %bb22, !dbg !1105

bb22:                                             ; preds = %bb21
  switch i32 %cmd, label %bb31 [
    i32 1, label %bb23
    i32 2, label %bb26
    i32 3, label %bb35
  ], !dbg !1106

bb23:                                             ; preds = %bb22
  call void @llvm.dbg.value(metadata !678, i64 0, metadata !423), !dbg !1107
  %26 = load i32* %2, align 4, !dbg !1108
  call void @llvm.dbg.value(metadata !1109, i64 0, metadata !423), !dbg !1110
  %27 = lshr i32 %26, 1
  %.lobit = and i32 %27, 1
  br label %bb35

bb26:                                             ; preds = %bb22
  %28 = load i32* %2, align 4, !dbg !1111
  %29 = and i32 %28, -3, !dbg !1111
  store i32 %29, i32* %2, align 4, !dbg !1111
  %30 = and i32 %arg.0, 1
  %toBool27 = icmp eq i32 %30, 0, !dbg !1112
  br i1 %toBool27, label %bb35, label %bb28, !dbg !1112

bb28:                                             ; preds = %bb26
  %31 = or i32 %28, 2, !dbg !1113
  store i32 %31, i32* %2, align 4, !dbg !1113
  br label %bb35, !dbg !1113

bb31:                                             ; preds = %bb22
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1114
  %32 = call i32* @__errno_location() nounwind readnone, !dbg !1115
  store i32 22, i32* %32, align 4, !dbg !1115
  br label %bb35, !dbg !1116

bb32:                                             ; preds = %bb21
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1117
  %34 = load i32* %33, align 8, !dbg !1117
  %35 = call i64 (i64, ...)* @syscall(i64 72, i32 %34, i32 %cmd, i32 %arg.0) nounwind, !dbg !1117
  %36 = trunc i64 %35 to i32, !dbg !1117
  call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !425), !dbg !1117
  %37 = icmp eq i32 %36, -1, !dbg !1118
  br i1 %37, label %bb33, label %bb35, !dbg !1118

bb33:                                             ; preds = %bb32
  %38 = call i32* @__errno_location() nounwind readnone, !dbg !1119
  %39 = call i32 @klee_get_errno() nounwind, !dbg !1119
  store i32 %39, i32* %38, align 4, !dbg !1119
  br label %bb35, !dbg !1119

bb35:                                             ; preds = %bb32, %bb33, %bb22, %bb28, %bb26, %bb23, %bb31, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb31 ], [ %.lobit, %bb23 ], [ 0, %bb26 ], [ 0, %bb28 ], [ 0, %bb22 ], [ -1, %bb33 ], [ %36, %bb32 ]
  ret i32 %.0, !dbg !1100
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

define i32 @ioctl(i32 %fd, i64 %request, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !427), !dbg !1120
  call void @llvm.dbg.value(metadata !{i64 %request}, i64 0, metadata !428), !dbg !1120
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !431), !dbg !1121
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1122
  %0 = icmp ult i32 %fd, 16, !dbg !1124
  br i1 %0, label %bb.i, label %bb, !dbg !1124

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1125
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1125
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1126
  %3 = load i32* %2, align 4, !dbg !1126
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1126
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1126

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1125
  call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !429), !dbg !1123
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1127
  br i1 %6, label %bb, label %bb1, !dbg !1127

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = call i32* @__errno_location() nounwind readnone, !dbg !1128
  store i32 9, i32* %7, align 4, !dbg !1128
  br label %bb39, !dbg !1129

bb1:                                              ; preds = %__get_file.exit
  %ap23 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1130
  call void @llvm.va_start(i8* %ap23), !dbg !1130
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !1131
  %9 = load i32* %8, align 8, !dbg !1131
  %10 = icmp ugt i32 %9, 47, !dbg !1131
  br i1 %10, label %bb5, label %bb4, !dbg !1131

bb4:                                              ; preds = %bb1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !1131
  %12 = load i8** %11, align 8, !dbg !1131
  %tmp = zext i32 %9 to i64
  %13 = ptrtoint i8* %12 to i64, !dbg !1131
  %14 = add i64 %13, %tmp, !dbg !1131
  %15 = inttoptr i64 %14 to i8*, !dbg !1131
  %16 = add i32 %9, 8, !dbg !1131
  store i32 %16, i32* %8, align 8, !dbg !1131
  br label %bb6, !dbg !1131

bb5:                                              ; preds = %bb1
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !1131
  %18 = load i8** %17, align 8, !dbg !1131
  %19 = getelementptr inbounds i8* %18, i64 8, !dbg !1131
  store i8* %19, i8** %17, align 8, !dbg !1131
  br label %bb6, !dbg !1131

bb6:                                              ; preds = %bb5, %bb4
  %addr.55.0 = phi i8* [ %18, %bb5 ], [ %15, %bb4 ]
  %20 = bitcast i8* %addr.55.0 to i8**, !dbg !1131
  %21 = load i8** %20, align 8, !dbg !1131
  call void @llvm.dbg.value(metadata !{i8* %21}, i64 0, metadata !432), !dbg !1131
  call void @llvm.va_end(i8* %ap23), !dbg !1132
  %22 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1133
  %23 = load %struct.exe_disk_file_t** %22, align 8, !dbg !1133
  %24 = icmp eq %struct.exe_disk_file_t* %23, null, !dbg !1133
  br i1 %24, label %bb36, label %bb9, !dbg !1133

bb9:                                              ; preds = %bb6
  %25 = getelementptr inbounds %struct.exe_disk_file_t* %23, i64 0, i32 2, !dbg !1134
  %26 = load %struct.stat** %25, align 8, !dbg !1134
  call void @llvm.dbg.value(metadata !{%struct.stat* %26}, i64 0, metadata !433), !dbg !1134
  switch i64 %request, label %bb35 [
    i64 21505, label %bb10
    i64 21506, label %bb13
    i64 21507, label %bb16
    i64 21508, label %bb19
    i64 21523, label %bb22
    i64 21524, label %bb25
    i64 21531, label %bb28
    i64 2150657282, label %bb34
  ], !dbg !1135

bb10:                                             ; preds = %bb9
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !435), !dbg !1136
  call void @klee_warning_once(i8* getelementptr inbounds ([41 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !1137
  %27 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1138
  %28 = load i32* %27, align 8, !dbg !1138
  %29 = and i32 %28, 61440, !dbg !1138
  %30 = icmp eq i32 %29, 8192, !dbg !1138
  br i1 %30, label %bb11, label %bb12, !dbg !1138

bb11:                                             ; preds = %bb10
  %31 = bitcast i8* %21 to i32*, !dbg !1139
  store i32 27906, i32* %31, align 4, !dbg !1139
  %32 = getelementptr inbounds i8* %21, i64 4
  %33 = bitcast i8* %32 to i32*, !dbg !1140
  store i32 5, i32* %33, align 4, !dbg !1140
  %34 = getelementptr inbounds i8* %21, i64 8
  %35 = bitcast i8* %34 to i32*, !dbg !1141
  store i32 1215, i32* %35, align 4, !dbg !1141
  %36 = getelementptr inbounds i8* %21, i64 12
  %37 = bitcast i8* %36 to i32*, !dbg !1142
  store i32 35287, i32* %37, align 4, !dbg !1142
  %38 = getelementptr inbounds i8* %21, i64 16
  store i8 0, i8* %38, align 4, !dbg !1143
  %39 = getelementptr inbounds i8* %21, i64 17
  store i8 3, i8* %39, align 1, !dbg !1144
  %40 = getelementptr inbounds i8* %21, i64 18, !dbg !1145
  store i8 28, i8* %40, align 1, !dbg !1145
  %41 = getelementptr inbounds i8* %21, i64 19, !dbg !1146
  store i8 127, i8* %41, align 1, !dbg !1146
  %42 = getelementptr inbounds i8* %21, i64 20, !dbg !1147
  store i8 21, i8* %42, align 1, !dbg !1147
  %43 = getelementptr inbounds i8* %21, i64 21, !dbg !1148
  store i8 4, i8* %43, align 1, !dbg !1148
  %44 = getelementptr inbounds i8* %21, i64 22, !dbg !1149
  store i8 0, i8* %44, align 1, !dbg !1149
  %45 = getelementptr inbounds i8* %21, i64 23, !dbg !1150
  store i8 1, i8* %45, align 1, !dbg !1150
  %46 = getelementptr inbounds i8* %21, i64 24, !dbg !1151
  store i8 -1, i8* %46, align 1, !dbg !1151
  %47 = getelementptr inbounds i8* %21, i64 25, !dbg !1152
  store i8 17, i8* %47, align 1, !dbg !1152
  %48 = getelementptr inbounds i8* %21, i64 26, !dbg !1153
  store i8 19, i8* %48, align 1, !dbg !1153
  %49 = getelementptr inbounds i8* %21, i64 27, !dbg !1154
  store i8 26, i8* %49, align 1, !dbg !1154
  %50 = getelementptr inbounds i8* %21, i64 28, !dbg !1155
  store i8 -1, i8* %50, align 1, !dbg !1155
  %51 = getelementptr inbounds i8* %21, i64 29, !dbg !1156
  store i8 18, i8* %51, align 1, !dbg !1156
  %52 = getelementptr inbounds i8* %21, i64 30, !dbg !1157
  store i8 15, i8* %52, align 1, !dbg !1157
  %53 = getelementptr inbounds i8* %21, i64 31, !dbg !1158
  store i8 23, i8* %53, align 1, !dbg !1158
  %54 = getelementptr inbounds i8* %21, i64 32, !dbg !1159
  store i8 22, i8* %54, align 1, !dbg !1159
  %55 = getelementptr inbounds i8* %21, i64 33, !dbg !1160
  store i8 -1, i8* %55, align 1, !dbg !1160
  %56 = getelementptr inbounds i8* %21, i64 34, !dbg !1161
  store i8 0, i8* %56, align 1, !dbg !1161
  %57 = getelementptr inbounds i8* %21, i64 35, !dbg !1162
  store i8 0, i8* %57, align 1, !dbg !1162
  br label %bb39, !dbg !1163

bb12:                                             ; preds = %bb10
  %58 = call i32* @__errno_location() nounwind readnone, !dbg !1164
  store i32 25, i32* %58, align 4, !dbg !1164
  br label %bb39, !dbg !1165

bb13:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !1166
  %59 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1167
  %60 = load i32* %59, align 8, !dbg !1167
  %61 = and i32 %60, 61440, !dbg !1167
  %62 = icmp eq i32 %61, 8192, !dbg !1167
  br i1 %62, label %bb39, label %bb15, !dbg !1167

bb15:                                             ; preds = %bb13
  %63 = call i32* @__errno_location() nounwind readnone, !dbg !1168
  store i32 25, i32* %63, align 4, !dbg !1168
  br label %bb39, !dbg !1169

bb16:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !1170
  %64 = icmp eq i32 %fd, 0, !dbg !1171
  br i1 %64, label %bb39, label %bb18, !dbg !1171

bb18:                                             ; preds = %bb16
  %65 = call i32* @__errno_location() nounwind readnone, !dbg !1172
  store i32 25, i32* %65, align 4, !dbg !1172
  br label %bb39, !dbg !1173

bb19:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0)) nounwind, !dbg !1174
  %66 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1175
  %67 = load i32* %66, align 8, !dbg !1175
  %68 = and i32 %67, 61440, !dbg !1175
  %69 = icmp eq i32 %68, 8192, !dbg !1175
  br i1 %69, label %bb39, label %bb21, !dbg !1175

bb21:                                             ; preds = %bb19
  %70 = call i32* @__errno_location() nounwind readnone, !dbg !1176
  store i32 25, i32* %70, align 4, !dbg !1176
  br label %bb39, !dbg !1177

bb22:                                             ; preds = %bb9
  call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !455), !dbg !1178
  %71 = bitcast i8* %21 to i16*, !dbg !1179
  store i16 24, i16* %71, align 2, !dbg !1179
  %72 = getelementptr inbounds i8* %21, i64 2
  %73 = bitcast i8* %72 to i16*, !dbg !1180
  store i16 80, i16* %73, align 2, !dbg !1180
  call void @klee_warning_once(i8* getelementptr inbounds ([45 x i8]* @.str12, i64 0, i64 0)) nounwind, !dbg !1181
  %74 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1182
  %75 = load i32* %74, align 8, !dbg !1182
  %76 = and i32 %75, 61440, !dbg !1182
  %77 = icmp eq i32 %76, 8192, !dbg !1182
  br i1 %77, label %bb39, label %bb24, !dbg !1182

bb24:                                             ; preds = %bb22
  %78 = call i32* @__errno_location() nounwind readnone, !dbg !1183
  store i32 25, i32* %78, align 4, !dbg !1183
  br label %bb39, !dbg !1184

bb25:                                             ; preds = %bb9
  call void @klee_warning_once(i8* getelementptr inbounds ([46 x i8]* @.str13, i64 0, i64 0)) nounwind, !dbg !1185
  %79 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1186
  %80 = load i32* %79, align 8, !dbg !1186
  %81 = and i32 %80, 61440, !dbg !1186
  %82 = icmp eq i32 %81, 8192, !dbg !1186
  %83 = call i32* @__errno_location() nounwind readnone, !dbg !1187
  br i1 %82, label %bb26, label %bb27, !dbg !1186

bb26:                                             ; preds = %bb25
  store i32 22, i32* %83, align 4, !dbg !1187
  br label %bb39, !dbg !1188

bb27:                                             ; preds = %bb25
  store i32 25, i32* %83, align 4, !dbg !1189
  br label %bb39, !dbg !1190

bb28:                                             ; preds = %bb9
  %84 = bitcast i8* %21 to i32*, !dbg !1191
  call void @llvm.dbg.value(metadata !{i32* %84}, i64 0, metadata !465), !dbg !1191
  call void @klee_warning_once(i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0)) nounwind, !dbg !1192
  %85 = getelementptr inbounds %struct.stat* %26, i64 0, i32 3, !dbg !1193
  %86 = load i32* %85, align 8, !dbg !1193
  %87 = and i32 %86, 61440, !dbg !1193
  %88 = icmp eq i32 %87, 8192, !dbg !1193
  br i1 %88, label %bb29, label %bb33, !dbg !1193

bb29:                                             ; preds = %bb28
  %89 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1194
  %90 = load i64* %89, align 8, !dbg !1194
  %91 = load %struct.exe_disk_file_t** %22, align 8, !dbg !1194
  %92 = getelementptr inbounds %struct.exe_disk_file_t* %91, i64 0, i32 0, !dbg !1194
  %93 = load i32* %92, align 8, !dbg !1194
  %94 = zext i32 %93 to i64, !dbg !1194
  %95 = icmp slt i64 %90, %94, !dbg !1194
  br i1 %95, label %bb30, label %bb32, !dbg !1194

bb30:                                             ; preds = %bb29
  %96 = trunc i64 %90 to i32, !dbg !1195
  %97 = sub i32 %93, %96, !dbg !1195
  br label %bb32, !dbg !1195

bb32:                                             ; preds = %bb29, %bb30
  %storemerge = phi i32 [ %97, %bb30 ], [ 0, %bb29 ]
  store i32 %storemerge, i32* %84, align 4
  br label %bb39, !dbg !1196

bb33:                                             ; preds = %bb28
  %98 = call i32* @__errno_location() nounwind readnone, !dbg !1197
  store i32 25, i32* %98, align 4, !dbg !1197
  br label %bb39, !dbg !1198

bb34:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0)) nounwind, !dbg !1199
  %99 = call i32* @__errno_location() nounwind readnone, !dbg !1200
  store i32 22, i32* %99, align 4, !dbg !1200
  br label %bb39, !dbg !1201

bb35:                                             ; preds = %bb9
  call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1202
  %100 = call i32* @__errno_location() nounwind readnone, !dbg !1203
  store i32 22, i32* %100, align 4, !dbg !1203
  br label %bb39, !dbg !1204

bb36:                                             ; preds = %bb6
  %101 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1205
  %102 = load i32* %101, align 8, !dbg !1205
  %103 = call i64 (i64, ...)* @syscall(i64 16, i32 %102, i64 %request, i8* %21) nounwind, !dbg !1205
  %104 = trunc i64 %103 to i32, !dbg !1205
  call void @llvm.dbg.value(metadata !{i32 %104}, i64 0, metadata !468), !dbg !1205
  %105 = icmp eq i32 %104, -1, !dbg !1206
  br i1 %105, label %bb37, label %bb39, !dbg !1206

bb37:                                             ; preds = %bb36
  %106 = call i32* @__errno_location() nounwind readnone, !dbg !1207
  %107 = call i32 @klee_get_errno() nounwind, !dbg !1207
  store i32 %107, i32* %106, align 4, !dbg !1207
  br label %bb39, !dbg !1207

bb39:                                             ; preds = %bb36, %bb37, %bb22, %bb19, %bb16, %bb13, %bb35, %bb34, %bb33, %bb32, %bb27, %bb26, %bb24, %bb21, %bb18, %bb15, %bb12, %bb11, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb35 ], [ -1, %bb34 ], [ 0, %bb32 ], [ -1, %bb33 ], [ -1, %bb26 ], [ -1, %bb27 ], [ -1, %bb24 ], [ -1, %bb21 ], [ -1, %bb18 ], [ -1, %bb15 ], [ 0, %bb11 ], [ -1, %bb12 ], [ 0, %bb13 ], [ 0, %bb16 ], [ 0, %bb19 ], [ 0, %bb22 ], [ -1, %bb37 ], [ %104, %bb36 ]
  ret i32 %.0, !dbg !1129
}

declare void @klee_warning_once(i8*)

define i32 @close(i32 %fd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !470), !dbg !1208
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !473), !dbg !1209
  %0 = load i32* @n_calls.5929, align 4, !dbg !1210
  %1 = add nsw i32 %0, 1, !dbg !1210
  store i32 %1, i32* @n_calls.5929, align 4, !dbg !1210
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1211
  %2 = icmp ult i32 %fd, 16, !dbg !1213
  br i1 %2, label %bb.i, label %bb, !dbg !1213

bb.i:                                             ; preds = %entry
  %3 = sext i32 %fd to i64, !dbg !1214
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1214
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 1, !dbg !1215
  %5 = load i32* %4, align 4, !dbg !1215
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !1215
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1215

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, !dbg !1214
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !471), !dbg !1212
  %8 = icmp eq %struct.exe_file_t* %7, null, !dbg !1216
  br i1 %8, label %bb, label %bb1, !dbg !1216

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1217
  store i32 9, i32* %9, align 4, !dbg !1217
  br label %bb5, !dbg !1218

bb1:                                              ; preds = %__get_file.exit
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1219
  %11 = icmp eq i32 %10, 0, !dbg !1219
  br i1 %11, label %bb4, label %bb2, !dbg !1219

bb2:                                              ; preds = %bb1
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1219
  %13 = load i32* %12, align 4, !dbg !1219
  %14 = icmp eq i32 %13, %1, !dbg !1219
  br i1 %14, label %bb3, label %bb4, !dbg !1219

bb3:                                              ; preds = %bb2
  %15 = add i32 %10, -1, !dbg !1220
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1220
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1221
  store i32 5, i32* %16, align 4, !dbg !1221
  br label %bb5, !dbg !1222

bb4:                                              ; preds = %bb1, %bb2
  %17 = bitcast %struct.exe_file_t* %7 to i8*, !dbg !1223
  tail call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 24, i32 8, i1 false), !dbg !1223
  br label %bb5, !dbg !1224

bb5:                                              ; preds = %bb4, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ 0, %bb4 ]
  ret i32 %.0, !dbg !1218
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define i32 @dup2(i32 %oldfd, i32 %newfd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !474), !dbg !1225
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !475), !dbg !1225
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !273), !dbg !1226
  %0 = icmp ult i32 %oldfd, 16, !dbg !1228
  br i1 %0, label %bb.i, label %bb, !dbg !1228

bb.i:                                             ; preds = %entry
  %1 = sext i32 %oldfd to i64, !dbg !1229
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1229
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1230
  %3 = load i32* %2, align 4, !dbg !1230
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1230
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1230

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1229
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !476), !dbg !1227
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1231
  %7 = icmp ugt i32 %newfd, 15, !dbg !1231
  %8 = or i1 %6, %7, !dbg !1231
  br i1 %8, label %bb, label %bb3, !dbg !1231

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1232
  store i32 9, i32* %9, align 4, !dbg !1232
  br label %bb7, !dbg !1233

bb3:                                              ; preds = %__get_file.exit
  %10 = sext i32 %newfd to i64, !dbg !1234
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !478), !dbg !1234
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 1, !dbg !1235
  %12 = load i32* %11, align 4, !dbg !1235
  %13 = and i32 %12, 1
  %toBool4 = icmp eq i32 %13, 0, !dbg !1235
  br i1 %toBool4, label %bb6, label %bb5, !dbg !1235

bb5:                                              ; preds = %bb3
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !470) nounwind, !dbg !1236
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !473) nounwind, !dbg !1237
  %14 = load i32* @n_calls.5929, align 4, !dbg !1238
  %15 = add nsw i32 %14, 1, !dbg !1238
  store i32 %15, i32* @n_calls.5929, align 4, !dbg !1238
  tail call void @llvm.dbg.value(metadata !{i32 %newfd}, i64 0, metadata !273) nounwind, !dbg !1239
  %16 = icmp ult i32 %newfd, 16, !dbg !1241
  br i1 %16, label %__get_file.exit.i, label %bb.i9, !dbg !1241

__get_file.exit.i:                                ; preds = %bb5
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, !dbg !1242
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %17}, i64 0, metadata !471) nounwind, !dbg !1240
  %18 = icmp eq %struct.exe_file_t* %17, null, !dbg !1243
  br i1 %18, label %bb.i9, label %bb1.i10, !dbg !1243

bb.i9:                                            ; preds = %__get_file.exit.i, %bb5
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !1244
  store i32 9, i32* %19, align 4, !dbg !1244
  br label %bb6, !dbg !1245

bb1.i10:                                          ; preds = %__get_file.exit.i
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1246
  %21 = icmp eq i32 %20, 0, !dbg !1246
  br i1 %21, label %bb4.i, label %bb2.i, !dbg !1246

bb2.i:                                            ; preds = %bb1.i10
  %22 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 8), align 8, !dbg !1246
  %23 = load i32* %22, align 4, !dbg !1246
  %24 = icmp eq i32 %23, %15, !dbg !1246
  br i1 %24, label %bb3.i, label %bb4.i, !dbg !1246

bb3.i:                                            ; preds = %bb2.i
  %25 = add i32 %20, -1, !dbg !1247
  store i32 %25, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1247
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !1248
  store i32 5, i32* %26, align 4, !dbg !1248
  br label %bb6, !dbg !1249

bb4.i:                                            ; preds = %bb2.i, %bb1.i10
  %27 = bitcast %struct.exe_file_t* %17 to i8*, !dbg !1250
  tail call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 24, i32 8, i1 false) nounwind, !dbg !1250
  br label %bb6, !dbg !1251

bb6:                                              ; preds = %bb4.i, %bb3.i, %bb.i9, %bb3
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 0, !dbg !1252
  %29 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1252
  %30 = load i32* %29, align 8, !dbg !1252
  store i32 %30, i32* %28, align 8, !dbg !1252
  %31 = load i32* %2, align 4, !dbg !1252
  %32 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 2, !dbg !1252
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1252
  %34 = load i64* %33, align 8, !dbg !1252
  store i64 %34, i64* %32, align 8, !dbg !1252
  %35 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %10, i32 3, !dbg !1252
  %36 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1252
  %37 = load %struct.exe_disk_file_t** %36, align 8, !dbg !1252
  store %struct.exe_disk_file_t* %37, %struct.exe_disk_file_t** %35, align 8, !dbg !1252
  %38 = and i32 %31, -3, !dbg !1253
  store i32 %38, i32* %11, align 4, !dbg !1253
  br label %bb7, !dbg !1254

bb7:                                              ; preds = %bb6, %bb
  %.0 = phi i32 [ -1, %bb ], [ %newfd, %bb6 ]
  ret i32 %.0, !dbg !1233
}

define i32 @dup(i32 %oldfd) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !480), !dbg !1255
  tail call void @llvm.dbg.value(metadata !{i32 %oldfd}, i64 0, metadata !273), !dbg !1256
  %0 = icmp ult i32 %oldfd, 16, !dbg !1258
  br i1 %0, label %bb.i, label %bb, !dbg !1258

bb.i:                                             ; preds = %entry
  %1 = sext i32 %oldfd to i64, !dbg !1259
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1259
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1260
  %3 = load i32* %2, align 4, !dbg !1260
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1260
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1260

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1259
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !481), !dbg !1257
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1261
  br i1 %6, label %bb, label %bb4, !dbg !1261

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1262
  store i32 9, i32* %7, align 4, !dbg !1262
  br label %bb8, !dbg !1263

bb2:                                              ; preds = %bb4
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %8 = load i32* %scevgep, align 4, !dbg !1264
  %9 = and i32 %8, 1, !dbg !1264
  %10 = icmp eq i32 %9, 0, !dbg !1264
  br i1 %10, label %bb7, label %bb3, !dbg !1264

bb3:                                              ; preds = %bb2
  %indvar.next = add i64 %indvar, 1
  br label %bb4, !dbg !1265

bb4:                                              ; preds = %__get_file.exit, %bb3
  %indvar = phi i64 [ %indvar.next, %bb3 ], [ 0, %__get_file.exit ]
  %fd.0 = trunc i64 %indvar to i32
  %11 = icmp slt i32 %fd.0, 16, !dbg !1265
  br i1 %11, label %bb2, label %bb5, !dbg !1265

bb5:                                              ; preds = %bb4
  %12 = icmp eq i32 %fd.0, 16, !dbg !1266
  br i1 %12, label %bb6, label %bb7, !dbg !1266

bb6:                                              ; preds = %bb5
  %13 = tail call i32* @__errno_location() nounwind readnone, !dbg !1267
  store i32 24, i32* %13, align 4, !dbg !1267
  br label %bb8, !dbg !1268

bb7:                                              ; preds = %bb2, %bb5
  %14 = tail call i32 @dup2(i32 %oldfd, i32 %fd.0) nounwind, !dbg !1269
  br label %bb8, !dbg !1269

bb8:                                              ; preds = %bb7, %bb6, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb6 ], [ %14, %bb7 ]
  ret i32 %.0, !dbg !1263
}

define i32 @__fd_getdents(i32 %fd, %struct.dirent64* %dirp, i32 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !485), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{%struct.dirent64* %dirp}, i64 0, metadata !486), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !487), !dbg !1270
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1271
  %0 = icmp ult i32 %fd, 16, !dbg !1273
  br i1 %0, label %bb.i, label %bb, !dbg !1273

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1274
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1274
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1275
  %3 = load i32* %2, align 4, !dbg !1275
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1275
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1275

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1274
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !488), !dbg !1272
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1276
  br i1 %6, label %bb, label %bb1, !dbg !1276

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1277
  store i32 9, i32* %7, align 4, !dbg !1277
  br label %bb19, !dbg !1278

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1279
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1279
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1279
  br i1 %10, label %bb3, label %bb2, !dbg !1279

bb2:                                              ; preds = %bb1
  tail call void @klee_warning(i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !1280
  %11 = tail call i32* @__errno_location() nounwind readnone, !dbg !1281
  store i32 22, i32* %11, align 4, !dbg !1281
  br label %bb19, !dbg !1282

bb3:                                              ; preds = %bb1
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1283
  %13 = load i64* %12, align 8, !dbg !1283
  %14 = icmp ult i64 %13, 4096, !dbg !1283
  br i1 %14, label %bb4, label %bb11, !dbg !1283

bb4:                                              ; preds = %bb3
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !493), !dbg !1285
  %15 = udiv i64 %13, 280, !dbg !1286
  tail call void @llvm.dbg.value(metadata !{i64 %15}, i64 0, metadata !490), !dbg !1286
  %16 = mul i64 %15, 280, !dbg !1287
  %17 = icmp eq i64 %16, %13, !dbg !1287
  br i1 %17, label %bb5, label %bb6, !dbg !1287

bb5:                                              ; preds = %bb4
  %18 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1287
  %19 = zext i32 %18 to i64, !dbg !1287
  %20 = icmp ult i64 %19, %15, !dbg !1287
  br i1 %20, label %bb6, label %bb8.preheader, !dbg !1287

bb8.preheader:                                    ; preds = %bb5
  %21 = icmp ugt i64 %19, %15, !dbg !1288
  br i1 %21, label %bb7.lr.ph, label %bb9, !dbg !1288

bb7.lr.ph:                                        ; preds = %bb8.preheader
  %tmp39 = add i64 %15, 65
  %tmp48 = add i64 %16, 280
  %tmp50 = add i64 %15, 1
  br label %bb7

bb6:                                              ; preds = %bb4, %bb5
  %22 = tail call i32* @__errno_location() nounwind readnone, !dbg !1289
  store i32 22, i32* %22, align 4, !dbg !1289
  br label %bb19, !dbg !1290

bb7:                                              ; preds = %bb7.lr.ph, %bb7
  %indvar = phi i64 [ 0, %bb7.lr.ph ], [ %indvar.next, %bb7 ]
  %bytes.025 = phi i64 [ 0, %bb7.lr.ph ], [ %32, %bb7 ]
  %scevgep29 = getelementptr inbounds %struct.dirent64* %dirp, i64 %indvar, i32 0
  %scevgep30 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 2
  %scevgep31 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 3
  %scevgep32 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 1
  %scevgep35 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 4, i64 0
  %scevgep36 = getelementptr %struct.dirent64* %dirp, i64 %indvar, i32 4, i64 1
  %tmp41 = add i64 %tmp39, %indvar
  %tmp42 = trunc i64 %tmp41 to i8
  %tmp43 = add i64 %15, %indvar
  %tmp46 = mul i64 %indvar, 280
  %tmp49 = add i64 %tmp48, %tmp46
  %tmp51 = add i64 %tmp50, %indvar
  %23 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1291
  %scevgep45 = getelementptr %struct.exe_disk_file_t* %23, i64 %tmp43, i32 2
  %24 = load %struct.stat** %scevgep45, align 8, !dbg !1292
  %25 = getelementptr inbounds %struct.stat* %24, i64 0, i32 1, !dbg !1292
  %26 = load i64* %25, align 8, !dbg !1292
  store i64 %26, i64* %scevgep29, align 8, !dbg !1292
  store i16 280, i16* %scevgep30, align 8, !dbg !1293
  %27 = load %struct.stat** %scevgep45, align 8, !dbg !1294
  %28 = getelementptr inbounds %struct.stat* %27, i64 0, i32 3, !dbg !1294
  %29 = load i32* %28, align 8, !dbg !1294
  %30 = lshr i32 %29, 12
  %.tr = trunc i32 %30 to i8
  %31 = and i8 %.tr, 15, !dbg !1294
  store i8 %31, i8* %scevgep31, align 2, !dbg !1294
  store i8 %tmp42, i8* %scevgep35, align 1, !dbg !1295
  store i8 0, i8* %scevgep36, align 1, !dbg !1296
  store i64 %tmp49, i64* %scevgep32, align 8, !dbg !1297
  %32 = add nsw i64 %bytes.025, 280, !dbg !1298
  %33 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1288
  %34 = zext i32 %33 to i64, !dbg !1288
  %35 = icmp sgt i64 %34, %tmp51, !dbg !1288
  %indvar.next = add i64 %indvar, 1
  br i1 %35, label %bb7, label %bb8.bb9_crit_edge, !dbg !1288

bb8.bb9_crit_edge:                                ; preds = %bb7
  %scevgep34 = getelementptr %struct.dirent64* %dirp, i64 %indvar.next
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !494), !dbg !1291
  tail call void @llvm.dbg.value(metadata !{i64 %32}, i64 0, metadata !493), !dbg !1298
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !486), !dbg !1299
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !490), !dbg !1288
  br label %bb9

bb9:                                              ; preds = %bb8.bb9_crit_edge, %bb8.preheader
  %dirp_addr.0.lcssa = phi %struct.dirent64* [ %scevgep34, %bb8.bb9_crit_edge ], [ %dirp, %bb8.preheader ]
  %bytes.0.lcssa = phi i64 [ %32, %bb8.bb9_crit_edge ], [ 0, %bb8.preheader ]
  %36 = icmp ugt i32 %count, 4096, !dbg !1300
  %37 = zext i32 %count to i64
  %38 = select i1 %36, i64 4096, i64 %37, !dbg !1300
  tail call void @llvm.dbg.value(metadata !{i64 %38}, i64 0, metadata !492), !dbg !1300
  %39 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 0, !dbg !1301
  store i64 0, i64* %39, align 8, !dbg !1301
  %40 = trunc i64 %38 to i16, !dbg !1302
  %41 = trunc i64 %bytes.0.lcssa to i16, !dbg !1302
  %42 = sub i16 %40, %41, !dbg !1302
  %43 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 2, !dbg !1302
  store i16 %42, i16* %43, align 8, !dbg !1302
  %44 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 3, !dbg !1303
  store i8 0, i8* %44, align 2, !dbg !1303
  %45 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 4, i64 0, !dbg !1304
  store i8 0, i8* %45, align 1, !dbg !1304
  %46 = getelementptr inbounds %struct.dirent64* %dirp_addr.0.lcssa, i64 0, i32 1, !dbg !1305
  store i64 4096, i64* %46, align 8, !dbg !1305
  %47 = zext i16 %42 to i64, !dbg !1306
  %48 = add nsw i64 %47, %bytes.0.lcssa, !dbg !1306
  tail call void @llvm.dbg.value(metadata !{i64 %48}, i64 0, metadata !493), !dbg !1306
  store i64 %38, i64* %12, align 8, !dbg !1307
  %49 = trunc i64 %48 to i32, !dbg !1308
  br label %bb19, !dbg !1308

bb11:                                             ; preds = %bb3
  %50 = add nsw i64 %13, -4096, !dbg !1309
  tail call void @llvm.dbg.value(metadata !{i64 %50}, i64 0, metadata !496), !dbg !1309
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !499), !dbg !1310
  %51 = zext i32 %count to i64, !dbg !1311
  %52 = bitcast %struct.dirent64* %dirp to i8*, !dbg !1311
  tail call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 %51, i32 8, i1 false), !dbg !1311
  %53 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1312
  %54 = load i32* %53, align 8, !dbg !1312
  %55 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %54, i64 %50, i32 0) nounwind, !dbg !1312
  tail call void @llvm.dbg.value(metadata !{i64 %55}, i64 0, metadata !499), !dbg !1312
  %56 = icmp eq i64 %55, -1, !dbg !1313
  br i1 %56, label %bb12, label %bb13, !dbg !1313

bb12:                                             ; preds = %bb11
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 938, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.6400, i64 0, i64 0)) noreturn nounwind, !dbg !1313
  unreachable, !dbg !1313

bb13:                                             ; preds = %bb11
  %57 = load i32* %53, align 8, !dbg !1314
  %58 = tail call i64 (i64, ...)* @syscall(i64 217, i32 %57, %struct.dirent64* %dirp, i32 %count) nounwind, !dbg !1314
  %59 = trunc i64 %58 to i32, !dbg !1314
  tail call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !498), !dbg !1314
  %60 = icmp eq i32 %59, -1, !dbg !1315
  br i1 %60, label %bb14, label %bb15, !dbg !1315

bb14:                                             ; preds = %bb13
  %61 = tail call i32* @__errno_location() nounwind readnone, !dbg !1316
  %62 = tail call i32 @klee_get_errno() nounwind, !dbg !1316
  store i32 %62, i32* %61, align 4, !dbg !1316
  br label %bb19, !dbg !1316

bb15:                                             ; preds = %bb13
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !500), !dbg !1317
  %63 = load i32* %53, align 8, !dbg !1318
  %64 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %63, i32 0, i32 1) nounwind, !dbg !1318
  %65 = add nsw i64 %64, 4096, !dbg !1318
  store i64 %65, i64* %12, align 8, !dbg !1318
  %66 = icmp sgt i32 %59, 0, !dbg !1319
  br i1 %66, label %bb16, label %bb19, !dbg !1319

bb16:                                             ; preds = %bb15, %bb16
  %pos.023 = phi i32 [ %76, %bb16 ], [ 0, %bb15 ]
  %67 = sext i32 %pos.023 to i64, !dbg !1320
  %.sum = add i64 %67, 8
  %68 = getelementptr inbounds i8* %52, i64 %.sum
  %69 = bitcast i8* %68 to i64*, !dbg !1321
  %70 = load i64* %69, align 8, !dbg !1321
  %71 = add nsw i64 %70, 4096, !dbg !1321
  store i64 %71, i64* %69, align 8, !dbg !1321
  %.sum22 = add i64 %67, 16
  %72 = getelementptr inbounds i8* %52, i64 %.sum22
  %73 = bitcast i8* %72 to i16*, !dbg !1322
  %74 = load i16* %73, align 8, !dbg !1322
  %75 = zext i16 %74 to i32, !dbg !1322
  %76 = add nsw i32 %75, %pos.023, !dbg !1322
  %77 = icmp slt i32 %76, %59, !dbg !1319
  br i1 %77, label %bb16, label %bb19, !dbg !1319

bb19:                                             ; preds = %bb15, %bb16, %bb14, %bb9, %bb6, %bb2, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb2 ], [ -1, %bb6 ], [ %49, %bb9 ], [ -1, %bb14 ], [ %59, %bb16 ], [ %59, %bb15 ]
  ret i32 %.0, !dbg !1278
}

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

define i64 @__fd_lseek(i32 %fd, i64 %offset, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !504), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !505), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !506), !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1324
  %0 = icmp ult i32 %fd, 16, !dbg !1326
  br i1 %0, label %bb.i, label %bb, !dbg !1326

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1327
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1327
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1328
  %3 = load i32* %2, align 4, !dbg !1328
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1328
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1328

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1327
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !509), !dbg !1325
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1329
  br i1 %6, label %bb, label %bb1, !dbg !1329

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1330
  store i32 9, i32* %7, align 4, !dbg !1330
  br label %bb19, !dbg !1331

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1332
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1332
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1332
  br i1 %10, label %bb2, label %bb11, !dbg !1332

bb2:                                              ; preds = %bb1
  %11 = icmp eq i32 %whence, 0, !dbg !1333
  br i1 %11, label %bb3, label %bb4, !dbg !1333

bb3:                                              ; preds = %bb2
  %12 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1334
  %13 = load i32* %12, align 8, !dbg !1334
  %14 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %13, i64 %offset, i32 0) nounwind, !dbg !1334
  tail call void @llvm.dbg.value(metadata !{i64 %14}, i64 0, metadata !507), !dbg !1334
  br label %bb8, !dbg !1334

bb4:                                              ; preds = %bb2
  %15 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1335
  %16 = load i64* %15, align 8, !dbg !1335
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1335
  %18 = load i32* %17, align 8, !dbg !1335
  %19 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %18, i64 %16, i32 0) nounwind, !dbg !1335
  tail call void @llvm.dbg.value(metadata !{i64 %19}, i64 0, metadata !507), !dbg !1335
  %20 = icmp eq i64 %19, -1, !dbg !1336
  br i1 %20, label %bb9, label %bb5, !dbg !1336

bb5:                                              ; preds = %bb4
  %21 = load i64* %15, align 8, !dbg !1337
  %22 = icmp eq i64 %21, %19, !dbg !1337
  br i1 %22, label %bb7, label %bb6, !dbg !1337

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 562, i8* getelementptr inbounds ([11 x i8]* @__PRETTY_FUNCTION__.6124, i64 0, i64 0)) noreturn nounwind, !dbg !1337
  unreachable, !dbg !1337

bb7:                                              ; preds = %bb5
  %23 = load i32* %17, align 8, !dbg !1338
  %24 = tail call i64 (i64, ...)* @syscall(i64 8, i32 %23, i64 %offset, i32 %whence) nounwind, !dbg !1338
  tail call void @llvm.dbg.value(metadata !{i64 %24}, i64 0, metadata !507), !dbg !1338
  br label %bb8, !dbg !1338

bb8:                                              ; preds = %bb7, %bb3
  %new_off.0 = phi i64 [ %14, %bb3 ], [ %24, %bb7 ]
  %25 = icmp eq i64 %new_off.0, -1, !dbg !1339
  br i1 %25, label %bb9, label %bb10, !dbg !1339

bb9:                                              ; preds = %bb4, %bb8
  %26 = tail call i32* @__errno_location() nounwind readnone, !dbg !1340
  %27 = tail call i32 @klee_get_errno() nounwind, !dbg !1340
  store i32 %27, i32* %26, align 4, !dbg !1340
  br label %bb19, !dbg !1341

bb10:                                             ; preds = %bb8
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1342
  store i64 %new_off.0, i64* %28, align 8, !dbg !1342
  br label %bb19, !dbg !1343

bb11:                                             ; preds = %bb1
  switch i32 %whence, label %bb15 [
    i32 0, label %bb16
    i32 1, label %bb13
    i32 2, label %bb14
  ], !dbg !1344

bb13:                                             ; preds = %bb11
  %29 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1345
  %30 = load i64* %29, align 8, !dbg !1345
  %31 = add nsw i64 %30, %offset, !dbg !1345
  tail call void @llvm.dbg.value(metadata !{i64 %31}, i64 0, metadata !507), !dbg !1345
  br label %bb16, !dbg !1345

bb14:                                             ; preds = %bb11
  %32 = getelementptr inbounds %struct.exe_disk_file_t* %9, i64 0, i32 0, !dbg !1346
  %33 = load i32* %32, align 8, !dbg !1346
  %34 = zext i32 %33 to i64, !dbg !1346
  %35 = add nsw i64 %34, %offset, !dbg !1346
  tail call void @llvm.dbg.value(metadata !{i64 %35}, i64 0, metadata !507), !dbg !1346
  br label %bb16, !dbg !1346

bb15:                                             ; preds = %bb11
  %36 = tail call i32* @__errno_location() nounwind readnone, !dbg !1347
  store i32 22, i32* %36, align 4, !dbg !1347
  br label %bb19, !dbg !1348

bb16:                                             ; preds = %bb11, %bb14, %bb13
  %new_off.1 = phi i64 [ %35, %bb14 ], [ %31, %bb13 ], [ %offset, %bb11 ]
  %37 = icmp slt i64 %new_off.1, 0, !dbg !1349
  br i1 %37, label %bb17, label %bb18, !dbg !1349

bb17:                                             ; preds = %bb16
  %38 = tail call i32* @__errno_location() nounwind readnone, !dbg !1350
  store i32 22, i32* %38, align 4, !dbg !1350
  br label %bb19, !dbg !1351

bb18:                                             ; preds = %bb16
  %39 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 2, !dbg !1352
  store i64 %new_off.1, i64* %39, align 8, !dbg !1352
  br label %bb19, !dbg !1353

bb19:                                             ; preds = %bb18, %bb17, %bb15, %bb10, %bb9, %bb
  %.0 = phi i64 [ -1, %bb ], [ -1, %bb9 ], [ %new_off.0, %bb10 ], [ -1, %bb15 ], [ -1, %bb17 ], [ %new_off.1, %bb18 ]
  ret i64 %.0, !dbg !1331
}

define i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !510), !dbg !1354
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !511), !dbg !1354
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1355
  %0 = icmp ult i32 %fd, 16, !dbg !1357
  br i1 %0, label %bb.i, label %bb, !dbg !1357

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1358
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1358
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1359
  %3 = load i32* %2, align 4, !dbg !1359
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1359
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1359

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1358
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !512), !dbg !1356
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1360
  br i1 %6, label %bb, label %bb1, !dbg !1360

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1361
  store i32 9, i32* %7, align 4, !dbg !1361
  br label %bb6, !dbg !1362

bb1:                                              ; preds = %__get_file.exit
  %8 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1363
  %9 = load %struct.exe_disk_file_t** %8, align 8, !dbg !1363
  %10 = icmp eq %struct.exe_disk_file_t* %9, null, !dbg !1363
  br i1 %10, label %bb2, label %bb5, !dbg !1363

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1364
  %12 = load i32* %11, align 8, !dbg !1364
  %13 = tail call i64 (i64, ...)* @syscall(i64 5, i32 %12, %struct.stat* %buf) nounwind, !dbg !1364
  %14 = trunc i64 %13 to i32, !dbg !1364
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !514), !dbg !1364
  %15 = icmp eq i32 %14, -1, !dbg !1365
  br i1 %15, label %bb3, label %bb6, !dbg !1365

bb3:                                              ; preds = %bb2
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1366
  %17 = tail call i32 @klee_get_errno() nounwind, !dbg !1366
  store i32 %17, i32* %16, align 4, !dbg !1366
  br label %bb6, !dbg !1366

bb5:                                              ; preds = %bb1
  %18 = getelementptr inbounds %struct.exe_disk_file_t* %9, i64 0, i32 2, !dbg !1367
  %19 = load %struct.stat** %18, align 8, !dbg !1367
  %20 = bitcast %struct.stat* %buf to i8*, !dbg !1367
  %21 = bitcast %struct.stat* %19 to i8*, !dbg !1367
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 144, i32 8, i1 false), !dbg !1367
  br label %bb6, !dbg !1368

bb6:                                              ; preds = %bb2, %bb3, %bb5, %bb
  %.0 = phi i32 [ -1, %bb ], [ 0, %bb5 ], [ -1, %bb3 ], [ %14, %bb2 ]
  ret i32 %.0, !dbg !1362
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !516), !dbg !1369
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !517), !dbg !1369
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1370
  %0 = load i8* %path, align 1, !dbg !1372
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !1372
  %1 = icmp eq i8 %0, 0, !dbg !1373
  br i1 %1, label %bb1, label %bb.i, !dbg !1373

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1373
  %3 = load i8* %2, align 1, !dbg !1373
  %4 = icmp eq i8 %3, 0, !dbg !1373
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !1373

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1374
  %6 = sext i8 %0 to i32, !dbg !1375
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1375
  %8 = add nsw i32 %7, 65, !dbg !1375
  %9 = icmp eq i32 %6, %8, !dbg !1375
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1375

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1376
  %11 = zext i32 %18 to i64, !dbg !1376
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1376
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1377
  %13 = load %struct.stat** %12, align 8, !dbg !1377
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1377
  %15 = load i64* %14, align 8, !dbg !1377
  %16 = icmp eq i64 %15, 0, !dbg !1377
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !1377

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !1374
  br label %bb8.i, !dbg !1374

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !1374
  br i1 %19, label %bb3.i, label %bb1, !dbg !1374

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1376
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !518), !dbg !1371
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !1378
  br i1 %21, label %bb1, label %bb, !dbg !1378

bb:                                               ; preds = %__get_sym_file.exit
  %22 = bitcast %struct.stat* %buf to i8*, !dbg !1379
  %23 = bitcast %struct.stat* %13 to i8*, !dbg !1379
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 144, i32 8, i1 false), !dbg !1379
  br label %bb4, !dbg !1380

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1381
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1383
  %24 = ptrtoint i8* %path to i64, !dbg !1385
  %25 = tail call i64 @klee_get_valuel(i64 %24) nounwind, !dbg !1385
  %26 = inttoptr i64 %25 to i8*, !dbg !1385
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !345) nounwind, !dbg !1385
  %27 = icmp eq i8* %26, %path, !dbg !1386
  %28 = zext i1 %27 to i64, !dbg !1386
  tail call void @klee_assume(i64 %28) nounwind, !dbg !1386
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !355) nounwind, !dbg !1384
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1387
  br label %bb.i6, !dbg !1387

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %26, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %29 = phi i32 [ 0, %bb1 ], [ %41, %bb6.i8 ]
  %tmp.i = add i32 %29, -1
  %30 = load i8* %sc.0.i, align 1, !dbg !1388
  %31 = and i32 %tmp.i, %29, !dbg !1389
  %32 = icmp eq i32 %31, 0, !dbg !1389
  br i1 %32, label %bb1.i, label %bb5.i, !dbg !1389

bb1.i:                                            ; preds = %bb.i6
  switch i8 %30, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !358) nounwind, !dbg !1388
  store i8 0, i8* %sc.0.i, align 1, !dbg !1390
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1390
  br label %__concretize_string.exit, !dbg !1390

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1391
  %33 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1391
  br label %bb6.i8, !dbg !1391

bb5.i:                                            ; preds = %bb.i6
  %34 = sext i8 %30 to i64, !dbg !1392
  %35 = tail call i64 @klee_get_valuel(i64 %34) nounwind, !dbg !1392
  %36 = trunc i64 %35 to i8, !dbg !1392
  %37 = icmp eq i8 %36, %30, !dbg !1393
  %38 = zext i1 %37 to i64, !dbg !1393
  tail call void @klee_assume(i64 %38) nounwind, !dbg !1393
  store i8 %36, i8* %sc.0.i, align 1, !dbg !1394
  %39 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1394
  %40 = icmp eq i8 %36, 0, !dbg !1395
  br i1 %40, label %__concretize_string.exit, label %bb6.i8, !dbg !1395

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %33, %bb4.i7 ], [ %39, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %41 = add i32 %29, 1, !dbg !1387
  br label %bb.i6, !dbg !1387

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %42 = tail call i64 (i64, ...)* @syscall(i64 6, i8* %path, %struct.stat* %buf) nounwind, !dbg !1382
  %43 = trunc i64 %42 to i32, !dbg !1382
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !520), !dbg !1382
  %44 = icmp eq i32 %43, -1, !dbg !1396
  br i1 %44, label %bb2, label %bb4, !dbg !1396

bb2:                                              ; preds = %__concretize_string.exit
  %45 = tail call i32* @__errno_location() nounwind readnone, !dbg !1397
  %46 = tail call i32 @klee_get_errno() nounwind, !dbg !1397
  store i32 %46, i32* %45, align 4, !dbg !1397
  br label %bb4, !dbg !1397

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %43, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1380
}

define i32 @fstatat(i32 %fd, i8* %path, %struct.stat* %buf, i32 %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !522), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !523), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !524), !dbg !1398
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !525), !dbg !1398
  %0 = icmp eq i32 %fd, -100, !dbg !1399
  br i1 %0, label %bb5, label %bb, !dbg !1399

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1400
  %1 = icmp ult i32 %fd, 16, !dbg !1402
  br i1 %1, label %bb.i, label %bb1, !dbg !1402

bb.i:                                             ; preds = %bb
  %2 = sext i32 %fd to i64, !dbg !1403
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1403
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1404
  %4 = load i32* %3, align 4, !dbg !1404
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1404
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1404

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1403
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !529), !dbg !1401
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1405
  br i1 %7, label %bb1, label %bb2, !dbg !1405

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1406
  store i32 9, i32* %8, align 4, !dbg !1406
  br label %bb13, !dbg !1407

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1408
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1408
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1408
  br i1 %11, label %bb4, label %bb3, !dbg !1408

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1409
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1410
  store i32 2, i32* %12, align 4, !dbg !1410
  br label %bb13, !dbg !1411

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1412
  %14 = load i32* %13, align 8, !dbg !1412
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !522), !dbg !1412
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1412

bb5:                                              ; preds = %entry, %bb4
  %fd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1413
  %15 = load i8* %path, align 1, !dbg !1415
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !268), !dbg !1415
  %16 = icmp eq i8 %15, 0, !dbg !1416
  br i1 %16, label %bb7, label %bb.i17, !dbg !1416

bb.i17:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %path, i64 1, !dbg !1416
  %18 = load i8* %17, align 1, !dbg !1416
  %19 = icmp eq i8 %18, 0, !dbg !1416
  br i1 %19, label %bb8.preheader.i, label %bb7, !dbg !1416

bb8.preheader.i:                                  ; preds = %bb.i17
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1417
  %21 = sext i8 %15 to i32, !dbg !1418
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1418
  %23 = add nsw i32 %22, 65, !dbg !1418
  %24 = icmp eq i32 %21, %23, !dbg !1418
  br i1 %24, label %bb4.i18, label %bb7.i, !dbg !1418

bb4.i18:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1419
  %26 = zext i32 %33 to i64, !dbg !1419
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1419
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1420
  %28 = load %struct.stat** %27, align 8, !dbg !1420
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1420
  %30 = load i64* %29, align 8, !dbg !1420
  %31 = icmp eq i64 %30, 0, !dbg !1420
  br i1 %31, label %bb7, label %__get_sym_file.exit, !dbg !1420

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1417
  br label %bb8.i, !dbg !1417

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1417
  br i1 %34, label %bb3.i, label %bb7, !dbg !1417

__get_sym_file.exit:                              ; preds = %bb4.i18
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1419
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %35}, i64 0, metadata !526), !dbg !1414
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1421
  br i1 %36, label %bb7, label %bb6, !dbg !1421

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = bitcast %struct.stat* %buf to i8*, !dbg !1422
  %38 = bitcast %struct.stat* %28 to i8*, !dbg !1422
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 144, i32 8, i1 false), !dbg !1422
  br label %bb13, !dbg !1423

bb7:                                              ; preds = %bb8.i, %bb4.i18, %bb5, %bb.i17, %__get_sym_file.exit
  %39 = sext i32 %flags to i64, !dbg !1424
  %40 = icmp eq i8* %path, null, !dbg !1424
  br i1 %40, label %bb10, label %bb8, !dbg !1424

bb8:                                              ; preds = %bb7
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1425
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1426
  %41 = ptrtoint i8* %path to i64, !dbg !1428
  %42 = tail call i64 @klee_get_valuel(i64 %41) nounwind, !dbg !1428
  %43 = inttoptr i64 %42 to i8*, !dbg !1428
  tail call void @llvm.dbg.value(metadata !{i8* %43}, i64 0, metadata !345) nounwind, !dbg !1428
  %44 = icmp eq i8* %43, %path, !dbg !1429
  %45 = zext i1 %44 to i64, !dbg !1429
  tail call void @klee_assume(i64 %45) nounwind, !dbg !1429
  tail call void @llvm.dbg.value(metadata !{i8* %43}, i64 0, metadata !355) nounwind, !dbg !1427
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1430
  br label %bb.i15, !dbg !1430

bb.i15:                                           ; preds = %bb6.i, %bb8
  %sc.0.i = phi i8* [ %43, %bb8 ], [ %sc.1.i, %bb6.i ]
  %46 = phi i32 [ 0, %bb8 ], [ %58, %bb6.i ]
  %tmp.i = add i32 %46, -1
  %47 = load i8* %sc.0.i, align 1, !dbg !1431
  %48 = and i32 %tmp.i, %46, !dbg !1432
  %49 = icmp eq i32 %48, 0, !dbg !1432
  br i1 %49, label %bb1.i16, label %bb5.i, !dbg !1432

bb1.i16:                                          ; preds = %bb.i15
  switch i8 %47, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i16
  tail call void @llvm.dbg.value(metadata !{i8 %47}, i64 0, metadata !358) nounwind, !dbg !1431
  store i8 0, i8* %sc.0.i, align 1, !dbg !1433
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1433
  br label %bb10, !dbg !1433

bb4.i:                                            ; preds = %bb1.i16
  store i8 47, i8* %sc.0.i, align 1, !dbg !1434
  %50 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1434
  br label %bb6.i, !dbg !1434

bb5.i:                                            ; preds = %bb.i15
  %51 = sext i8 %47 to i64, !dbg !1435
  %52 = tail call i64 @klee_get_valuel(i64 %51) nounwind, !dbg !1435
  %53 = trunc i64 %52 to i8, !dbg !1435
  %54 = icmp eq i8 %53, %47, !dbg !1436
  %55 = zext i1 %54 to i64, !dbg !1436
  tail call void @klee_assume(i64 %55) nounwind, !dbg !1436
  store i8 %53, i8* %sc.0.i, align 1, !dbg !1437
  %56 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1437
  %57 = icmp eq i8 %53, 0, !dbg !1438
  br i1 %57, label %bb10, label %bb6.i, !dbg !1438

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i16
  %sc.1.i = phi i8* [ %50, %bb4.i ], [ %56, %bb5.i ], [ %sc.0.i, %bb1.i16 ]
  %58 = add i32 %46, 1, !dbg !1430
  br label %bb.i15, !dbg !1430

bb10:                                             ; preds = %bb5.i, %bb2.i, %bb7
  %iftmp.45.0 = phi i8* [ null, %bb7 ], [ %path, %bb2.i ], [ %path, %bb5.i ]
  %59 = tail call i64 (i64, ...)* @syscall(i64 262, i64 %fd_addr.0, i8* %iftmp.45.0, %struct.stat* %buf, i64 %39) nounwind, !dbg !1424
  %60 = trunc i64 %59 to i32, !dbg !1424
  tail call void @llvm.dbg.value(metadata !{i32 %60}, i64 0, metadata !528), !dbg !1424
  %61 = icmp eq i32 %60, -1, !dbg !1439
  br i1 %61, label %bb11, label %bb13, !dbg !1439

bb11:                                             ; preds = %bb10
  %62 = tail call i32* @__errno_location() nounwind readnone, !dbg !1440
  %63 = tail call i32 @klee_get_errno() nounwind, !dbg !1440
  store i32 %63, i32* %62, align 4, !dbg !1440
  br label %bb13, !dbg !1440

bb13:                                             ; preds = %bb10, %bb11, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ 0, %bb6 ], [ -1, %bb11 ], [ %60, %bb10 ]
  ret i32 %.0, !dbg !1407
}

define i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !531), !dbg !1441
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !532), !dbg !1441
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1442
  %0 = load i8* %path, align 1, !dbg !1444
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !1444
  %1 = icmp eq i8 %0, 0, !dbg !1445
  br i1 %1, label %bb1, label %bb.i, !dbg !1445

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1445
  %3 = load i8* %2, align 1, !dbg !1445
  %4 = icmp eq i8 %3, 0, !dbg !1445
  br i1 %4, label %bb8.preheader.i, label %bb1, !dbg !1445

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1446
  %6 = sext i8 %0 to i32, !dbg !1447
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %18, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1447
  %8 = add nsw i32 %7, 65, !dbg !1447
  %9 = icmp eq i32 %6, %8, !dbg !1447
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1447

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1448
  %11 = zext i32 %18 to i64, !dbg !1448
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1448
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1449
  %13 = load %struct.stat** %12, align 8, !dbg !1449
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1449
  %15 = load i64* %14, align 8, !dbg !1449
  %16 = icmp eq i64 %15, 0, !dbg !1449
  br i1 %16, label %bb1, label %__get_sym_file.exit, !dbg !1449

bb7.i:                                            ; preds = %bb3.i
  %17 = add i32 %18, 1, !dbg !1446
  br label %bb8.i, !dbg !1446

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %18 = phi i32 [ %17, %bb7.i ], [ 0, %bb8.preheader.i ]
  %19 = icmp ugt i32 %5, %18, !dbg !1446
  br i1 %19, label %bb3.i, label %bb1, !dbg !1446

__get_sym_file.exit:                              ; preds = %bb4.i
  %20 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1448
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %20}, i64 0, metadata !533), !dbg !1443
  %21 = icmp eq %struct.exe_disk_file_t* %20, null, !dbg !1450
  br i1 %21, label %bb1, label %bb, !dbg !1450

bb:                                               ; preds = %__get_sym_file.exit
  %22 = bitcast %struct.stat* %buf to i8*, !dbg !1451
  %23 = bitcast %struct.stat* %13 to i8*, !dbg !1451
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 144, i32 8, i1 false), !dbg !1451
  br label %bb4, !dbg !1452

bb1:                                              ; preds = %bb8.i, %bb4.i, %entry, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1453
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1455
  %24 = ptrtoint i8* %path to i64, !dbg !1457
  %25 = tail call i64 @klee_get_valuel(i64 %24) nounwind, !dbg !1457
  %26 = inttoptr i64 %25 to i8*, !dbg !1457
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !345) nounwind, !dbg !1457
  %27 = icmp eq i8* %26, %path, !dbg !1458
  %28 = zext i1 %27 to i64, !dbg !1458
  tail call void @klee_assume(i64 %28) nounwind, !dbg !1458
  tail call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !355) nounwind, !dbg !1456
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1459
  br label %bb.i6, !dbg !1459

bb.i6:                                            ; preds = %bb6.i8, %bb1
  %sc.0.i = phi i8* [ %26, %bb1 ], [ %sc.1.i, %bb6.i8 ]
  %29 = phi i32 [ 0, %bb1 ], [ %41, %bb6.i8 ]
  %tmp.i = add i32 %29, -1
  %30 = load i8* %sc.0.i, align 1, !dbg !1460
  %31 = and i32 %tmp.i, %29, !dbg !1461
  %32 = icmp eq i32 %31, 0, !dbg !1461
  br i1 %32, label %bb1.i, label %bb5.i, !dbg !1461

bb1.i:                                            ; preds = %bb.i6
  switch i8 %30, label %bb6.i8 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i7
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %30}, i64 0, metadata !358) nounwind, !dbg !1460
  store i8 0, i8* %sc.0.i, align 1, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1462
  br label %__concretize_string.exit, !dbg !1462

bb4.i7:                                           ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1463
  %33 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1463
  br label %bb6.i8, !dbg !1463

bb5.i:                                            ; preds = %bb.i6
  %34 = sext i8 %30 to i64, !dbg !1464
  %35 = tail call i64 @klee_get_valuel(i64 %34) nounwind, !dbg !1464
  %36 = trunc i64 %35 to i8, !dbg !1464
  %37 = icmp eq i8 %36, %30, !dbg !1465
  %38 = zext i1 %37 to i64, !dbg !1465
  tail call void @klee_assume(i64 %38) nounwind, !dbg !1465
  store i8 %36, i8* %sc.0.i, align 1, !dbg !1466
  %39 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1466
  %40 = icmp eq i8 %36, 0, !dbg !1467
  br i1 %40, label %__concretize_string.exit, label %bb6.i8, !dbg !1467

bb6.i8:                                           ; preds = %bb5.i, %bb4.i7, %bb1.i
  %sc.1.i = phi i8* [ %33, %bb4.i7 ], [ %39, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %41 = add i32 %29, 1, !dbg !1459
  br label %bb.i6, !dbg !1459

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %42 = tail call i64 (i64, ...)* @syscall(i64 4, i8* %path, %struct.stat* %buf) nounwind, !dbg !1454
  %43 = trunc i64 %42 to i32, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !535), !dbg !1454
  %44 = icmp eq i32 %43, -1, !dbg !1468
  br i1 %44, label %bb2, label %bb4, !dbg !1468

bb2:                                              ; preds = %__concretize_string.exit
  %45 = tail call i32* @__errno_location() nounwind readnone, !dbg !1469
  %46 = tail call i32 @klee_get_errno() nounwind, !dbg !1469
  store i32 %46, i32* %45, align 4, !dbg !1469
  br label %bb4, !dbg !1469

bb4:                                              ; preds = %__concretize_string.exit, %bb2, %bb
  %.0 = phi i32 [ 0, %bb ], [ -1, %bb2 ], [ %43, %__concretize_string.exit ]
  ret i32 %.0, !dbg !1452
}

define i64 @read(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !537), !dbg !1470
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !538), !dbg !1470
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !539), !dbg !1470
  %0 = load i32* @n_calls.5949, align 4, !dbg !1471
  %1 = add nsw i32 %0, 1, !dbg !1471
  store i32 %1, i32* @n_calls.5949, align 4, !dbg !1471
  %2 = icmp eq i64 %count, 0, !dbg !1472
  br i1 %2, label %bb24, label %bb1, !dbg !1472

bb1:                                              ; preds = %entry
  %3 = icmp eq i8* %buf, null, !dbg !1473
  br i1 %3, label %bb2, label %bb3, !dbg !1473

bb2:                                              ; preds = %bb1
  %4 = tail call i32* @__errno_location() nounwind readnone, !dbg !1474
  store i32 14, i32* %4, align 4, !dbg !1474
  br label %bb24, !dbg !1475

bb3:                                              ; preds = %bb1
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1476
  %5 = icmp ult i32 %fd, 16, !dbg !1478
  br i1 %5, label %bb.i, label %bb4, !dbg !1478

bb.i:                                             ; preds = %bb3
  %6 = sext i32 %fd to i64, !dbg !1479
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1479
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 1, !dbg !1480
  %8 = load i32* %7, align 4, !dbg !1480
  %9 = and i32 %8, 1
  %toBool.i = icmp eq i32 %9, 0, !dbg !1480
  br i1 %toBool.i, label %bb4, label %__get_file.exit, !dbg !1480

__get_file.exit:                                  ; preds = %bb.i
  %10 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, !dbg !1479
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %10}, i64 0, metadata !540), !dbg !1477
  %11 = icmp eq %struct.exe_file_t* %10, null, !dbg !1481
  br i1 %11, label %bb4, label %bb5, !dbg !1481

bb4:                                              ; preds = %bb3, %bb.i, %__get_file.exit
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1482
  store i32 9, i32* %12, align 4, !dbg !1482
  br label %bb24, !dbg !1483

bb5:                                              ; preds = %__get_file.exit
  %13 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1484
  %14 = icmp eq i32 %13, 0, !dbg !1484
  br i1 %14, label %bb8, label %bb6, !dbg !1484

bb6:                                              ; preds = %bb5
  %15 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 6), align 8, !dbg !1484
  %16 = load i32* %15, align 4, !dbg !1484
  %17 = icmp eq i32 %16, %1, !dbg !1484
  br i1 %17, label %bb7, label %bb8, !dbg !1484

bb7:                                              ; preds = %bb6
  %18 = add i32 %13, -1, !dbg !1485
  store i32 %18, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1485
  %19 = tail call i32* @__errno_location() nounwind readnone, !dbg !1486
  store i32 5, i32* %19, align 4, !dbg !1486
  br label %bb24, !dbg !1487

bb8:                                              ; preds = %bb5, %bb6
  %20 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 3, !dbg !1488
  %21 = load %struct.exe_disk_file_t** %20, align 8, !dbg !1488
  %22 = icmp eq %struct.exe_disk_file_t* %21, null, !dbg !1488
  br i1 %22, label %bb9, label %bb17, !dbg !1488

bb9:                                              ; preds = %bb8
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !344) nounwind, !dbg !1489
  %23 = ptrtoint i8* %buf to i64, !dbg !1491
  %24 = tail call i64 @klee_get_valuel(i64 %23) nounwind, !dbg !1491
  %25 = inttoptr i64 %24 to i8*, !dbg !1491
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !345) nounwind, !dbg !1491
  %26 = icmp eq i8* %25, %buf, !dbg !1492
  %27 = zext i1 %26 to i64, !dbg !1492
  tail call void @klee_assume(i64 %27) nounwind, !dbg !1492
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !538), !dbg !1490
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !347) nounwind, !dbg !1493
  %28 = tail call i64 @klee_get_valuel(i64 %count) nounwind, !dbg !1495
  tail call void @llvm.dbg.value(metadata !{i64 %28}, i64 0, metadata !348) nounwind, !dbg !1495
  %29 = icmp eq i64 %28, %count, !dbg !1496
  %30 = zext i1 %29 to i64, !dbg !1496
  tail call void @klee_assume(i64 %30) nounwind, !dbg !1496
  tail call void @llvm.dbg.value(metadata !{i64 %28}, i64 0, metadata !539), !dbg !1494
  tail call void @klee_check_memory_access(i8* %25, i64 %28) nounwind, !dbg !1497
  %31 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 0, !dbg !1498
  %32 = load i32* %31, align 8, !dbg !1498
  %33 = icmp eq i32 %32, 0, !dbg !1498
  br i1 %33, label %bb10, label %bb11, !dbg !1498

bb10:                                             ; preds = %bb9
  %34 = tail call i64 (i64, ...)* @syscall(i64 0, i32 %32, i8* %25, i64 %28) nounwind, !dbg !1499
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !542), !dbg !1499
  br label %bb12, !dbg !1499

bb11:                                             ; preds = %bb9
  %35 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1500
  %36 = load i64* %35, align 8, !dbg !1500
  %37 = tail call i64 (i64, ...)* @syscall(i64 17, i32 %32, i8* %25, i64 %28, i64 %36) nounwind, !dbg !1500
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !542), !dbg !1500
  br label %bb12, !dbg !1500

bb12:                                             ; preds = %bb11, %bb10
  %r.0.in = phi i64 [ %34, %bb10 ], [ %37, %bb11 ]
  %r.0 = trunc i64 %r.0.in to i32
  %38 = icmp eq i32 %r.0, -1, !dbg !1501
  br i1 %38, label %bb13, label %bb14, !dbg !1501

bb13:                                             ; preds = %bb12
  %39 = tail call i32* @__errno_location() nounwind readnone, !dbg !1502
  %40 = tail call i32 @klee_get_errno() nounwind, !dbg !1502
  store i32 %40, i32* %39, align 4, !dbg !1502
  br label %bb24, !dbg !1503

bb14:                                             ; preds = %bb12
  %41 = load i32* %31, align 8, !dbg !1504
  %42 = icmp eq i32 %41, 0, !dbg !1504
  br i1 %42, label %bb14.bb16_crit_edge, label %bb15, !dbg !1504

bb14.bb16_crit_edge:                              ; preds = %bb14
  %.pre = sext i32 %r.0 to i64, !dbg !1505
  br label %bb24

bb15:                                             ; preds = %bb14
  %43 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1506
  %44 = load i64* %43, align 8, !dbg !1506
  %45 = sext i32 %r.0 to i64, !dbg !1506
  %46 = add nsw i64 %44, %45, !dbg !1506
  store i64 %46, i64* %43, align 8, !dbg !1506
  br label %bb24, !dbg !1506

bb17:                                             ; preds = %bb8
  %47 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 2, !dbg !1507
  %48 = load i64* %47, align 8, !dbg !1507
  %49 = icmp slt i64 %48, 0, !dbg !1507
  br i1 %49, label %bb18, label %bb19, !dbg !1507

bb18:                                             ; preds = %bb17
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([5 x i8]* @__PRETTY_FUNCTION__.5952, i64 0, i64 0)) noreturn nounwind, !dbg !1507
  unreachable, !dbg !1507

bb19:                                             ; preds = %bb17
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %21, i64 0, i32 0, !dbg !1508
  %51 = load i32* %50, align 8, !dbg !1508
  %52 = zext i32 %51 to i64, !dbg !1508
  %53 = icmp slt i64 %52, %48, !dbg !1508
  br i1 %53, label %bb24, label %bb21, !dbg !1508

bb21:                                             ; preds = %bb19
  %54 = add i64 %48, %count, !dbg !1509
  %55 = sub nsw i64 %52, %48, !dbg !1510
  %56 = icmp ugt i64 %54, %52, !dbg !1509
  %.count = select i1 %56, i64 %55, i64 %count
  %57 = getelementptr inbounds %struct.exe_disk_file_t* %21, i64 0, i32 1, !dbg !1511
  %58 = load i8** %57, align 8, !dbg !1511
  %59 = getelementptr inbounds i8* %58, i64 %48, !dbg !1511
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %59, i64 %.count, i32 1, i1 false), !dbg !1511
  %60 = load i64* %47, align 8, !dbg !1512
  %61 = add i64 %60, %.count, !dbg !1512
  store i64 %61, i64* %47, align 8, !dbg !1512
  br label %bb24, !dbg !1513

bb24:                                             ; preds = %bb15, %bb14.bb16_crit_edge, %bb19, %entry, %bb21, %bb13, %bb7, %bb4, %bb2
  %.0 = phi i64 [ -1, %bb2 ], [ -1, %bb4 ], [ -1, %bb7 ], [ -1, %bb13 ], [ %.count, %bb21 ], [ 0, %entry ], [ 0, %bb19 ], [ %.pre, %bb14.bb16_crit_edge ], [ %45, %bb15 ]
  ret i64 %.0, !dbg !1514
}

declare i32 @geteuid() nounwind

declare i32 @getgid() nounwind

define i32 @fchmod(i32 %fd, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !546), !dbg !1515
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !547), !dbg !1515
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1516
  %0 = icmp ult i32 %fd, 16, !dbg !1518
  br i1 %0, label %bb.i, label %bb, !dbg !1518

bb.i:                                             ; preds = %entry
  %1 = sext i32 %fd to i64, !dbg !1519
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1519
  %2 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 1, !dbg !1520
  %3 = load i32* %2, align 4, !dbg !1520
  %4 = and i32 %3, 1
  %toBool.i = icmp eq i32 %4, 0, !dbg !1520
  br i1 %toBool.i, label %bb, label %__get_file.exit, !dbg !1520

__get_file.exit:                                  ; preds = %bb.i
  %5 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, !dbg !1519
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %5}, i64 0, metadata !548), !dbg !1517
  %6 = icmp eq %struct.exe_file_t* %5, null, !dbg !1521
  br i1 %6, label %bb, label %bb1, !dbg !1521

bb:                                               ; preds = %entry, %bb.i, %__get_file.exit
  %7 = tail call i32* @__errno_location() nounwind readnone, !dbg !1522
  store i32 9, i32* %7, align 4, !dbg !1522
  br label %bb9, !dbg !1523

bb1:                                              ; preds = %__get_file.exit
  %8 = load i32* @n_calls.6270, align 4, !dbg !1524
  %9 = add nsw i32 %8, 1, !dbg !1524
  store i32 %9, i32* @n_calls.6270, align 4, !dbg !1524
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1525
  %11 = icmp eq i32 %10, 0, !dbg !1525
  br i1 %11, label %bb4, label %bb2, !dbg !1525

bb2:                                              ; preds = %bb1
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 12), align 8, !dbg !1525
  %13 = load i32* %12, align 4, !dbg !1525
  %14 = icmp eq i32 %13, %9, !dbg !1525
  br i1 %14, label %bb3, label %bb4, !dbg !1525

bb3:                                              ; preds = %bb2
  %15 = add i32 %10, -1, !dbg !1526
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1526
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1527
  store i32 5, i32* %16, align 4, !dbg !1527
  br label %bb9, !dbg !1528

bb4:                                              ; preds = %bb1, %bb2
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 3, !dbg !1529
  %18 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1529
  %19 = icmp eq %struct.exe_disk_file_t* %18, null, !dbg !1529
  br i1 %19, label %bb6, label %bb5, !dbg !1529

bb5:                                              ; preds = %bb4
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %18}, i64 0, metadata !544) nounwind, !dbg !1530
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !545) nounwind, !dbg !1530
  %20 = tail call i32 @geteuid() nounwind, !dbg !1532
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 2, !dbg !1532
  %22 = load %struct.stat** %21, align 8, !dbg !1532
  %23 = getelementptr inbounds %struct.stat* %22, i64 0, i32 4, !dbg !1532
  %24 = load i32* %23, align 4, !dbg !1532
  %25 = icmp eq i32 %20, %24, !dbg !1532
  br i1 %25, label %bb.i11, label %bb3.i, !dbg !1532

bb.i11:                                           ; preds = %bb5
  %26 = tail call i32 @getgid() nounwind, !dbg !1534
  %27 = load %struct.stat** %21, align 8, !dbg !1534
  %28 = getelementptr inbounds %struct.stat* %27, i64 0, i32 5, !dbg !1534
  %29 = load i32* %28, align 8, !dbg !1534
  %30 = and i32 %mode, 3071, !dbg !1535
  %31 = icmp eq i32 %26, %29, !dbg !1534
  %mode..i = select i1 %31, i32 %mode, i32 %30
  %32 = getelementptr inbounds %struct.stat* %27, i64 0, i32 3, !dbg !1536
  %33 = load i32* %32, align 8, !dbg !1536
  %34 = and i32 %33, -4096, !dbg !1536
  %35 = and i32 %mode..i, 4095, !dbg !1536
  %36 = or i32 %35, %34, !dbg !1536
  store i32 %36, i32* %32, align 8, !dbg !1536
  br label %bb9, !dbg !1537

bb3.i:                                            ; preds = %bb5
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1538
  store i32 1, i32* %37, align 4, !dbg !1538
  br label %bb9, !dbg !1539

bb6:                                              ; preds = %bb4
  %38 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %1, i32 0, !dbg !1540
  %39 = load i32* %38, align 8, !dbg !1540
  %40 = tail call i64 (i64, ...)* @syscall(i64 91, i32 %39, i32 %mode) nounwind, !dbg !1540
  %41 = trunc i64 %40 to i32, !dbg !1540
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !550), !dbg !1540
  %42 = icmp eq i32 %41, -1, !dbg !1541
  br i1 %42, label %bb7, label %bb9, !dbg !1541

bb7:                                              ; preds = %bb6
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !1542
  %44 = tail call i32 @klee_get_errno() nounwind, !dbg !1542
  store i32 %44, i32* %43, align 4, !dbg !1542
  br label %bb9, !dbg !1542

bb9:                                              ; preds = %bb3.i, %bb.i11, %bb6, %bb7, %bb3, %bb
  %.0 = phi i32 [ -1, %bb ], [ -1, %bb3 ], [ -1, %bb7 ], [ %41, %bb6 ], [ 0, %bb.i11 ], [ -1, %bb3.i ]
  ret i32 %.0, !dbg !1523
}

define i32 @chmod(i8* %path, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !552), !dbg !1543
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !553), !dbg !1543
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !267), !dbg !1544
  %0 = load i8* %path, align 1, !dbg !1546
  tail call void @llvm.dbg.value(metadata !{i8 %0}, i64 0, metadata !268), !dbg !1546
  %1 = icmp eq i8 %0, 0, !dbg !1547
  br i1 %1, label %__get_sym_file.exit, label %bb.i, !dbg !1547

bb.i:                                             ; preds = %entry
  %2 = getelementptr inbounds i8* %path, i64 1, !dbg !1547
  %3 = load i8* %2, align 1, !dbg !1547
  %4 = icmp eq i8 %3, 0, !dbg !1547
  br i1 %4, label %bb8.preheader.i, label %__get_sym_file.exit, !dbg !1547

bb8.preheader.i:                                  ; preds = %bb.i
  %5 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1548
  %6 = sext i8 %0 to i32, !dbg !1549
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %19, 24
  %7 = ashr exact i32 %sext.i, 24, !dbg !1549
  %8 = add nsw i32 %7, 65, !dbg !1549
  %9 = icmp eq i32 %6, %8, !dbg !1549
  br i1 %9, label %bb4.i, label %bb7.i, !dbg !1549

bb4.i:                                            ; preds = %bb3.i
  %10 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1550
  %11 = zext i32 %19 to i64, !dbg !1550
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1550
  %12 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, i32 2, !dbg !1551
  %13 = load %struct.stat** %12, align 8, !dbg !1551
  %14 = getelementptr inbounds %struct.stat* %13, i64 0, i32 1, !dbg !1551
  %15 = load i64* %14, align 8, !dbg !1551
  %16 = icmp eq i64 %15, 0, !dbg !1551
  br i1 %16, label %__get_sym_file.exit, label %bb6.i, !dbg !1551

bb6.i:                                            ; preds = %bb4.i
  %17 = getelementptr inbounds %struct.exe_disk_file_t* %10, i64 %11, !dbg !1550
  br label %__get_sym_file.exit, !dbg !1552

bb7.i:                                            ; preds = %bb3.i
  %18 = add i32 %19, 1, !dbg !1548
  br label %bb8.i, !dbg !1548

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %19 = phi i32 [ %18, %bb7.i ], [ 0, %bb8.preheader.i ]
  %20 = icmp ugt i32 %5, %19, !dbg !1548
  br i1 %20, label %bb3.i, label %__get_sym_file.exit, !dbg !1548

__get_sym_file.exit:                              ; preds = %bb8.i, %entry, %bb.i, %bb4.i, %bb6.i
  %.0.i = phi %struct.exe_disk_file_t* [ %17, %bb6.i ], [ null, %bb.i ], [ null, %entry ], [ null, %bb4.i ], [ null, %bb8.i ]
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %.0.i}, i64 0, metadata !554), !dbg !1545
  %21 = load i32* @n_calls.6247, align 4, !dbg !1553
  %22 = add nsw i32 %21, 1, !dbg !1553
  store i32 %22, i32* @n_calls.6247, align 4, !dbg !1553
  %23 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1554
  %24 = icmp eq i32 %23, 0, !dbg !1554
  br i1 %24, label %bb2, label %bb, !dbg !1554

bb:                                               ; preds = %__get_sym_file.exit
  %25 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 11), align 8, !dbg !1554
  %26 = load i32* %25, align 4, !dbg !1554
  %27 = icmp eq i32 %26, %22, !dbg !1554
  br i1 %27, label %bb1, label %bb2, !dbg !1554

bb1:                                              ; preds = %bb
  %28 = add i32 %23, -1, !dbg !1555
  store i32 %28, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1555
  %29 = tail call i32* @__errno_location() nounwind readnone, !dbg !1556
  store i32 5, i32* %29, align 4, !dbg !1556
  br label %bb7, !dbg !1557

bb2:                                              ; preds = %__get_sym_file.exit, %bb
  %30 = icmp eq %struct.exe_disk_file_t* %.0.i, null, !dbg !1558
  br i1 %30, label %bb4, label %bb3, !dbg !1558

bb3:                                              ; preds = %bb2
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %.0.i}, i64 0, metadata !544) nounwind, !dbg !1559
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !545) nounwind, !dbg !1559
  %31 = tail call i32 @geteuid() nounwind, !dbg !1561
  %32 = getelementptr inbounds %struct.exe_disk_file_t* %.0.i, i64 0, i32 2, !dbg !1561
  %33 = load %struct.stat** %32, align 8, !dbg !1561
  %34 = getelementptr inbounds %struct.stat* %33, i64 0, i32 4, !dbg !1561
  %35 = load i32* %34, align 4, !dbg !1561
  %36 = icmp eq i32 %31, %35, !dbg !1561
  br i1 %36, label %bb.i13, label %bb3.i14, !dbg !1561

bb.i13:                                           ; preds = %bb3
  %37 = tail call i32 @getgid() nounwind, !dbg !1562
  %38 = load %struct.stat** %32, align 8, !dbg !1562
  %39 = getelementptr inbounds %struct.stat* %38, i64 0, i32 5, !dbg !1562
  %40 = load i32* %39, align 8, !dbg !1562
  %41 = and i32 %mode, 3071, !dbg !1563
  %42 = icmp eq i32 %37, %40, !dbg !1562
  %mode..i = select i1 %42, i32 %mode, i32 %41
  %43 = getelementptr inbounds %struct.stat* %38, i64 0, i32 3, !dbg !1564
  %44 = load i32* %43, align 8, !dbg !1564
  %45 = and i32 %44, -4096, !dbg !1564
  %46 = and i32 %mode..i, 4095, !dbg !1564
  %47 = or i32 %46, %45, !dbg !1564
  store i32 %47, i32* %43, align 8, !dbg !1564
  br label %bb7, !dbg !1565

bb3.i14:                                          ; preds = %bb3
  %48 = tail call i32* @__errno_location() nounwind readnone, !dbg !1566
  store i32 1, i32* %48, align 4, !dbg !1566
  br label %bb7, !dbg !1567

bb4:                                              ; preds = %bb2
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !354) nounwind, !dbg !1568
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !344) nounwind, !dbg !1570
  %49 = ptrtoint i8* %path to i64, !dbg !1572
  %50 = tail call i64 @klee_get_valuel(i64 %49) nounwind, !dbg !1572
  %51 = inttoptr i64 %50 to i8*, !dbg !1572
  tail call void @llvm.dbg.value(metadata !{i8* %51}, i64 0, metadata !345) nounwind, !dbg !1572
  %52 = icmp eq i8* %51, %path, !dbg !1573
  %53 = zext i1 %52 to i64, !dbg !1573
  tail call void @klee_assume(i64 %53) nounwind, !dbg !1573
  tail call void @llvm.dbg.value(metadata !{i8* %51}, i64 0, metadata !355) nounwind, !dbg !1571
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1574
  br label %bb.i9, !dbg !1574

bb.i9:                                            ; preds = %bb6.i11, %bb4
  %sc.0.i = phi i8* [ %51, %bb4 ], [ %sc.1.i, %bb6.i11 ]
  %54 = phi i32 [ 0, %bb4 ], [ %66, %bb6.i11 ]
  %tmp.i = add i32 %54, -1
  %55 = load i8* %sc.0.i, align 1, !dbg !1575
  %56 = and i32 %tmp.i, %54, !dbg !1576
  %57 = icmp eq i32 %56, 0, !dbg !1576
  br i1 %57, label %bb1.i, label %bb5.i, !dbg !1576

bb1.i:                                            ; preds = %bb.i9
  switch i8 %55, label %bb6.i11 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i10
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %55}, i64 0, metadata !358) nounwind, !dbg !1575
  store i8 0, i8* %sc.0.i, align 1, !dbg !1577
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1577
  br label %__concretize_string.exit, !dbg !1577

bb4.i10:                                          ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1578
  %58 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1578
  br label %bb6.i11, !dbg !1578

bb5.i:                                            ; preds = %bb.i9
  %59 = sext i8 %55 to i64, !dbg !1579
  %60 = tail call i64 @klee_get_valuel(i64 %59) nounwind, !dbg !1579
  %61 = trunc i64 %60 to i8, !dbg !1579
  %62 = icmp eq i8 %61, %55, !dbg !1580
  %63 = zext i1 %62 to i64, !dbg !1580
  tail call void @klee_assume(i64 %63) nounwind, !dbg !1580
  store i8 %61, i8* %sc.0.i, align 1, !dbg !1581
  %64 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1581
  %65 = icmp eq i8 %61, 0, !dbg !1582
  br i1 %65, label %__concretize_string.exit, label %bb6.i11, !dbg !1582

bb6.i11:                                          ; preds = %bb5.i, %bb4.i10, %bb1.i
  %sc.1.i = phi i8* [ %58, %bb4.i10 ], [ %64, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %66 = add i32 %54, 1, !dbg !1574
  br label %bb.i9, !dbg !1574

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %67 = tail call i64 (i64, ...)* @syscall(i64 90, i8* %path, i32 %mode) nounwind, !dbg !1569
  %68 = trunc i64 %67 to i32, !dbg !1569
  tail call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !556), !dbg !1569
  %69 = icmp eq i32 %68, -1, !dbg !1583
  br i1 %69, label %bb5, label %bb7, !dbg !1583

bb5:                                              ; preds = %__concretize_string.exit
  %70 = tail call i32* @__errno_location() nounwind readnone, !dbg !1584
  %71 = tail call i32 @klee_get_errno() nounwind, !dbg !1584
  store i32 %71, i32* %70, align 4, !dbg !1584
  br label %bb7, !dbg !1584

bb7:                                              ; preds = %bb3.i14, %bb.i13, %__concretize_string.exit, %bb5, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb5 ], [ %68, %__concretize_string.exit ], [ 0, %bb.i13 ], [ -1, %bb3.i14 ]
  ret i32 %.0, !dbg !1557
}

define i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !558), !dbg !1585
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !559), !dbg !1585
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !560), !dbg !1585
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !564), !dbg !1586
  br label %bb2, !dbg !1586

bb:                                               ; preds = %bb2
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %0 = load i32* %scevgep, align 4, !dbg !1587
  %1 = and i32 %0, 1, !dbg !1587
  %2 = icmp eq i32 %1, 0, !dbg !1587
  br i1 %2, label %bb5, label %bb1, !dbg !1587

bb1:                                              ; preds = %bb
  %indvar.next = add i64 %indvar, 1
  br label %bb2, !dbg !1586

bb2:                                              ; preds = %bb1, %entry
  %indvar = phi i64 [ %indvar.next, %bb1 ], [ 0, %entry ]
  %fd.0 = trunc i64 %indvar to i32
  %3 = icmp slt i32 %fd.0, 16, !dbg !1586
  br i1 %3, label %bb, label %bb3, !dbg !1586

bb3:                                              ; preds = %bb2
  %4 = icmp eq i32 %fd.0, 16, !dbg !1588
  br i1 %4, label %bb4, label %bb5, !dbg !1588

bb4:                                              ; preds = %bb3
  %5 = tail call i32* @__errno_location() nounwind readnone, !dbg !1589
  store i32 24, i32* %5, align 4, !dbg !1589
  br label %bb25, !dbg !1590

bb5:                                              ; preds = %bb, %bb3
  %6 = sext i32 %fd.0 to i64, !dbg !1591
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, !dbg !1591
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !563), !dbg !1591
  %8 = bitcast %struct.exe_file_t* %7 to i8*, !dbg !1592
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 24, i32 8, i1 false), !dbg !1592
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !1593
  %9 = load i8* %pathname, align 1, !dbg !1595
  tail call void @llvm.dbg.value(metadata !{i8 %9}, i64 0, metadata !268), !dbg !1595
  %10 = icmp eq i8 %9, 0, !dbg !1596
  br i1 %10, label %bb16, label %bb.i, !dbg !1596

bb.i:                                             ; preds = %bb5
  %11 = getelementptr inbounds i8* %pathname, i64 1, !dbg !1596
  %12 = load i8* %11, align 1, !dbg !1596
  %13 = icmp eq i8 %12, 0, !dbg !1596
  br i1 %13, label %bb8.preheader.i, label %bb16, !dbg !1596

bb8.preheader.i:                                  ; preds = %bb.i
  %14 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1597
  %15 = sext i8 %9 to i32, !dbg !1598
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %27, 24
  %16 = ashr exact i32 %sext.i, 24, !dbg !1598
  %17 = add nsw i32 %16, 65, !dbg !1598
  %18 = icmp eq i32 %15, %17, !dbg !1598
  br i1 %18, label %bb4.i, label %bb7.i, !dbg !1598

bb4.i:                                            ; preds = %bb3.i
  %19 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1599
  %20 = zext i32 %27 to i64, !dbg !1599
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1599
  %21 = getelementptr inbounds %struct.exe_disk_file_t* %19, i64 %20, i32 2, !dbg !1600
  %22 = load %struct.stat** %21, align 8, !dbg !1600
  %23 = getelementptr inbounds %struct.stat* %22, i64 0, i32 1, !dbg !1600
  %24 = load i64* %23, align 8, !dbg !1600
  %25 = icmp eq i64 %24, 0, !dbg !1600
  br i1 %25, label %bb16, label %__get_sym_file.exit, !dbg !1600

bb7.i:                                            ; preds = %bb3.i
  %26 = add i32 %27, 1, !dbg !1597
  br label %bb8.i, !dbg !1597

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %27 = phi i32 [ %26, %bb7.i ], [ 0, %bb8.preheader.i ]
  %28 = icmp ugt i32 %14, %27, !dbg !1597
  br i1 %28, label %bb3.i, label %bb16, !dbg !1597

__get_sym_file.exit:                              ; preds = %bb4.i
  %29 = getelementptr inbounds %struct.exe_disk_file_t* %19, i64 %20, !dbg !1599
  tail call void @llvm.dbg.value(metadata !{%struct.exe_disk_file_t* %29}, i64 0, metadata !561), !dbg !1594
  %30 = icmp eq %struct.exe_disk_file_t* %29, null, !dbg !1601
  br i1 %30, label %bb16, label %bb6, !dbg !1601

bb6:                                              ; preds = %__get_sym_file.exit
  %31 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 3, !dbg !1602
  store %struct.exe_disk_file_t* %29, %struct.exe_disk_file_t** %31, align 8, !dbg !1602
  %32 = and i32 %flags, 192
  switch i32 %32, label %bb12 [
    i32 192, label %bb8
    i32 128, label %bb11
  ]

bb8:                                              ; preds = %bb6
  %33 = tail call i32* @__errno_location() nounwind readnone, !dbg !1603
  store i32 17, i32* %33, align 4, !dbg !1603
  br label %bb25, !dbg !1604

bb11:                                             ; preds = %bb6
  %34 = load %struct._IO_FILE** @stderr, align 8, !dbg !1605
  %35 = bitcast %struct._IO_FILE* %34 to i8*, !dbg !1605
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str20, i64 0, i64 0), i64 1, i64 46, i8* %35) nounwind, !dbg !1605
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1606
  store i32 13, i32* %37, align 4, !dbg !1606
  br label %bb25, !dbg !1607

bb12:                                             ; preds = %bb6
  %38 = load %struct.stat** %21, align 8, !dbg !1608
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !280), !dbg !1609
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %38}, i64 0, metadata !281), !dbg !1609
  %39 = getelementptr inbounds %struct.stat* %38, i64 0, i32 3, !dbg !1610
  %40 = load i32* %39, align 8, !dbg !1610
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !285), !dbg !1610
  %41 = and i32 %flags, 2, !dbg !1611
  %42 = icmp eq i32 %41, 0, !dbg !1611
  %43 = and i32 %flags, 3
  %44 = icmp eq i32 %43, 0
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !282), !dbg !1612
  br i1 %42, label %bb9.i, label %bb7.i34, !dbg !1613

bb7.i34:                                          ; preds = %bb12
  %45 = and i32 %40, 292, !dbg !1613
  %46 = icmp eq i32 %45, 0, !dbg !1613
  br i1 %46, label %bb9.i, label %bb13, !dbg !1613

bb9.i:                                            ; preds = %bb7.i34, %bb12
  br i1 %44, label %bb14, label %bb10.i, !dbg !1614

bb10.i:                                           ; preds = %bb9.i
  %47 = and i32 %40, 146, !dbg !1614
  %48 = icmp eq i32 %47, 0, !dbg !1614
  br i1 %48, label %bb13, label %bb14, !dbg !1614

bb13:                                             ; preds = %bb7.i34, %bb10.i
  %49 = tail call i32* @__errno_location() nounwind readnone, !dbg !1615
  store i32 13, i32* %49, align 4, !dbg !1615
  br label %bb25, !dbg !1616

bb14:                                             ; preds = %bb10.i, %bb9.i
  %50 = and i32 %40, -512, !dbg !1617
  %51 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 2), align 8, !dbg !1617
  %not = xor i32 %51, -1, !dbg !1617
  %52 = and i32 %not, %mode, !dbg !1617
  %53 = or i32 %52, %50, !dbg !1617
  store i32 %53, i32* %39, align 8, !dbg !1617
  br label %bb19, !dbg !1617

bb16:                                             ; preds = %bb8.i, %bb4.i, %bb5, %bb.i, %__get_sym_file.exit
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !354) nounwind, !dbg !1618
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !344) nounwind, !dbg !1620
  %54 = ptrtoint i8* %pathname to i64, !dbg !1622
  %55 = tail call i64 @klee_get_valuel(i64 %54) nounwind, !dbg !1622
  %56 = inttoptr i64 %55 to i8*, !dbg !1622
  tail call void @llvm.dbg.value(metadata !{i8* %56}, i64 0, metadata !345) nounwind, !dbg !1622
  %57 = icmp eq i8* %56, %pathname, !dbg !1623
  %58 = zext i1 %57 to i64, !dbg !1623
  tail call void @klee_assume(i64 %58) nounwind, !dbg !1623
  tail call void @llvm.dbg.value(metadata !{i8* %56}, i64 0, metadata !355) nounwind, !dbg !1621
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1624
  br label %bb.i30, !dbg !1624

bb.i30:                                           ; preds = %bb6.i32, %bb16
  %sc.0.i = phi i8* [ %56, %bb16 ], [ %sc.1.i, %bb6.i32 ]
  %59 = phi i32 [ 0, %bb16 ], [ %71, %bb6.i32 ]
  %tmp.i = add i32 %59, -1
  %60 = load i8* %sc.0.i, align 1, !dbg !1625
  %61 = and i32 %tmp.i, %59, !dbg !1626
  %62 = icmp eq i32 %61, 0, !dbg !1626
  br i1 %62, label %bb1.i, label %bb5.i, !dbg !1626

bb1.i:                                            ; preds = %bb.i30
  switch i8 %60, label %bb6.i32 [
    i8 0, label %bb2.i
    i8 47, label %bb4.i31
  ]

bb2.i:                                            ; preds = %bb1.i
  tail call void @llvm.dbg.value(metadata !{i8 %60}, i64 0, metadata !358) nounwind, !dbg !1625
  store i8 0, i8* %sc.0.i, align 1, !dbg !1627
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1627
  br label %__concretize_string.exit, !dbg !1627

bb4.i31:                                          ; preds = %bb1.i
  store i8 47, i8* %sc.0.i, align 1, !dbg !1628
  %63 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1628
  br label %bb6.i32, !dbg !1628

bb5.i:                                            ; preds = %bb.i30
  %64 = sext i8 %60 to i64, !dbg !1629
  %65 = tail call i64 @klee_get_valuel(i64 %64) nounwind, !dbg !1629
  %66 = trunc i64 %65 to i8, !dbg !1629
  %67 = icmp eq i8 %66, %60, !dbg !1630
  %68 = zext i1 %67 to i64, !dbg !1630
  tail call void @klee_assume(i64 %68) nounwind, !dbg !1630
  store i8 %66, i8* %sc.0.i, align 1, !dbg !1631
  %69 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1631
  %70 = icmp eq i8 %66, 0, !dbg !1632
  br i1 %70, label %__concretize_string.exit, label %bb6.i32, !dbg !1632

bb6.i32:                                          ; preds = %bb5.i, %bb4.i31, %bb1.i
  %sc.1.i = phi i8* [ %63, %bb4.i31 ], [ %69, %bb5.i ], [ %sc.0.i, %bb1.i ]
  %71 = add i32 %59, 1, !dbg !1624
  br label %bb.i30, !dbg !1624

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %72 = tail call i64 (i64, ...)* @syscall(i64 2, i8* %pathname, i32 %flags, i32 %mode) nounwind, !dbg !1619
  %73 = trunc i64 %72 to i32, !dbg !1619
  tail call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !565), !dbg !1619
  %74 = icmp eq i32 %73, -1, !dbg !1633
  br i1 %74, label %bb17, label %bb18, !dbg !1633

bb17:                                             ; preds = %__concretize_string.exit
  %75 = tail call i32* @__errno_location() nounwind readnone, !dbg !1634
  %76 = tail call i32 @klee_get_errno() nounwind, !dbg !1634
  store i32 %76, i32* %75, align 4, !dbg !1634
  br label %bb25, !dbg !1635

bb18:                                             ; preds = %__concretize_string.exit
  %77 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 0, !dbg !1636
  store i32 %73, i32* %77, align 8, !dbg !1636
  %.pre = and i32 %flags, 3, !dbg !1637
  br label %bb19, !dbg !1636

bb19:                                             ; preds = %bb18, %bb14
  %.pre-phi = phi i32 [ %.pre, %bb18 ], [ %43, %bb14 ]
  %78 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %6, i32 1, !dbg !1638
  store i32 1, i32* %78, align 4, !dbg !1638
  switch i32 %.pre-phi, label %bb23 [
    i32 0, label %bb20
    i32 1, label %bb22
  ]

bb20:                                             ; preds = %bb19
  store i32 5, i32* %78, align 4, !dbg !1639
  br label %bb25, !dbg !1639

bb22:                                             ; preds = %bb19
  store i32 9, i32* %78, align 4, !dbg !1640
  br label %bb25, !dbg !1640

bb23:                                             ; preds = %bb19
  store i32 13, i32* %78, align 4, !dbg !1641
  br label %bb25, !dbg !1641

bb25:                                             ; preds = %bb20, %bb22, %bb23, %bb17, %bb13, %bb11, %bb8, %bb4
  %.0 = phi i32 [ -1, %bb4 ], [ -1, %bb8 ], [ -1, %bb11 ], [ -1, %bb13 ], [ -1, %bb17 ], [ %fd.0, %bb23 ], [ %fd.0, %bb22 ], [ %fd.0, %bb20 ]
  ret i32 %.0, !dbg !1590
}

declare i64 @fwrite(i8* nocapture, i64, i64, i8* nocapture) nounwind

define i32 @__fd_openat(i32 %basefd, i8* %pathname, i32 %flags, i32 %mode) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %basefd}, i64 0, metadata !567), !dbg !1642
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !568), !dbg !1642
  tail call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !569), !dbg !1642
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !570), !dbg !1642
  %0 = icmp eq i32 %basefd, -100, !dbg !1643
  br i1 %0, label %bb5, label %bb, !dbg !1643

bb:                                               ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %basefd}, i64 0, metadata !273), !dbg !1644
  %1 = icmp ult i32 %basefd, 16, !dbg !1646
  br i1 %1, label %bb.i, label %bb1, !dbg !1646

bb.i:                                             ; preds = %bb
  %2 = sext i32 %basefd to i64, !dbg !1647
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1647
  %3 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 1, !dbg !1648
  %4 = load i32* %3, align 4, !dbg !1648
  %5 = and i32 %4, 1
  %toBool.i = icmp eq i32 %5, 0, !dbg !1648
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1648

__get_file.exit:                                  ; preds = %bb.i
  %6 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, !dbg !1647
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %6}, i64 0, metadata !575), !dbg !1645
  %7 = icmp eq %struct.exe_file_t* %6, null, !dbg !1649
  br i1 %7, label %bb1, label %bb2, !dbg !1649

bb1:                                              ; preds = %bb, %bb.i, %__get_file.exit
  %8 = tail call i32* @__errno_location() nounwind readnone, !dbg !1650
  store i32 9, i32* %8, align 4, !dbg !1650
  br label %bb21, !dbg !1651

bb2:                                              ; preds = %__get_file.exit
  %9 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 3, !dbg !1652
  %10 = load %struct.exe_disk_file_t** %9, align 8, !dbg !1652
  %11 = icmp eq %struct.exe_disk_file_t* %10, null, !dbg !1652
  br i1 %11, label %bb4, label %bb3, !dbg !1652

bb3:                                              ; preds = %bb2
  tail call void @klee_warning(i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !1653
  %12 = tail call i32* @__errno_location() nounwind readnone, !dbg !1654
  store i32 2, i32* %12, align 4, !dbg !1654
  br label %bb21, !dbg !1655

bb4:                                              ; preds = %bb2
  %13 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %2, i32 0, !dbg !1656
  %14 = load i32* %13, align 8, !dbg !1656
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !567), !dbg !1656
  %phitmp = sext i32 %14 to i64
  br label %bb5, !dbg !1656

bb5:                                              ; preds = %entry, %bb4
  %basefd_addr.0 = phi i64 [ %phitmp, %bb4 ], [ -100, %entry ]
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !1657
  %15 = load i8* %pathname, align 1, !dbg !1659
  tail call void @llvm.dbg.value(metadata !{i8 %15}, i64 0, metadata !268), !dbg !1659
  %16 = icmp eq i8 %15, 0, !dbg !1660
  br i1 %16, label %bb10, label %bb.i25, !dbg !1660

bb.i25:                                           ; preds = %bb5
  %17 = getelementptr inbounds i8* %pathname, i64 1, !dbg !1660
  %18 = load i8* %17, align 1, !dbg !1660
  %19 = icmp eq i8 %18, 0, !dbg !1660
  br i1 %19, label %bb8.preheader.i, label %bb10, !dbg !1660

bb8.preheader.i:                                  ; preds = %bb.i25
  %20 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 0), align 8, !dbg !1661
  %21 = sext i8 %15 to i32, !dbg !1662
  br label %bb8.i

bb3.i:                                            ; preds = %bb8.i
  %sext.i = shl i32 %33, 24
  %22 = ashr exact i32 %sext.i, 24, !dbg !1662
  %23 = add nsw i32 %22, 65, !dbg !1662
  %24 = icmp eq i32 %21, %23, !dbg !1662
  br i1 %24, label %bb4.i26, label %bb7.i, !dbg !1662

bb4.i26:                                          ; preds = %bb3.i
  %25 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 4), align 8, !dbg !1663
  %26 = zext i32 %33 to i64, !dbg !1663
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !271), !dbg !1663
  %27 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, i32 2, !dbg !1664
  %28 = load %struct.stat** %27, align 8, !dbg !1664
  %29 = getelementptr inbounds %struct.stat* %28, i64 0, i32 1, !dbg !1664
  %30 = load i64* %29, align 8, !dbg !1664
  %31 = icmp eq i64 %30, 0, !dbg !1664
  br i1 %31, label %bb10, label %__get_sym_file.exit, !dbg !1664

bb7.i:                                            ; preds = %bb3.i
  %32 = add i32 %33, 1, !dbg !1661
  br label %bb8.i, !dbg !1661

bb8.i:                                            ; preds = %bb7.i, %bb8.preheader.i
  %33 = phi i32 [ %32, %bb7.i ], [ 0, %bb8.preheader.i ]
  %34 = icmp ugt i32 %20, %33, !dbg !1661
  br i1 %34, label %bb3.i, label %bb10, !dbg !1661

__get_sym_file.exit:                              ; preds = %bb4.i26
  %35 = getelementptr inbounds %struct.exe_disk_file_t* %25, i64 %26, !dbg !1663
  %36 = icmp eq %struct.exe_disk_file_t* %35, null, !dbg !1658
  br i1 %36, label %bb10, label %bb6, !dbg !1658

bb6:                                              ; preds = %__get_sym_file.exit
  %37 = tail call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode) nounwind, !dbg !1665
  br label %bb21, !dbg !1665

bb8:                                              ; preds = %bb10
  %scevgep = getelementptr %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %indvar, i32 1
  %38 = load i32* %scevgep, align 4, !dbg !1666
  %39 = and i32 %38, 1, !dbg !1666
  %40 = icmp eq i32 %39, 0, !dbg !1666
  br i1 %40, label %bb13, label %bb9, !dbg !1666

bb9:                                              ; preds = %bb8
  %indvar.next = add i64 %indvar, 1
  br label %bb10, !dbg !1667

bb10:                                             ; preds = %bb4.i26, %bb5, %bb.i25, %__get_sym_file.exit, %bb8.i, %bb9
  %indvar = phi i64 [ %indvar.next, %bb9 ], [ 0, %bb8.i ], [ 0, %__get_sym_file.exit ], [ 0, %bb.i25 ], [ 0, %bb5 ], [ 0, %bb4.i26 ]
  %fd.0 = trunc i64 %indvar to i32
  %41 = icmp slt i32 %fd.0, 16, !dbg !1667
  br i1 %41, label %bb8, label %bb11, !dbg !1667

bb11:                                             ; preds = %bb10
  %42 = icmp eq i32 %fd.0, 16, !dbg !1668
  br i1 %42, label %bb12, label %bb13, !dbg !1668

bb12:                                             ; preds = %bb11
  %43 = tail call i32* @__errno_location() nounwind readnone, !dbg !1669
  store i32 24, i32* %43, align 4, !dbg !1669
  br label %bb21, !dbg !1670

bb13:                                             ; preds = %bb8, %bb11
  %44 = sext i32 %fd.0 to i64, !dbg !1671
  %45 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, !dbg !1671
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %45}, i64 0, metadata !571), !dbg !1671
  %46 = bitcast %struct.exe_file_t* %45 to i8*, !dbg !1672
  tail call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 24, i32 8, i1 false), !dbg !1672
  %47 = sext i32 %flags to i64, !dbg !1673
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !354) nounwind, !dbg !1674
  tail call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !344) nounwind, !dbg !1675
  %48 = ptrtoint i8* %pathname to i64, !dbg !1677
  %49 = tail call i64 @klee_get_valuel(i64 %48) nounwind, !dbg !1677
  %50 = inttoptr i64 %49 to i8*, !dbg !1677
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !345) nounwind, !dbg !1677
  %51 = icmp eq i8* %50, %pathname, !dbg !1678
  %52 = zext i1 %51 to i64, !dbg !1678
  tail call void @klee_assume(i64 %52) nounwind, !dbg !1678
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !355) nounwind, !dbg !1676
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !357) nounwind, !dbg !1679
  br label %bb.i23, !dbg !1679

bb.i23:                                           ; preds = %bb6.i, %bb13
  %sc.0.i = phi i8* [ %50, %bb13 ], [ %sc.1.i, %bb6.i ]
  %53 = phi i32 [ 0, %bb13 ], [ %65, %bb6.i ]
  %tmp.i = add i32 %53, -1
  %54 = load i8* %sc.0.i, align 1, !dbg !1680
  %55 = and i32 %tmp.i, %53, !dbg !1681
  %56 = icmp eq i32 %55, 0, !dbg !1681
  br i1 %56, label %bb1.i24, label %bb5.i, !dbg !1681

bb1.i24:                                          ; preds = %bb.i23
  switch i8 %54, label %bb6.i [
    i8 0, label %bb2.i
    i8 47, label %bb4.i
  ]

bb2.i:                                            ; preds = %bb1.i24
  tail call void @llvm.dbg.value(metadata !{i8 %54}, i64 0, metadata !358) nounwind, !dbg !1680
  store i8 0, i8* %sc.0.i, align 1, !dbg !1682
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !355) nounwind, !dbg !1682
  br label %__concretize_string.exit, !dbg !1682

bb4.i:                                            ; preds = %bb1.i24
  store i8 47, i8* %sc.0.i, align 1, !dbg !1683
  %57 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1683
  br label %bb6.i, !dbg !1683

bb5.i:                                            ; preds = %bb.i23
  %58 = sext i8 %54 to i64, !dbg !1684
  %59 = tail call i64 @klee_get_valuel(i64 %58) nounwind, !dbg !1684
  %60 = trunc i64 %59 to i8, !dbg !1684
  %61 = icmp eq i8 %60, %54, !dbg !1685
  %62 = zext i1 %61 to i64, !dbg !1685
  tail call void @klee_assume(i64 %62) nounwind, !dbg !1685
  store i8 %60, i8* %sc.0.i, align 1, !dbg !1686
  %63 = getelementptr inbounds i8* %sc.0.i, i64 1, !dbg !1686
  %64 = icmp eq i8 %60, 0, !dbg !1687
  br i1 %64, label %__concretize_string.exit, label %bb6.i, !dbg !1687

bb6.i:                                            ; preds = %bb5.i, %bb4.i, %bb1.i24
  %sc.1.i = phi i8* [ %57, %bb4.i ], [ %63, %bb5.i ], [ %sc.0.i, %bb1.i24 ]
  %65 = add i32 %53, 1, !dbg !1679
  br label %bb.i23, !dbg !1679

__concretize_string.exit:                         ; preds = %bb5.i, %bb2.i
  %66 = tail call i64 (i64, ...)* @syscall(i64 257, i64 %basefd_addr.0, i8* %pathname, i64 %47, i32 %mode) nounwind, !dbg !1673
  %67 = trunc i64 %66 to i32, !dbg !1673
  tail call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !574), !dbg !1673
  %68 = icmp eq i32 %67, -1, !dbg !1688
  br i1 %68, label %bb14, label %bb15, !dbg !1688

bb14:                                             ; preds = %__concretize_string.exit
  %69 = tail call i32* @__errno_location() nounwind readnone, !dbg !1689
  %70 = tail call i32 @klee_get_errno() nounwind, !dbg !1689
  store i32 %70, i32* %69, align 4, !dbg !1689
  br label %bb21, !dbg !1690

bb15:                                             ; preds = %__concretize_string.exit
  %71 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, i32 0, !dbg !1691
  store i32 %67, i32* %71, align 8, !dbg !1691
  %72 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %44, i32 1, !dbg !1692
  store i32 1, i32* %72, align 4, !dbg !1692
  %73 = and i32 %flags, 3, !dbg !1693
  switch i32 %73, label %bb19 [
    i32 0, label %bb16
    i32 1, label %bb18
  ]

bb16:                                             ; preds = %bb15
  store i32 5, i32* %72, align 4, !dbg !1694
  br label %bb21, !dbg !1694

bb18:                                             ; preds = %bb15
  store i32 9, i32* %72, align 4, !dbg !1695
  br label %bb21, !dbg !1695

bb19:                                             ; preds = %bb15
  store i32 13, i32* %72, align 4, !dbg !1696
  br label %bb21, !dbg !1696

bb21:                                             ; preds = %bb16, %bb18, %bb19, %bb14, %bb12, %bb6, %bb3, %bb1
  %.0 = phi i32 [ -1, %bb1 ], [ -1, %bb3 ], [ %37, %bb6 ], [ -1, %bb12 ], [ -1, %bb14 ], [ %fd.0, %bb19 ], [ %fd.0, %bb18 ], [ %fd.0, %bb16 ]
  ret i32 %.0, !dbg !1651
}

define i64 @_clean_write(i32 %fd, i8* %buf, i64 %count, i64 %offset) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !577), !dbg !1697
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !578), !dbg !1697
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !579), !dbg !1697
  tail call void @llvm.dbg.value(metadata !{i64 %offset}, i64 0, metadata !580), !dbg !1697
  %0 = tail call %struct.sym_socket* @get_sym_socket(i32 %fd) nounwind, !dbg !1698
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %0}, i64 0, metadata !581), !dbg !1698
  %1 = tail call i64 @_write_socket(%struct.sym_socket* %0, i8* %buf, i64 %count) nounwind, !dbg !1699
  ret i64 %1, !dbg !1699
}

declare %struct.sym_socket* @get_sym_socket(i32)

declare i64 @_write_socket(%struct.sym_socket*, i8*, i64)

define i64 @write(i32 %fd, i8* %buf, i64 %count) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !641), !dbg !1700
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !642), !dbg !1700
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !643), !dbg !1700
  %0 = icmp ult i32 %fd, 16, !dbg !1701
  br i1 %0, label %bb.i, label %bb29, !dbg !1701

bb.i:                                             ; preds = %entry
  %1 = load i32* @n_calls.6046, align 4, !dbg !1702
  %2 = add nsw i32 %1, 1, !dbg !1702
  store i32 %2, i32* @n_calls.6046, align 4, !dbg !1702
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !273), !dbg !1703
  %3 = sext i32 %fd to i64, !dbg !1705
  tail call void @llvm.dbg.value(metadata !669, i64 0, metadata !274), !dbg !1705
  %4 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 1, !dbg !1706
  %5 = load i32* %4, align 4, !dbg !1706
  %6 = and i32 %5, 1
  %toBool.i = icmp eq i32 %6, 0, !dbg !1706
  br i1 %toBool.i, label %bb1, label %__get_file.exit, !dbg !1706

__get_file.exit:                                  ; preds = %bb.i
  %7 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, !dbg !1705
  tail call void @llvm.dbg.value(metadata !{%struct.exe_file_t* %7}, i64 0, metadata !644), !dbg !1704
  %8 = icmp eq %struct.exe_file_t* %7, null, !dbg !1707
  br i1 %8, label %bb1, label %bb2, !dbg !1707

bb1:                                              ; preds = %bb.i, %__get_file.exit
  %9 = tail call i32* @__errno_location() nounwind readnone, !dbg !1708
  store i32 9, i32* %9, align 4, !dbg !1708
  br label %bb32, !dbg !1709

bb2:                                              ; preds = %__get_file.exit
  %10 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1710
  %11 = icmp eq i32 %10, 0, !dbg !1710
  br i1 %11, label %bb5, label %bb3, !dbg !1710

bb3:                                              ; preds = %bb2
  %12 = load i32** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 7), align 8, !dbg !1710
  %13 = load i32* %12, align 4, !dbg !1710
  %14 = icmp eq i32 %13, %2, !dbg !1710
  br i1 %14, label %bb4, label %bb5, !dbg !1710

bb4:                                              ; preds = %bb3
  %15 = add i32 %10, -1, !dbg !1711
  store i32 %15, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 5), align 8, !dbg !1711
  %16 = tail call i32* @__errno_location() nounwind readnone, !dbg !1712
  store i32 5, i32* %16, align 4, !dbg !1712
  br label %bb32, !dbg !1713

bb5:                                              ; preds = %bb2, %bb3
  %17 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 3, !dbg !1714
  %18 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1714
  %19 = icmp eq %struct.exe_disk_file_t* %18, null, !dbg !1714
  br i1 %19, label %bb6, label %bb16, !dbg !1714

bb6:                                              ; preds = %bb5
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !344) nounwind, !dbg !1715
  %20 = ptrtoint i8* %buf to i64, !dbg !1717
  %21 = tail call i64 @klee_get_valuel(i64 %20) nounwind, !dbg !1717
  %22 = inttoptr i64 %21 to i8*, !dbg !1717
  tail call void @llvm.dbg.value(metadata !{i8* %22}, i64 0, metadata !345) nounwind, !dbg !1717
  %23 = icmp eq i8* %22, %buf, !dbg !1718
  %24 = zext i1 %23 to i64, !dbg !1718
  tail call void @klee_assume(i64 %24) nounwind, !dbg !1718
  tail call void @llvm.dbg.value(metadata !{i8* %22}, i64 0, metadata !642), !dbg !1716
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !347) nounwind, !dbg !1719
  %25 = tail call i64 @klee_get_valuel(i64 %count) nounwind, !dbg !1721
  tail call void @llvm.dbg.value(metadata !{i64 %25}, i64 0, metadata !348) nounwind, !dbg !1721
  %26 = icmp eq i64 %25, %count, !dbg !1722
  %27 = zext i1 %26 to i64, !dbg !1722
  tail call void @klee_assume(i64 %27) nounwind, !dbg !1722
  tail call void @llvm.dbg.value(metadata !{i64 %25}, i64 0, metadata !643), !dbg !1720
  tail call void @klee_check_memory_access(i8* %22, i64 %25) nounwind, !dbg !1723
  %28 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 0, !dbg !1724
  %29 = load i32* %28, align 8, !dbg !1724
  %30 = add i32 %29, -1, !dbg !1724
  %31 = icmp ult i32 %30, 2, !dbg !1724
  br i1 %31, label %bb7, label %bb8, !dbg !1724

bb7:                                              ; preds = %bb6
  %32 = tail call i64 (i64, ...)* @syscall(i64 1, i32 %29, i8* %22, i64 %25) nounwind, !dbg !1725
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !647), !dbg !1725
  br label %bb9, !dbg !1725

bb8:                                              ; preds = %bb6
  %33 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1726
  %34 = load i64* %33, align 8, !dbg !1726
  %35 = tail call i64 (i64, ...)* @syscall(i64 18, i32 %29, i8* %22, i64 %25, i64 %34) nounwind, !dbg !1726
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !647), !dbg !1726
  br label %bb9, !dbg !1726

bb9:                                              ; preds = %bb8, %bb7
  %r.0.in = phi i64 [ %32, %bb7 ], [ %35, %bb8 ]
  %r.0 = trunc i64 %r.0.in to i32
  %36 = icmp eq i32 %r.0, -1, !dbg !1727
  br i1 %36, label %bb10, label %bb11, !dbg !1727

bb10:                                             ; preds = %bb9
  %37 = tail call i32* @__errno_location() nounwind readnone, !dbg !1728
  %38 = tail call i32 @klee_get_errno() nounwind, !dbg !1728
  store i32 %38, i32* %37, align 4, !dbg !1728
  br label %bb32, !dbg !1729

bb11:                                             ; preds = %bb9
  %39 = icmp slt i32 %r.0, 0, !dbg !1730
  br i1 %39, label %bb12, label %bb13, !dbg !1730

bb12:                                             ; preds = %bb11
  tail call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 480, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.6049, i64 0, i64 0)) noreturn nounwind, !dbg !1730
  unreachable, !dbg !1730

bb13:                                             ; preds = %bb11
  %40 = load i32* %28, align 8, !dbg !1731
  %41 = add i32 %40, -1, !dbg !1731
  %42 = icmp ugt i32 %41, 1, !dbg !1731
  br i1 %42, label %bb14, label %bb13.bb15_crit_edge, !dbg !1731

bb13.bb15_crit_edge:                              ; preds = %bb13
  %.pre = sext i32 %r.0 to i64, !dbg !1732
  br label %bb32

bb14:                                             ; preds = %bb13
  %43 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1733
  %44 = load i64* %43, align 8, !dbg !1733
  %45 = sext i32 %r.0 to i64, !dbg !1733
  %46 = add nsw i64 %44, %45, !dbg !1733
  store i64 %46, i64* %43, align 8, !dbg !1733
  br label %bb32, !dbg !1733

bb16:                                             ; preds = %bb5
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !649), !dbg !1734
  %47 = getelementptr inbounds %struct.exe_sym_env_t* @__exe_env, i64 0, i32 0, i64 %3, i32 2, !dbg !1735
  %48 = load i64* %47, align 8, !dbg !1735
  %49 = add i64 %48, %count, !dbg !1735
  %50 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 0, !dbg !1735
  %51 = load i32* %50, align 8, !dbg !1735
  %52 = zext i32 %51 to i64, !dbg !1735
  %53 = icmp ugt i64 %49, %52, !dbg !1735
  br i1 %53, label %bb18, label %bb22, !dbg !1735

bb18:                                             ; preds = %bb16
  %54 = load i32* getelementptr inbounds (%struct.exe_sym_env_t* @__exe_env, i64 0, i32 4), align 8, !dbg !1736
  %55 = icmp eq i32 %54, 0, !dbg !1736
  br i1 %55, label %bb20, label %bb19, !dbg !1736

bb19:                                             ; preds = %bb18
  tail call void @__assert_fail(i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 493, i8* getelementptr inbounds ([6 x i8]* @__PRETTY_FUNCTION__.6049, i64 0, i64 0)) noreturn nounwind, !dbg !1737
  unreachable, !dbg !1737

bb20:                                             ; preds = %bb18
  %56 = icmp slt i64 %48, %52, !dbg !1738
  br i1 %56, label %bb21, label %bb24, !dbg !1738

bb21:                                             ; preds = %bb20
  %57 = sub nsw i64 %52, %48, !dbg !1739
  tail call void @llvm.dbg.value(metadata !{i64 %57}, i64 0, metadata !649), !dbg !1739
  br label %bb22, !dbg !1739

bb22:                                             ; preds = %bb16, %bb21
  %actual_count.0 = phi i64 [ %57, %bb21 ], [ %count, %bb16 ]
  %58 = icmp eq i64 %actual_count.0, 0, !dbg !1740
  br i1 %58, label %bb24, label %bb23, !dbg !1740

bb23:                                             ; preds = %bb22
  %59 = getelementptr inbounds %struct.exe_disk_file_t* %18, i64 0, i32 1, !dbg !1741
  %60 = load i8** %59, align 8, !dbg !1741
  %61 = getelementptr inbounds i8* %60, i64 %48, !dbg !1741
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %buf, i64 %actual_count.0, i32 1, i1 false), !dbg !1741
  br label %bb24, !dbg !1741

bb24:                                             ; preds = %bb20, %bb22, %bb23
  %actual_count.034 = phi i64 [ 0, %bb22 ], [ %actual_count.0, %bb23 ], [ 0, %bb20 ]
  %62 = icmp eq i64 %actual_count.034, %count, !dbg !1742
  br i1 %62, label %bb26, label %bb25, !dbg !1742

bb25:                                             ; preds = %bb24
  %63 = load %struct._IO_FILE** @stderr, align 8, !dbg !1743
  %64 = bitcast %struct._IO_FILE* %63 to i8*, !dbg !1743
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str23, i64 0, i64 0), i64 1, i64 32, i8* %64) nounwind, !dbg !1743
  br label %bb26, !dbg !1743

bb26:                                             ; preds = %bb24, %bb25
  %66 = load %struct.exe_disk_file_t** %17, align 8, !dbg !1744
  %67 = load %struct.exe_disk_file_t** getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 2), align 8, !dbg !1744
  %68 = icmp eq %struct.exe_disk_file_t* %66, %67, !dbg !1744
  br i1 %68, label %bb27, label %bb28, !dbg !1744

bb27:                                             ; preds = %bb26
  %69 = load i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1745
  %70 = trunc i64 %actual_count.034 to i32, !dbg !1745
  %71 = add i32 %69, %70, !dbg !1745
  store i32 %71, i32* getelementptr inbounds (%struct.exe_file_system_t* @__exe_fs, i64 0, i32 3), align 8, !dbg !1745
  br label %bb28, !dbg !1745

bb28:                                             ; preds = %bb26, %bb27
  %72 = load i64* %47, align 8, !dbg !1746
  %73 = add i64 %72, %count, !dbg !1746
  store i64 %73, i64* %47, align 8, !dbg !1746
  br label %bb32, !dbg !1747

bb29:                                             ; preds = %entry
  %74 = tail call i32 @__check_is_socket(i32 %fd) nounwind, !dbg !1748
  %75 = icmp eq i32 %74, 0, !dbg !1748
  br i1 %75, label %bb30, label %bb31, !dbg !1748

bb30:                                             ; preds = %bb29
  %76 = tail call i32* @__errno_location() nounwind readnone, !dbg !1749
  store i32 9, i32* %76, align 4, !dbg !1749
  br label %bb32, !dbg !1750

bb31:                                             ; preds = %bb29
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !651), !dbg !1751
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !577) nounwind, !dbg !1752
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !578) nounwind, !dbg !1752
  tail call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !579) nounwind, !dbg !1752
  tail call void @llvm.dbg.value(metadata !1754, i64 0, metadata !580) nounwind, !dbg !1752
  %77 = tail call %struct.sym_socket* @get_sym_socket(i32 %fd) nounwind, !dbg !1755
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %77}, i64 0, metadata !581) nounwind, !dbg !1755
  %78 = tail call i64 @_write_socket(%struct.sym_socket* %77, i8* %buf, i64 %count) nounwind, !dbg !1756
  br label %bb32, !dbg !1753

bb32:                                             ; preds = %bb14, %bb13.bb15_crit_edge, %bb31, %bb30, %bb28, %bb10, %bb4, %bb1
  %.0 = phi i64 [ -1, %bb1 ], [ -1, %bb4 ], [ -1, %bb10 ], [ %count, %bb28 ], [ -1, %bb30 ], [ %78, %bb31 ], [ %.pre, %bb13.bb15_crit_edge ], [ %45, %bb14 ]
  ret i64 %.0, !dbg !1709
}

declare i32 @__check_is_socket(i32)

define i64 @_gather_write(i32 %fd, %struct.iovec* nocapture %iov, i32 %iovcnt) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !653), !dbg !1757
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !654), !dbg !1757
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !655), !dbg !1757
  tail call void @llvm.dbg.value(metadata !1284, i64 0, metadata !656), !dbg !1758
  tail call void @llvm.dbg.value(metadata !678, i64 0, metadata !658), !dbg !1759
  br label %bb10, !dbg !1759

bb:                                               ; preds = %bb10
  %0 = load i64* %scevgep15, align 8, !dbg !1760
  %1 = icmp eq i64 %0, 0, !dbg !1760
  br i1 %1, label %bb9, label %bb1, !dbg !1760

bb1:                                              ; preds = %bb
  %2 = icmp eq i64 %count.1, 0, !dbg !1761
  br i1 %2, label %bb4, label %bb2, !dbg !1761

bb2:                                              ; preds = %bb1
  %3 = tail call i32 @_is_blocking(i32 %fd, i32 2) nounwind, !dbg !1761
  %4 = icmp eq i32 %3, 0, !dbg !1761
  br i1 %4, label %bb2.bb4_crit_edge, label %bb12, !dbg !1761

bb2.bb4_crit_edge:                                ; preds = %bb2
  %.pre = load i64* %scevgep15, align 8
  br label %bb4

bb4:                                              ; preds = %bb2.bb4_crit_edge, %bb1
  %5 = phi i64 [ %.pre, %bb2.bb4_crit_edge ], [ %0, %bb1 ]
  %6 = load i8** %scevgep14, align 8, !dbg !1762
  %7 = tail call %struct.sym_socket* @get_sym_socket(i32 %fd) nounwind, !dbg !1763
  %8 = tail call i64 @_write_socket(%struct.sym_socket* %7, i8* %6, i64 %5) nounwind, !dbg !1764
  %9 = icmp eq i64 %8, -1, !dbg !1765
  br i1 %9, label %bb5, label %bb8, !dbg !1765

bb5:                                              ; preds = %bb4
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !577) nounwind, !dbg !1766
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !578) nounwind, !dbg !1766
  tail call void @llvm.dbg.value(metadata !{i64 %5}, i64 0, metadata !579) nounwind, !dbg !1766
  tail call void @llvm.dbg.value(metadata !1754, i64 0, metadata !580) nounwind, !dbg !1766
  tail call void @llvm.dbg.value(metadata !{%struct.sym_socket* %7}, i64 0, metadata !581) nounwind, !dbg !1763
  tail call void @llvm.dbg.value(metadata !{i64 %8}, i64 0, metadata !659), !dbg !1762
  br i1 %2, label %bb12, label %bb6, !dbg !1767

bb6:                                              ; preds = %bb5
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i32 426, i8* getelementptr inbounds ([14 x i8]* @__PRETTY_FUNCTION__.6024, i64 0, i64 0)) noreturn nounwind, !dbg !1767
  unreachable, !dbg !1767

bb8:                                              ; preds = %bb4
  %10 = add i64 %8, %count.1, !dbg !1768
  %11 = load i64* %scevgep15, align 8, !dbg !1769
  %12 = icmp ult i64 %8, %11, !dbg !1769
  br i1 %12, label %bb12, label %bb9, !dbg !1769

bb9:                                              ; preds = %bb8, %bb
  %count.0 = phi i64 [ %count.1, %bb ], [ %10, %bb8 ]
  %indvar.next = add i64 %indvar, 1
  br label %bb10, !dbg !1759

bb10:                                             ; preds = %bb9, %entry
  %indvar = phi i64 [ %indvar.next, %bb9 ], [ 0, %entry ]
  %count.1 = phi i64 [ %count.0, %bb9 ], [ 0, %entry ]
  %scevgep14 = getelementptr inbounds %struct.iovec* %iov, i64 %indvar, i32 0
  %scevgep15 = getelementptr %struct.iovec* %iov, i64 %indvar, i32 1
  %i.0 = trunc i64 %indvar to i32
  %13 = icmp slt i32 %i.0, %iovcnt, !dbg !1759
  br i1 %13, label %bb, label %bb12, !dbg !1759

bb12:                                             ; preds = %bb8, %bb10, %bb2, %bb5
  %.0 = phi i64 [ -1, %bb5 ], [ %10, %bb8 ], [ %count.1, %bb10 ], [ %count.1, %bb2 ]
  ret i64 %.0, !dbg !1770
}

declare i32 @_is_blocking(i32, i32)

!llvm.dbg.sp = !{!0, !59, !72, !76, !79, !82, !85, !86, !87, !92, !97, !100, !131, !134, !137, !138, !142, !145, !148, !151, !154, !157, !158, !159, !170, !173, !176, !179, !182, !183, !184, !185, !203, !206, !207, !210, !233, !234, !237, !240, !243, !246, !249, !252, !256, !257}
!llvm.dbg.lv.__get_sym_file = !{!267, !268, !270, !271}
!llvm.dbg.lv.__get_file = !{!273, !274}
!llvm.dbg.lv.umask = !{!277, !278}
!llvm.dbg.lv.has_permission = !{!280, !281, !282, !284, !285}
!llvm.dbg.lv.chroot = !{!286}
!llvm.dbg.lv.unlinkat = !{!287, !288, !289, !290}
!llvm.dbg.lv.unlink = !{!292, !293}
!llvm.dbg.lv.rmdir = !{!295, !296}
!llvm.dbg.lv.__df_chown = !{!298, !299, !300}
!llvm.dbg.lv.readlink = !{!301, !302, !303, !304, !306}
!llvm.dbg.lv.fsync = !{!308, !309, !311}
!llvm.dbg.lv.fstatfs = !{!313, !314, !315, !317}
!llvm.dbg.lv.__fd_ftruncate = !{!319, !320, !321, !323}
!llvm.dbg.gv = !{!325, !326, !327, !328, !329, !330, !331}
!llvm.dbg.lv.fchown = !{!332, !333, !334, !335, !337}
!llvm.dbg.lv.fchdir = !{!339, !340, !342}
!llvm.dbg.lv.__concretize_ptr = !{!344, !345}
!llvm.dbg.lv.__concretize_size = !{!347, !348}
!llvm.dbg.lv.getcwd = !{!350, !351, !352}
!llvm.dbg.lv.__concretize_string = !{!354, !355, !357, !358, !360}
!llvm.dbg.lv.__fd_statfs = !{!362, !363, !364, !366}
!llvm.dbg.lv.lchown = !{!368, !369, !370, !371, !373}
!llvm.dbg.lv.chown = !{!375, !376, !377, !378, !380}
!llvm.dbg.lv.chdir = !{!382, !383, !385}
!llvm.dbg.lv.utimes = !{!387, !388, !389, !391}
!llvm.dbg.lv.futimesat = !{!392, !393, !394, !395, !397}
!llvm.dbg.lv.access = !{!399, !400, !401, !403}
!llvm.dbg.lv.fcntl = !{!405, !406, !407, !409, !422, !423, !425}
!llvm.dbg.lv.ioctl = !{!427, !428, !429, !431, !432, !433, !435, !455, !465, !468}
!llvm.dbg.lv.close = !{!470, !471, !473}
!llvm.dbg.lv.dup2 = !{!474, !475, !476, !478}
!llvm.dbg.lv.dup = !{!480, !481, !483}
!llvm.dbg.lv.__fd_getdents = !{!485, !486, !487, !488, !490, !492, !493, !494, !496, !498, !499, !500, !502}
!llvm.dbg.lv.__fd_lseek = !{!504, !505, !506, !507, !509}
!llvm.dbg.lv.__fd_fstat = !{!510, !511, !512, !514}
!llvm.dbg.lv.__fd_lstat = !{!516, !517, !518, !520}
!llvm.dbg.lv.fstatat = !{!522, !523, !524, !525, !526, !528, !529}
!llvm.dbg.lv.__fd_stat = !{!531, !532, !533, !535}
!llvm.dbg.lv.read = !{!537, !538, !539, !540, !542}
!llvm.dbg.lv.__df_chmod = !{!544, !545}
!llvm.dbg.lv.fchmod = !{!546, !547, !548, !550}
!llvm.dbg.lv.chmod = !{!552, !553, !554, !556}
!llvm.dbg.lv.__fd_open = !{!558, !559, !560, !561, !563, !564, !565}
!llvm.dbg.lv.__fd_openat = !{!567, !568, !569, !570, !571, !573, !574, !575}
!llvm.dbg.lv._clean_write = !{!577, !578, !579, !580, !581}
!llvm.dbg.lv.write = !{!641, !642, !643, !644, !647, !649, !651}
!llvm.dbg.lv._gather_write = !{!653, !654, !655, !656, !658, !659}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_sym_file", metadata !"__get_sym_file", metadata !"", metadata !1, i32 39, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5, metadata !57}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589846, metadata !7, metadata !"exe_disk_file_t", metadata !7, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ]
!7 = metadata !{i32 589865, metadata !"fd.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 39, i64 192, i64 64, i64 0, i32 0, null, metadata !9, i32 0, null} ; [ DW_TAG_structure_type ]
!9 = metadata !{metadata !10, metadata !12, metadata !15}
!10 = metadata !{i32 589837, metadata !8, metadata !"size", metadata !7, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!11 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 589837, metadata !8, metadata !"contents", metadata !7, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 589837, metadata !8, metadata !"stat", metadata !7, i32 42, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !18, i32 120, i64 1152, i64 64, i64 0, i32 0, null, metadata !19, i32 0, null} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!19 = metadata !{metadata !20, metadata !24, metadata !26, metadata !28, metadata !30, metadata !32, metadata !34, metadata !36, metadata !37, metadata !40, metadata !42, metadata !44, metadata !51, metadata !52, metadata !53}
!20 = metadata !{i32 589837, metadata !17, metadata !"st_dev", metadata !18, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 589846, metadata !22, metadata !"__dev_t", metadata !22, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!24 = metadata !{i32 589837, metadata !17, metadata !"st_ino", metadata !18, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 589846, metadata !22, metadata !"__ino64_t", metadata !22, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 589837, metadata !17, metadata !"st_nlink", metadata !18, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!27 = metadata !{i32 589846, metadata !22, metadata !"__nlink_t", metadata !22, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 589837, metadata !17, metadata !"st_mode", metadata !18, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!29 = metadata !{i32 589846, metadata !22, metadata !"__mode_t", metadata !22, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589837, metadata !17, metadata !"st_uid", metadata !18, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !22, metadata !"__uid_t", metadata !22, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589837, metadata !17, metadata !"st_gid", metadata !18, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !22, metadata !"__gid_t", metadata !22, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589837, metadata !17, metadata !"__pad0", metadata !18, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589837, metadata !17, metadata !"st_rdev", metadata !18, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !17, metadata !"st_size", metadata !18, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!38 = metadata !{i32 589846, metadata !22, metadata !"__off_t", metadata !22, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!39 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 589837, metadata !17, metadata !"st_blksize", metadata !18, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !22, metadata !"__blksize_t", metadata !22, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589837, metadata !17, metadata !"st_blocks", metadata !18, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ]
!43 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt64_t", metadata !22, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 589837, metadata !17, metadata !"st_atim", metadata !18, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !46, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !47, i32 0, null} ; [ DW_TAG_structure_type ]
!46 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!47 = metadata !{metadata !48, metadata !50}
!48 = metadata !{i32 589837, metadata !45, metadata !"tv_sec", metadata !46, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!49 = metadata !{i32 589846, metadata !22, metadata !"__time_t", metadata !22, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 589837, metadata !45, metadata !"tv_nsec", metadata !46, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !17, metadata !"st_mtim", metadata !18, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !17, metadata !"st_ctim", metadata !18, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!53 = metadata !{i32 589837, metadata !17, metadata !"__unused", metadata !18, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!54 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !39, metadata !55, i32 0, null} ; [ DW_TAG_array_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!57 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!59 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__get_file", metadata !"__get_file", metadata !"", metadata !1, i32 63, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !62, metadata !35}
!62 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ]
!63 = metadata !{i32 589846, metadata !7, metadata !"exe_file_t", metadata !7, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ]
!64 = metadata !{i32 589843, metadata !1, metadata !"", metadata !7, i32 52, i64 192, i64 64, i64 0, i32 0, null, metadata !65, i32 0, null} ; [ DW_TAG_structure_type ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !71}
!66 = metadata !{i32 589837, metadata !64, metadata !"fd", metadata !7, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!67 = metadata !{i32 589837, metadata !64, metadata !"flags", metadata !7, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!68 = metadata !{i32 589837, metadata !64, metadata !"off", metadata !7, i32 57, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ]
!69 = metadata !{i32 589846, metadata !70, metadata !"off64_t", metadata !70, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!71 = metadata !{i32 589837, metadata !64, metadata !"dfile", metadata !7, i32 58, i64 64, i64 64, i64 128, i32 0, metadata !5} ; [ DW_TAG_member ]
!72 = metadata !{i32 589870, i32 0, metadata !1, metadata !"umask", metadata !"umask", metadata !"umask", metadata !1, i32 88, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @umask} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, null} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{metadata !75, metadata !75}
!75 = metadata !{i32 589846, metadata !70, metadata !"mode_t", metadata !70, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!76 = metadata !{i32 589870, i32 0, metadata !1, metadata !"has_permission", metadata !"has_permission", metadata !"", metadata !1, i32 97, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !35, metadata !35, metadata !16}
!79 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chroot", metadata !"chroot", metadata !"chroot", metadata !1, i32 1505, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chroot} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{metadata !35, metadata !57}
!82 = metadata !{i32 589870, i32 0, metadata !1, metadata !"unlinkat", metadata !"unlinkat", metadata !"unlinkat", metadata !1, i32 1302, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @unlinkat} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !35, metadata !35, metadata !57, metadata !35}
!85 = metadata !{i32 589870, i32 0, metadata !1, metadata !"unlink", metadata !"unlink", metadata !"unlink", metadata !1, i32 1281, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @unlink} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 589870, i32 0, metadata !1, metadata !"rmdir", metadata !"rmdir", metadata !"rmdir", metadata !1, i32 1263, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @rmdir} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chown", metadata !"__df_chown", metadata !"", metadata !1, i32 770, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !35, metadata !5, metadata !90, metadata !91}
!90 = metadata !{i32 589846, metadata !70, metadata !"uid_t", metadata !70, i32 87, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!91 = metadata !{i32 589846, metadata !70, metadata !"gid_t", metadata !70, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!92 = metadata !{i32 589870, i32 0, metadata !1, metadata !"readlink", metadata !"readlink", metadata !"readlink", metadata !1, i32 1325, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i8*, i8*, i64)* @readlink} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, null} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{metadata !95, metadata !57, metadata !13, metadata !96}
!95 = metadata !{i32 589846, metadata !70, metadata !"ssize_t", metadata !70, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!96 = metadata !{i32 589846, metadata !70, metadata !"size_t", metadata !70, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fsync", metadata !"fsync", metadata !"fsync", metadata !1, i32 1203, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fsync} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !35, metadata !35}
!100 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstatfs", metadata !"fstatfs", metadata !"fstatfs", metadata !1, i32 1183, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.statfs*)* @fstatfs} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !35, metadata !35, metadata !103}
!103 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !105, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !106, i32 0, null} ; [ DW_TAG_structure_type ]
!105 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !111, metadata !112, metadata !113, metadata !115, metadata !116, metadata !124, metadata !125, metadata !126, metadata !127}
!107 = metadata !{i32 589837, metadata !104, metadata !"f_type", metadata !105, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!108 = metadata !{i32 589837, metadata !104, metadata !"f_bsize", metadata !105, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ]
!109 = metadata !{i32 589837, metadata !104, metadata !"f_blocks", metadata !105, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !110} ; [ DW_TAG_member ]
!110 = metadata !{i32 589846, metadata !22, metadata !"__fsblkcnt_t", metadata !22, i32 174, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 589837, metadata !104, metadata !"f_bfree", metadata !105, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !110} ; [ DW_TAG_member ]
!112 = metadata !{i32 589837, metadata !104, metadata !"f_bavail", metadata !105, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !110} ; [ DW_TAG_member ]
!113 = metadata !{i32 589837, metadata !104, metadata !"f_files", metadata !105, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !114} ; [ DW_TAG_member ]
!114 = metadata !{i32 589846, metadata !22, metadata !"__fsfilcnt_t", metadata !22, i32 178, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!115 = metadata !{i32 589837, metadata !104, metadata !"f_ffree", metadata !105, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !114} ; [ DW_TAG_member ]
!116 = metadata !{i32 589837, metadata !104, metadata !"f_fsid", metadata !105, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !117} ; [ DW_TAG_member ]
!117 = metadata !{i32 589846, metadata !22, metadata !"__fsid_t", metadata !22, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ]
!118 = metadata !{i32 589843, metadata !1, metadata !"", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !119, i32 0, null} ; [ DW_TAG_structure_type ]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 589837, metadata !118, metadata !"__val", metadata !22, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ]
!121 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !35, metadata !122, i32 0, null} ; [ DW_TAG_array_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!124 = metadata !{i32 589837, metadata !104, metadata !"f_namelen", metadata !105, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ]
!125 = metadata !{i32 589837, metadata !104, metadata !"f_frsize", metadata !105, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ]
!126 = metadata !{i32 589837, metadata !104, metadata !"f_flags", metadata !105, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ]
!127 = metadata !{i32 589837, metadata !104, metadata !"f_spare", metadata !105, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !128} ; [ DW_TAG_member ]
!128 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !39, metadata !129, i32 0, null} ; [ DW_TAG_array_type ]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!131 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !"__fd_ftruncate", metadata !1, i32 844, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @__fd_ftruncate} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{metadata !35, metadata !35, metadata !69}
!134 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchown", metadata !"fchown", metadata !"fchown", metadata !1, i32 789, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @fchown} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, null} ; [ DW_TAG_subroutine_type ]
!136 = metadata !{metadata !35, metadata !35, metadata !90, metadata !91}
!137 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchdir", metadata !"fchdir", metadata !"fchdir", metadata !1, i32 687, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @fchdir} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_ptr", metadata !"__concretize_ptr", metadata !"", metadata !1, i32 1463, metadata !139, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!139 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null} ; [ DW_TAG_subroutine_type ]
!140 = metadata !{metadata !141, metadata !141}
!141 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!142 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_size", metadata !"__concretize_size", metadata !"", metadata !1, i32 1470, metadata !143, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, null} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{metadata !96, metadata !96}
!145 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getcwd", metadata !"getcwd", metadata !"getcwd", metadata !1, i32 1428, metadata !146, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i64)* @getcwd} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{metadata !13, metadata !13, metadata !96}
!148 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__concretize_string", metadata !"__concretize_string", metadata !"", metadata !1, i32 1476, metadata !149, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, null} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !57, metadata !57}
!151 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !"__fd_statfs", metadata !1, i32 1166, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @__fd_statfs} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !35, metadata !57, metadata !103}
!154 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lchown", metadata !"lchown", metadata !"lchown", metadata !1, i32 807, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @lchown} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, null} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{metadata !35, metadata !57, metadata !90, metadata !91}
!157 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chown", metadata !"chown", metadata !"chown", metadata !1, i32 776, metadata !155, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @chown} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chdir", metadata !"chdir", metadata !"chdir", metadata !1, i32 669, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @chdir} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 589870, i32 0, metadata !1, metadata !"utimes", metadata !"utimes", metadata !"utimes", metadata !1, i32 256, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.timespec*)* @utimes} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !35, metadata !57, metadata !162}
!162 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ]
!163 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !164} ; [ DW_TAG_const_type ]
!164 = metadata !{i32 589843, metadata !1, metadata !"timeval", metadata !165, i32 32, i64 128, i64 64, i64 0, i32 0, null, metadata !166, i32 0, null} ; [ DW_TAG_structure_type ]
!165 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!166 = metadata !{metadata !167, metadata !168}
!167 = metadata !{i32 589837, metadata !164, metadata !"tv_sec", metadata !165, i32 33, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ]
!168 = metadata !{i32 589837, metadata !164, metadata !"tv_usec", metadata !165, i32 34, i64 64, i64 64, i64 64, i32 0, metadata !169} ; [ DW_TAG_member ]
!169 = metadata !{i32 589846, metadata !22, metadata !"__suseconds_t", metadata !22, i32 153, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!170 = metadata !{i32 589870, i32 0, metadata !1, metadata !"futimesat", metadata !"futimesat", metadata !"futimesat", metadata !1, i32 277, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.timespec*)* @futimesat} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, null} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !35, metadata !35, metadata !57, metadata !162}
!173 = metadata !{i32 589870, i32 0, metadata !1, metadata !"access", metadata !"access", metadata !"access", metadata !1, i32 73, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @access} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !35, metadata !57, metadata !35}
!176 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fcntl", metadata !"fcntl", metadata !"fcntl", metadata !1, i32 1111, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @fcntl} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, null} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{metadata !35, metadata !35, metadata !35}
!179 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ioctl", metadata !"ioctl", metadata !"ioctl", metadata !1, i32 961, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64, ...)* @ioctl} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, null} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !35, metadata !35, metadata !23}
!182 = metadata !{i32 589870, i32 0, metadata !1, metadata !"close", metadata !"close", metadata !"close", metadata !1, i32 303, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @close} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup2", metadata !"dup2", metadata !"dup2", metadata !1, i32 1219, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @dup2} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 589870, i32 0, metadata !1, metadata !"dup", metadata !"dup", metadata !"dup", metadata !1, i32 1244, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @dup} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !"__fd_getdents", metadata !1, i32 877, metadata !186, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.dirent64*, i32)* @__fd_getdents} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, null} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !35, metadata !11, metadata !188, metadata !11}
!188 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ]
!189 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !190, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !191, i32 0, null} ; [ DW_TAG_structure_type ]
!190 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!191 = metadata !{metadata !192, metadata !193, metadata !195, metadata !197, metadata !199}
!192 = metadata !{i32 589837, metadata !189, metadata !"d_ino", metadata !190, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ]
!193 = metadata !{i32 589837, metadata !189, metadata !"d_off", metadata !190, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !194} ; [ DW_TAG_member ]
!194 = metadata !{i32 589846, metadata !22, metadata !"__off64_t", metadata !22, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!195 = metadata !{i32 589837, metadata !189, metadata !"d_reclen", metadata !190, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !196} ; [ DW_TAG_member ]
!196 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!197 = metadata !{i32 589837, metadata !189, metadata !"d_type", metadata !190, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !198} ; [ DW_TAG_member ]
!198 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!199 = metadata !{i32 589837, metadata !189, metadata !"d_name", metadata !190, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !200} ; [ DW_TAG_member ]
!200 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !14, metadata !201, i32 0, null} ; [ DW_TAG_array_type ]
!201 = metadata !{metadata !202}
!202 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!203 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !"__fd_lseek", metadata !1, i32 538, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @__fd_lseek} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, null} ; [ DW_TAG_subroutine_type ]
!205 = metadata !{metadata !69, metadata !35, metadata !69, metadata !35}
!206 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !"__fd_fstat", metadata !1, i32 821, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @__fd_fstat} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !"__fd_lstat", metadata !1, i32 650, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @__fd_lstat} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, null} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !35, metadata !57, metadata !16}
!210 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstatat", metadata !"fstatat", metadata !"fstatat", metadata !1, i32 614, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*, i32)* @fstatat} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, null} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !35, metadata !35, metadata !57, metadata !213, metadata !35}
!213 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ]
!214 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !18, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !215, i32 0, null} ; [ DW_TAG_structure_type ]
!215 = metadata !{metadata !216, metadata !217, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !229, metadata !230, metadata !231, metadata !232}
!216 = metadata !{i32 589837, metadata !214, metadata !"st_dev", metadata !18, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ]
!217 = metadata !{i32 589837, metadata !214, metadata !"st_ino", metadata !18, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !218} ; [ DW_TAG_member ]
!218 = metadata !{i32 589846, metadata !22, metadata !"__ino_t", metadata !22, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!219 = metadata !{i32 589837, metadata !214, metadata !"st_nlink", metadata !18, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ]
!220 = metadata !{i32 589837, metadata !214, metadata !"st_mode", metadata !18, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ]
!221 = metadata !{i32 589837, metadata !214, metadata !"st_uid", metadata !18, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ]
!222 = metadata !{i32 589837, metadata !214, metadata !"st_gid", metadata !18, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ]
!223 = metadata !{i32 589837, metadata !214, metadata !"__pad0", metadata !18, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ]
!224 = metadata !{i32 589837, metadata !214, metadata !"st_rdev", metadata !18, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ]
!225 = metadata !{i32 589837, metadata !214, metadata !"st_size", metadata !18, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ]
!226 = metadata !{i32 589837, metadata !214, metadata !"st_blksize", metadata !18, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !41} ; [ DW_TAG_member ]
!227 = metadata !{i32 589837, metadata !214, metadata !"st_blocks", metadata !18, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !228} ; [ DW_TAG_member ]
!228 = metadata !{i32 589846, metadata !22, metadata !"__blkcnt_t", metadata !22, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!229 = metadata !{i32 589837, metadata !214, metadata !"st_atim", metadata !18, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ]
!230 = metadata !{i32 589837, metadata !214, metadata !"st_mtim", metadata !18, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ]
!231 = metadata !{i32 589837, metadata !214, metadata !"st_ctim", metadata !18, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !45} ; [ DW_TAG_member ]
!232 = metadata !{i32 589837, metadata !214, metadata !"__unused", metadata !18, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ]
!233 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_stat", metadata !"__fd_stat", metadata !"__fd_stat", metadata !1, i32 595, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @__fd_stat} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 589870, i32 0, metadata !1, metadata !"read", metadata !"read", metadata !"read", metadata !1, i32 335, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @read} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, null} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{metadata !95, metadata !35, metadata !141, metadata !96}
!237 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__df_chmod", metadata !"__df_chmod", metadata !"", metadata !1, i32 708, metadata !238, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, null} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !35, metadata !5, metadata !75}
!240 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fchmod", metadata !"fchmod", metadata !"fchmod", metadata !1, i32 743, metadata !241, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @fchmod} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, null} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !35, metadata !35, metadata !75}
!243 = metadata !{i32 589870, i32 0, metadata !1, metadata !"chmod", metadata !"chmod", metadata !"chmod", metadata !1, i32 721, metadata !244, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @chmod} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, null} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !35, metadata !57, metadata !75}
!246 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_open", metadata !"__fd_open", metadata !"__fd_open", metadata !1, i32 128, metadata !247, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32)* @__fd_open} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, null} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !35, metadata !57, metadata !35, metadata !75}
!249 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fd_openat", metadata !"__fd_openat", metadata !"__fd_openat", metadata !1, i32 201, metadata !250, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, i32)* @__fd_openat} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, null} ; [ DW_TAG_subroutine_type ]
!251 = metadata !{metadata !35, metadata !35, metadata !57, metadata !35, metadata !75}
!252 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_clean_write", metadata !"_clean_write", metadata !"_clean_write", metadata !1, i32 403, metadata !253, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64, i64)* @_clean_write} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, null} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{metadata !95, metadata !35, metadata !141, metadata !96, metadata !255}
!255 = metadata !{i32 589846, metadata !70, metadata !"off_t", metadata !70, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ]
!256 = metadata !{i32 589870, i32 0, metadata !1, metadata !"write", metadata !"write", metadata !"write", metadata !1, i32 440, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i8*, i64)* @write} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_gather_write", metadata !"_gather_write", metadata !"_gather_write", metadata !1, i32 410, metadata !258, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.iovec*, i32)* @_gather_write} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, null} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !95, metadata !35, metadata !260, metadata !35}
!260 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !261} ; [ DW_TAG_pointer_type ]
!261 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !262} ; [ DW_TAG_const_type ]
!262 = metadata !{i32 589843, metadata !1, metadata !"iovec", metadata !263, i32 45, i64 128, i64 64, i64 0, i32 0, null, metadata !264, i32 0, null} ; [ DW_TAG_structure_type ]
!263 = metadata !{i32 589865, metadata !"uio.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!264 = metadata !{metadata !265, metadata !266}
!265 = metadata !{i32 589837, metadata !262, metadata !"iov_base", metadata !263, i32 46, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ]
!266 = metadata !{i32 589837, metadata !262, metadata !"iov_len", metadata !263, i32 47, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ]
!267 = metadata !{i32 590081, metadata !0, metadata !"pathname", metadata !1, i32 39, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 590080, metadata !269, metadata !"c", metadata !1, i32 40, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 589835, metadata !0, i32 39, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 590080, metadata !269, metadata !"i", metadata !1, i32 41, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!271 = metadata !{i32 590080, metadata !272, metadata !"df", metadata !1, i32 48, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 589835, metadata !269, i32 48, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 590081, metadata !59, metadata !"fd", metadata !1, i32 63, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!274 = metadata !{i32 590080, metadata !275, metadata !"f", metadata !1, i32 65, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 589835, metadata !276, i32 63, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 589835, metadata !59, i32 63, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 590081, metadata !72, metadata !"mask", metadata !1, i32 88, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 590080, metadata !279, metadata !"r", metadata !1, i32 89, metadata !75, i32 0} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 589835, metadata !72, i32 88, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 590081, metadata !76, metadata !"flags", metadata !1, i32 97, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 590081, metadata !76, metadata !"s", metadata !1, i32 97, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!282 = metadata !{i32 590080, metadata !283, metadata !"write_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!283 = metadata !{i32 589835, metadata !76, i32 97, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 590080, metadata !283, metadata !"read_access", metadata !1, i32 98, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 590080, metadata !283, metadata !"mode", metadata !1, i32 99, metadata !75, i32 0} ; [ DW_TAG_auto_variable ]
!286 = metadata !{i32 590081, metadata !79, metadata !"path", metadata !1, i32 1505, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 590081, metadata !82, metadata !"dirfd", metadata !1, i32 1302, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!288 = metadata !{i32 590081, metadata !82, metadata !"pathname", metadata !1, i32 1302, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!289 = metadata !{i32 590081, metadata !82, metadata !"flags", metadata !1, i32 1302, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 590080, metadata !291, metadata !"dfile", metadata !1, i32 1305, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!291 = metadata !{i32 589835, metadata !82, i32 1302, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!292 = metadata !{i32 590081, metadata !85, metadata !"pathname", metadata !1, i32 1281, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!293 = metadata !{i32 590080, metadata !294, metadata !"dfile", metadata !1, i32 1282, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!294 = metadata !{i32 589835, metadata !85, i32 1281, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 590081, metadata !86, metadata !"pathname", metadata !1, i32 1263, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!296 = metadata !{i32 590080, metadata !297, metadata !"dfile", metadata !1, i32 1264, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!297 = metadata !{i32 589835, metadata !86, i32 1263, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!298 = metadata !{i32 590081, metadata !87, metadata !"df", metadata !1, i32 770, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!299 = metadata !{i32 590081, metadata !87, metadata !"owner", metadata !1, i32 770, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!300 = metadata !{i32 590081, metadata !87, metadata !"group", metadata !1, i32 770, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!301 = metadata !{i32 590081, metadata !92, metadata !"path", metadata !1, i32 1325, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!302 = metadata !{i32 590081, metadata !92, metadata !"buf", metadata !1, i32 1325, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!303 = metadata !{i32 590081, metadata !92, metadata !"bufsize", metadata !1, i32 1325, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!304 = metadata !{i32 590080, metadata !305, metadata !"dfile", metadata !1, i32 1326, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!305 = metadata !{i32 589835, metadata !92, i32 1325, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!306 = metadata !{i32 590080, metadata !307, metadata !"r", metadata !1, i32 1342, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!307 = metadata !{i32 589835, metadata !305, i32 1342, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!308 = metadata !{i32 590081, metadata !97, metadata !"fd", metadata !1, i32 1203, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!309 = metadata !{i32 590080, metadata !310, metadata !"f", metadata !1, i32 1204, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!310 = metadata !{i32 589835, metadata !97, i32 1203, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!311 = metadata !{i32 590080, metadata !312, metadata !"r", metadata !1, i32 1212, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!312 = metadata !{i32 589835, metadata !310, i32 1212, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!313 = metadata !{i32 590081, metadata !100, metadata !"fd", metadata !1, i32 1183, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!314 = metadata !{i32 590081, metadata !100, metadata !"buf", metadata !1, i32 1183, metadata !103, i32 0} ; [ DW_TAG_arg_variable ]
!315 = metadata !{i32 590080, metadata !316, metadata !"f", metadata !1, i32 1184, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!316 = metadata !{i32 589835, metadata !100, i32 1183, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!317 = metadata !{i32 590080, metadata !318, metadata !"r", metadata !1, i32 1196, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!318 = metadata !{i32 589835, metadata !316, i32 1196, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!319 = metadata !{i32 590081, metadata !131, metadata !"fd", metadata !1, i32 844, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!320 = metadata !{i32 590081, metadata !131, metadata !"length", metadata !1, i32 844, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!321 = metadata !{i32 590080, metadata !322, metadata !"f", metadata !1, i32 846, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!322 = metadata !{i32 589835, metadata !131, i32 844, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!323 = metadata !{i32 590080, metadata !324, metadata !"r", metadata !1, i32 867, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!324 = metadata !{i32 589835, metadata !322, i32 867, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!325 = metadata !{i32 589876, i32 0, metadata !131, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 845, metadata !35, i1 true, i1 true, i32* @n_calls.6363} ; [ DW_TAG_variable ]
!326 = metadata !{i32 589876, i32 0, metadata !145, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 1429, metadata !35, i1 true, i1 true, i32* @n_calls.6743} ; [ DW_TAG_variable ]
!327 = metadata !{i32 589876, i32 0, metadata !182, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 304, metadata !35, i1 true, i1 true, i32* @n_calls.5929} ; [ DW_TAG_variable ]
!328 = metadata !{i32 589876, i32 0, metadata !234, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 336, metadata !35, i1 true, i1 true, i32* @n_calls.5949} ; [ DW_TAG_variable ]
!329 = metadata !{i32 589876, i32 0, metadata !240, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 744, metadata !35, i1 true, i1 true, i32* @n_calls.6270} ; [ DW_TAG_variable ]
!330 = metadata !{i32 589876, i32 0, metadata !243, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 722, metadata !35, i1 true, i1 true, i32* @n_calls.6247} ; [ DW_TAG_variable ]
!331 = metadata !{i32 589876, i32 0, metadata !256, metadata !"n_calls", metadata !"n_calls", metadata !"", metadata !1, i32 444, metadata !35, i1 true, i1 true, i32* @n_calls.6046} ; [ DW_TAG_variable ]
!332 = metadata !{i32 590081, metadata !134, metadata !"fd", metadata !1, i32 789, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!333 = metadata !{i32 590081, metadata !134, metadata !"owner", metadata !1, i32 789, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!334 = metadata !{i32 590081, metadata !134, metadata !"group", metadata !1, i32 789, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!335 = metadata !{i32 590080, metadata !336, metadata !"f", metadata !1, i32 790, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!336 = metadata !{i32 589835, metadata !134, i32 789, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!337 = metadata !{i32 590080, metadata !338, metadata !"r", metadata !1, i32 800, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!338 = metadata !{i32 589835, metadata !336, i32 800, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
!339 = metadata !{i32 590081, metadata !137, metadata !"fd", metadata !1, i32 687, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!340 = metadata !{i32 590080, metadata !341, metadata !"f", metadata !1, i32 688, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!341 = metadata !{i32 589835, metadata !137, i32 687, i32 0, metadata !1, i32 21} ; [ DW_TAG_lexical_block ]
!342 = metadata !{i32 590080, metadata !343, metadata !"r", metadata !1, i32 700, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!343 = metadata !{i32 589835, metadata !341, i32 700, i32 0, metadata !1, i32 22} ; [ DW_TAG_lexical_block ]
!344 = metadata !{i32 590081, metadata !138, metadata !"p", metadata !1, i32 1463, metadata !141, i32 0} ; [ DW_TAG_arg_variable ]
!345 = metadata !{i32 590080, metadata !346, metadata !"pc", metadata !1, i32 1465, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!346 = metadata !{i32 589835, metadata !138, i32 1463, i32 0, metadata !1, i32 23} ; [ DW_TAG_lexical_block ]
!347 = metadata !{i32 590081, metadata !142, metadata !"s", metadata !1, i32 1470, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!348 = metadata !{i32 590080, metadata !349, metadata !"sc", metadata !1, i32 1471, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!349 = metadata !{i32 589835, metadata !142, i32 1470, i32 0, metadata !1, i32 24} ; [ DW_TAG_lexical_block ]
!350 = metadata !{i32 590081, metadata !145, metadata !"buf", metadata !1, i32 1428, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!351 = metadata !{i32 590081, metadata !145, metadata !"size", metadata !1, i32 1428, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!352 = metadata !{i32 590080, metadata !353, metadata !"r", metadata !1, i32 1430, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!353 = metadata !{i32 589835, metadata !145, i32 1428, i32 0, metadata !1, i32 25} ; [ DW_TAG_lexical_block ]
!354 = metadata !{i32 590081, metadata !148, metadata !"s", metadata !1, i32 1476, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!355 = metadata !{i32 590080, metadata !356, metadata !"sc", metadata !1, i32 1477, metadata !13, i32 0} ; [ DW_TAG_auto_variable ]
!356 = metadata !{i32 589835, metadata !148, i32 1476, i32 0, metadata !1, i32 26} ; [ DW_TAG_lexical_block ]
!357 = metadata !{i32 590080, metadata !356, metadata !"i", metadata !1, i32 1478, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!358 = metadata !{i32 590080, metadata !359, metadata !"c", metadata !1, i32 1481, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!359 = metadata !{i32 589835, metadata !356, i32 1481, i32 0, metadata !1, i32 27} ; [ DW_TAG_lexical_block ]
!360 = metadata !{i32 590080, metadata !361, metadata !"cc", metadata !1, i32 1490, metadata !14, i32 0} ; [ DW_TAG_auto_variable ]
!361 = metadata !{i32 589835, metadata !359, i32 1490, i32 0, metadata !1, i32 28} ; [ DW_TAG_lexical_block ]
!362 = metadata !{i32 590081, metadata !151, metadata !"path", metadata !1, i32 1166, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!363 = metadata !{i32 590081, metadata !151, metadata !"buf", metadata !1, i32 1166, metadata !103, i32 0} ; [ DW_TAG_arg_variable ]
!364 = metadata !{i32 590080, metadata !365, metadata !"dfile", metadata !1, i32 1167, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!365 = metadata !{i32 589835, metadata !151, i32 1166, i32 0, metadata !1, i32 29} ; [ DW_TAG_lexical_block ]
!366 = metadata !{i32 590080, metadata !367, metadata !"r", metadata !1, i32 1176, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!367 = metadata !{i32 589835, metadata !365, i32 1176, i32 0, metadata !1, i32 30} ; [ DW_TAG_lexical_block ]
!368 = metadata !{i32 590081, metadata !154, metadata !"path", metadata !1, i32 807, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!369 = metadata !{i32 590081, metadata !154, metadata !"owner", metadata !1, i32 807, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!370 = metadata !{i32 590081, metadata !154, metadata !"group", metadata !1, i32 807, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!371 = metadata !{i32 590080, metadata !372, metadata !"df", metadata !1, i32 809, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!372 = metadata !{i32 589835, metadata !154, i32 807, i32 0, metadata !1, i32 31} ; [ DW_TAG_lexical_block ]
!373 = metadata !{i32 590080, metadata !374, metadata !"r", metadata !1, i32 814, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!374 = metadata !{i32 589835, metadata !372, i32 814, i32 0, metadata !1, i32 32} ; [ DW_TAG_lexical_block ]
!375 = metadata !{i32 590081, metadata !157, metadata !"path", metadata !1, i32 776, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!376 = metadata !{i32 590081, metadata !157, metadata !"owner", metadata !1, i32 776, metadata !90, i32 0} ; [ DW_TAG_arg_variable ]
!377 = metadata !{i32 590081, metadata !157, metadata !"group", metadata !1, i32 776, metadata !91, i32 0} ; [ DW_TAG_arg_variable ]
!378 = metadata !{i32 590080, metadata !379, metadata !"df", metadata !1, i32 777, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!379 = metadata !{i32 589835, metadata !157, i32 776, i32 0, metadata !1, i32 33} ; [ DW_TAG_lexical_block ]
!380 = metadata !{i32 590080, metadata !381, metadata !"r", metadata !1, i32 782, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!381 = metadata !{i32 589835, metadata !379, i32 782, i32 0, metadata !1, i32 34} ; [ DW_TAG_lexical_block ]
!382 = metadata !{i32 590081, metadata !158, metadata !"path", metadata !1, i32 669, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!383 = metadata !{i32 590080, metadata !384, metadata !"dfile", metadata !1, i32 670, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!384 = metadata !{i32 589835, metadata !158, i32 669, i32 0, metadata !1, i32 35} ; [ DW_TAG_lexical_block ]
!385 = metadata !{i32 590080, metadata !386, metadata !"r", metadata !1, i32 680, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!386 = metadata !{i32 589835, metadata !384, i32 680, i32 0, metadata !1, i32 36} ; [ DW_TAG_lexical_block ]
!387 = metadata !{i32 590081, metadata !159, metadata !"path", metadata !1, i32 256, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!388 = metadata !{i32 590081, metadata !159, metadata !"times", metadata !1, i32 256, metadata !162, i32 0} ; [ DW_TAG_arg_variable ]
!389 = metadata !{i32 590080, metadata !390, metadata !"dfile", metadata !1, i32 257, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!390 = metadata !{i32 589835, metadata !159, i32 256, i32 0, metadata !1, i32 37} ; [ DW_TAG_lexical_block ]
!391 = metadata !{i32 590080, metadata !390, metadata !"r", metadata !1, i32 269, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!392 = metadata !{i32 590081, metadata !170, metadata !"fd", metadata !1, i32 277, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!393 = metadata !{i32 590081, metadata !170, metadata !"path", metadata !1, i32 277, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!394 = metadata !{i32 590081, metadata !170, metadata !"times", metadata !1, i32 277, metadata !162, i32 0} ; [ DW_TAG_arg_variable ]
!395 = metadata !{i32 590080, metadata !396, metadata !"r", metadata !1, i32 295, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!396 = metadata !{i32 589835, metadata !170, i32 277, i32 0, metadata !1, i32 38} ; [ DW_TAG_lexical_block ]
!397 = metadata !{i32 590080, metadata !398, metadata !"f", metadata !1, i32 279, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!398 = metadata !{i32 589835, metadata !396, i32 279, i32 0, metadata !1, i32 39} ; [ DW_TAG_lexical_block ]
!399 = metadata !{i32 590081, metadata !173, metadata !"pathname", metadata !1, i32 73, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!400 = metadata !{i32 590081, metadata !173, metadata !"mode", metadata !1, i32 73, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!401 = metadata !{i32 590080, metadata !402, metadata !"dfile", metadata !1, i32 74, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!402 = metadata !{i32 589835, metadata !173, i32 73, i32 0, metadata !1, i32 40} ; [ DW_TAG_lexical_block ]
!403 = metadata !{i32 590080, metadata !404, metadata !"r", metadata !1, i32 81, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!404 = metadata !{i32 589835, metadata !402, i32 81, i32 0, metadata !1, i32 41} ; [ DW_TAG_lexical_block ]
!405 = metadata !{i32 590081, metadata !176, metadata !"fd", metadata !1, i32 1111, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!406 = metadata !{i32 590081, metadata !176, metadata !"cmd", metadata !1, i32 1111, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!407 = metadata !{i32 590080, metadata !408, metadata !"f", metadata !1, i32 1112, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!408 = metadata !{i32 589835, metadata !176, i32 1111, i32 0, metadata !1, i32 42} ; [ DW_TAG_lexical_block ]
!409 = metadata !{i32 590080, metadata !408, metadata !"ap", metadata !1, i32 1113, metadata !410, i32 0} ; [ DW_TAG_auto_variable ]
!410 = metadata !{i32 589846, metadata !411, metadata !"va_list", metadata !411, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !412} ; [ DW_TAG_typedef ]
!411 = metadata !{i32 589865, metadata !"unistd.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!412 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !413, metadata !420, i32 0, null} ; [ DW_TAG_array_type ]
!413 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !414, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !415, i32 0, null} ; [ DW_TAG_structure_type ]
!414 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!415 = metadata !{metadata !416, metadata !417, metadata !418, metadata !419}
!416 = metadata !{i32 589837, metadata !413, metadata !"gp_offset", metadata !414, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ]
!417 = metadata !{i32 589837, metadata !413, metadata !"fp_offset", metadata !414, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !11} ; [ DW_TAG_member ]
!418 = metadata !{i32 589837, metadata !413, metadata !"overflow_arg_area", metadata !414, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !141} ; [ DW_TAG_member ]
!419 = metadata !{i32 589837, metadata !413, metadata !"reg_save_area", metadata !414, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !141} ; [ DW_TAG_member ]
!420 = metadata !{metadata !421}
!421 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!422 = metadata !{i32 590080, metadata !408, metadata !"arg", metadata !1, i32 1114, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!423 = metadata !{i32 590080, metadata !424, metadata !"flags", metadata !1, i32 1133, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!424 = metadata !{i32 589835, metadata !408, i32 1133, i32 0, metadata !1, i32 43} ; [ DW_TAG_lexical_block ]
!425 = metadata !{i32 590080, metadata !426, metadata !"r", metadata !1, i32 1159, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!426 = metadata !{i32 589835, metadata !408, i32 1159, i32 0, metadata !1, i32 44} ; [ DW_TAG_lexical_block ]
!427 = metadata !{i32 590081, metadata !179, metadata !"fd", metadata !1, i32 961, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!428 = metadata !{i32 590081, metadata !179, metadata !"request", metadata !1, i32 961, metadata !23, i32 0} ; [ DW_TAG_arg_variable ]
!429 = metadata !{i32 590080, metadata !430, metadata !"f", metadata !1, i32 965, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!430 = metadata !{i32 589835, metadata !179, i32 961, i32 0, metadata !1, i32 45} ; [ DW_TAG_lexical_block ]
!431 = metadata !{i32 590080, metadata !430, metadata !"ap", metadata !1, i32 966, metadata !410, i32 0} ; [ DW_TAG_auto_variable ]
!432 = metadata !{i32 590080, metadata !430, metadata !"buf", metadata !1, i32 967, metadata !141, i32 0} ; [ DW_TAG_auto_variable ]
!433 = metadata !{i32 590080, metadata !434, metadata !"stat", metadata !1, i32 983, metadata !213, i32 0} ; [ DW_TAG_auto_variable ]
!434 = metadata !{i32 589835, metadata !430, i32 983, i32 0, metadata !1, i32 46} ; [ DW_TAG_lexical_block ]
!435 = metadata !{i32 590080, metadata !436, metadata !"ts", metadata !1, i32 987, metadata !437, i32 0} ; [ DW_TAG_auto_variable ]
!436 = metadata !{i32 589835, metadata !434, i32 987, i32 0, metadata !1, i32 47} ; [ DW_TAG_lexical_block ]
!437 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !438} ; [ DW_TAG_pointer_type ]
!438 = metadata !{i32 589843, metadata !1, metadata !"termios", metadata !439, i32 30, i64 480, i64 32, i64 0, i32 0, null, metadata !440, i32 0, null} ; [ DW_TAG_structure_type ]
!439 = metadata !{i32 589865, metadata !"termios.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!440 = metadata !{metadata !441, metadata !443, metadata !444, metadata !445, metadata !446, metadata !448, metadata !452, metadata !454}
!441 = metadata !{i32 589837, metadata !438, metadata !"c_iflag", metadata !439, i32 31, i64 32, i64 32, i64 0, i32 0, metadata !442} ; [ DW_TAG_member ]
!442 = metadata !{i32 589846, metadata !439, metadata !"tcflag_t", metadata !439, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!443 = metadata !{i32 589837, metadata !438, metadata !"c_oflag", metadata !439, i32 32, i64 32, i64 32, i64 32, i32 0, metadata !442} ; [ DW_TAG_member ]
!444 = metadata !{i32 589837, metadata !438, metadata !"c_cflag", metadata !439, i32 33, i64 32, i64 32, i64 64, i32 0, metadata !442} ; [ DW_TAG_member ]
!445 = metadata !{i32 589837, metadata !438, metadata !"c_lflag", metadata !439, i32 34, i64 32, i64 32, i64 96, i32 0, metadata !442} ; [ DW_TAG_member ]
!446 = metadata !{i32 589837, metadata !438, metadata !"c_line", metadata !439, i32 35, i64 8, i64 8, i64 128, i32 0, metadata !447} ; [ DW_TAG_member ]
!447 = metadata !{i32 589846, metadata !439, metadata !"cc_t", metadata !439, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ]
!448 = metadata !{i32 589837, metadata !438, metadata !"c_cc", metadata !439, i32 36, i64 256, i64 8, i64 136, i32 0, metadata !449} ; [ DW_TAG_member ]
!449 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 8, i64 0, i32 0, metadata !447, metadata !450, i32 0, null} ; [ DW_TAG_array_type ]
!450 = metadata !{metadata !451}
!451 = metadata !{i32 589857, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!452 = metadata !{i32 589837, metadata !438, metadata !"c_ispeed", metadata !439, i32 37, i64 32, i64 32, i64 416, i32 0, metadata !453} ; [ DW_TAG_member ]
!453 = metadata !{i32 589846, metadata !439, metadata !"speed_t", metadata !439, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!454 = metadata !{i32 589837, metadata !438, metadata !"c_ospeed", metadata !439, i32 38, i64 32, i64 32, i64 448, i32 0, metadata !453} ; [ DW_TAG_member ]
!455 = metadata !{i32 590080, metadata !456, metadata !"ws", metadata !1, i32 1056, metadata !457, i32 0} ; [ DW_TAG_auto_variable ]
!456 = metadata !{i32 589835, metadata !434, i32 1056, i32 0, metadata !1, i32 48} ; [ DW_TAG_lexical_block ]
!457 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !458} ; [ DW_TAG_pointer_type ]
!458 = metadata !{i32 589843, metadata !1, metadata !"winsize", metadata !459, i32 29, i64 64, i64 16, i64 0, i32 0, null, metadata !460, i32 0, null} ; [ DW_TAG_structure_type ]
!459 = metadata !{i32 589865, metadata !"ioctl-types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!460 = metadata !{metadata !461, metadata !462, metadata !463, metadata !464}
!461 = metadata !{i32 589837, metadata !458, metadata !"ws_row", metadata !459, i32 30, i64 16, i64 16, i64 0, i32 0, metadata !196} ; [ DW_TAG_member ]
!462 = metadata !{i32 589837, metadata !458, metadata !"ws_col", metadata !459, i32 31, i64 16, i64 16, i64 16, i32 0, metadata !196} ; [ DW_TAG_member ]
!463 = metadata !{i32 589837, metadata !458, metadata !"ws_xpixel", metadata !459, i32 32, i64 16, i64 16, i64 32, i32 0, metadata !196} ; [ DW_TAG_member ]
!464 = metadata !{i32 589837, metadata !458, metadata !"ws_ypixel", metadata !459, i32 33, i64 16, i64 16, i64 48, i32 0, metadata !196} ; [ DW_TAG_member ]
!465 = metadata !{i32 590080, metadata !466, metadata !"res", metadata !1, i32 1079, metadata !467, i32 0} ; [ DW_TAG_auto_variable ]
!466 = metadata !{i32 589835, metadata !434, i32 1079, i32 0, metadata !1, i32 49} ; [ DW_TAG_lexical_block ]
!467 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!468 = metadata !{i32 590080, metadata !469, metadata !"r", metadata !1, i32 1104, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!469 = metadata !{i32 589835, metadata !430, i32 1104, i32 0, metadata !1, i32 50} ; [ DW_TAG_lexical_block ]
!470 = metadata !{i32 590081, metadata !182, metadata !"fd", metadata !1, i32 303, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!471 = metadata !{i32 590080, metadata !472, metadata !"f", metadata !1, i32 305, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!472 = metadata !{i32 589835, metadata !182, i32 303, i32 0, metadata !1, i32 51} ; [ DW_TAG_lexical_block ]
!473 = metadata !{i32 590080, metadata !472, metadata !"r", metadata !1, i32 306, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!474 = metadata !{i32 590081, metadata !183, metadata !"oldfd", metadata !1, i32 1219, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!475 = metadata !{i32 590081, metadata !183, metadata !"newfd", metadata !1, i32 1219, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!476 = metadata !{i32 590080, metadata !477, metadata !"f", metadata !1, i32 1220, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!477 = metadata !{i32 589835, metadata !183, i32 1219, i32 0, metadata !1, i32 52} ; [ DW_TAG_lexical_block ]
!478 = metadata !{i32 590080, metadata !479, metadata !"f2", metadata !1, i32 1226, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!479 = metadata !{i32 589835, metadata !477, i32 1226, i32 0, metadata !1, i32 53} ; [ DW_TAG_lexical_block ]
!480 = metadata !{i32 590081, metadata !184, metadata !"oldfd", metadata !1, i32 1244, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!481 = metadata !{i32 590080, metadata !482, metadata !"f", metadata !1, i32 1245, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!482 = metadata !{i32 589835, metadata !184, i32 1244, i32 0, metadata !1, i32 54} ; [ DW_TAG_lexical_block ]
!483 = metadata !{i32 590080, metadata !484, metadata !"fd", metadata !1, i32 1250, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!484 = metadata !{i32 589835, metadata !482, i32 1251, i32 0, metadata !1, i32 55} ; [ DW_TAG_lexical_block ]
!485 = metadata !{i32 590081, metadata !185, metadata !"fd", metadata !1, i32 877, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!486 = metadata !{i32 590081, metadata !185, metadata !"dirp", metadata !1, i32 877, metadata !188, i32 0} ; [ DW_TAG_arg_variable ]
!487 = metadata !{i32 590081, metadata !185, metadata !"count", metadata !1, i32 877, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 590080, metadata !489, metadata !"f", metadata !1, i32 878, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!489 = metadata !{i32 589835, metadata !185, i32 877, i32 0, metadata !1, i32 56} ; [ DW_TAG_lexical_block ]
!490 = metadata !{i32 590080, metadata !491, metadata !"i", metadata !1, i32 892, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!491 = metadata !{i32 589835, metadata !489, i32 892, i32 0, metadata !1, i32 57} ; [ DW_TAG_lexical_block ]
!492 = metadata !{i32 590080, metadata !491, metadata !"pad", metadata !1, i32 892, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!493 = metadata !{i32 590080, metadata !491, metadata !"bytes", metadata !1, i32 892, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!494 = metadata !{i32 590080, metadata !495, metadata !"df", metadata !1, i32 902, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!495 = metadata !{i32 589835, metadata !491, i32 902, i32 0, metadata !1, i32 58} ; [ DW_TAG_lexical_block ]
!496 = metadata !{i32 590080, metadata !497, metadata !"os_pos", metadata !1, i32 925, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!497 = metadata !{i32 589835, metadata !489, i32 925, i32 0, metadata !1, i32 59} ; [ DW_TAG_lexical_block ]
!498 = metadata !{i32 590080, metadata !497, metadata !"res", metadata !1, i32 926, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!499 = metadata !{i32 590080, metadata !497, metadata !"s", metadata !1, i32 927, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!500 = metadata !{i32 590080, metadata !501, metadata !"pos", metadata !1, i32 943, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!501 = metadata !{i32 589835, metadata !497, i32 943, i32 0, metadata !1, i32 60} ; [ DW_TAG_lexical_block ]
!502 = metadata !{i32 590080, metadata !503, metadata !"dp", metadata !1, i32 949, metadata !188, i32 0} ; [ DW_TAG_auto_variable ]
!503 = metadata !{i32 589835, metadata !501, i32 949, i32 0, metadata !1, i32 61} ; [ DW_TAG_lexical_block ]
!504 = metadata !{i32 590081, metadata !203, metadata !"fd", metadata !1, i32 538, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!505 = metadata !{i32 590081, metadata !203, metadata !"offset", metadata !1, i32 538, metadata !69, i32 0} ; [ DW_TAG_arg_variable ]
!506 = metadata !{i32 590081, metadata !203, metadata !"whence", metadata !1, i32 538, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!507 = metadata !{i32 590080, metadata !508, metadata !"new_off", metadata !1, i32 539, metadata !69, i32 0} ; [ DW_TAG_auto_variable ]
!508 = metadata !{i32 589835, metadata !203, i32 538, i32 0, metadata !1, i32 62} ; [ DW_TAG_lexical_block ]
!509 = metadata !{i32 590080, metadata !508, metadata !"f", metadata !1, i32 540, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!510 = metadata !{i32 590081, metadata !206, metadata !"fd", metadata !1, i32 821, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!511 = metadata !{i32 590081, metadata !206, metadata !"buf", metadata !1, i32 821, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!512 = metadata !{i32 590080, metadata !513, metadata !"f", metadata !1, i32 822, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!513 = metadata !{i32 589835, metadata !206, i32 821, i32 0, metadata !1, i32 63} ; [ DW_TAG_lexical_block ]
!514 = metadata !{i32 590080, metadata !515, metadata !"r", metadata !1, i32 831, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 589835, metadata !513, i32 831, i32 0, metadata !1, i32 64} ; [ DW_TAG_lexical_block ]
!516 = metadata !{i32 590081, metadata !207, metadata !"path", metadata !1, i32 650, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!517 = metadata !{i32 590081, metadata !207, metadata !"buf", metadata !1, i32 650, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!518 = metadata !{i32 590080, metadata !519, metadata !"dfile", metadata !1, i32 651, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!519 = metadata !{i32 589835, metadata !207, i32 650, i32 0, metadata !1, i32 65} ; [ DW_TAG_lexical_block ]
!520 = metadata !{i32 590080, metadata !521, metadata !"r", metadata !1, i32 659, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!521 = metadata !{i32 589835, metadata !519, i32 659, i32 0, metadata !1, i32 66} ; [ DW_TAG_lexical_block ]
!522 = metadata !{i32 590081, metadata !210, metadata !"fd", metadata !1, i32 614, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!523 = metadata !{i32 590081, metadata !210, metadata !"path", metadata !1, i32 614, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!524 = metadata !{i32 590081, metadata !210, metadata !"buf", metadata !1, i32 614, metadata !213, i32 0} ; [ DW_TAG_arg_variable ]
!525 = metadata !{i32 590081, metadata !210, metadata !"flags", metadata !1, i32 614, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!526 = metadata !{i32 590080, metadata !527, metadata !"dfile", metadata !1, i32 628, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!527 = metadata !{i32 589835, metadata !210, i32 614, i32 0, metadata !1, i32 67} ; [ DW_TAG_lexical_block ]
!528 = metadata !{i32 590080, metadata !527, metadata !"r", metadata !1, i32 635, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!529 = metadata !{i32 590080, metadata !530, metadata !"f", metadata !1, i32 616, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!530 = metadata !{i32 589835, metadata !527, i32 616, i32 0, metadata !1, i32 68} ; [ DW_TAG_lexical_block ]
!531 = metadata !{i32 590081, metadata !233, metadata !"path", metadata !1, i32 595, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 590081, metadata !233, metadata !"buf", metadata !1, i32 595, metadata !16, i32 0} ; [ DW_TAG_arg_variable ]
!533 = metadata !{i32 590080, metadata !534, metadata !"dfile", metadata !1, i32 596, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!534 = metadata !{i32 589835, metadata !233, i32 595, i32 0, metadata !1, i32 69} ; [ DW_TAG_lexical_block ]
!535 = metadata !{i32 590080, metadata !536, metadata !"r", metadata !1, i32 604, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!536 = metadata !{i32 589835, metadata !534, i32 604, i32 0, metadata !1, i32 70} ; [ DW_TAG_lexical_block ]
!537 = metadata !{i32 590081, metadata !234, metadata !"fd", metadata !1, i32 335, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!538 = metadata !{i32 590081, metadata !234, metadata !"buf", metadata !1, i32 335, metadata !141, i32 0} ; [ DW_TAG_arg_variable ]
!539 = metadata !{i32 590081, metadata !234, metadata !"count", metadata !1, i32 335, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!540 = metadata !{i32 590080, metadata !541, metadata !"f", metadata !1, i32 337, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!541 = metadata !{i32 589835, metadata !234, i32 335, i32 0, metadata !1, i32 71} ; [ DW_TAG_lexical_block ]
!542 = metadata !{i32 590080, metadata !543, metadata !"r", metadata !1, i32 364, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!543 = metadata !{i32 589835, metadata !541, i32 365, i32 0, metadata !1, i32 72} ; [ DW_TAG_lexical_block ]
!544 = metadata !{i32 590081, metadata !237, metadata !"df", metadata !1, i32 708, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!545 = metadata !{i32 590081, metadata !237, metadata !"mode", metadata !1, i32 708, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!546 = metadata !{i32 590081, metadata !240, metadata !"fd", metadata !1, i32 743, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!547 = metadata !{i32 590081, metadata !240, metadata !"mode", metadata !1, i32 743, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!548 = metadata !{i32 590080, metadata !549, metadata !"f", metadata !1, i32 746, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!549 = metadata !{i32 589835, metadata !240, i32 743, i32 0, metadata !1, i32 74} ; [ DW_TAG_lexical_block ]
!550 = metadata !{i32 590080, metadata !551, metadata !"r", metadata !1, i32 763, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!551 = metadata !{i32 589835, metadata !549, i32 763, i32 0, metadata !1, i32 75} ; [ DW_TAG_lexical_block ]
!552 = metadata !{i32 590081, metadata !243, metadata !"path", metadata !1, i32 721, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!553 = metadata !{i32 590081, metadata !243, metadata !"mode", metadata !1, i32 721, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!554 = metadata !{i32 590080, metadata !555, metadata !"dfile", metadata !1, i32 724, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!555 = metadata !{i32 589835, metadata !243, i32 721, i32 0, metadata !1, i32 76} ; [ DW_TAG_lexical_block ]
!556 = metadata !{i32 590080, metadata !557, metadata !"r", metadata !1, i32 736, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!557 = metadata !{i32 589835, metadata !555, i32 736, i32 0, metadata !1, i32 77} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 590081, metadata !246, metadata !"pathname", metadata !1, i32 128, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!559 = metadata !{i32 590081, metadata !246, metadata !"flags", metadata !1, i32 128, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!560 = metadata !{i32 590081, metadata !246, metadata !"mode", metadata !1, i32 128, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!561 = metadata !{i32 590080, metadata !562, metadata !"df", metadata !1, i32 129, metadata !5, i32 0} ; [ DW_TAG_auto_variable ]
!562 = metadata !{i32 589835, metadata !246, i32 128, i32 0, metadata !1, i32 78} ; [ DW_TAG_lexical_block ]
!563 = metadata !{i32 590080, metadata !562, metadata !"f", metadata !1, i32 130, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!564 = metadata !{i32 590080, metadata !562, metadata !"fd", metadata !1, i32 131, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!565 = metadata !{i32 590080, metadata !566, metadata !"os_fd", metadata !1, i32 181, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!566 = metadata !{i32 589835, metadata !562, i32 181, i32 0, metadata !1, i32 79} ; [ DW_TAG_lexical_block ]
!567 = metadata !{i32 590081, metadata !249, metadata !"basefd", metadata !1, i32 201, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!568 = metadata !{i32 590081, metadata !249, metadata !"pathname", metadata !1, i32 201, metadata !57, i32 0} ; [ DW_TAG_arg_variable ]
!569 = metadata !{i32 590081, metadata !249, metadata !"flags", metadata !1, i32 201, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!570 = metadata !{i32 590081, metadata !249, metadata !"mode", metadata !1, i32 201, metadata !75, i32 0} ; [ DW_TAG_arg_variable ]
!571 = metadata !{i32 590080, metadata !572, metadata !"f", metadata !1, i32 202, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!572 = metadata !{i32 589835, metadata !249, i32 201, i32 0, metadata !1, i32 80} ; [ DW_TAG_lexical_block ]
!573 = metadata !{i32 590080, metadata !572, metadata !"fd", metadata !1, i32 203, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!574 = metadata !{i32 590080, metadata !572, metadata !"os_fd", metadata !1, i32 236, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!575 = metadata !{i32 590080, metadata !576, metadata !"bf", metadata !1, i32 205, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!576 = metadata !{i32 589835, metadata !572, i32 205, i32 0, metadata !1, i32 81} ; [ DW_TAG_lexical_block ]
!577 = metadata !{i32 590081, metadata !252, metadata !"fd", metadata !1, i32 403, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!578 = metadata !{i32 590081, metadata !252, metadata !"buf", metadata !1, i32 403, metadata !141, i32 0} ; [ DW_TAG_arg_variable ]
!579 = metadata !{i32 590081, metadata !252, metadata !"count", metadata !1, i32 403, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!580 = metadata !{i32 590081, metadata !252, metadata !"offset", metadata !1, i32 403, metadata !255, i32 0} ; [ DW_TAG_arg_variable ]
!581 = metadata !{i32 590080, metadata !582, metadata !"sock", metadata !1, i32 405, metadata !583, i32 0} ; [ DW_TAG_auto_variable ]
!582 = metadata !{i32 589835, metadata !252, i32 403, i32 0, metadata !1, i32 82} ; [ DW_TAG_lexical_block ]
!583 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !584} ; [ DW_TAG_pointer_type ]
!584 = metadata !{i32 589846, metadata !585, metadata !"sym_socket", metadata !585, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !586} ; [ DW_TAG_typedef ]
!585 = metadata !{i32 589865, metadata !"common.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!586 = metadata !{i32 589843, metadata !1, metadata !"socket", metadata !585, i32 13, i64 576, i64 64, i64 0, i32 0, null, metadata !587, i32 0, null} ; [ DW_TAG_structure_type ]
!587 = metadata !{metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !612, metadata !613, metadata !636, metadata !637, metadata !639, metadata !640}
!588 = metadata !{i32 589837, metadata !586, metadata !"status", metadata !585, i32 28, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ]
!589 = metadata !{i32 589837, metadata !586, metadata !"type", metadata !585, i32 29, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ]
!590 = metadata !{i32 589837, metadata !586, metadata !"domain", metadata !585, i32 30, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ]
!591 = metadata !{i32 589837, metadata !586, metadata !"protocol", metadata !585, i32 31, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ]
!592 = metadata !{i32 589837, metadata !586, metadata !"local_end", metadata !585, i32 33, i64 64, i64 64, i64 128, i32 0, metadata !593} ; [ DW_TAG_member ]
!593 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ]
!594 = metadata !{i32 589846, metadata !585, metadata !"end_point_t", metadata !585, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ]
!595 = metadata !{i32 589843, metadata !1, metadata !"", metadata !585, i32 15, i64 192, i64 64, i64 0, i32 0, null, metadata !596, i32 0, null} ; [ DW_TAG_structure_type ]
!596 = metadata !{metadata !597, metadata !608, metadata !610, metadata !611}
!597 = metadata !{i32 589837, metadata !595, metadata !"addr", metadata !585, i32 16, i64 64, i64 64, i64 0, i32 0, metadata !598} ; [ DW_TAG_member ]
!598 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !599} ; [ DW_TAG_pointer_type ]
!599 = metadata !{i32 589843, metadata !1, metadata !"sockaddr", metadata !600, i32 181, i64 128, i64 16, i64 0, i32 0, null, metadata !601, i32 0, null} ; [ DW_TAG_structure_type ]
!600 = metadata !{i32 589865, metadata !"socket.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!601 = metadata !{metadata !602, metadata !604}
!602 = metadata !{i32 589837, metadata !599, metadata !"sa_family", metadata !600, i32 182, i64 16, i64 16, i64 0, i32 0, metadata !603} ; [ DW_TAG_member ]
!603 = metadata !{i32 589846, metadata !600, metadata !"sa_family_t", metadata !600, i32 181, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ]
!604 = metadata !{i32 589837, metadata !599, metadata !"sa_data", metadata !600, i32 183, i64 112, i64 8, i64 16, i32 0, metadata !605} ; [ DW_TAG_member ]
!605 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 112, i64 8, i64 0, i32 0, metadata !14, metadata !606, i32 0, null} ; [ DW_TAG_array_type ]
!606 = metadata !{metadata !607}
!607 = metadata !{i32 589857, i64 0, i64 13}      ; [ DW_TAG_subrange_type ]
!608 = metadata !{i32 589837, metadata !595, metadata !"socket", metadata !585, i32 18, i64 64, i64 64, i64 64, i32 0, metadata !609} ; [ DW_TAG_member ]
!609 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !586} ; [ DW_TAG_pointer_type ]
!610 = metadata !{i32 589837, metadata !595, metadata !"refcount", metadata !585, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !11} ; [ DW_TAG_member ]
!611 = metadata !{i32 589837, metadata !595, metadata !"allocated", metadata !585, i32 21, i64 8, i64 8, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ]
!612 = metadata !{i32 589837, metadata !586, metadata !"remote_end", metadata !585, i32 34, i64 64, i64 64, i64 192, i32 0, metadata !593} ; [ DW_TAG_member ]
!613 = metadata !{i32 589837, metadata !586, metadata !"out", metadata !585, i32 37, i64 64, i64 64, i64 256, i32 0, metadata !614} ; [ DW_TAG_member ]
!614 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !615} ; [ DW_TAG_pointer_type ]
!615 = metadata !{i32 589846, metadata !585, metadata !"stream_buffer_t", metadata !585, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !616} ; [ DW_TAG_typedef ]
!616 = metadata !{i32 589843, metadata !1, metadata !"", metadata !617, i32 27, i64 640, i64 64, i64 0, i32 0, null, metadata !618, i32 0, null} ; [ DW_TAG_structure_type ]
!617 = metadata !{i32 589865, metadata !"buffers.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!618 = metadata !{metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !632, metadata !633, metadata !634, metadata !635}
!619 = metadata !{i32 589837, metadata !616, metadata !"contents", metadata !617, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ]
!620 = metadata !{i32 589837, metadata !616, metadata !"max_size", metadata !617, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ]
!621 = metadata !{i32 589837, metadata !616, metadata !"max_rsize", metadata !617, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !96} ; [ DW_TAG_member ]
!622 = metadata !{i32 589837, metadata !616, metadata !"start", metadata !617, i32 32, i64 64, i64 64, i64 192, i32 0, metadata !96} ; [ DW_TAG_member ]
!623 = metadata !{i32 589837, metadata !616, metadata !"size", metadata !617, i32 33, i64 64, i64 64, i64 256, i32 0, metadata !96} ; [ DW_TAG_member ]
!624 = metadata !{i32 589837, metadata !616, metadata !"evt_queue", metadata !617, i32 35, i64 128, i64 64, i64 320, i32 0, metadata !625} ; [ DW_TAG_member ]
!625 = metadata !{i32 589846, metadata !617, metadata !"event_queue_t", metadata !617, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_typedef ]
!626 = metadata !{i32 589843, metadata !1, metadata !"", metadata !617, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !627, i32 0, null} ; [ DW_TAG_structure_type ]
!627 = metadata !{metadata !628, metadata !631}
!628 = metadata !{i32 589837, metadata !626, metadata !"queue", metadata !617, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_member ]
!629 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !630} ; [ DW_TAG_pointer_type ]
!630 = metadata !{i32 589846, metadata !617, metadata !"wlist_id_t", metadata !617, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!631 = metadata !{i32 589837, metadata !626, metadata !"count", metadata !617, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ]
!632 = metadata !{i32 589837, metadata !616, metadata !"empty_wlist", metadata !617, i32 36, i64 64, i64 64, i64 448, i32 0, metadata !630} ; [ DW_TAG_member ]
!633 = metadata !{i32 589837, metadata !616, metadata !"full_wlist", metadata !617, i32 37, i64 64, i64 64, i64 512, i32 0, metadata !630} ; [ DW_TAG_member ]
!634 = metadata !{i32 589837, metadata !616, metadata !"queued", metadata !617, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !11} ; [ DW_TAG_member ]
!635 = metadata !{i32 589837, metadata !616, metadata !"status", metadata !617, i32 40, i64 16, i64 16, i64 608, i32 0, metadata !196} ; [ DW_TAG_member ]
!636 = metadata !{i32 589837, metadata !586, metadata !"in", metadata !585, i32 38, i64 64, i64 64, i64 320, i32 0, metadata !614} ; [ DW_TAG_member ]
!637 = metadata !{i32 589837, metadata !586, metadata !"conn_evt_queue", metadata !585, i32 41, i64 64, i64 64, i64 384, i32 0, metadata !638} ; [ DW_TAG_member ]
!638 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ]
!639 = metadata !{i32 589837, metadata !586, metadata !"conn_wlist", metadata !585, i32 42, i64 64, i64 64, i64 448, i32 0, metadata !630} ; [ DW_TAG_member ]
!640 = metadata !{i32 589837, metadata !586, metadata !"listen", metadata !585, i32 45, i64 64, i64 64, i64 512, i32 0, metadata !614} ; [ DW_TAG_member ]
!641 = metadata !{i32 590081, metadata !256, metadata !"fd", metadata !1, i32 440, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!642 = metadata !{i32 590081, metadata !256, metadata !"buf", metadata !1, i32 440, metadata !141, i32 0} ; [ DW_TAG_arg_variable ]
!643 = metadata !{i32 590081, metadata !256, metadata !"count", metadata !1, i32 440, metadata !96, i32 0} ; [ DW_TAG_arg_variable ]
!644 = metadata !{i32 590080, metadata !645, metadata !"f", metadata !1, i32 445, metadata !62, i32 0} ; [ DW_TAG_auto_variable ]
!645 = metadata !{i32 589835, metadata !646, i32 447, i32 0, metadata !1, i32 84} ; [ DW_TAG_lexical_block ]
!646 = metadata !{i32 589835, metadata !256, i32 440, i32 0, metadata !1, i32 83} ; [ DW_TAG_lexical_block ]
!647 = metadata !{i32 590080, metadata !648, metadata !"r", metadata !1, i32 463, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!648 = metadata !{i32 589835, metadata !645, i32 465, i32 0, metadata !1, i32 85} ; [ DW_TAG_lexical_block ]
!649 = metadata !{i32 590080, metadata !650, metadata !"actual_count", metadata !1, i32 488, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!650 = metadata !{i32 589835, metadata !645, i32 488, i32 0, metadata !1, i32 86} ; [ DW_TAG_lexical_block ]
!651 = metadata !{i32 590080, metadata !652, metadata !"type", metadata !1, i32 527, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!652 = metadata !{i32 589835, metadata !646, i32 519, i32 0, metadata !1, i32 87} ; [ DW_TAG_lexical_block ]
!653 = metadata !{i32 590081, metadata !257, metadata !"fd", metadata !1, i32 410, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!654 = metadata !{i32 590081, metadata !257, metadata !"iov", metadata !1, i32 410, metadata !260, i32 0} ; [ DW_TAG_arg_variable ]
!655 = metadata !{i32 590081, metadata !257, metadata !"iovcnt", metadata !1, i32 410, metadata !35, i32 0} ; [ DW_TAG_arg_variable ]
!656 = metadata !{i32 590080, metadata !657, metadata !"count", metadata !1, i32 411, metadata !96, i32 0} ; [ DW_TAG_auto_variable ]
!657 = metadata !{i32 589835, metadata !257, i32 410, i32 0, metadata !1, i32 88} ; [ DW_TAG_lexical_block ]
!658 = metadata !{i32 590080, metadata !657, metadata !"i", metadata !1, i32 413, metadata !35, i32 0} ; [ DW_TAG_auto_variable ]
!659 = metadata !{i32 590080, metadata !660, metadata !"res", metadata !1, i32 423, metadata !95, i32 0} ; [ DW_TAG_auto_variable ]
!660 = metadata !{i32 589835, metadata !657, i32 415, i32 0, metadata !1, i32 89} ; [ DW_TAG_lexical_block ]
!661 = metadata !{i32 73, i32 0, metadata !173, null}
!662 = metadata !{i32 39, i32 0, metadata !0, metadata !663}
!663 = metadata !{i32 74, i32 0, metadata !402, null}
!664 = metadata !{i32 40, i32 0, metadata !269, metadata !663}
!665 = metadata !{i32 43, i32 0, metadata !269, metadata !663}
!666 = metadata !{i32 46, i32 0, metadata !269, metadata !663}
!667 = metadata !{i32 47, i32 0, metadata !269, metadata !663}
!668 = metadata !{i32 48, i32 0, metadata !272, metadata !663}
!669 = metadata !{null}
!670 = metadata !{i32 49, i32 0, metadata !272, metadata !663}
!671 = metadata !{i32 76, i32 0, metadata !402, null}
!672 = metadata !{i32 1476, i32 0, metadata !148, metadata !673}
!673 = metadata !{i32 81, i32 0, metadata !404, null}
!674 = metadata !{i32 1463, i32 0, metadata !138, metadata !675}
!675 = metadata !{i32 1477, i32 0, metadata !356, metadata !673}
!676 = metadata !{i32 1465, i32 0, metadata !346, metadata !675}
!677 = metadata !{i32 1466, i32 0, metadata !346, metadata !675}
!678 = metadata !{i32 0}
!679 = metadata !{i32 1480, i32 0, metadata !356, metadata !673}
!680 = metadata !{i32 1481, i32 0, metadata !359, metadata !673}
!681 = metadata !{i32 1482, i32 0, metadata !359, metadata !673}
!682 = metadata !{i32 1484, i32 0, metadata !359, metadata !673}
!683 = metadata !{i32 1487, i32 0, metadata !359, metadata !673}
!684 = metadata !{i32 1490, i32 0, metadata !361, metadata !673}
!685 = metadata !{i32 1491, i32 0, metadata !361, metadata !673}
!686 = metadata !{i32 1492, i32 0, metadata !361, metadata !673}
!687 = metadata !{i32 1493, i32 0, metadata !361, metadata !673}
!688 = metadata !{i32 82, i32 0, metadata !404, null}
!689 = metadata !{i32 83, i32 0, metadata !404, null}
!690 = metadata !{i32 79, i32 0, metadata !402, null}
!691 = metadata !{i32 88, i32 0, metadata !72, null}
!692 = metadata !{i32 89, i32 0, metadata !279, null}
!693 = metadata !{i32 90, i32 0, metadata !279, null}
!694 = metadata !{i32 91, i32 0, metadata !279, null}
!695 = metadata !{i32 1505, i32 0, metadata !79, null}
!696 = metadata !{i32 1506, i32 0, metadata !697, null}
!697 = metadata !{i32 589835, metadata !79, i32 1505, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!698 = metadata !{i32 1507, i32 0, metadata !697, null}
!699 = metadata !{i32 1508, i32 0, metadata !697, null}
!700 = metadata !{i32 1511, i32 0, metadata !697, null}
!701 = metadata !{i32 1515, i32 0, metadata !697, null}
!702 = metadata !{i32 1516, i32 0, metadata !697, null}
!703 = metadata !{i32 1517, i32 0, metadata !697, null}
!704 = metadata !{i32 1302, i32 0, metadata !82, null}
!705 = metadata !{i32 39, i32 0, metadata !0, metadata !706}
!706 = metadata !{i32 1305, i32 0, metadata !291, null}
!707 = metadata !{i32 40, i32 0, metadata !269, metadata !706}
!708 = metadata !{i32 43, i32 0, metadata !269, metadata !706}
!709 = metadata !{i32 46, i32 0, metadata !269, metadata !706}
!710 = metadata !{i32 47, i32 0, metadata !269, metadata !706}
!711 = metadata !{i32 48, i32 0, metadata !272, metadata !706}
!712 = metadata !{i32 49, i32 0, metadata !272, metadata !706}
!713 = metadata !{i32 1306, i32 0, metadata !291, null}
!714 = metadata !{i32 1308, i32 0, metadata !291, null}
!715 = metadata !{i32 1309, i32 0, metadata !291, null}
!716 = metadata !{i32 1310, i32 0, metadata !291, null}
!717 = metadata !{i32 1311, i32 0, metadata !291, null}
!718 = metadata !{i32 1312, i32 0, metadata !291, null}
!719 = metadata !{i32 1313, i32 0, metadata !291, null}
!720 = metadata !{i32 1315, i32 0, metadata !291, null}
!721 = metadata !{i32 1316, i32 0, metadata !291, null}
!722 = metadata !{i32 1320, i32 0, metadata !291, null}
!723 = metadata !{i32 1321, i32 0, metadata !291, null}
!724 = metadata !{i32 1322, i32 0, metadata !291, null}
!725 = metadata !{i32 1281, i32 0, metadata !85, null}
!726 = metadata !{i32 39, i32 0, metadata !0, metadata !727}
!727 = metadata !{i32 1282, i32 0, metadata !294, null}
!728 = metadata !{i32 40, i32 0, metadata !269, metadata !727}
!729 = metadata !{i32 43, i32 0, metadata !269, metadata !727}
!730 = metadata !{i32 46, i32 0, metadata !269, metadata !727}
!731 = metadata !{i32 47, i32 0, metadata !269, metadata !727}
!732 = metadata !{i32 48, i32 0, metadata !272, metadata !727}
!733 = metadata !{i32 49, i32 0, metadata !272, metadata !727}
!734 = metadata !{i32 1283, i32 0, metadata !294, null}
!735 = metadata !{i32 1285, i32 0, metadata !294, null}
!736 = metadata !{i32 1286, i32 0, metadata !294, null}
!737 = metadata !{i32 1287, i32 0, metadata !294, null}
!738 = metadata !{i32 1288, i32 0, metadata !294, null}
!739 = metadata !{i32 1289, i32 0, metadata !294, null}
!740 = metadata !{i32 1290, i32 0, metadata !294, null}
!741 = metadata !{i32 1292, i32 0, metadata !294, null}
!742 = metadata !{i32 1293, i32 0, metadata !294, null}
!743 = metadata !{i32 1297, i32 0, metadata !294, null}
!744 = metadata !{i32 1298, i32 0, metadata !294, null}
!745 = metadata !{i32 1299, i32 0, metadata !294, null}
!746 = metadata !{i32 1263, i32 0, metadata !86, null}
!747 = metadata !{i32 39, i32 0, metadata !0, metadata !748}
!748 = metadata !{i32 1264, i32 0, metadata !297, null}
!749 = metadata !{i32 40, i32 0, metadata !269, metadata !748}
!750 = metadata !{i32 43, i32 0, metadata !269, metadata !748}
!751 = metadata !{i32 46, i32 0, metadata !269, metadata !748}
!752 = metadata !{i32 47, i32 0, metadata !269, metadata !748}
!753 = metadata !{i32 48, i32 0, metadata !272, metadata !748}
!754 = metadata !{i32 49, i32 0, metadata !272, metadata !748}
!755 = metadata !{i32 1265, i32 0, metadata !297, null}
!756 = metadata !{i32 1267, i32 0, metadata !297, null}
!757 = metadata !{i32 1268, i32 0, metadata !297, null}
!758 = metadata !{i32 1269, i32 0, metadata !297, null}
!759 = metadata !{i32 1271, i32 0, metadata !297, null}
!760 = metadata !{i32 1272, i32 0, metadata !297, null}
!761 = metadata !{i32 1276, i32 0, metadata !297, null}
!762 = metadata !{i32 1277, i32 0, metadata !297, null}
!763 = metadata !{i32 1278, i32 0, metadata !297, null}
!764 = metadata !{i32 1325, i32 0, metadata !92, null}
!765 = metadata !{i32 39, i32 0, metadata !0, metadata !766}
!766 = metadata !{i32 1326, i32 0, metadata !305, null}
!767 = metadata !{i32 40, i32 0, metadata !269, metadata !766}
!768 = metadata !{i32 43, i32 0, metadata !269, metadata !766}
!769 = metadata !{i32 46, i32 0, metadata !269, metadata !766}
!770 = metadata !{i32 47, i32 0, metadata !269, metadata !766}
!771 = metadata !{i32 48, i32 0, metadata !272, metadata !766}
!772 = metadata !{i32 49, i32 0, metadata !272, metadata !766}
!773 = metadata !{i32 1327, i32 0, metadata !305, null}
!774 = metadata !{i32 1330, i32 0, metadata !305, null}
!775 = metadata !{i32 1331, i32 0, metadata !305, null}
!776 = metadata !{i32 1332, i32 0, metadata !305, null}
!777 = metadata !{i32 1333, i32 0, metadata !305, null}
!778 = metadata !{i32 1334, i32 0, metadata !305, null}
!779 = metadata !{i32 1335, i32 0, metadata !305, null}
!780 = metadata !{i32 1336, i32 0, metadata !305, null}
!781 = metadata !{i32 1338, i32 0, metadata !305, null}
!782 = metadata !{i32 1339, i32 0, metadata !305, null}
!783 = metadata !{i32 1342, i32 0, metadata !307, null}
!784 = metadata !{i32 1343, i32 0, metadata !307, null}
!785 = metadata !{i32 1344, i32 0, metadata !307, null}
!786 = metadata !{i32 1345, i32 0, metadata !307, null}
!787 = metadata !{i32 1203, i32 0, metadata !97, null}
!788 = metadata !{i32 63, i32 0, metadata !59, metadata !789}
!789 = metadata !{i32 1204, i32 0, metadata !310, null}
!790 = metadata !{i32 64, i32 0, metadata !276, metadata !789}
!791 = metadata !{i32 65, i32 0, metadata !275, metadata !789}
!792 = metadata !{i32 66, i32 0, metadata !275, metadata !789}
!793 = metadata !{i32 1206, i32 0, metadata !310, null}
!794 = metadata !{i32 1207, i32 0, metadata !310, null}
!795 = metadata !{i32 1208, i32 0, metadata !310, null}
!796 = metadata !{i32 1209, i32 0, metadata !310, null}
!797 = metadata !{i32 1212, i32 0, metadata !312, null}
!798 = metadata !{i32 1213, i32 0, metadata !312, null}
!799 = metadata !{i32 1214, i32 0, metadata !312, null}
!800 = metadata !{i32 1183, i32 0, metadata !100, null}
!801 = metadata !{i32 63, i32 0, metadata !59, metadata !802}
!802 = metadata !{i32 1184, i32 0, metadata !316, null}
!803 = metadata !{i32 64, i32 0, metadata !276, metadata !802}
!804 = metadata !{i32 65, i32 0, metadata !275, metadata !802}
!805 = metadata !{i32 66, i32 0, metadata !275, metadata !802}
!806 = metadata !{i32 1186, i32 0, metadata !316, null}
!807 = metadata !{i32 1187, i32 0, metadata !316, null}
!808 = metadata !{i32 1188, i32 0, metadata !316, null}
!809 = metadata !{i32 1191, i32 0, metadata !316, null}
!810 = metadata !{i32 1192, i32 0, metadata !316, null}
!811 = metadata !{i32 1193, i32 0, metadata !316, null}
!812 = metadata !{i32 1194, i32 0, metadata !316, null}
!813 = metadata !{i32 1196, i32 0, metadata !318, null}
!814 = metadata !{i32 1197, i32 0, metadata !318, null}
!815 = metadata !{i32 1198, i32 0, metadata !318, null}
!816 = metadata !{i32 844, i32 0, metadata !131, null}
!817 = metadata !{i32 63, i32 0, metadata !59, metadata !818}
!818 = metadata !{i32 846, i32 0, metadata !322, null}
!819 = metadata !{i32 64, i32 0, metadata !276, metadata !818}
!820 = metadata !{i32 65, i32 0, metadata !275, metadata !818}
!821 = metadata !{i32 66, i32 0, metadata !275, metadata !818}
!822 = metadata !{i32 848, i32 0, metadata !322, null}
!823 = metadata !{i32 850, i32 0, metadata !322, null}
!824 = metadata !{i32 851, i32 0, metadata !322, null}
!825 = metadata !{i32 852, i32 0, metadata !322, null}
!826 = metadata !{i32 855, i32 0, metadata !322, null}
!827 = metadata !{i32 856, i32 0, metadata !322, null}
!828 = metadata !{i32 857, i32 0, metadata !322, null}
!829 = metadata !{i32 858, i32 0, metadata !322, null}
!830 = metadata !{i32 861, i32 0, metadata !322, null}
!831 = metadata !{i32 862, i32 0, metadata !322, null}
!832 = metadata !{i32 863, i32 0, metadata !322, null}
!833 = metadata !{i32 864, i32 0, metadata !322, null}
!834 = metadata !{i32 867, i32 0, metadata !324, null}
!835 = metadata !{i32 871, i32 0, metadata !324, null}
!836 = metadata !{i32 872, i32 0, metadata !324, null}
!837 = metadata !{i32 789, i32 0, metadata !134, null}
!838 = metadata !{i32 63, i32 0, metadata !59, metadata !839}
!839 = metadata !{i32 790, i32 0, metadata !336, null}
!840 = metadata !{i32 64, i32 0, metadata !276, metadata !839}
!841 = metadata !{i32 65, i32 0, metadata !275, metadata !839}
!842 = metadata !{i32 66, i32 0, metadata !275, metadata !839}
!843 = metadata !{i32 792, i32 0, metadata !336, null}
!844 = metadata !{i32 793, i32 0, metadata !336, null}
!845 = metadata !{i32 794, i32 0, metadata !336, null}
!846 = metadata !{i32 797, i32 0, metadata !336, null}
!847 = metadata !{%struct.exe_disk_file_t* null}
!848 = metadata !{i32 770, i32 0, metadata !87, metadata !849}
!849 = metadata !{i32 798, i32 0, metadata !336, null}
!850 = metadata !{i32 771, i32 0, metadata !851, metadata !849}
!851 = metadata !{i32 589835, metadata !87, i32 770, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!852 = metadata !{i32 772, i32 0, metadata !851, metadata !849}
!853 = metadata !{i32 800, i32 0, metadata !338, null}
!854 = metadata !{i32 801, i32 0, metadata !338, null}
!855 = metadata !{i32 802, i32 0, metadata !338, null}
!856 = metadata !{i32 687, i32 0, metadata !137, null}
!857 = metadata !{i32 63, i32 0, metadata !59, metadata !858}
!858 = metadata !{i32 688, i32 0, metadata !341, null}
!859 = metadata !{i32 64, i32 0, metadata !276, metadata !858}
!860 = metadata !{i32 65, i32 0, metadata !275, metadata !858}
!861 = metadata !{i32 66, i32 0, metadata !275, metadata !858}
!862 = metadata !{i32 690, i32 0, metadata !341, null}
!863 = metadata !{i32 691, i32 0, metadata !341, null}
!864 = metadata !{i32 692, i32 0, metadata !341, null}
!865 = metadata !{i32 695, i32 0, metadata !341, null}
!866 = metadata !{i32 696, i32 0, metadata !341, null}
!867 = metadata !{i32 697, i32 0, metadata !341, null}
!868 = metadata !{i32 698, i32 0, metadata !341, null}
!869 = metadata !{i32 700, i32 0, metadata !343, null}
!870 = metadata !{i32 701, i32 0, metadata !343, null}
!871 = metadata !{i32 702, i32 0, metadata !343, null}
!872 = metadata !{i32 1428, i32 0, metadata !145, null}
!873 = metadata !{i32 1432, i32 0, metadata !353, null}
!874 = metadata !{i32 1434, i32 0, metadata !353, null}
!875 = metadata !{i32 1435, i32 0, metadata !353, null}
!876 = metadata !{i32 1436, i32 0, metadata !353, null}
!877 = metadata !{i32 1437, i32 0, metadata !353, null}
!878 = metadata !{i32 1440, i32 0, metadata !353, null}
!879 = metadata !{i32 1441, i32 0, metadata !353, null}
!880 = metadata !{i64 1024}
!881 = metadata !{i32 1442, i32 0, metadata !353, null}
!882 = metadata !{i32 1443, i32 0, metadata !353, null}
!883 = metadata !{i32 1463, i32 0, metadata !138, metadata !884}
!884 = metadata !{i32 1446, i32 0, metadata !353, null}
!885 = metadata !{i32 1465, i32 0, metadata !346, metadata !884}
!886 = metadata !{i32 1466, i32 0, metadata !346, metadata !884}
!887 = metadata !{i32 1470, i32 0, metadata !142, metadata !888}
!888 = metadata !{i32 1447, i32 0, metadata !353, null}
!889 = metadata !{i32 1471, i32 0, metadata !349, metadata !888}
!890 = metadata !{i32 1472, i32 0, metadata !349, metadata !888}
!891 = metadata !{i32 1451, i32 0, metadata !353, null}
!892 = metadata !{i32 1452, i32 0, metadata !353, null}
!893 = metadata !{i32 1453, i32 0, metadata !353, null}
!894 = metadata !{i32 1454, i32 0, metadata !353, null}
!895 = metadata !{i32 1455, i32 0, metadata !353, null}
!896 = metadata !{i32 1166, i32 0, metadata !151, null}
!897 = metadata !{i32 39, i32 0, metadata !0, metadata !898}
!898 = metadata !{i32 1167, i32 0, metadata !365, null}
!899 = metadata !{i32 40, i32 0, metadata !269, metadata !898}
!900 = metadata !{i32 43, i32 0, metadata !269, metadata !898}
!901 = metadata !{i32 46, i32 0, metadata !269, metadata !898}
!902 = metadata !{i32 47, i32 0, metadata !269, metadata !898}
!903 = metadata !{i32 48, i32 0, metadata !272, metadata !898}
!904 = metadata !{i32 49, i32 0, metadata !272, metadata !898}
!905 = metadata !{i32 1168, i32 0, metadata !365, null}
!906 = metadata !{i32 1170, i32 0, metadata !365, null}
!907 = metadata !{i32 1171, i32 0, metadata !365, null}
!908 = metadata !{i32 1172, i32 0, metadata !365, null}
!909 = metadata !{i32 1476, i32 0, metadata !148, metadata !910}
!910 = metadata !{i32 1176, i32 0, metadata !367, null}
!911 = metadata !{i32 1463, i32 0, metadata !138, metadata !912}
!912 = metadata !{i32 1477, i32 0, metadata !356, metadata !910}
!913 = metadata !{i32 1465, i32 0, metadata !346, metadata !912}
!914 = metadata !{i32 1466, i32 0, metadata !346, metadata !912}
!915 = metadata !{i32 1480, i32 0, metadata !356, metadata !910}
!916 = metadata !{i32 1481, i32 0, metadata !359, metadata !910}
!917 = metadata !{i32 1482, i32 0, metadata !359, metadata !910}
!918 = metadata !{i32 1484, i32 0, metadata !359, metadata !910}
!919 = metadata !{i32 1487, i32 0, metadata !359, metadata !910}
!920 = metadata !{i32 1490, i32 0, metadata !361, metadata !910}
!921 = metadata !{i32 1491, i32 0, metadata !361, metadata !910}
!922 = metadata !{i32 1492, i32 0, metadata !361, metadata !910}
!923 = metadata !{i32 1493, i32 0, metadata !361, metadata !910}
!924 = metadata !{i32 1177, i32 0, metadata !367, null}
!925 = metadata !{i32 1178, i32 0, metadata !367, null}
!926 = metadata !{i32 807, i32 0, metadata !154, null}
!927 = metadata !{i32 39, i32 0, metadata !0, metadata !928}
!928 = metadata !{i32 809, i32 0, metadata !372, null}
!929 = metadata !{i32 40, i32 0, metadata !269, metadata !928}
!930 = metadata !{i32 43, i32 0, metadata !269, metadata !928}
!931 = metadata !{i32 46, i32 0, metadata !269, metadata !928}
!932 = metadata !{i32 47, i32 0, metadata !269, metadata !928}
!933 = metadata !{i32 48, i32 0, metadata !272, metadata !928}
!934 = metadata !{i32 49, i32 0, metadata !272, metadata !928}
!935 = metadata !{i32 811, i32 0, metadata !372, null}
!936 = metadata !{i32 770, i32 0, metadata !87, metadata !937}
!937 = metadata !{i32 812, i32 0, metadata !372, null}
!938 = metadata !{i32 771, i32 0, metadata !851, metadata !937}
!939 = metadata !{i32 772, i32 0, metadata !851, metadata !937}
!940 = metadata !{i32 1476, i32 0, metadata !148, metadata !941}
!941 = metadata !{i32 814, i32 0, metadata !374, null}
!942 = metadata !{i32 1463, i32 0, metadata !138, metadata !943}
!943 = metadata !{i32 1477, i32 0, metadata !356, metadata !941}
!944 = metadata !{i32 1465, i32 0, metadata !346, metadata !943}
!945 = metadata !{i32 1466, i32 0, metadata !346, metadata !943}
!946 = metadata !{i32 1480, i32 0, metadata !356, metadata !941}
!947 = metadata !{i32 1481, i32 0, metadata !359, metadata !941}
!948 = metadata !{i32 1482, i32 0, metadata !359, metadata !941}
!949 = metadata !{i32 1484, i32 0, metadata !359, metadata !941}
!950 = metadata !{i32 1487, i32 0, metadata !359, metadata !941}
!951 = metadata !{i32 1490, i32 0, metadata !361, metadata !941}
!952 = metadata !{i32 1491, i32 0, metadata !361, metadata !941}
!953 = metadata !{i32 1492, i32 0, metadata !361, metadata !941}
!954 = metadata !{i32 1493, i32 0, metadata !361, metadata !941}
!955 = metadata !{i32 815, i32 0, metadata !374, null}
!956 = metadata !{i32 816, i32 0, metadata !374, null}
!957 = metadata !{i32 776, i32 0, metadata !157, null}
!958 = metadata !{i32 39, i32 0, metadata !0, metadata !959}
!959 = metadata !{i32 777, i32 0, metadata !379, null}
!960 = metadata !{i32 40, i32 0, metadata !269, metadata !959}
!961 = metadata !{i32 43, i32 0, metadata !269, metadata !959}
!962 = metadata !{i32 46, i32 0, metadata !269, metadata !959}
!963 = metadata !{i32 47, i32 0, metadata !269, metadata !959}
!964 = metadata !{i32 48, i32 0, metadata !272, metadata !959}
!965 = metadata !{i32 49, i32 0, metadata !272, metadata !959}
!966 = metadata !{i32 779, i32 0, metadata !379, null}
!967 = metadata !{i32 770, i32 0, metadata !87, metadata !968}
!968 = metadata !{i32 780, i32 0, metadata !379, null}
!969 = metadata !{i32 771, i32 0, metadata !851, metadata !968}
!970 = metadata !{i32 772, i32 0, metadata !851, metadata !968}
!971 = metadata !{i32 1476, i32 0, metadata !148, metadata !972}
!972 = metadata !{i32 782, i32 0, metadata !381, null}
!973 = metadata !{i32 1463, i32 0, metadata !138, metadata !974}
!974 = metadata !{i32 1477, i32 0, metadata !356, metadata !972}
!975 = metadata !{i32 1465, i32 0, metadata !346, metadata !974}
!976 = metadata !{i32 1466, i32 0, metadata !346, metadata !974}
!977 = metadata !{i32 1480, i32 0, metadata !356, metadata !972}
!978 = metadata !{i32 1481, i32 0, metadata !359, metadata !972}
!979 = metadata !{i32 1482, i32 0, metadata !359, metadata !972}
!980 = metadata !{i32 1484, i32 0, metadata !359, metadata !972}
!981 = metadata !{i32 1487, i32 0, metadata !359, metadata !972}
!982 = metadata !{i32 1490, i32 0, metadata !361, metadata !972}
!983 = metadata !{i32 1491, i32 0, metadata !361, metadata !972}
!984 = metadata !{i32 1492, i32 0, metadata !361, metadata !972}
!985 = metadata !{i32 1493, i32 0, metadata !361, metadata !972}
!986 = metadata !{i32 783, i32 0, metadata !381, null}
!987 = metadata !{i32 784, i32 0, metadata !381, null}
!988 = metadata !{i32 669, i32 0, metadata !158, null}
!989 = metadata !{i32 39, i32 0, metadata !0, metadata !990}
!990 = metadata !{i32 670, i32 0, metadata !384, null}
!991 = metadata !{i32 40, i32 0, metadata !269, metadata !990}
!992 = metadata !{i32 43, i32 0, metadata !269, metadata !990}
!993 = metadata !{i32 46, i32 0, metadata !269, metadata !990}
!994 = metadata !{i32 47, i32 0, metadata !269, metadata !990}
!995 = metadata !{i32 48, i32 0, metadata !272, metadata !990}
!996 = metadata !{i32 49, i32 0, metadata !272, metadata !990}
!997 = metadata !{i32 672, i32 0, metadata !384, null}
!998 = metadata !{i32 674, i32 0, metadata !384, null}
!999 = metadata !{i32 675, i32 0, metadata !384, null}
!1000 = metadata !{i32 676, i32 0, metadata !384, null}
!1001 = metadata !{i32 1476, i32 0, metadata !148, metadata !1002}
!1002 = metadata !{i32 680, i32 0, metadata !386, null}
!1003 = metadata !{i32 1463, i32 0, metadata !138, metadata !1004}
!1004 = metadata !{i32 1477, i32 0, metadata !356, metadata !1002}
!1005 = metadata !{i32 1465, i32 0, metadata !346, metadata !1004}
!1006 = metadata !{i32 1466, i32 0, metadata !346, metadata !1004}
!1007 = metadata !{i32 1480, i32 0, metadata !356, metadata !1002}
!1008 = metadata !{i32 1481, i32 0, metadata !359, metadata !1002}
!1009 = metadata !{i32 1482, i32 0, metadata !359, metadata !1002}
!1010 = metadata !{i32 1484, i32 0, metadata !359, metadata !1002}
!1011 = metadata !{i32 1487, i32 0, metadata !359, metadata !1002}
!1012 = metadata !{i32 1490, i32 0, metadata !361, metadata !1002}
!1013 = metadata !{i32 1491, i32 0, metadata !361, metadata !1002}
!1014 = metadata !{i32 1492, i32 0, metadata !361, metadata !1002}
!1015 = metadata !{i32 1493, i32 0, metadata !361, metadata !1002}
!1016 = metadata !{i32 681, i32 0, metadata !386, null}
!1017 = metadata !{i32 682, i32 0, metadata !386, null}
!1018 = metadata !{i32 256, i32 0, metadata !159, null}
!1019 = metadata !{i32 39, i32 0, metadata !0, metadata !1020}
!1020 = metadata !{i32 257, i32 0, metadata !390, null}
!1021 = metadata !{i32 40, i32 0, metadata !269, metadata !1020}
!1022 = metadata !{i32 43, i32 0, metadata !269, metadata !1020}
!1023 = metadata !{i32 46, i32 0, metadata !269, metadata !1020}
!1024 = metadata !{i32 47, i32 0, metadata !269, metadata !1020}
!1025 = metadata !{i32 48, i32 0, metadata !272, metadata !1020}
!1026 = metadata !{i32 49, i32 0, metadata !272, metadata !1020}
!1027 = metadata !{i32 259, i32 0, metadata !390, null}
!1028 = metadata !{i32 261, i32 0, metadata !390, null}
!1029 = metadata !{i32 262, i32 0, metadata !390, null}
!1030 = metadata !{i32 264, i32 0, metadata !390, null}
!1031 = metadata !{i32 265, i32 0, metadata !390, null}
!1032 = metadata !{i32 267, i32 0, metadata !390, null}
!1033 = metadata !{i32 1476, i32 0, metadata !148, metadata !1034}
!1034 = metadata !{i32 269, i32 0, metadata !390, null}
!1035 = metadata !{i32 1463, i32 0, metadata !138, metadata !1036}
!1036 = metadata !{i32 1477, i32 0, metadata !356, metadata !1034}
!1037 = metadata !{i32 1465, i32 0, metadata !346, metadata !1036}
!1038 = metadata !{i32 1466, i32 0, metadata !346, metadata !1036}
!1039 = metadata !{i32 1480, i32 0, metadata !356, metadata !1034}
!1040 = metadata !{i32 1481, i32 0, metadata !359, metadata !1034}
!1041 = metadata !{i32 1482, i32 0, metadata !359, metadata !1034}
!1042 = metadata !{i32 1484, i32 0, metadata !359, metadata !1034}
!1043 = metadata !{i32 1487, i32 0, metadata !359, metadata !1034}
!1044 = metadata !{i32 1490, i32 0, metadata !361, metadata !1034}
!1045 = metadata !{i32 1491, i32 0, metadata !361, metadata !1034}
!1046 = metadata !{i32 1492, i32 0, metadata !361, metadata !1034}
!1047 = metadata !{i32 1493, i32 0, metadata !361, metadata !1034}
!1048 = metadata !{i32 270, i32 0, metadata !390, null}
!1049 = metadata !{i32 271, i32 0, metadata !390, null}
!1050 = metadata !{i32 277, i32 0, metadata !170, null}
!1051 = metadata !{i32 278, i32 0, metadata !396, null}
!1052 = metadata !{i32 63, i32 0, metadata !59, metadata !1053}
!1053 = metadata !{i32 279, i32 0, metadata !398, null}
!1054 = metadata !{i32 64, i32 0, metadata !276, metadata !1053}
!1055 = metadata !{i32 65, i32 0, metadata !275, metadata !1053}
!1056 = metadata !{i32 66, i32 0, metadata !275, metadata !1053}
!1057 = metadata !{i32 281, i32 0, metadata !398, null}
!1058 = metadata !{i32 282, i32 0, metadata !398, null}
!1059 = metadata !{i32 283, i32 0, metadata !398, null}
!1060 = metadata !{i32 284, i32 0, metadata !398, null}
!1061 = metadata !{i32 285, i32 0, metadata !398, null}
!1062 = metadata !{i32 286, i32 0, metadata !398, null}
!1063 = metadata !{i32 287, i32 0, metadata !398, null}
!1064 = metadata !{i32 289, i32 0, metadata !398, null}
!1065 = metadata !{i32 39, i32 0, metadata !0, metadata !1066}
!1066 = metadata !{i32 291, i32 0, metadata !396, null}
!1067 = metadata !{i32 40, i32 0, metadata !269, metadata !1066}
!1068 = metadata !{i32 43, i32 0, metadata !269, metadata !1066}
!1069 = metadata !{i32 46, i32 0, metadata !269, metadata !1066}
!1070 = metadata !{i32 47, i32 0, metadata !269, metadata !1066}
!1071 = metadata !{i32 48, i32 0, metadata !272, metadata !1066}
!1072 = metadata !{i32 49, i32 0, metadata !272, metadata !1066}
!1073 = metadata !{i32 292, i32 0, metadata !396, null}
!1074 = metadata !{i32 297, i32 0, metadata !396, null}
!1075 = metadata !{i32 1476, i32 0, metadata !148, metadata !1074}
!1076 = metadata !{i32 1463, i32 0, metadata !138, metadata !1077}
!1077 = metadata !{i32 1477, i32 0, metadata !356, metadata !1074}
!1078 = metadata !{i32 1465, i32 0, metadata !346, metadata !1077}
!1079 = metadata !{i32 1466, i32 0, metadata !346, metadata !1077}
!1080 = metadata !{i32 1480, i32 0, metadata !356, metadata !1074}
!1081 = metadata !{i32 1481, i32 0, metadata !359, metadata !1074}
!1082 = metadata !{i32 1482, i32 0, metadata !359, metadata !1074}
!1083 = metadata !{i32 1484, i32 0, metadata !359, metadata !1074}
!1084 = metadata !{i32 1487, i32 0, metadata !359, metadata !1074}
!1085 = metadata !{i32 1490, i32 0, metadata !361, metadata !1074}
!1086 = metadata !{i32 1491, i32 0, metadata !361, metadata !1074}
!1087 = metadata !{i32 1492, i32 0, metadata !361, metadata !1074}
!1088 = metadata !{i32 1493, i32 0, metadata !361, metadata !1074}
!1089 = metadata !{i32 298, i32 0, metadata !396, null}
!1090 = metadata !{i32 299, i32 0, metadata !396, null}
!1091 = metadata !{i32 1111, i32 0, metadata !176, null}
!1092 = metadata !{i32 1113, i32 0, metadata !408, null}
!1093 = metadata !{i32 63, i32 0, metadata !59, metadata !1094}
!1094 = metadata !{i32 1112, i32 0, metadata !408, null}
!1095 = metadata !{i32 64, i32 0, metadata !276, metadata !1094}
!1096 = metadata !{i32 65, i32 0, metadata !275, metadata !1094}
!1097 = metadata !{i32 66, i32 0, metadata !275, metadata !1094}
!1098 = metadata !{i32 1116, i32 0, metadata !408, null}
!1099 = metadata !{i32 1117, i32 0, metadata !408, null}
!1100 = metadata !{i32 1118, i32 0, metadata !408, null}
!1101 = metadata !{i32 1121, i32 0, metadata !408, null}
!1102 = metadata !{i32 1125, i32 0, metadata !408, null}
!1103 = metadata !{i32 1126, i32 0, metadata !408, null}
!1104 = metadata !{i32 1127, i32 0, metadata !408, null}
!1105 = metadata !{i32 1130, i32 0, metadata !408, null}
!1106 = metadata !{i32 1131, i32 0, metadata !408, null}
!1107 = metadata !{i32 1133, i32 0, metadata !424, null}
!1108 = metadata !{i32 1134, i32 0, metadata !424, null}
!1109 = metadata !{i32 1}
!1110 = metadata !{i32 1135, i32 0, metadata !424, null}
!1111 = metadata !{i32 1139, i32 0, metadata !408, null}
!1112 = metadata !{i32 1140, i32 0, metadata !408, null}
!1113 = metadata !{i32 1141, i32 0, metadata !408, null}
!1114 = metadata !{i32 1154, i32 0, metadata !408, null}
!1115 = metadata !{i32 1155, i32 0, metadata !408, null}
!1116 = metadata !{i32 1156, i32 0, metadata !408, null}
!1117 = metadata !{i32 1159, i32 0, metadata !426, null}
!1118 = metadata !{i32 1160, i32 0, metadata !426, null}
!1119 = metadata !{i32 1161, i32 0, metadata !426, null}
!1120 = metadata !{i32 961, i32 0, metadata !179, null}
!1121 = metadata !{i32 966, i32 0, metadata !430, null}
!1122 = metadata !{i32 63, i32 0, metadata !59, metadata !1123}
!1123 = metadata !{i32 965, i32 0, metadata !430, null}
!1124 = metadata !{i32 64, i32 0, metadata !276, metadata !1123}
!1125 = metadata !{i32 65, i32 0, metadata !275, metadata !1123}
!1126 = metadata !{i32 66, i32 0, metadata !275, metadata !1123}
!1127 = metadata !{i32 973, i32 0, metadata !430, null}
!1128 = metadata !{i32 974, i32 0, metadata !430, null}
!1129 = metadata !{i32 975, i32 0, metadata !430, null}
!1130 = metadata !{i32 978, i32 0, metadata !430, null}
!1131 = metadata !{i32 979, i32 0, metadata !430, null}
!1132 = metadata !{i32 980, i32 0, metadata !430, null}
!1133 = metadata !{i32 982, i32 0, metadata !430, null}
!1134 = metadata !{i32 983, i32 0, metadata !434, null}
!1135 = metadata !{i32 985, i32 0, metadata !434, null}
!1136 = metadata !{i32 987, i32 0, metadata !436, null}
!1137 = metadata !{i32 989, i32 0, metadata !436, null}
!1138 = metadata !{i32 992, i32 0, metadata !436, null}
!1139 = metadata !{i32 995, i32 0, metadata !436, null}
!1140 = metadata !{i32 996, i32 0, metadata !436, null}
!1141 = metadata !{i32 997, i32 0, metadata !436, null}
!1142 = metadata !{i32 998, i32 0, metadata !436, null}
!1143 = metadata !{i32 999, i32 0, metadata !436, null}
!1144 = metadata !{i32 1000, i32 0, metadata !436, null}
!1145 = metadata !{i32 1001, i32 0, metadata !436, null}
!1146 = metadata !{i32 1002, i32 0, metadata !436, null}
!1147 = metadata !{i32 1003, i32 0, metadata !436, null}
!1148 = metadata !{i32 1004, i32 0, metadata !436, null}
!1149 = metadata !{i32 1005, i32 0, metadata !436, null}
!1150 = metadata !{i32 1006, i32 0, metadata !436, null}
!1151 = metadata !{i32 1007, i32 0, metadata !436, null}
!1152 = metadata !{i32 1008, i32 0, metadata !436, null}
!1153 = metadata !{i32 1009, i32 0, metadata !436, null}
!1154 = metadata !{i32 1010, i32 0, metadata !436, null}
!1155 = metadata !{i32 1011, i32 0, metadata !436, null}
!1156 = metadata !{i32 1012, i32 0, metadata !436, null}
!1157 = metadata !{i32 1013, i32 0, metadata !436, null}
!1158 = metadata !{i32 1014, i32 0, metadata !436, null}
!1159 = metadata !{i32 1015, i32 0, metadata !436, null}
!1160 = metadata !{i32 1016, i32 0, metadata !436, null}
!1161 = metadata !{i32 1017, i32 0, metadata !436, null}
!1162 = metadata !{i32 1018, i32 0, metadata !436, null}
!1163 = metadata !{i32 1019, i32 0, metadata !436, null}
!1164 = metadata !{i32 1021, i32 0, metadata !436, null}
!1165 = metadata !{i32 1022, i32 0, metadata !436, null}
!1166 = metadata !{i32 1027, i32 0, metadata !434, null}
!1167 = metadata !{i32 1028, i32 0, metadata !434, null}
!1168 = metadata !{i32 1031, i32 0, metadata !434, null}
!1169 = metadata !{i32 1032, i32 0, metadata !434, null}
!1170 = metadata !{i32 1037, i32 0, metadata !434, null}
!1171 = metadata !{i32 1038, i32 0, metadata !434, null}
!1172 = metadata !{i32 1041, i32 0, metadata !434, null}
!1173 = metadata !{i32 1042, i32 0, metadata !434, null}
!1174 = metadata !{i32 1047, i32 0, metadata !434, null}
!1175 = metadata !{i32 1048, i32 0, metadata !434, null}
!1176 = metadata !{i32 1051, i32 0, metadata !434, null}
!1177 = metadata !{i32 1052, i32 0, metadata !434, null}
!1178 = metadata !{i32 1056, i32 0, metadata !456, null}
!1179 = metadata !{i32 1057, i32 0, metadata !456, null}
!1180 = metadata !{i32 1058, i32 0, metadata !456, null}
!1181 = metadata !{i32 1059, i32 0, metadata !456, null}
!1182 = metadata !{i32 1060, i32 0, metadata !456, null}
!1183 = metadata !{i32 1063, i32 0, metadata !456, null}
!1184 = metadata !{i32 1064, i32 0, metadata !456, null}
!1185 = metadata !{i32 1069, i32 0, metadata !434, null}
!1186 = metadata !{i32 1070, i32 0, metadata !434, null}
!1187 = metadata !{i32 1071, i32 0, metadata !434, null}
!1188 = metadata !{i32 1072, i32 0, metadata !434, null}
!1189 = metadata !{i32 1074, i32 0, metadata !434, null}
!1190 = metadata !{i32 1075, i32 0, metadata !434, null}
!1191 = metadata !{i32 1079, i32 0, metadata !466, null}
!1192 = metadata !{i32 1080, i32 0, metadata !466, null}
!1193 = metadata !{i32 1081, i32 0, metadata !466, null}
!1194 = metadata !{i32 1082, i32 0, metadata !466, null}
!1195 = metadata !{i32 1083, i32 0, metadata !466, null}
!1196 = metadata !{i32 1087, i32 0, metadata !466, null}
!1197 = metadata !{i32 1089, i32 0, metadata !466, null}
!1198 = metadata !{i32 1090, i32 0, metadata !466, null}
!1199 = metadata !{i32 1094, i32 0, metadata !434, null}
!1200 = metadata !{i32 1095, i32 0, metadata !434, null}
!1201 = metadata !{i32 1096, i32 0, metadata !434, null}
!1202 = metadata !{i32 1099, i32 0, metadata !434, null}
!1203 = metadata !{i32 1100, i32 0, metadata !434, null}
!1204 = metadata !{i32 1101, i32 0, metadata !434, null}
!1205 = metadata !{i32 1104, i32 0, metadata !469, null}
!1206 = metadata !{i32 1105, i32 0, metadata !469, null}
!1207 = metadata !{i32 1106, i32 0, metadata !469, null}
!1208 = metadata !{i32 303, i32 0, metadata !182, null}
!1209 = metadata !{i32 306, i32 0, metadata !472, null}
!1210 = metadata !{i32 308, i32 0, metadata !472, null}
!1211 = metadata !{i32 63, i32 0, metadata !59, metadata !1212}
!1212 = metadata !{i32 310, i32 0, metadata !472, null}
!1213 = metadata !{i32 64, i32 0, metadata !276, metadata !1212}
!1214 = metadata !{i32 65, i32 0, metadata !275, metadata !1212}
!1215 = metadata !{i32 66, i32 0, metadata !275, metadata !1212}
!1216 = metadata !{i32 311, i32 0, metadata !472, null}
!1217 = metadata !{i32 312, i32 0, metadata !472, null}
!1218 = metadata !{i32 313, i32 0, metadata !472, null}
!1219 = metadata !{i32 316, i32 0, metadata !472, null}
!1220 = metadata !{i32 317, i32 0, metadata !472, null}
!1221 = metadata !{i32 318, i32 0, metadata !472, null}
!1222 = metadata !{i32 319, i32 0, metadata !472, null}
!1223 = metadata !{i32 330, i32 0, metadata !472, null}
!1224 = metadata !{i32 332, i32 0, metadata !472, null}
!1225 = metadata !{i32 1219, i32 0, metadata !183, null}
!1226 = metadata !{i32 63, i32 0, metadata !59, metadata !1227}
!1227 = metadata !{i32 1220, i32 0, metadata !477, null}
!1228 = metadata !{i32 64, i32 0, metadata !276, metadata !1227}
!1229 = metadata !{i32 65, i32 0, metadata !275, metadata !1227}
!1230 = metadata !{i32 66, i32 0, metadata !275, metadata !1227}
!1231 = metadata !{i32 1222, i32 0, metadata !477, null}
!1232 = metadata !{i32 1223, i32 0, metadata !477, null}
!1233 = metadata !{i32 1224, i32 0, metadata !477, null}
!1234 = metadata !{i32 1226, i32 0, metadata !479, null}
!1235 = metadata !{i32 1227, i32 0, metadata !479, null}
!1236 = metadata !{i32 303, i32 0, metadata !182, metadata !1235}
!1237 = metadata !{i32 306, i32 0, metadata !472, metadata !1235}
!1238 = metadata !{i32 308, i32 0, metadata !472, metadata !1235}
!1239 = metadata !{i32 63, i32 0, metadata !59, metadata !1240}
!1240 = metadata !{i32 310, i32 0, metadata !472, metadata !1235}
!1241 = metadata !{i32 64, i32 0, metadata !276, metadata !1240}
!1242 = metadata !{i32 65, i32 0, metadata !275, metadata !1240}
!1243 = metadata !{i32 311, i32 0, metadata !472, metadata !1235}
!1244 = metadata !{i32 312, i32 0, metadata !472, metadata !1235}
!1245 = metadata !{i32 313, i32 0, metadata !472, metadata !1235}
!1246 = metadata !{i32 316, i32 0, metadata !472, metadata !1235}
!1247 = metadata !{i32 317, i32 0, metadata !472, metadata !1235}
!1248 = metadata !{i32 318, i32 0, metadata !472, metadata !1235}
!1249 = metadata !{i32 319, i32 0, metadata !472, metadata !1235}
!1250 = metadata !{i32 330, i32 0, metadata !472, metadata !1235}
!1251 = metadata !{i32 332, i32 0, metadata !472, metadata !1235}
!1252 = metadata !{i32 1231, i32 0, metadata !479, null}
!1253 = metadata !{i32 1233, i32 0, metadata !479, null}
!1254 = metadata !{i32 1240, i32 0, metadata !479, null}
!1255 = metadata !{i32 1244, i32 0, metadata !184, null}
!1256 = metadata !{i32 63, i32 0, metadata !59, metadata !1257}
!1257 = metadata !{i32 1245, i32 0, metadata !482, null}
!1258 = metadata !{i32 64, i32 0, metadata !276, metadata !1257}
!1259 = metadata !{i32 65, i32 0, metadata !275, metadata !1257}
!1260 = metadata !{i32 66, i32 0, metadata !275, metadata !1257}
!1261 = metadata !{i32 1246, i32 0, metadata !482, null}
!1262 = metadata !{i32 1247, i32 0, metadata !482, null}
!1263 = metadata !{i32 1248, i32 0, metadata !482, null}
!1264 = metadata !{i32 1252, i32 0, metadata !484, null}
!1265 = metadata !{i32 1251, i32 0, metadata !484, null}
!1266 = metadata !{i32 1254, i32 0, metadata !484, null}
!1267 = metadata !{i32 1255, i32 0, metadata !484, null}
!1268 = metadata !{i32 1256, i32 0, metadata !484, null}
!1269 = metadata !{i32 1258, i32 0, metadata !484, null}
!1270 = metadata !{i32 877, i32 0, metadata !185, null}
!1271 = metadata !{i32 63, i32 0, metadata !59, metadata !1272}
!1272 = metadata !{i32 878, i32 0, metadata !489, null}
!1273 = metadata !{i32 64, i32 0, metadata !276, metadata !1272}
!1274 = metadata !{i32 65, i32 0, metadata !275, metadata !1272}
!1275 = metadata !{i32 66, i32 0, metadata !275, metadata !1272}
!1276 = metadata !{i32 880, i32 0, metadata !489, null}
!1277 = metadata !{i32 881, i32 0, metadata !489, null}
!1278 = metadata !{i32 882, i32 0, metadata !489, null}
!1279 = metadata !{i32 885, i32 0, metadata !489, null}
!1280 = metadata !{i32 886, i32 0, metadata !489, null}
!1281 = metadata !{i32 887, i32 0, metadata !489, null}
!1282 = metadata !{i32 888, i32 0, metadata !489, null}
!1283 = metadata !{i32 890, i32 0, metadata !489, null}
!1284 = metadata !{i64 0}
!1285 = metadata !{i32 892, i32 0, metadata !491, null}
!1286 = metadata !{i32 895, i32 0, metadata !491, null}
!1287 = metadata !{i32 896, i32 0, metadata !491, null}
!1288 = metadata !{i32 901, i32 0, metadata !491, null}
!1289 = metadata !{i32 898, i32 0, metadata !491, null}
!1290 = metadata !{i32 899, i32 0, metadata !491, null}
!1291 = metadata !{i32 902, i32 0, metadata !495, null}
!1292 = metadata !{i32 903, i32 0, metadata !495, null}
!1293 = metadata !{i32 904, i32 0, metadata !495, null}
!1294 = metadata !{i32 905, i32 0, metadata !495, null}
!1295 = metadata !{i32 906, i32 0, metadata !495, null}
!1296 = metadata !{i32 907, i32 0, metadata !495, null}
!1297 = metadata !{i32 908, i32 0, metadata !495, null}
!1298 = metadata !{i32 909, i32 0, metadata !495, null}
!1299 = metadata !{i32 910, i32 0, metadata !495, null}
!1300 = metadata !{i32 914, i32 0, metadata !491, null}
!1301 = metadata !{i32 915, i32 0, metadata !491, null}
!1302 = metadata !{i32 916, i32 0, metadata !491, null}
!1303 = metadata !{i32 917, i32 0, metadata !491, null}
!1304 = metadata !{i32 918, i32 0, metadata !491, null}
!1305 = metadata !{i32 919, i32 0, metadata !491, null}
!1306 = metadata !{i32 920, i32 0, metadata !491, null}
!1307 = metadata !{i32 921, i32 0, metadata !491, null}
!1308 = metadata !{i32 923, i32 0, metadata !491, null}
!1309 = metadata !{i32 925, i32 0, metadata !497, null}
!1310 = metadata !{i32 927, i32 0, metadata !497, null}
!1311 = metadata !{i32 936, i32 0, metadata !497, null}
!1312 = metadata !{i32 937, i32 0, metadata !497, null}
!1313 = metadata !{i32 938, i32 0, metadata !497, null}
!1314 = metadata !{i32 939, i32 0, metadata !497, null}
!1315 = metadata !{i32 940, i32 0, metadata !497, null}
!1316 = metadata !{i32 941, i32 0, metadata !497, null}
!1317 = metadata !{i32 943, i32 0, metadata !501, null}
!1318 = metadata !{i32 944, i32 0, metadata !501, null}
!1319 = metadata !{i32 948, i32 0, metadata !501, null}
!1320 = metadata !{i32 949, i32 0, metadata !503, null}
!1321 = metadata !{i32 950, i32 0, metadata !503, null}
!1322 = metadata !{i32 951, i32 0, metadata !503, null}
!1323 = metadata !{i32 538, i32 0, metadata !203, null}
!1324 = metadata !{i32 63, i32 0, metadata !59, metadata !1325}
!1325 = metadata !{i32 540, i32 0, metadata !508, null}
!1326 = metadata !{i32 64, i32 0, metadata !276, metadata !1325}
!1327 = metadata !{i32 65, i32 0, metadata !275, metadata !1325}
!1328 = metadata !{i32 66, i32 0, metadata !275, metadata !1325}
!1329 = metadata !{i32 542, i32 0, metadata !508, null}
!1330 = metadata !{i32 543, i32 0, metadata !508, null}
!1331 = metadata !{i32 544, i32 0, metadata !508, null}
!1332 = metadata !{i32 547, i32 0, metadata !508, null}
!1333 = metadata !{i32 554, i32 0, metadata !508, null}
!1334 = metadata !{i32 555, i32 0, metadata !508, null}
!1335 = metadata !{i32 557, i32 0, metadata !508, null}
!1336 = metadata !{i32 561, i32 0, metadata !508, null}
!1337 = metadata !{i32 562, i32 0, metadata !508, null}
!1338 = metadata !{i32 563, i32 0, metadata !508, null}
!1339 = metadata !{i32 567, i32 0, metadata !508, null}
!1340 = metadata !{i32 568, i32 0, metadata !508, null}
!1341 = metadata !{i32 569, i32 0, metadata !508, null}
!1342 = metadata !{i32 572, i32 0, metadata !508, null}
!1343 = metadata !{i32 573, i32 0, metadata !508, null}
!1344 = metadata !{i32 576, i32 0, metadata !508, null}
!1345 = metadata !{i32 578, i32 0, metadata !508, null}
!1346 = metadata !{i32 579, i32 0, metadata !508, null}
!1347 = metadata !{i32 581, i32 0, metadata !508, null}
!1348 = metadata !{i32 582, i32 0, metadata !508, null}
!1349 = metadata !{i32 586, i32 0, metadata !508, null}
!1350 = metadata !{i32 587, i32 0, metadata !508, null}
!1351 = metadata !{i32 588, i32 0, metadata !508, null}
!1352 = metadata !{i32 591, i32 0, metadata !508, null}
!1353 = metadata !{i32 592, i32 0, metadata !508, null}
!1354 = metadata !{i32 821, i32 0, metadata !206, null}
!1355 = metadata !{i32 63, i32 0, metadata !59, metadata !1356}
!1356 = metadata !{i32 822, i32 0, metadata !513, null}
!1357 = metadata !{i32 64, i32 0, metadata !276, metadata !1356}
!1358 = metadata !{i32 65, i32 0, metadata !275, metadata !1356}
!1359 = metadata !{i32 66, i32 0, metadata !275, metadata !1356}
!1360 = metadata !{i32 824, i32 0, metadata !513, null}
!1361 = metadata !{i32 825, i32 0, metadata !513, null}
!1362 = metadata !{i32 826, i32 0, metadata !513, null}
!1363 = metadata !{i32 829, i32 0, metadata !513, null}
!1364 = metadata !{i32 831, i32 0, metadata !515, null}
!1365 = metadata !{i32 835, i32 0, metadata !515, null}
!1366 = metadata !{i32 836, i32 0, metadata !515, null}
!1367 = metadata !{i32 840, i32 0, metadata !513, null}
!1368 = metadata !{i32 841, i32 0, metadata !513, null}
!1369 = metadata !{i32 650, i32 0, metadata !207, null}
!1370 = metadata !{i32 39, i32 0, metadata !0, metadata !1371}
!1371 = metadata !{i32 651, i32 0, metadata !519, null}
!1372 = metadata !{i32 40, i32 0, metadata !269, metadata !1371}
!1373 = metadata !{i32 43, i32 0, metadata !269, metadata !1371}
!1374 = metadata !{i32 46, i32 0, metadata !269, metadata !1371}
!1375 = metadata !{i32 47, i32 0, metadata !269, metadata !1371}
!1376 = metadata !{i32 48, i32 0, metadata !272, metadata !1371}
!1377 = metadata !{i32 49, i32 0, metadata !272, metadata !1371}
!1378 = metadata !{i32 652, i32 0, metadata !519, null}
!1379 = metadata !{i32 653, i32 0, metadata !519, null}
!1380 = metadata !{i32 654, i32 0, metadata !519, null}
!1381 = metadata !{i32 1476, i32 0, metadata !148, metadata !1382}
!1382 = metadata !{i32 659, i32 0, metadata !521, null}
!1383 = metadata !{i32 1463, i32 0, metadata !138, metadata !1384}
!1384 = metadata !{i32 1477, i32 0, metadata !356, metadata !1382}
!1385 = metadata !{i32 1465, i32 0, metadata !346, metadata !1384}
!1386 = metadata !{i32 1466, i32 0, metadata !346, metadata !1384}
!1387 = metadata !{i32 1480, i32 0, metadata !356, metadata !1382}
!1388 = metadata !{i32 1481, i32 0, metadata !359, metadata !1382}
!1389 = metadata !{i32 1482, i32 0, metadata !359, metadata !1382}
!1390 = metadata !{i32 1484, i32 0, metadata !359, metadata !1382}
!1391 = metadata !{i32 1487, i32 0, metadata !359, metadata !1382}
!1392 = metadata !{i32 1490, i32 0, metadata !361, metadata !1382}
!1393 = metadata !{i32 1491, i32 0, metadata !361, metadata !1382}
!1394 = metadata !{i32 1492, i32 0, metadata !361, metadata !1382}
!1395 = metadata !{i32 1493, i32 0, metadata !361, metadata !1382}
!1396 = metadata !{i32 663, i32 0, metadata !521, null}
!1397 = metadata !{i32 664, i32 0, metadata !521, null}
!1398 = metadata !{i32 614, i32 0, metadata !210, null}
!1399 = metadata !{i32 615, i32 0, metadata !527, null}
!1400 = metadata !{i32 63, i32 0, metadata !59, metadata !1401}
!1401 = metadata !{i32 616, i32 0, metadata !530, null}
!1402 = metadata !{i32 64, i32 0, metadata !276, metadata !1401}
!1403 = metadata !{i32 65, i32 0, metadata !275, metadata !1401}
!1404 = metadata !{i32 66, i32 0, metadata !275, metadata !1401}
!1405 = metadata !{i32 618, i32 0, metadata !530, null}
!1406 = metadata !{i32 619, i32 0, metadata !530, null}
!1407 = metadata !{i32 620, i32 0, metadata !530, null}
!1408 = metadata !{i32 621, i32 0, metadata !530, null}
!1409 = metadata !{i32 622, i32 0, metadata !530, null}
!1410 = metadata !{i32 623, i32 0, metadata !530, null}
!1411 = metadata !{i32 624, i32 0, metadata !530, null}
!1412 = metadata !{i32 626, i32 0, metadata !530, null}
!1413 = metadata !{i32 39, i32 0, metadata !0, metadata !1414}
!1414 = metadata !{i32 628, i32 0, metadata !527, null}
!1415 = metadata !{i32 40, i32 0, metadata !269, metadata !1414}
!1416 = metadata !{i32 43, i32 0, metadata !269, metadata !1414}
!1417 = metadata !{i32 46, i32 0, metadata !269, metadata !1414}
!1418 = metadata !{i32 47, i32 0, metadata !269, metadata !1414}
!1419 = metadata !{i32 48, i32 0, metadata !272, metadata !1414}
!1420 = metadata !{i32 49, i32 0, metadata !272, metadata !1414}
!1421 = metadata !{i32 629, i32 0, metadata !527, null}
!1422 = metadata !{i32 630, i32 0, metadata !527, null}
!1423 = metadata !{i32 631, i32 0, metadata !527, null}
!1424 = metadata !{i32 637, i32 0, metadata !527, null}
!1425 = metadata !{i32 1476, i32 0, metadata !148, metadata !1424}
!1426 = metadata !{i32 1463, i32 0, metadata !138, metadata !1427}
!1427 = metadata !{i32 1477, i32 0, metadata !356, metadata !1424}
!1428 = metadata !{i32 1465, i32 0, metadata !346, metadata !1427}
!1429 = metadata !{i32 1466, i32 0, metadata !346, metadata !1427}
!1430 = metadata !{i32 1480, i32 0, metadata !356, metadata !1424}
!1431 = metadata !{i32 1481, i32 0, metadata !359, metadata !1424}
!1432 = metadata !{i32 1482, i32 0, metadata !359, metadata !1424}
!1433 = metadata !{i32 1484, i32 0, metadata !359, metadata !1424}
!1434 = metadata !{i32 1487, i32 0, metadata !359, metadata !1424}
!1435 = metadata !{i32 1490, i32 0, metadata !361, metadata !1424}
!1436 = metadata !{i32 1491, i32 0, metadata !361, metadata !1424}
!1437 = metadata !{i32 1492, i32 0, metadata !361, metadata !1424}
!1438 = metadata !{i32 1493, i32 0, metadata !361, metadata !1424}
!1439 = metadata !{i32 644, i32 0, metadata !527, null}
!1440 = metadata !{i32 645, i32 0, metadata !527, null}
!1441 = metadata !{i32 595, i32 0, metadata !233, null}
!1442 = metadata !{i32 39, i32 0, metadata !0, metadata !1443}
!1443 = metadata !{i32 596, i32 0, metadata !534, null}
!1444 = metadata !{i32 40, i32 0, metadata !269, metadata !1443}
!1445 = metadata !{i32 43, i32 0, metadata !269, metadata !1443}
!1446 = metadata !{i32 46, i32 0, metadata !269, metadata !1443}
!1447 = metadata !{i32 47, i32 0, metadata !269, metadata !1443}
!1448 = metadata !{i32 48, i32 0, metadata !272, metadata !1443}
!1449 = metadata !{i32 49, i32 0, metadata !272, metadata !1443}
!1450 = metadata !{i32 597, i32 0, metadata !534, null}
!1451 = metadata !{i32 598, i32 0, metadata !534, null}
!1452 = metadata !{i32 599, i32 0, metadata !534, null}
!1453 = metadata !{i32 1476, i32 0, metadata !148, metadata !1454}
!1454 = metadata !{i32 604, i32 0, metadata !536, null}
!1455 = metadata !{i32 1463, i32 0, metadata !138, metadata !1456}
!1456 = metadata !{i32 1477, i32 0, metadata !356, metadata !1454}
!1457 = metadata !{i32 1465, i32 0, metadata !346, metadata !1456}
!1458 = metadata !{i32 1466, i32 0, metadata !346, metadata !1456}
!1459 = metadata !{i32 1480, i32 0, metadata !356, metadata !1454}
!1460 = metadata !{i32 1481, i32 0, metadata !359, metadata !1454}
!1461 = metadata !{i32 1482, i32 0, metadata !359, metadata !1454}
!1462 = metadata !{i32 1484, i32 0, metadata !359, metadata !1454}
!1463 = metadata !{i32 1487, i32 0, metadata !359, metadata !1454}
!1464 = metadata !{i32 1490, i32 0, metadata !361, metadata !1454}
!1465 = metadata !{i32 1491, i32 0, metadata !361, metadata !1454}
!1466 = metadata !{i32 1492, i32 0, metadata !361, metadata !1454}
!1467 = metadata !{i32 1493, i32 0, metadata !361, metadata !1454}
!1468 = metadata !{i32 608, i32 0, metadata !536, null}
!1469 = metadata !{i32 609, i32 0, metadata !536, null}
!1470 = metadata !{i32 335, i32 0, metadata !234, null}
!1471 = metadata !{i32 339, i32 0, metadata !541, null}
!1472 = metadata !{i32 341, i32 0, metadata !541, null}
!1473 = metadata !{i32 344, i32 0, metadata !541, null}
!1474 = metadata !{i32 345, i32 0, metadata !541, null}
!1475 = metadata !{i32 346, i32 0, metadata !541, null}
!1476 = metadata !{i32 63, i32 0, metadata !59, metadata !1477}
!1477 = metadata !{i32 349, i32 0, metadata !541, null}
!1478 = metadata !{i32 64, i32 0, metadata !276, metadata !1477}
!1479 = metadata !{i32 65, i32 0, metadata !275, metadata !1477}
!1480 = metadata !{i32 66, i32 0, metadata !275, metadata !1477}
!1481 = metadata !{i32 351, i32 0, metadata !541, null}
!1482 = metadata !{i32 352, i32 0, metadata !541, null}
!1483 = metadata !{i32 353, i32 0, metadata !541, null}
!1484 = metadata !{i32 356, i32 0, metadata !541, null}
!1485 = metadata !{i32 357, i32 0, metadata !541, null}
!1486 = metadata !{i32 358, i32 0, metadata !541, null}
!1487 = metadata !{i32 359, i32 0, metadata !541, null}
!1488 = metadata !{i32 362, i32 0, metadata !541, null}
!1489 = metadata !{i32 1463, i32 0, metadata !138, metadata !1490}
!1490 = metadata !{i32 365, i32 0, metadata !543, null}
!1491 = metadata !{i32 1465, i32 0, metadata !346, metadata !1490}
!1492 = metadata !{i32 1466, i32 0, metadata !346, metadata !1490}
!1493 = metadata !{i32 1470, i32 0, metadata !142, metadata !1494}
!1494 = metadata !{i32 366, i32 0, metadata !543, null}
!1495 = metadata !{i32 1471, i32 0, metadata !349, metadata !1494}
!1496 = metadata !{i32 1472, i32 0, metadata !349, metadata !1494}
!1497 = metadata !{i32 370, i32 0, metadata !543, null}
!1498 = metadata !{i32 371, i32 0, metadata !543, null}
!1499 = metadata !{i32 372, i32 0, metadata !543, null}
!1500 = metadata !{i32 374, i32 0, metadata !543, null}
!1501 = metadata !{i32 376, i32 0, metadata !543, null}
!1502 = metadata !{i32 377, i32 0, metadata !543, null}
!1503 = metadata !{i32 378, i32 0, metadata !543, null}
!1504 = metadata !{i32 381, i32 0, metadata !543, null}
!1505 = metadata !{i32 383, i32 0, metadata !543, null}
!1506 = metadata !{i32 382, i32 0, metadata !543, null}
!1507 = metadata !{i32 386, i32 0, metadata !541, null}
!1508 = metadata !{i32 387, i32 0, metadata !541, null}
!1509 = metadata !{i32 391, i32 0, metadata !541, null}
!1510 = metadata !{i32 392, i32 0, metadata !541, null}
!1511 = metadata !{i32 395, i32 0, metadata !541, null}
!1512 = metadata !{i32 396, i32 0, metadata !541, null}
!1513 = metadata !{i32 398, i32 0, metadata !541, null}
!1514 = metadata !{i32 342, i32 0, metadata !541, null}
!1515 = metadata !{i32 743, i32 0, metadata !240, null}
!1516 = metadata !{i32 63, i32 0, metadata !59, metadata !1517}
!1517 = metadata !{i32 746, i32 0, metadata !549, null}
!1518 = metadata !{i32 64, i32 0, metadata !276, metadata !1517}
!1519 = metadata !{i32 65, i32 0, metadata !275, metadata !1517}
!1520 = metadata !{i32 66, i32 0, metadata !275, metadata !1517}
!1521 = metadata !{i32 748, i32 0, metadata !549, null}
!1522 = metadata !{i32 749, i32 0, metadata !549, null}
!1523 = metadata !{i32 750, i32 0, metadata !549, null}
!1524 = metadata !{i32 753, i32 0, metadata !549, null}
!1525 = metadata !{i32 754, i32 0, metadata !549, null}
!1526 = metadata !{i32 755, i32 0, metadata !549, null}
!1527 = metadata !{i32 756, i32 0, metadata !549, null}
!1528 = metadata !{i32 757, i32 0, metadata !549, null}
!1529 = metadata !{i32 760, i32 0, metadata !549, null}
!1530 = metadata !{i32 708, i32 0, metadata !237, metadata !1531}
!1531 = metadata !{i32 761, i32 0, metadata !549, null}
!1532 = metadata !{i32 709, i32 0, metadata !1533, metadata !1531}
!1533 = metadata !{i32 589835, metadata !237, i32 708, i32 0, metadata !1, i32 73} ; [ DW_TAG_lexical_block ]
!1534 = metadata !{i32 710, i32 0, metadata !1533, metadata !1531}
!1535 = metadata !{i32 711, i32 0, metadata !1533, metadata !1531}
!1536 = metadata !{i32 712, i32 0, metadata !1533, metadata !1531}
!1537 = metadata !{i32 714, i32 0, metadata !1533, metadata !1531}
!1538 = metadata !{i32 716, i32 0, metadata !1533, metadata !1531}
!1539 = metadata !{i32 717, i32 0, metadata !1533, metadata !1531}
!1540 = metadata !{i32 763, i32 0, metadata !551, null}
!1541 = metadata !{i32 764, i32 0, metadata !551, null}
!1542 = metadata !{i32 765, i32 0, metadata !551, null}
!1543 = metadata !{i32 721, i32 0, metadata !243, null}
!1544 = metadata !{i32 39, i32 0, metadata !0, metadata !1545}
!1545 = metadata !{i32 724, i32 0, metadata !555, null}
!1546 = metadata !{i32 40, i32 0, metadata !269, metadata !1545}
!1547 = metadata !{i32 43, i32 0, metadata !269, metadata !1545}
!1548 = metadata !{i32 46, i32 0, metadata !269, metadata !1545}
!1549 = metadata !{i32 47, i32 0, metadata !269, metadata !1545}
!1550 = metadata !{i32 48, i32 0, metadata !272, metadata !1545}
!1551 = metadata !{i32 49, i32 0, metadata !272, metadata !1545}
!1552 = metadata !{i32 51, i32 0, metadata !272, metadata !1545}
!1553 = metadata !{i32 726, i32 0, metadata !555, null}
!1554 = metadata !{i32 727, i32 0, metadata !555, null}
!1555 = metadata !{i32 728, i32 0, metadata !555, null}
!1556 = metadata !{i32 729, i32 0, metadata !555, null}
!1557 = metadata !{i32 730, i32 0, metadata !555, null}
!1558 = metadata !{i32 733, i32 0, metadata !555, null}
!1559 = metadata !{i32 708, i32 0, metadata !237, metadata !1560}
!1560 = metadata !{i32 734, i32 0, metadata !555, null}
!1561 = metadata !{i32 709, i32 0, metadata !1533, metadata !1560}
!1562 = metadata !{i32 710, i32 0, metadata !1533, metadata !1560}
!1563 = metadata !{i32 711, i32 0, metadata !1533, metadata !1560}
!1564 = metadata !{i32 712, i32 0, metadata !1533, metadata !1560}
!1565 = metadata !{i32 714, i32 0, metadata !1533, metadata !1560}
!1566 = metadata !{i32 716, i32 0, metadata !1533, metadata !1560}
!1567 = metadata !{i32 717, i32 0, metadata !1533, metadata !1560}
!1568 = metadata !{i32 1476, i32 0, metadata !148, metadata !1569}
!1569 = metadata !{i32 736, i32 0, metadata !557, null}
!1570 = metadata !{i32 1463, i32 0, metadata !138, metadata !1571}
!1571 = metadata !{i32 1477, i32 0, metadata !356, metadata !1569}
!1572 = metadata !{i32 1465, i32 0, metadata !346, metadata !1571}
!1573 = metadata !{i32 1466, i32 0, metadata !346, metadata !1571}
!1574 = metadata !{i32 1480, i32 0, metadata !356, metadata !1569}
!1575 = metadata !{i32 1481, i32 0, metadata !359, metadata !1569}
!1576 = metadata !{i32 1482, i32 0, metadata !359, metadata !1569}
!1577 = metadata !{i32 1484, i32 0, metadata !359, metadata !1569}
!1578 = metadata !{i32 1487, i32 0, metadata !359, metadata !1569}
!1579 = metadata !{i32 1490, i32 0, metadata !361, metadata !1569}
!1580 = metadata !{i32 1491, i32 0, metadata !361, metadata !1569}
!1581 = metadata !{i32 1492, i32 0, metadata !361, metadata !1569}
!1582 = metadata !{i32 1493, i32 0, metadata !361, metadata !1569}
!1583 = metadata !{i32 737, i32 0, metadata !557, null}
!1584 = metadata !{i32 738, i32 0, metadata !557, null}
!1585 = metadata !{i32 128, i32 0, metadata !246, null}
!1586 = metadata !{i32 133, i32 0, metadata !562, null}
!1587 = metadata !{i32 134, i32 0, metadata !562, null}
!1588 = metadata !{i32 136, i32 0, metadata !562, null}
!1589 = metadata !{i32 137, i32 0, metadata !562, null}
!1590 = metadata !{i32 138, i32 0, metadata !562, null}
!1591 = metadata !{i32 141, i32 0, metadata !562, null}
!1592 = metadata !{i32 144, i32 0, metadata !562, null}
!1593 = metadata !{i32 39, i32 0, metadata !0, metadata !1594}
!1594 = metadata !{i32 146, i32 0, metadata !562, null}
!1595 = metadata !{i32 40, i32 0, metadata !269, metadata !1594}
!1596 = metadata !{i32 43, i32 0, metadata !269, metadata !1594}
!1597 = metadata !{i32 46, i32 0, metadata !269, metadata !1594}
!1598 = metadata !{i32 47, i32 0, metadata !269, metadata !1594}
!1599 = metadata !{i32 48, i32 0, metadata !272, metadata !1594}
!1600 = metadata !{i32 49, i32 0, metadata !272, metadata !1594}
!1601 = metadata !{i32 147, i32 0, metadata !562, null}
!1602 = metadata !{i32 150, i32 0, metadata !562, null}
!1603 = metadata !{i32 153, i32 0, metadata !562, null}
!1604 = metadata !{i32 154, i32 0, metadata !562, null}
!1605 = metadata !{i32 168, i32 0, metadata !562, null}
!1606 = metadata !{i32 169, i32 0, metadata !562, null}
!1607 = metadata !{i32 170, i32 0, metadata !562, null}
!1608 = metadata !{i32 173, i32 0, metadata !562, null}
!1609 = metadata !{i32 97, i32 0, metadata !76, metadata !1608}
!1610 = metadata !{i32 99, i32 0, metadata !283, metadata !1608}
!1611 = metadata !{i32 101, i32 0, metadata !283, metadata !1608}
!1612 = metadata !{i32 107, i32 0, metadata !283, metadata !1608}
!1613 = metadata !{i32 118, i32 0, metadata !283, metadata !1608}
!1614 = metadata !{i32 121, i32 0, metadata !283, metadata !1608}
!1615 = metadata !{i32 174, i32 0, metadata !562, null}
!1616 = metadata !{i32 175, i32 0, metadata !562, null}
!1617 = metadata !{i32 178, i32 0, metadata !562, null}
!1618 = metadata !{i32 1476, i32 0, metadata !148, metadata !1619}
!1619 = metadata !{i32 181, i32 0, metadata !566, null}
!1620 = metadata !{i32 1463, i32 0, metadata !138, metadata !1621}
!1621 = metadata !{i32 1477, i32 0, metadata !356, metadata !1619}
!1622 = metadata !{i32 1465, i32 0, metadata !346, metadata !1621}
!1623 = metadata !{i32 1466, i32 0, metadata !346, metadata !1621}
!1624 = metadata !{i32 1480, i32 0, metadata !356, metadata !1619}
!1625 = metadata !{i32 1481, i32 0, metadata !359, metadata !1619}
!1626 = metadata !{i32 1482, i32 0, metadata !359, metadata !1619}
!1627 = metadata !{i32 1484, i32 0, metadata !359, metadata !1619}
!1628 = metadata !{i32 1487, i32 0, metadata !359, metadata !1619}
!1629 = metadata !{i32 1490, i32 0, metadata !361, metadata !1619}
!1630 = metadata !{i32 1491, i32 0, metadata !361, metadata !1619}
!1631 = metadata !{i32 1492, i32 0, metadata !361, metadata !1619}
!1632 = metadata !{i32 1493, i32 0, metadata !361, metadata !1619}
!1633 = metadata !{i32 182, i32 0, metadata !566, null}
!1634 = metadata !{i32 183, i32 0, metadata !566, null}
!1635 = metadata !{i32 184, i32 0, metadata !566, null}
!1636 = metadata !{i32 186, i32 0, metadata !566, null}
!1637 = metadata !{i32 190, i32 0, metadata !562, null}
!1638 = metadata !{i32 189, i32 0, metadata !562, null}
!1639 = metadata !{i32 191, i32 0, metadata !562, null}
!1640 = metadata !{i32 193, i32 0, metadata !562, null}
!1641 = metadata !{i32 195, i32 0, metadata !562, null}
!1642 = metadata !{i32 201, i32 0, metadata !249, null}
!1643 = metadata !{i32 204, i32 0, metadata !572, null}
!1644 = metadata !{i32 63, i32 0, metadata !59, metadata !1645}
!1645 = metadata !{i32 205, i32 0, metadata !576, null}
!1646 = metadata !{i32 64, i32 0, metadata !276, metadata !1645}
!1647 = metadata !{i32 65, i32 0, metadata !275, metadata !1645}
!1648 = metadata !{i32 66, i32 0, metadata !275, metadata !1645}
!1649 = metadata !{i32 207, i32 0, metadata !576, null}
!1650 = metadata !{i32 208, i32 0, metadata !576, null}
!1651 = metadata !{i32 209, i32 0, metadata !576, null}
!1652 = metadata !{i32 210, i32 0, metadata !576, null}
!1653 = metadata !{i32 211, i32 0, metadata !576, null}
!1654 = metadata !{i32 212, i32 0, metadata !576, null}
!1655 = metadata !{i32 213, i32 0, metadata !576, null}
!1656 = metadata !{i32 215, i32 0, metadata !576, null}
!1657 = metadata !{i32 39, i32 0, metadata !0, metadata !1658}
!1658 = metadata !{i32 218, i32 0, metadata !572, null}
!1659 = metadata !{i32 40, i32 0, metadata !269, metadata !1658}
!1660 = metadata !{i32 43, i32 0, metadata !269, metadata !1658}
!1661 = metadata !{i32 46, i32 0, metadata !269, metadata !1658}
!1662 = metadata !{i32 47, i32 0, metadata !269, metadata !1658}
!1663 = metadata !{i32 48, i32 0, metadata !272, metadata !1658}
!1664 = metadata !{i32 49, i32 0, metadata !272, metadata !1658}
!1665 = metadata !{i32 220, i32 0, metadata !572, null}
!1666 = metadata !{i32 224, i32 0, metadata !572, null}
!1667 = metadata !{i32 223, i32 0, metadata !572, null}
!1668 = metadata !{i32 226, i32 0, metadata !572, null}
!1669 = metadata !{i32 227, i32 0, metadata !572, null}
!1670 = metadata !{i32 228, i32 0, metadata !572, null}
!1671 = metadata !{i32 231, i32 0, metadata !572, null}
!1672 = metadata !{i32 234, i32 0, metadata !572, null}
!1673 = metadata !{i32 236, i32 0, metadata !572, null}
!1674 = metadata !{i32 1476, i32 0, metadata !148, metadata !1673}
!1675 = metadata !{i32 1463, i32 0, metadata !138, metadata !1676}
!1676 = metadata !{i32 1477, i32 0, metadata !356, metadata !1673}
!1677 = metadata !{i32 1465, i32 0, metadata !346, metadata !1676}
!1678 = metadata !{i32 1466, i32 0, metadata !346, metadata !1676}
!1679 = metadata !{i32 1480, i32 0, metadata !356, metadata !1673}
!1680 = metadata !{i32 1481, i32 0, metadata !359, metadata !1673}
!1681 = metadata !{i32 1482, i32 0, metadata !359, metadata !1673}
!1682 = metadata !{i32 1484, i32 0, metadata !359, metadata !1673}
!1683 = metadata !{i32 1487, i32 0, metadata !359, metadata !1673}
!1684 = metadata !{i32 1490, i32 0, metadata !361, metadata !1673}
!1685 = metadata !{i32 1491, i32 0, metadata !361, metadata !1673}
!1686 = metadata !{i32 1492, i32 0, metadata !361, metadata !1673}
!1687 = metadata !{i32 1493, i32 0, metadata !361, metadata !1673}
!1688 = metadata !{i32 237, i32 0, metadata !572, null}
!1689 = metadata !{i32 238, i32 0, metadata !572, null}
!1690 = metadata !{i32 239, i32 0, metadata !572, null}
!1691 = metadata !{i32 242, i32 0, metadata !572, null}
!1692 = metadata !{i32 243, i32 0, metadata !572, null}
!1693 = metadata !{i32 244, i32 0, metadata !572, null}
!1694 = metadata !{i32 245, i32 0, metadata !572, null}
!1695 = metadata !{i32 247, i32 0, metadata !572, null}
!1696 = metadata !{i32 249, i32 0, metadata !572, null}
!1697 = metadata !{i32 403, i32 0, metadata !252, null}
!1698 = metadata !{i32 405, i32 0, metadata !582, null}
!1699 = metadata !{i32 407, i32 0, metadata !582, null}
!1700 = metadata !{i32 440, i32 0, metadata !256, null}
!1701 = metadata !{i32 442, i32 0, metadata !646, null}
!1702 = metadata !{i32 447, i32 0, metadata !645, null}
!1703 = metadata !{i32 63, i32 0, metadata !59, metadata !1704}
!1704 = metadata !{i32 449, i32 0, metadata !645, null}
!1705 = metadata !{i32 65, i32 0, metadata !275, metadata !1704}
!1706 = metadata !{i32 66, i32 0, metadata !275, metadata !1704}
!1707 = metadata !{i32 451, i32 0, metadata !645, null}
!1708 = metadata !{i32 452, i32 0, metadata !645, null}
!1709 = metadata !{i32 453, i32 0, metadata !645, null}
!1710 = metadata !{i32 456, i32 0, metadata !645, null}
!1711 = metadata !{i32 457, i32 0, metadata !645, null}
!1712 = metadata !{i32 458, i32 0, metadata !645, null}
!1713 = metadata !{i32 459, i32 0, metadata !645, null}
!1714 = metadata !{i32 462, i32 0, metadata !645, null}
!1715 = metadata !{i32 1463, i32 0, metadata !138, metadata !1716}
!1716 = metadata !{i32 465, i32 0, metadata !648, null}
!1717 = metadata !{i32 1465, i32 0, metadata !346, metadata !1716}
!1718 = metadata !{i32 1466, i32 0, metadata !346, metadata !1716}
!1719 = metadata !{i32 1470, i32 0, metadata !142, metadata !1720}
!1720 = metadata !{i32 466, i32 0, metadata !648, null}
!1721 = metadata !{i32 1471, i32 0, metadata !349, metadata !1720}
!1722 = metadata !{i32 1472, i32 0, metadata !349, metadata !1720}
!1723 = metadata !{i32 470, i32 0, metadata !648, null}
!1724 = metadata !{i32 471, i32 0, metadata !648, null}
!1725 = metadata !{i32 472, i32 0, metadata !648, null}
!1726 = metadata !{i32 473, i32 0, metadata !648, null}
!1727 = metadata !{i32 475, i32 0, metadata !648, null}
!1728 = metadata !{i32 476, i32 0, metadata !648, null}
!1729 = metadata !{i32 477, i32 0, metadata !648, null}
!1730 = metadata !{i32 480, i32 0, metadata !648, null}
!1731 = metadata !{i32 481, i32 0, metadata !648, null}
!1732 = metadata !{i32 484, i32 0, metadata !648, null}
!1733 = metadata !{i32 482, i32 0, metadata !648, null}
!1734 = metadata !{i32 488, i32 0, metadata !650, null}
!1735 = metadata !{i32 489, i32 0, metadata !650, null}
!1736 = metadata !{i32 492, i32 0, metadata !650, null}
!1737 = metadata !{i32 493, i32 0, metadata !650, null}
!1738 = metadata !{i32 495, i32 0, metadata !650, null}
!1739 = metadata !{i32 496, i32 0, metadata !650, null}
!1740 = metadata !{i32 500, i32 0, metadata !650, null}
!1741 = metadata !{i32 501, i32 0, metadata !650, null}
!1742 = metadata !{i32 503, i32 0, metadata !650, null}
!1743 = metadata !{i32 504, i32 0, metadata !650, null}
!1744 = metadata !{i32 506, i32 0, metadata !650, null}
!1745 = metadata !{i32 507, i32 0, metadata !650, null}
!1746 = metadata !{i32 509, i32 0, metadata !650, null}
!1747 = metadata !{i32 510, i32 0, metadata !650, null}
!1748 = metadata !{i32 519, i32 0, metadata !652, null}
!1749 = metadata !{i32 520, i32 0, metadata !652, null}
!1750 = metadata !{i32 521, i32 0, metadata !652, null}
!1751 = metadata !{i32 527, i32 0, metadata !652, null}
!1752 = metadata !{i32 403, i32 0, metadata !252, metadata !1753}
!1753 = metadata !{i32 530, i32 0, metadata !652, null}
!1754 = metadata !{i64 undef}
!1755 = metadata !{i32 405, i32 0, metadata !582, metadata !1753}
!1756 = metadata !{i32 407, i32 0, metadata !582, metadata !1753}
!1757 = metadata !{i32 410, i32 0, metadata !257, null}
!1758 = metadata !{i32 411, i32 0, metadata !657, null}
!1759 = metadata !{i32 414, i32 0, metadata !657, null}
!1760 = metadata !{i32 415, i32 0, metadata !660, null}
!1761 = metadata !{i32 420, i32 0, metadata !660, null}
!1762 = metadata !{i32 423, i32 0, metadata !660, null}
!1763 = metadata !{i32 405, i32 0, metadata !582, metadata !1762}
!1764 = metadata !{i32 407, i32 0, metadata !582, metadata !1762}
!1765 = metadata !{i32 425, i32 0, metadata !660, null}
!1766 = metadata !{i32 403, i32 0, metadata !252, metadata !1762}
!1767 = metadata !{i32 426, i32 0, metadata !660, null}
!1768 = metadata !{i32 430, i32 0, metadata !660, null}
!1769 = metadata !{i32 432, i32 0, metadata !660, null}
!1770 = metadata !{i32 421, i32 0, metadata !660, null}
