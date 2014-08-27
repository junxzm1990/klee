; ModuleID = 'fd_32.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.timespec = type { i64, i64 }

@__getdents = alias i64 (i32, %struct.dirent*, i64)* @getdents

define i32 @open(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !236), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !237), !dbg !273
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !238), !dbg !275
  %0 = and i32 %flags, 64, !dbg !276
  %1 = icmp eq i32 %0, 0, !dbg !276
  br i1 %1, label %bb8, label %bb, !dbg !276

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !240), !dbg !277
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !278
  call void @llvm.va_start(i8* %ap12), !dbg !278
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !279
  %3 = load i32* %2, align 8, !dbg !279
  %4 = icmp ugt i32 %3, 47, !dbg !279
  br i1 %4, label %bb4, label %bb3, !dbg !279

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !279
  %6 = load i8** %5, align 8, !dbg !279
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !279
  %8 = add i64 %7, %tmp, !dbg !279
  %9 = inttoptr i64 %8 to i8*, !dbg !279
  %10 = add i32 %3, 8, !dbg !279
  store i32 %10, i32* %2, align 8, !dbg !279
  br label %bb5, !dbg !279

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !279
  %12 = load i8** %11, align 8, !dbg !279
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !279
  store i8* %13, i8** %11, align 8, !dbg !279
  br label %bb5, !dbg !279

bb5:                                              ; preds = %bb4, %bb3
  %addr.26.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.26.0 to i32*, !dbg !279
  %15 = load i32* %14, align 4, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !238), !dbg !279
  call void @llvm.va_end(i8* %ap12), !dbg !280
  br label %bb8, !dbg !280

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !281
  ret i32 %16, !dbg !281
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak i32 @fstat64(i32 %fd, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !165), !dbg !282
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !166), !dbg !282
  %0 = tail call i32 @__fd_fstat(i32 %fd, %struct.stat* %buf) nounwind, !dbg !283
  ret i32 %0, !dbg !283
}

declare i32 @__fd_fstat(i32, %struct.stat*)

define i32 @fstat(i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !167), !dbg !285
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !168), !dbg !285
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !169), !dbg !286
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !287
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !171), !dbg !287
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !288
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !288
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !290
  %2 = load i64* %1, align 8, !dbg !290
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !290
  store i64 %2, i64* %3, align 8, !dbg !290
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !292
  %5 = load i64* %4, align 8, !dbg !292
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !292
  store i64 %5, i64* %6, align 8, !dbg !292
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !293
  %8 = load i32* %7, align 8, !dbg !293
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !293
  store i32 %8, i32* %9, align 8, !dbg !293
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !294
  %11 = load i64* %10, align 8, !dbg !294
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !294
  store i64 %11, i64* %12, align 8, !dbg !294
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !295
  %14 = load i32* %13, align 4, !dbg !295
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !295
  store i32 %14, i32* %15, align 4, !dbg !295
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !296
  %17 = load i32* %16, align 8, !dbg !296
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !296
  store i32 %17, i32* %18, align 8, !dbg !296
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !297
  %20 = load i64* %19, align 8, !dbg !297
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !297
  store i64 %20, i64* %21, align 8, !dbg !297
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !298
  %23 = load i64* %22, align 8, !dbg !298
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !298
  store i64 %23, i64* %24, align 8, !dbg !298
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !299
  %26 = load i64* %25, align 8, !dbg !299
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !299
  store i64 %26, i64* %27, align 8, !dbg !299
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !300
  %29 = load i64* %28, align 8, !dbg !300
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !300
  store i64 %29, i64* %30, align 8, !dbg !300
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !301
  %32 = load i64* %31, align 8, !dbg !301
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !301
  store i64 %32, i64* %33, align 8, !dbg !301
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !302
  %35 = load i64* %34, align 8, !dbg !302
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !302
  store i64 %35, i64* %36, align 8, !dbg !302
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !303
  %38 = load i64* %37, align 8, !dbg !303
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !303
  store i64 %38, i64* %39, align 8, !dbg !303
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !304
  %41 = load i64* %40, align 8, !dbg !304
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !304
  store i64 %41, i64* %42, align 8, !dbg !304
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !305
  %44 = load i64* %43, align 8, !dbg !305
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !305
  store i64 %44, i64* %45, align 8, !dbg !305
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !306
  %47 = load i64* %46, align 8, !dbg !306
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !306
  store i64 %47, i64* %48, align 8, !dbg !306
  ret i32 %0, !dbg !307
}

define i32 @__fxstat(i32 %vers, i32 %fd, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !172), !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !173), !dbg !308
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !174), !dbg !308
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !175), !dbg !309
  %0 = call i32 @__fd_fstat(i32 %fd, %struct.stat* %tmp) nounwind, !dbg !310
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !177), !dbg !310
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !311
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !311
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !313
  %2 = load i64* %1, align 8, !dbg !313
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !313
  store i64 %2, i64* %3, align 8, !dbg !313
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !314
  %5 = load i64* %4, align 8, !dbg !314
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !314
  store i64 %5, i64* %6, align 8, !dbg !314
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !315
  %8 = load i32* %7, align 8, !dbg !315
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !315
  store i32 %8, i32* %9, align 8, !dbg !315
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !316
  %11 = load i64* %10, align 8, !dbg !316
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !316
  store i64 %11, i64* %12, align 8, !dbg !316
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !317
  %14 = load i32* %13, align 4, !dbg !317
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !317
  store i32 %14, i32* %15, align 4, !dbg !317
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !318
  %17 = load i32* %16, align 8, !dbg !318
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !318
  store i32 %17, i32* %18, align 8, !dbg !318
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !319
  %20 = load i64* %19, align 8, !dbg !319
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !319
  store i64 %20, i64* %21, align 8, !dbg !319
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !320
  %23 = load i64* %22, align 8, !dbg !320
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !320
  store i64 %23, i64* %24, align 8, !dbg !320
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !321
  %26 = load i64* %25, align 8, !dbg !321
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !321
  store i64 %26, i64* %27, align 8, !dbg !321
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !322
  %29 = load i64* %28, align 8, !dbg !322
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !322
  store i64 %29, i64* %30, align 8, !dbg !322
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !323
  %32 = load i64* %31, align 8, !dbg !323
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !323
  store i64 %32, i64* %33, align 8, !dbg !323
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !324
  %35 = load i64* %34, align 8, !dbg !324
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !324
  store i64 %35, i64* %36, align 8, !dbg !324
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !325
  %38 = load i64* %37, align 8, !dbg !325
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !325
  store i64 %38, i64* %39, align 8, !dbg !325
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !326
  %41 = load i64* %40, align 8, !dbg !326
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !326
  store i64 %41, i64* %42, align 8, !dbg !326
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !327
  %44 = load i64* %43, align 8, !dbg !327
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !327
  store i64 %44, i64* %45, align 8, !dbg !327
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !328
  %47 = load i64* %46, align 8, !dbg !328
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !328
  store i64 %47, i64* %48, align 8, !dbg !328
  ret i32 %0, !dbg !329
}

define weak i32 @__xstat64(i32 %vers, i8* %path, %struct.stat* %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !178), !dbg !330
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !179), !dbg !330
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !180), !dbg !330
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !181), !dbg !331
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !183), !dbg !332
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !333
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !333
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !335
  %2 = load i64* %1, align 8, !dbg !335
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !335
  store i64 %2, i64* %3, align 8, !dbg !335
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !336
  %5 = load i64* %4, align 8, !dbg !336
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !336
  store i64 %5, i64* %6, align 8, !dbg !336
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !337
  %8 = load i32* %7, align 8, !dbg !337
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !337
  store i32 %8, i32* %9, align 8, !dbg !337
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !338
  %11 = load i64* %10, align 8, !dbg !338
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !338
  store i64 %11, i64* %12, align 8, !dbg !338
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !339
  %14 = load i32* %13, align 4, !dbg !339
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !339
  store i32 %14, i32* %15, align 4, !dbg !339
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !340
  %17 = load i32* %16, align 8, !dbg !340
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !340
  store i32 %17, i32* %18, align 8, !dbg !340
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !341
  %20 = load i64* %19, align 8, !dbg !341
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !341
  store i64 %20, i64* %21, align 8, !dbg !341
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !342
  %23 = load i64* %22, align 8, !dbg !342
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !342
  store i64 %23, i64* %24, align 8, !dbg !342
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !343
  %26 = load i64* %25, align 8, !dbg !343
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !343
  store i64 %26, i64* %27, align 8, !dbg !343
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !344
  %29 = load i64* %28, align 8, !dbg !344
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !344
  store i64 %29, i64* %30, align 8, !dbg !344
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !345
  %32 = load i64* %31, align 8, !dbg !345
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !345
  store i64 %32, i64* %33, align 8, !dbg !345
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !346
  %35 = load i64* %34, align 8, !dbg !346
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !346
  store i64 %35, i64* %36, align 8, !dbg !346
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !347
  %38 = load i64* %37, align 8, !dbg !347
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !347
  store i64 %38, i64* %39, align 8, !dbg !347
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !348
  %41 = load i64* %40, align 8, !dbg !348
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !348
  store i64 %41, i64* %42, align 8, !dbg !348
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !349
  %44 = load i64* %43, align 8, !dbg !349
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !349
  store i64 %44, i64* %45, align 8, !dbg !349
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !350
  %47 = load i64* %46, align 8, !dbg !350
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !350
  store i64 %47, i64* %48, align 8, !dbg !350
  ret i32 %0, !dbg !351
}

declare i32 @__fd_stat(i8*, %struct.stat*)

define weak i32 @stat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !184), !dbg !352
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !185), !dbg !352
  %0 = tail call i32 @__fd_stat(i8* %path, %struct.stat* %buf) nounwind, !dbg !353
  ret i32 %0, !dbg !353
}

define i32 @stat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !186), !dbg !355
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !187), !dbg !355
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !188), !dbg !356
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !190), !dbg !357
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !358
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !358
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !360
  %2 = load i64* %1, align 8, !dbg !360
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !360
  store i64 %2, i64* %3, align 8, !dbg !360
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !361
  %5 = load i64* %4, align 8, !dbg !361
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !361
  store i64 %5, i64* %6, align 8, !dbg !361
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !362
  %8 = load i32* %7, align 8, !dbg !362
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !362
  store i32 %8, i32* %9, align 8, !dbg !362
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !363
  %11 = load i64* %10, align 8, !dbg !363
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !363
  store i64 %11, i64* %12, align 8, !dbg !363
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !364
  %14 = load i32* %13, align 4, !dbg !364
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !364
  store i32 %14, i32* %15, align 4, !dbg !364
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !365
  %17 = load i32* %16, align 8, !dbg !365
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !365
  store i32 %17, i32* %18, align 8, !dbg !365
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !366
  %20 = load i64* %19, align 8, !dbg !366
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !366
  store i64 %20, i64* %21, align 8, !dbg !366
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !367
  %23 = load i64* %22, align 8, !dbg !367
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !367
  store i64 %23, i64* %24, align 8, !dbg !367
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !368
  %26 = load i64* %25, align 8, !dbg !368
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !368
  store i64 %26, i64* %27, align 8, !dbg !368
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !369
  %29 = load i64* %28, align 8, !dbg !369
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !369
  store i64 %29, i64* %30, align 8, !dbg !369
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !370
  %32 = load i64* %31, align 8, !dbg !370
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !370
  store i64 %32, i64* %33, align 8, !dbg !370
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !371
  %35 = load i64* %34, align 8, !dbg !371
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !371
  store i64 %35, i64* %36, align 8, !dbg !371
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !372
  %38 = load i64* %37, align 8, !dbg !372
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !372
  store i64 %38, i64* %39, align 8, !dbg !372
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !373
  %41 = load i64* %40, align 8, !dbg !373
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !373
  store i64 %41, i64* %42, align 8, !dbg !373
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !374
  %44 = load i64* %43, align 8, !dbg !374
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !374
  store i64 %44, i64* %45, align 8, !dbg !374
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !375
  %47 = load i64* %46, align 8, !dbg !375
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !375
  store i64 %47, i64* %48, align 8, !dbg !375
  ret i32 %0, !dbg !376
}

define i32 @__xstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !191), !dbg !377
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !192), !dbg !377
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !193), !dbg !377
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !194), !dbg !378
  %0 = call i32 @__fd_stat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !379
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !196), !dbg !379
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !380
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !380
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !382
  %2 = load i64* %1, align 8, !dbg !382
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !382
  store i64 %2, i64* %3, align 8, !dbg !382
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !383
  %5 = load i64* %4, align 8, !dbg !383
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !383
  store i64 %5, i64* %6, align 8, !dbg !383
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !384
  %8 = load i32* %7, align 8, !dbg !384
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !384
  store i32 %8, i32* %9, align 8, !dbg !384
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !385
  %11 = load i64* %10, align 8, !dbg !385
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !385
  store i64 %11, i64* %12, align 8, !dbg !385
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !386
  %14 = load i32* %13, align 4, !dbg !386
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !386
  store i32 %14, i32* %15, align 4, !dbg !386
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !387
  %17 = load i32* %16, align 8, !dbg !387
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !387
  store i32 %17, i32* %18, align 8, !dbg !387
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !388
  %20 = load i64* %19, align 8, !dbg !388
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !388
  store i64 %20, i64* %21, align 8, !dbg !388
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !389
  %23 = load i64* %22, align 8, !dbg !389
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !389
  store i64 %23, i64* %24, align 8, !dbg !389
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !390
  %26 = load i64* %25, align 8, !dbg !390
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !390
  store i64 %26, i64* %27, align 8, !dbg !390
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !391
  %29 = load i64* %28, align 8, !dbg !391
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !391
  store i64 %29, i64* %30, align 8, !dbg !391
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !392
  %32 = load i64* %31, align 8, !dbg !392
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !392
  store i64 %32, i64* %33, align 8, !dbg !392
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !393
  %35 = load i64* %34, align 8, !dbg !393
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !393
  store i64 %35, i64* %36, align 8, !dbg !393
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !394
  %38 = load i64* %37, align 8, !dbg !394
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !394
  store i64 %38, i64* %39, align 8, !dbg !394
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !395
  %41 = load i64* %40, align 8, !dbg !395
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !395
  store i64 %41, i64* %42, align 8, !dbg !395
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !396
  %44 = load i64* %43, align 8, !dbg !396
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !396
  store i64 %44, i64* %45, align 8, !dbg !396
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !397
  %47 = load i64* %46, align 8, !dbg !397
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !397
  store i64 %47, i64* %48, align 8, !dbg !397
  ret i32 %0, !dbg !398
}

define weak i32 @lstat64(i8* %path, %struct.stat* %buf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !197), !dbg !399
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !198), !dbg !399
  %0 = tail call i32 @__fd_lstat(i8* %path, %struct.stat* %buf) nounwind, !dbg !400
  ret i32 %0, !dbg !400
}

declare i32 @__fd_lstat(i8*, %struct.stat*)

define i32 @lstat(i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !199), !dbg !402
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !200), !dbg !402
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !201), !dbg !403
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !203), !dbg !404
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !405
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !405
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !407
  %2 = load i64* %1, align 8, !dbg !407
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !407
  store i64 %2, i64* %3, align 8, !dbg !407
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !408
  %5 = load i64* %4, align 8, !dbg !408
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !408
  store i64 %5, i64* %6, align 8, !dbg !408
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !409
  %8 = load i32* %7, align 8, !dbg !409
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !409
  store i32 %8, i32* %9, align 8, !dbg !409
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !410
  %11 = load i64* %10, align 8, !dbg !410
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !410
  store i64 %11, i64* %12, align 8, !dbg !410
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !411
  %14 = load i32* %13, align 4, !dbg !411
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !411
  store i32 %14, i32* %15, align 4, !dbg !411
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !412
  %17 = load i32* %16, align 8, !dbg !412
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !412
  store i32 %17, i32* %18, align 8, !dbg !412
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !413
  %20 = load i64* %19, align 8, !dbg !413
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !413
  store i64 %20, i64* %21, align 8, !dbg !413
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !414
  %23 = load i64* %22, align 8, !dbg !414
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !414
  store i64 %23, i64* %24, align 8, !dbg !414
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !415
  %26 = load i64* %25, align 8, !dbg !415
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !415
  store i64 %26, i64* %27, align 8, !dbg !415
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !416
  %29 = load i64* %28, align 8, !dbg !416
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !416
  store i64 %29, i64* %30, align 8, !dbg !416
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !417
  %32 = load i64* %31, align 8, !dbg !417
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !417
  store i64 %32, i64* %33, align 8, !dbg !417
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !418
  %35 = load i64* %34, align 8, !dbg !418
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !418
  store i64 %35, i64* %36, align 8, !dbg !418
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !419
  %38 = load i64* %37, align 8, !dbg !419
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !419
  store i64 %38, i64* %39, align 8, !dbg !419
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !420
  %41 = load i64* %40, align 8, !dbg !420
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !420
  store i64 %41, i64* %42, align 8, !dbg !420
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !421
  %44 = load i64* %43, align 8, !dbg !421
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !421
  store i64 %44, i64* %45, align 8, !dbg !421
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !422
  %47 = load i64* %46, align 8, !dbg !422
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !422
  store i64 %47, i64* %48, align 8, !dbg !422
  ret i32 %0, !dbg !423
}

define i32 @__lxstat(i32 %vers, i8* %path, %struct.stat* nocapture %buf) nounwind {
entry:
  %tmp = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %vers}, i64 0, metadata !204), !dbg !424
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !205), !dbg !424
  call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !206), !dbg !424
  call void @llvm.dbg.declare(metadata !{%struct.stat* %tmp}, metadata !207), !dbg !425
  %0 = call i32 @__fd_lstat(i8* %path, %struct.stat* %tmp) nounwind, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !209), !dbg !426
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %tmp}, i64 0, metadata !163), !dbg !427
  tail call void @llvm.dbg.value(metadata !{%struct.stat* %buf}, i64 0, metadata !164), !dbg !427
  %1 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 0, !dbg !429
  %2 = load i64* %1, align 8, !dbg !429
  %3 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 0, !dbg !429
  store i64 %2, i64* %3, align 8, !dbg !429
  %4 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 1, !dbg !430
  %5 = load i64* %4, align 8, !dbg !430
  %6 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 1, !dbg !430
  store i64 %5, i64* %6, align 8, !dbg !430
  %7 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 3, !dbg !431
  %8 = load i32* %7, align 8, !dbg !431
  %9 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 3, !dbg !431
  store i32 %8, i32* %9, align 8, !dbg !431
  %10 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 2, !dbg !432
  %11 = load i64* %10, align 8, !dbg !432
  %12 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 2, !dbg !432
  store i64 %11, i64* %12, align 8, !dbg !432
  %13 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 4, !dbg !433
  %14 = load i32* %13, align 4, !dbg !433
  %15 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 4, !dbg !433
  store i32 %14, i32* %15, align 4, !dbg !433
  %16 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 5, !dbg !434
  %17 = load i32* %16, align 8, !dbg !434
  %18 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 5, !dbg !434
  store i32 %17, i32* %18, align 8, !dbg !434
  %19 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 7, !dbg !435
  %20 = load i64* %19, align 8, !dbg !435
  %21 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 7, !dbg !435
  store i64 %20, i64* %21, align 8, !dbg !435
  %22 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 8, !dbg !436
  %23 = load i64* %22, align 8, !dbg !436
  %24 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 8, !dbg !436
  store i64 %23, i64* %24, align 8, !dbg !436
  %25 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 0, !dbg !437
  %26 = load i64* %25, align 8, !dbg !437
  %27 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 0, !dbg !437
  store i64 %26, i64* %27, align 8, !dbg !437
  %28 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 0, !dbg !438
  %29 = load i64* %28, align 8, !dbg !438
  %30 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 0, !dbg !438
  store i64 %29, i64* %30, align 8, !dbg !438
  %31 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 0, !dbg !439
  %32 = load i64* %31, align 8, !dbg !439
  %33 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 0, !dbg !439
  store i64 %32, i64* %33, align 8, !dbg !439
  %34 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 9, !dbg !440
  %35 = load i64* %34, align 8, !dbg !440
  %36 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 9, !dbg !440
  store i64 %35, i64* %36, align 8, !dbg !440
  %37 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 10, !dbg !441
  %38 = load i64* %37, align 8, !dbg !441
  %39 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 10, !dbg !441
  store i64 %38, i64* %39, align 8, !dbg !441
  %40 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 11, i32 1, !dbg !442
  %41 = load i64* %40, align 8, !dbg !442
  %42 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 11, i32 1, !dbg !442
  store i64 %41, i64* %42, align 8, !dbg !442
  %43 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 12, i32 1, !dbg !443
  %44 = load i64* %43, align 8, !dbg !443
  %45 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 12, i32 1, !dbg !443
  store i64 %44, i64* %45, align 8, !dbg !443
  %46 = getelementptr inbounds %struct.stat* %tmp, i64 0, i32 13, i32 1, !dbg !444
  %47 = load i64* %46, align 8, !dbg !444
  %48 = getelementptr inbounds %struct.stat* %buf, i64 0, i32 13, i32 1, !dbg !444
  store i64 %47, i64* %48, align 8, !dbg !444
  ret i32 %0, !dbg !445
}

define weak i64 @lseek64(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !210), !dbg !446
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !211), !dbg !446
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !212), !dbg !446
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !447
  ret i64 %0, !dbg !447
}

declare i64 @__fd_lseek(i32, i64, i32)

define i64 @lseek(i32 %fd, i64 %off, i32 %whence) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !213), !dbg !449
  tail call void @llvm.dbg.value(metadata !{i64 %off}, i64 0, metadata !214), !dbg !449
  tail call void @llvm.dbg.value(metadata !{i32 %whence}, i64 0, metadata !215), !dbg !449
  %0 = tail call i64 @__fd_lseek(i32 %fd, i64 %off, i32 %whence) nounwind, !dbg !450
  ret i64 %0, !dbg !450
}

define weak i32 @open64(i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !216), !dbg !452
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !217), !dbg !452
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !218), !dbg !453
  %0 = and i32 %flags, 64, !dbg !454
  %1 = icmp eq i32 %0, 0, !dbg !454
  br i1 %1, label %bb8, label %bb, !dbg !454

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !221), !dbg !455
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !456
  call void @llvm.va_start(i8* %ap12), !dbg !456
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !457
  %3 = load i32* %2, align 8, !dbg !457
  %4 = icmp ugt i32 %3, 47, !dbg !457
  br i1 %4, label %bb4, label %bb3, !dbg !457

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !457
  %6 = load i8** %5, align 8, !dbg !457
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !457
  %8 = add i64 %7, %tmp, !dbg !457
  %9 = inttoptr i64 %8 to i8*, !dbg !457
  %10 = add i32 %3, 8, !dbg !457
  store i32 %10, i32* %2, align 8, !dbg !457
  br label %bb5, !dbg !457

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !457
  %12 = load i8** %11, align 8, !dbg !457
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !457
  store i8* %13, i8** %11, align 8, !dbg !457
  br label %bb5, !dbg !457

bb5:                                              ; preds = %bb4, %bb3
  %addr.33.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.33.0 to i32*, !dbg !457
  %15 = load i32* %14, align 4, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !218), !dbg !457
  call void @llvm.va_end(i8* %ap12), !dbg !458
  br label %bb8, !dbg !458

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_open(i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !459
  ret i32 %16, !dbg !459
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare i32 @__fd_open(i8*, i32, i32)

define i64 @getdents(i32 %fd, %struct.dirent* %dirp, i64 %nbytes) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !242), !dbg !460
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !243), !dbg !460
  tail call void @llvm.dbg.value(metadata !{i64 %nbytes}, i64 0, metadata !244), !dbg !460
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %dirp}, i64 0, metadata !245), !dbg !461
  %0 = trunc i64 %nbytes to i32, !dbg !462
  %1 = tail call i32 @__fd_getdents(i32 %fd, %struct.dirent* %dirp, i32 %0) nounwind, !dbg !462
  %2 = sext i32 %1 to i64, !dbg !462
  tail call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !256), !dbg !462
  %3 = icmp sgt i32 %1, 0, !dbg !463
  br i1 %3, label %bb, label %bb3, !dbg !463

bb:                                               ; preds = %entry
  %4 = bitcast %struct.dirent* %dirp to i8*, !dbg !464
  %5 = getelementptr inbounds i8* %4, i64 %2, !dbg !464
  %6 = bitcast i8* %5 to %struct.dirent*, !dbg !464
  tail call void @llvm.dbg.value(metadata !{%struct.dirent* %6}, i64 0, metadata !257), !dbg !464
  %7 = icmp ugt %struct.dirent* %6, %dirp, !dbg !465
  br i1 %7, label %bb1, label %bb3, !dbg !465

bb1:                                              ; preds = %bb, %bb1
  %dp64.05 = phi %struct.dirent* [ %13, %bb1 ], [ %dirp, %bb ]
  %8 = getelementptr inbounds %struct.dirent* %dp64.05, i64 0, i32 2, !dbg !466
  %9 = bitcast %struct.dirent* %dp64.05 to i8*, !dbg !467
  %10 = load i16* %8, align 8, !dbg !467
  %11 = zext i16 %10 to i64, !dbg !467
  %12 = getelementptr inbounds i8* %9, i64 %11, !dbg !467
  %13 = bitcast i8* %12 to %struct.dirent*, !dbg !467
  %14 = icmp ult i8* %12, %5, !dbg !465
  br i1 %14, label %bb1, label %bb3, !dbg !465

bb3:                                              ; preds = %bb, %bb1, %entry
  ret i64 %2, !dbg !468
}

declare i32 @__fd_getdents(i32, %struct.dirent*, i32)

define i32 @statfs(i8* %path, %struct.statfs* %buf32) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !262), !dbg !469
  tail call void @llvm.dbg.value(metadata !{%struct.statfs* %buf32}, i64 0, metadata !263), !dbg !469
  %0 = tail call i32 @__fd_statfs(i8* %path, %struct.statfs* %buf32) nounwind, !dbg !470
  ret i32 %0, !dbg !470
}

declare i32 @__fd_statfs(i8*, %struct.statfs*)

define i32 @ftruncate(i32 %fd, i64 %length) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !264), !dbg !472
  tail call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !265), !dbg !472
  %0 = tail call i32 @__fd_ftruncate(i32 %fd, i64 %length) nounwind, !dbg !473
  ret i32 %0, !dbg !473
}

declare i32 @__fd_ftruncate(i32, i64)

define i32 @openat(i32 %fd, i8* %pathname, i32 %flags, ...) nounwind {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 8
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !266), !dbg !475
  call void @llvm.dbg.value(metadata !{i8* %pathname}, i64 0, metadata !267), !dbg !475
  call void @llvm.dbg.value(metadata !{i32 %flags}, i64 0, metadata !268), !dbg !475
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !269), !dbg !476
  %0 = and i32 %flags, 64, !dbg !477
  %1 = icmp eq i32 %0, 0, !dbg !477
  br i1 %1, label %bb8, label %bb, !dbg !477

bb:                                               ; preds = %entry
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !271), !dbg !478
  %ap12 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !479
  call void @llvm.va_start(i8* %ap12), !dbg !479
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !480
  %3 = load i32* %2, align 8, !dbg !480
  %4 = icmp ugt i32 %3, 47, !dbg !480
  br i1 %4, label %bb4, label %bb3, !dbg !480

bb3:                                              ; preds = %bb
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !480
  %6 = load i8** %5, align 8, !dbg !480
  %tmp = zext i32 %3 to i64
  %7 = ptrtoint i8* %6 to i64, !dbg !480
  %8 = add i64 %7, %tmp, !dbg !480
  %9 = inttoptr i64 %8 to i8*, !dbg !480
  %10 = add i32 %3, 8, !dbg !480
  store i32 %10, i32* %2, align 8, !dbg !480
  br label %bb5, !dbg !480

bb4:                                              ; preds = %bb
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !480
  %12 = load i8** %11, align 8, !dbg !480
  %13 = getelementptr inbounds i8* %12, i64 8, !dbg !480
  store i8* %13, i8** %11, align 8, !dbg !480
  br label %bb5, !dbg !480

bb5:                                              ; preds = %bb4, %bb3
  %addr.28.0 = phi i8* [ %12, %bb4 ], [ %9, %bb3 ]
  %14 = bitcast i8* %addr.28.0 to i32*, !dbg !480
  %15 = load i32* %14, align 4, !dbg !480
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !269), !dbg !480
  call void @llvm.va_end(i8* %ap12), !dbg !481
  br label %bb8, !dbg !481

bb8:                                              ; preds = %entry, %bb5
  %mode.0 = phi i32 [ %15, %bb5 ], [ 0, %entry ]
  %16 = call i32 @__fd_openat(i32 %fd, i8* %pathname, i32 %flags, i32 %mode.0) nounwind, !dbg !482
  ret i32 %16, !dbg !482
}

declare i32 @__fd_openat(i32, i8*, i32, i32)

!llvm.dbg.sp = !{!0, !67, !70, !73, !76, !82, !85, !88, !91, !92, !93, !94, !99, !103, !106, !107, !126, !157, !160}
!llvm.dbg.lv.__stat64_to_stat = !{!163, !164}
!llvm.dbg.lv.fstat64 = !{!165, !166}
!llvm.dbg.lv.fstat = !{!167, !168, !169, !171}
!llvm.dbg.lv.__fxstat = !{!172, !173, !174, !175, !177}
!llvm.dbg.lv.__xstat64 = !{!178, !179, !180, !181, !183}
!llvm.dbg.lv.stat64 = !{!184, !185}
!llvm.dbg.lv.stat = !{!186, !187, !188, !190}
!llvm.dbg.lv.__xstat = !{!191, !192, !193, !194, !196}
!llvm.dbg.lv.lstat64 = !{!197, !198}
!llvm.dbg.lv.lstat = !{!199, !200, !201, !203}
!llvm.dbg.lv.__lxstat = !{!204, !205, !206, !207, !209}
!llvm.dbg.lv.lseek64 = !{!210, !211, !212}
!llvm.dbg.lv.lseek = !{!213, !214, !215}
!llvm.dbg.lv.open64 = !{!216, !217, !218, !221}
!llvm.dbg.lv.open = !{!236, !237, !238, !240}
!llvm.dbg.lv.getdents = !{!242, !243, !244, !245, !256, !257, !259, !261}
!llvm.dbg.lv.statfs = !{!262, !263}
!llvm.dbg.lv.ftruncate = !{!264, !265}
!llvm.dbg.lv.openat = !{!266, !267, !268, !269, !271}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__stat64_to_stat", metadata !"__stat64_to_stat", metadata !"", metadata !1, i32 41, metadata !3, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"fd_32.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"fd_32.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{null, metadata !5, metadata !47}
!5 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!6 = metadata !{i32 589843, metadata !1, metadata !"stat64", metadata !7, i32 120, i64 1152, i64 64, i64 0, i32 0, null, metadata !8, i32 0, null} ; [ DW_TAG_structure_type ]
!7 = metadata !{i32 589865, metadata !"stat.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!8 = metadata !{metadata !9, metadata !13, metadata !15, metadata !17, metadata !20, metadata !22, metadata !24, metadata !26, metadata !27, metadata !30, metadata !32, metadata !34, metadata !41, metadata !42, metadata !43}
!9 = metadata !{i32 589837, metadata !6, metadata !"st_dev", metadata !7, i32 121, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!10 = metadata !{i32 589846, metadata !11, metadata !"__dev_t", metadata !11, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!12 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 589837, metadata !6, metadata !"st_ino", metadata !7, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ]
!14 = metadata !{i32 589846, metadata !11, metadata !"__ino64_t", metadata !11, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!15 = metadata !{i32 589837, metadata !6, metadata !"st_nlink", metadata !7, i32 124, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!16 = metadata !{i32 589846, metadata !11, metadata !"__nlink_t", metadata !11, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 589837, metadata !6, metadata !"st_mode", metadata !7, i32 125, i64 32, i64 32, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ]
!18 = metadata !{i32 589846, metadata !11, metadata !"__mode_t", metadata !11, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!20 = metadata !{i32 589837, metadata !6, metadata !"st_uid", metadata !7, i32 132, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 589846, metadata !11, metadata !"__uid_t", metadata !11, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 589837, metadata !6, metadata !"st_gid", metadata !7, i32 133, i64 32, i64 32, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ]
!23 = metadata !{i32 589846, metadata !11, metadata !"__gid_t", metadata !11, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 589837, metadata !6, metadata !"__pad0", metadata !7, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !25} ; [ DW_TAG_member ]
!25 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 589837, metadata !6, metadata !"st_rdev", metadata !7, i32 136, i64 64, i64 64, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ]
!27 = metadata !{i32 589837, metadata !6, metadata !"st_size", metadata !7, i32 137, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ]
!28 = metadata !{i32 589846, metadata !11, metadata !"__off_t", metadata !11, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!29 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!30 = metadata !{i32 589837, metadata !6, metadata !"st_blksize", metadata !7, i32 143, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ]
!31 = metadata !{i32 589846, metadata !11, metadata !"__blksize_t", metadata !11, i32 169, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!32 = metadata !{i32 589837, metadata !6, metadata !"st_blocks", metadata !7, i32 144, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ]
!33 = metadata !{i32 589846, metadata !11, metadata !"__blkcnt64_t", metadata !11, i32 173, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!34 = metadata !{i32 589837, metadata !6, metadata !"st_atim", metadata !7, i32 152, i64 128, i64 64, i64 576, i32 0, metadata !35} ; [ DW_TAG_member ]
!35 = metadata !{i32 589843, metadata !1, metadata !"timespec", metadata !36, i32 121, i64 128, i64 64, i64 0, i32 0, null, metadata !37, i32 0, null} ; [ DW_TAG_structure_type ]
!36 = metadata !{i32 589865, metadata !"time.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!37 = metadata !{metadata !38, metadata !40}
!38 = metadata !{i32 589837, metadata !35, metadata !"tv_sec", metadata !36, i32 122, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 589846, metadata !11, metadata !"__time_t", metadata !11, i32 150, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!40 = metadata !{i32 589837, metadata !35, metadata !"tv_nsec", metadata !36, i32 123, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!41 = metadata !{i32 589837, metadata !6, metadata !"st_mtim", metadata !7, i32 153, i64 128, i64 64, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ]
!42 = metadata !{i32 589837, metadata !6, metadata !"st_ctim", metadata !7, i32 154, i64 128, i64 64, i64 832, i32 0, metadata !35} ; [ DW_TAG_member ]
!43 = metadata !{i32 589837, metadata !6, metadata !"__unused", metadata !7, i32 167, i64 192, i64 64, i64 960, i32 0, metadata !44} ; [ DW_TAG_member ]
!44 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !29, metadata !45, i32 0, null} ; [ DW_TAG_array_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 589857, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!47 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 589843, metadata !1, metadata !"stat", metadata !7, i32 47, i64 1152, i64 64, i64 0, i32 0, null, metadata !49, i32 0, null} ; [ DW_TAG_structure_type ]
!49 = metadata !{metadata !50, metadata !51, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !63, metadata !64, metadata !65, metadata !66}
!50 = metadata !{i32 589837, metadata !48, metadata !"st_dev", metadata !7, i32 48, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !48, metadata !"st_ino", metadata !7, i32 53, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ]
!52 = metadata !{i32 589846, metadata !11, metadata !"__ino_t", metadata !11, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 589837, metadata !48, metadata !"st_nlink", metadata !7, i32 61, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ]
!54 = metadata !{i32 589837, metadata !48, metadata !"st_mode", metadata !7, i32 62, i64 32, i64 32, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ]
!55 = metadata !{i32 589837, metadata !48, metadata !"st_uid", metadata !7, i32 64, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ]
!56 = metadata !{i32 589837, metadata !48, metadata !"st_gid", metadata !7, i32 65, i64 32, i64 32, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ]
!57 = metadata !{i32 589837, metadata !48, metadata !"__pad0", metadata !7, i32 67, i64 32, i64 32, i64 288, i32 0, metadata !25} ; [ DW_TAG_member ]
!58 = metadata !{i32 589837, metadata !48, metadata !"st_rdev", metadata !7, i32 69, i64 64, i64 64, i64 320, i32 0, metadata !10} ; [ DW_TAG_member ]
!59 = metadata !{i32 589837, metadata !48, metadata !"st_size", metadata !7, i32 74, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ]
!60 = metadata !{i32 589837, metadata !48, metadata !"st_blksize", metadata !7, i32 78, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ]
!61 = metadata !{i32 589837, metadata !48, metadata !"st_blocks", metadata !7, i32 80, i64 64, i64 64, i64 512, i32 0, metadata !62} ; [ DW_TAG_member ]
!62 = metadata !{i32 589846, metadata !11, metadata !"__blkcnt_t", metadata !11, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!63 = metadata !{i32 589837, metadata !48, metadata !"st_atim", metadata !7, i32 91, i64 128, i64 64, i64 576, i32 0, metadata !35} ; [ DW_TAG_member ]
!64 = metadata !{i32 589837, metadata !48, metadata !"st_mtim", metadata !7, i32 92, i64 128, i64 64, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ]
!65 = metadata !{i32 589837, metadata !48, metadata !"st_ctim", metadata !7, i32 93, i64 128, i64 64, i64 832, i32 0, metadata !35} ; [ DW_TAG_member ]
!66 = metadata !{i32 589837, metadata !48, metadata !"__unused", metadata !7, i32 106, i64 192, i64 64, i64 960, i32 0, metadata !44} ; [ DW_TAG_member ]
!67 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat64", metadata !"fstat64", metadata !"fstat64", metadata !1, i32 234, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat64} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, null} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !25, metadata !25, metadata !5}
!70 = metadata !{i32 589870, i32 0, metadata !1, metadata !"fstat", metadata !"fstat", metadata !"fstat", metadata !1, i32 132, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.stat*)* @fstat} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, null} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !25, metadata !25, metadata !47}
!73 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__fxstat", metadata !"__fxstat", metadata !"__fxstat", metadata !1, i32 125, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, %struct.stat*)* @__fxstat} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{metadata !25, metadata !25, metadata !25, metadata !47}
!76 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat64", metadata !"__xstat64", metadata !"__xstat64", metadata !1, i32 226, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__xstat64} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !25, metadata !25, metadata !79, metadata !5}
!79 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ]
!80 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !81} ; [ DW_TAG_const_type ]
!81 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat64", metadata !"stat64", metadata !"stat64", metadata !1, i32 214, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat64} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{metadata !25, metadata !79, metadata !5}
!85 = metadata !{i32 589870, i32 0, metadata !1, metadata !"stat", metadata !"stat", metadata !"stat", metadata !1, i32 104, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @stat} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !25, metadata !79, metadata !47}
!88 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__xstat", metadata !"__xstat", metadata !"__xstat", metadata !1, i32 97, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__xstat} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !25, metadata !25, metadata !79, metadata !47}
!91 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat64", metadata !"lstat64", metadata !"lstat64", metadata !1, i32 219, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat64} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lstat", metadata !"lstat", metadata !"lstat", metadata !1, i32 118, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.stat*)* @lstat} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 589870, i32 0, metadata !1, metadata !"__lxstat", metadata !"__lxstat", metadata !"__lxstat", metadata !1, i32 111, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, %struct.stat*)* @__lxstat} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek64", metadata !"lseek64", metadata !"lseek64", metadata !1, i32 209, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek64} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, null} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !97, metadata !25, metadata !97, metadata !25}
!97 = metadata !{i32 589846, metadata !98, metadata !"off64_t", metadata !98, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!98 = metadata !{i32 589865, metadata !"types.h", metadata !"/usr/include/x86_64-linux-gnu/sys", metadata !2} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 589870, i32 0, metadata !1, metadata !"lseek", metadata !"lseek", metadata !"lseek", metadata !1, i32 93, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, i64, i32)* @lseek} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !102, metadata !25, metadata !102, metadata !25}
!102 = metadata !{i32 589846, metadata !98, metadata !"off_t", metadata !98, i32 94, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!103 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open64", metadata !"open64", metadata !"open64", metadata !1, i32 194, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open64} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{metadata !25, metadata !79, metadata !25}
!106 = metadata !{i32 589870, i32 0, metadata !1, metadata !"open", metadata !"open", metadata !"open", metadata !1, i32 65, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @open} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 589870, i32 0, metadata !1, metadata !"getdents", metadata !"getdents", metadata !"getdents", metadata !1, i32 168, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i32, %struct.dirent*, i64)* @getdents} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !110, metadata !25, metadata !111, metadata !125}
!110 = metadata !{i32 589846, metadata !98, metadata !"ssize_t", metadata !98, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!111 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 589843, metadata !1, metadata !"dirent", metadata !113, i32 24, i64 2240, i64 64, i64 0, i32 0, null, metadata !114, i32 0, null} ; [ DW_TAG_structure_type ]
!113 = metadata !{i32 589865, metadata !"dirent.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !119, metadata !121}
!115 = metadata !{i32 589837, metadata !112, metadata !"d_ino", metadata !113, i32 26, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ]
!116 = metadata !{i32 589837, metadata !112, metadata !"d_off", metadata !113, i32 27, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ]
!117 = metadata !{i32 589837, metadata !112, metadata !"d_reclen", metadata !113, i32 32, i64 16, i64 16, i64 128, i32 0, metadata !118} ; [ DW_TAG_member ]
!118 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!119 = metadata !{i32 589837, metadata !112, metadata !"d_type", metadata !113, i32 33, i64 8, i64 8, i64 144, i32 0, metadata !120} ; [ DW_TAG_member ]
!120 = metadata !{i32 589860, metadata !1, metadata !"unsigned char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 589837, metadata !112, metadata !"d_name", metadata !113, i32 34, i64 2048, i64 8, i64 152, i32 0, metadata !122} ; [ DW_TAG_member ]
!122 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 2048, i64 8, i64 0, i32 0, metadata !81, metadata !123, i32 0, null} ; [ DW_TAG_array_type ]
!123 = metadata !{metadata !124}
!124 = metadata !{i32 589857, i64 0, i64 255}     ; [ DW_TAG_subrange_type ]
!125 = metadata !{i32 589846, metadata !98, metadata !"size_t", metadata !98, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!126 = metadata !{i32 589870, i32 0, metadata !1, metadata !"statfs", metadata !"statfs", metadata !"statfs", metadata !1, i32 143, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.statfs*)* @statfs} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{metadata !25, metadata !79, metadata !129}
!129 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 589843, metadata !1, metadata !"statfs", metadata !131, i32 26, i64 960, i64 64, i64 0, i32 0, null, metadata !132, i32 0, null} ; [ DW_TAG_structure_type ]
!131 = metadata !{i32 589865, metadata !"statfs.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !137, metadata !138, metadata !139, metadata !141, metadata !142, metadata !150, metadata !151, metadata !152, metadata !153}
!133 = metadata !{i32 589837, metadata !130, metadata !"f_type", metadata !131, i32 27, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ]
!134 = metadata !{i32 589837, metadata !130, metadata !"f_bsize", metadata !131, i32 28, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ]
!135 = metadata !{i32 589837, metadata !130, metadata !"f_blocks", metadata !131, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ]
!136 = metadata !{i32 589846, metadata !11, metadata !"__fsblkcnt_t", metadata !11, i32 174, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!137 = metadata !{i32 589837, metadata !130, metadata !"f_bfree", metadata !131, i32 31, i64 64, i64 64, i64 192, i32 0, metadata !136} ; [ DW_TAG_member ]
!138 = metadata !{i32 589837, metadata !130, metadata !"f_bavail", metadata !131, i32 32, i64 64, i64 64, i64 256, i32 0, metadata !136} ; [ DW_TAG_member ]
!139 = metadata !{i32 589837, metadata !130, metadata !"f_files", metadata !131, i32 33, i64 64, i64 64, i64 320, i32 0, metadata !140} ; [ DW_TAG_member ]
!140 = metadata !{i32 589846, metadata !11, metadata !"__fsfilcnt_t", metadata !11, i32 178, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!141 = metadata !{i32 589837, metadata !130, metadata !"f_ffree", metadata !131, i32 34, i64 64, i64 64, i64 384, i32 0, metadata !140} ; [ DW_TAG_member ]
!142 = metadata !{i32 589837, metadata !130, metadata !"f_fsid", metadata !131, i32 42, i64 64, i64 32, i64 448, i32 0, metadata !143} ; [ DW_TAG_member ]
!143 = metadata !{i32 589846, metadata !11, metadata !"__fsid_t", metadata !11, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ]
!144 = metadata !{i32 589843, metadata !1, metadata !"", metadata !11, i32 144, i64 64, i64 32, i64 0, i32 0, null, metadata !145, i32 0, null} ; [ DW_TAG_structure_type ]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 589837, metadata !144, metadata !"__val", metadata !11, i32 144, i64 64, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ]
!147 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 32, i64 0, i32 0, metadata !25, metadata !148, i32 0, null} ; [ DW_TAG_array_type ]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 589857, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!150 = metadata !{i32 589837, metadata !130, metadata !"f_namelen", metadata !131, i32 43, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ]
!151 = metadata !{i32 589837, metadata !130, metadata !"f_frsize", metadata !131, i32 44, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ]
!152 = metadata !{i32 589837, metadata !130, metadata !"f_flags", metadata !131, i32 45, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ]
!153 = metadata !{i32 589837, metadata !130, metadata !"f_spare", metadata !131, i32 46, i64 256, i64 64, i64 704, i32 0, metadata !154} ; [ DW_TAG_member ]
!154 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 256, i64 64, i64 0, i32 0, metadata !29, metadata !155, i32 0, null} ; [ DW_TAG_array_type ]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 589857, i64 0, i64 3}       ; [ DW_TAG_subrange_type ]
!157 = metadata !{i32 589870, i32 0, metadata !1, metadata !"ftruncate", metadata !"ftruncate", metadata !"ftruncate", metadata !1, i32 139, metadata !158, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i64)* @ftruncate} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, null} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !25, metadata !25, metadata !102}
!160 = metadata !{i32 589870, i32 0, metadata !1, metadata !"openat", metadata !"openat", metadata !"openat", metadata !1, i32 79, metadata !161, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, ...)* @openat} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, null} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{metadata !25, metadata !25, metadata !79, metadata !25}
!163 = metadata !{i32 590081, metadata !0, metadata !"a", metadata !1, i32 41, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 590081, metadata !0, metadata !"b", metadata !1, i32 41, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!165 = metadata !{i32 590081, metadata !67, metadata !"fd", metadata !1, i32 234, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 590081, metadata !67, metadata !"buf", metadata !1, i32 234, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!167 = metadata !{i32 590081, metadata !70, metadata !"fd", metadata !1, i32 132, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 590081, metadata !70, metadata !"buf", metadata !1, i32 132, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!169 = metadata !{i32 590080, metadata !170, metadata !"tmp", metadata !1, i32 133, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 589835, metadata !70, i32 132, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 590080, metadata !170, metadata !"res", metadata !1, i32 134, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 590081, metadata !73, metadata !"vers", metadata !1, i32 125, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 590081, metadata !73, metadata !"fd", metadata !1, i32 125, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 590081, metadata !73, metadata !"buf", metadata !1, i32 125, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 590080, metadata !176, metadata !"tmp", metadata !1, i32 126, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 589835, metadata !73, i32 125, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 590080, metadata !176, metadata !"res", metadata !1, i32 127, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 590081, metadata !76, metadata !"vers", metadata !1, i32 226, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 590081, metadata !76, metadata !"path", metadata !1, i32 226, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!180 = metadata !{i32 590081, metadata !76, metadata !"buf", metadata !1, i32 226, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 590080, metadata !182, metadata !"tmp", metadata !1, i32 227, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 589835, metadata !76, i32 226, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 590080, metadata !182, metadata !"res", metadata !1, i32 228, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 590081, metadata !82, metadata !"path", metadata !1, i32 214, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 590081, metadata !82, metadata !"buf", metadata !1, i32 214, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 590081, metadata !85, metadata !"path", metadata !1, i32 104, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!187 = metadata !{i32 590081, metadata !85, metadata !"buf", metadata !1, i32 104, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 590080, metadata !189, metadata !"tmp", metadata !1, i32 105, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 589835, metadata !85, i32 104, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 590080, metadata !189, metadata !"res", metadata !1, i32 106, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 590081, metadata !88, metadata !"vers", metadata !1, i32 97, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 590081, metadata !88, metadata !"path", metadata !1, i32 97, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 590081, metadata !88, metadata !"buf", metadata !1, i32 97, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 590080, metadata !195, metadata !"tmp", metadata !1, i32 98, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 589835, metadata !88, i32 97, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 590080, metadata !195, metadata !"res", metadata !1, i32 99, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 590081, metadata !91, metadata !"path", metadata !1, i32 219, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 590081, metadata !91, metadata !"buf", metadata !1, i32 219, metadata !5, i32 0} ; [ DW_TAG_arg_variable ]
!199 = metadata !{i32 590081, metadata !92, metadata !"path", metadata !1, i32 118, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 590081, metadata !92, metadata !"buf", metadata !1, i32 118, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 590080, metadata !202, metadata !"tmp", metadata !1, i32 119, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 589835, metadata !92, i32 118, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 590080, metadata !202, metadata !"res", metadata !1, i32 120, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 590081, metadata !93, metadata !"vers", metadata !1, i32 111, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 590081, metadata !93, metadata !"path", metadata !1, i32 111, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 590081, metadata !93, metadata !"buf", metadata !1, i32 111, metadata !47, i32 0} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 590080, metadata !208, metadata !"tmp", metadata !1, i32 112, metadata !6, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 589835, metadata !93, i32 111, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 590080, metadata !208, metadata !"res", metadata !1, i32 113, metadata !25, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 590081, metadata !94, metadata !"fd", metadata !1, i32 209, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!211 = metadata !{i32 590081, metadata !94, metadata !"off", metadata !1, i32 209, metadata !97, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 590081, metadata !94, metadata !"whence", metadata !1, i32 209, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 590081, metadata !99, metadata !"fd", metadata !1, i32 93, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 590081, metadata !99, metadata !"off", metadata !1, i32 93, metadata !102, i32 0} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 590081, metadata !99, metadata !"whence", metadata !1, i32 93, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 590081, metadata !103, metadata !"pathname", metadata !1, i32 194, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 590081, metadata !103, metadata !"flags", metadata !1, i32 194, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 590080, metadata !219, metadata !"mode", metadata !1, i32 195, metadata !220, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 589835, metadata !103, i32 194, i32 0, metadata !1, i32 13} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 589846, metadata !98, metadata !"mode_t", metadata !98, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!221 = metadata !{i32 590080, metadata !222, metadata !"ap", metadata !1, i32 199, metadata !223, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 589835, metadata !219, i32 200, i32 0, metadata !1, i32 14} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 589846, metadata !224, metadata !"va_list", metadata !224, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ]
!224 = metadata !{i32 589865, metadata !"unistd.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!225 = metadata !{i32 589825, metadata !1, metadata !"", metadata !1, i32 0, i64 192, i64 64, i64 0, i32 0, metadata !226, metadata !234, i32 0, null} ; [ DW_TAG_array_type ]
!226 = metadata !{i32 589843, metadata !1, metadata !"__va_list_tag", metadata !227, i32 0, i64 192, i64 64, i64 0, i32 0, null, metadata !228, i32 0, null} ; [ DW_TAG_structure_type ]
!227 = metadata !{i32 589865, metadata !"<built-in>", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !233}
!229 = metadata !{i32 589837, metadata !226, metadata !"gp_offset", metadata !227, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ]
!230 = metadata !{i32 589837, metadata !226, metadata !"fp_offset", metadata !227, i32 0, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ]
!231 = metadata !{i32 589837, metadata !226, metadata !"overflow_arg_area", metadata !227, i32 0, i64 64, i64 64, i64 64, i32 0, metadata !232} ; [ DW_TAG_member ]
!232 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!233 = metadata !{i32 589837, metadata !226, metadata !"reg_save_area", metadata !227, i32 0, i64 64, i64 64, i64 128, i32 0, metadata !232} ; [ DW_TAG_member ]
!234 = metadata !{metadata !235}
!235 = metadata !{i32 589857, i64 0, i64 0}       ; [ DW_TAG_subrange_type ]
!236 = metadata !{i32 590081, metadata !106, metadata !"pathname", metadata !1, i32 65, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 590081, metadata !106, metadata !"flags", metadata !1, i32 65, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!238 = metadata !{i32 590080, metadata !239, metadata !"mode", metadata !1, i32 66, metadata !220, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 589835, metadata !106, i32 65, i32 0, metadata !1, i32 15} ; [ DW_TAG_lexical_block ]
!240 = metadata !{i32 590080, metadata !241, metadata !"ap", metadata !1, i32 70, metadata !223, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 589835, metadata !239, i32 71, i32 0, metadata !1, i32 16} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 590081, metadata !107, metadata !"fd", metadata !1, i32 168, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 590081, metadata !107, metadata !"dirp", metadata !1, i32 168, metadata !111, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 590081, metadata !107, metadata !"nbytes", metadata !1, i32 168, metadata !125, i32 0} ; [ DW_TAG_arg_variable ]
!245 = metadata !{i32 590080, metadata !246, metadata !"dp64", metadata !1, i32 169, metadata !247, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 589835, metadata !107, i32 168, i32 0, metadata !1, i32 17} ; [ DW_TAG_lexical_block ]
!247 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ]
!248 = metadata !{i32 589843, metadata !1, metadata !"dirent64", metadata !113, i32 39, i64 2240, i64 64, i64 0, i32 0, null, metadata !249, i32 0, null} ; [ DW_TAG_structure_type ]
!249 = metadata !{metadata !250, metadata !251, metadata !253, metadata !254, metadata !255}
!250 = metadata !{i32 589837, metadata !248, metadata !"d_ino", metadata !113, i32 40, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ]
!251 = metadata !{i32 589837, metadata !248, metadata !"d_off", metadata !113, i32 41, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ]
!252 = metadata !{i32 589846, metadata !11, metadata !"__off64_t", metadata !11, i32 143, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ]
!253 = metadata !{i32 589837, metadata !248, metadata !"d_reclen", metadata !113, i32 42, i64 16, i64 16, i64 128, i32 0, metadata !118} ; [ DW_TAG_member ]
!254 = metadata !{i32 589837, metadata !248, metadata !"d_type", metadata !113, i32 43, i64 8, i64 8, i64 144, i32 0, metadata !120} ; [ DW_TAG_member ]
!255 = metadata !{i32 589837, metadata !248, metadata !"d_name", metadata !113, i32 44, i64 2048, i64 8, i64 152, i32 0, metadata !122} ; [ DW_TAG_member ]
!256 = metadata !{i32 590080, metadata !246, metadata !"res", metadata !1, i32 170, metadata !110, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 590080, metadata !258, metadata !"end", metadata !1, i32 173, metadata !247, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 589835, metadata !246, i32 173, i32 0, metadata !1, i32 18} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 590080, metadata !260, metadata !"dp", metadata !1, i32 175, metadata !111, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 589835, metadata !258, i32 175, i32 0, metadata !1, i32 19} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 590080, metadata !260, metadata !"name_len", metadata !1, i32 176, metadata !125, i32 0} ; [ DW_TAG_auto_variable ]
!262 = metadata !{i32 590081, metadata !126, metadata !"path", metadata !1, i32 143, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!263 = metadata !{i32 590081, metadata !126, metadata !"buf32", metadata !1, i32 143, metadata !129, i32 0} ; [ DW_TAG_arg_variable ]
!264 = metadata !{i32 590081, metadata !157, metadata !"fd", metadata !1, i32 139, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!265 = metadata !{i32 590081, metadata !157, metadata !"length", metadata !1, i32 139, metadata !102, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 590081, metadata !160, metadata !"fd", metadata !1, i32 79, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!267 = metadata !{i32 590081, metadata !160, metadata !"pathname", metadata !1, i32 79, metadata !79, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 590081, metadata !160, metadata !"flags", metadata !1, i32 79, metadata !25, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 590080, metadata !270, metadata !"mode", metadata !1, i32 80, metadata !220, i32 0} ; [ DW_TAG_auto_variable ]
!270 = metadata !{i32 589835, metadata !160, i32 79, i32 0, metadata !1, i32 22} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 590080, metadata !272, metadata !"ap", metadata !1, i32 84, metadata !223, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 589835, metadata !270, i32 85, i32 0, metadata !1, i32 23} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 65, i32 0, metadata !106, null}
!274 = metadata !{i32 0}
!275 = metadata !{i32 66, i32 0, metadata !239, null}
!276 = metadata !{i32 68, i32 0, metadata !239, null}
!277 = metadata !{i32 70, i32 0, metadata !241, null}
!278 = metadata !{i32 71, i32 0, metadata !241, null}
!279 = metadata !{i32 72, i32 0, metadata !241, null}
!280 = metadata !{i32 73, i32 0, metadata !241, null}
!281 = metadata !{i32 76, i32 0, metadata !239, null}
!282 = metadata !{i32 234, i32 0, metadata !67, null}
!283 = metadata !{i32 235, i32 0, metadata !284, null}
!284 = metadata !{i32 589835, metadata !67, i32 234, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 132, i32 0, metadata !70, null}
!286 = metadata !{i32 133, i32 0, metadata !170, null}
!287 = metadata !{i32 134, i32 0, metadata !170, null}
!288 = metadata !{i32 41, i32 0, metadata !0, metadata !289}
!289 = metadata !{i32 135, i32 0, metadata !170, null}
!290 = metadata !{i32 42, i32 0, metadata !291, metadata !289}
!291 = metadata !{i32 589835, metadata !0, i32 41, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!292 = metadata !{i32 43, i32 0, metadata !291, metadata !289}
!293 = metadata !{i32 44, i32 0, metadata !291, metadata !289}
!294 = metadata !{i32 45, i32 0, metadata !291, metadata !289}
!295 = metadata !{i32 46, i32 0, metadata !291, metadata !289}
!296 = metadata !{i32 47, i32 0, metadata !291, metadata !289}
!297 = metadata !{i32 48, i32 0, metadata !291, metadata !289}
!298 = metadata !{i32 49, i32 0, metadata !291, metadata !289}
!299 = metadata !{i32 50, i32 0, metadata !291, metadata !289}
!300 = metadata !{i32 51, i32 0, metadata !291, metadata !289}
!301 = metadata !{i32 52, i32 0, metadata !291, metadata !289}
!302 = metadata !{i32 53, i32 0, metadata !291, metadata !289}
!303 = metadata !{i32 54, i32 0, metadata !291, metadata !289}
!304 = metadata !{i32 56, i32 0, metadata !291, metadata !289}
!305 = metadata !{i32 57, i32 0, metadata !291, metadata !289}
!306 = metadata !{i32 58, i32 0, metadata !291, metadata !289}
!307 = metadata !{i32 136, i32 0, metadata !170, null}
!308 = metadata !{i32 125, i32 0, metadata !73, null}
!309 = metadata !{i32 126, i32 0, metadata !176, null}
!310 = metadata !{i32 127, i32 0, metadata !176, null}
!311 = metadata !{i32 41, i32 0, metadata !0, metadata !312}
!312 = metadata !{i32 128, i32 0, metadata !176, null}
!313 = metadata !{i32 42, i32 0, metadata !291, metadata !312}
!314 = metadata !{i32 43, i32 0, metadata !291, metadata !312}
!315 = metadata !{i32 44, i32 0, metadata !291, metadata !312}
!316 = metadata !{i32 45, i32 0, metadata !291, metadata !312}
!317 = metadata !{i32 46, i32 0, metadata !291, metadata !312}
!318 = metadata !{i32 47, i32 0, metadata !291, metadata !312}
!319 = metadata !{i32 48, i32 0, metadata !291, metadata !312}
!320 = metadata !{i32 49, i32 0, metadata !291, metadata !312}
!321 = metadata !{i32 50, i32 0, metadata !291, metadata !312}
!322 = metadata !{i32 51, i32 0, metadata !291, metadata !312}
!323 = metadata !{i32 52, i32 0, metadata !291, metadata !312}
!324 = metadata !{i32 53, i32 0, metadata !291, metadata !312}
!325 = metadata !{i32 54, i32 0, metadata !291, metadata !312}
!326 = metadata !{i32 56, i32 0, metadata !291, metadata !312}
!327 = metadata !{i32 57, i32 0, metadata !291, metadata !312}
!328 = metadata !{i32 58, i32 0, metadata !291, metadata !312}
!329 = metadata !{i32 129, i32 0, metadata !176, null}
!330 = metadata !{i32 226, i32 0, metadata !76, null}
!331 = metadata !{i32 227, i32 0, metadata !182, null}
!332 = metadata !{i32 228, i32 0, metadata !182, null}
!333 = metadata !{i32 41, i32 0, metadata !0, metadata !334}
!334 = metadata !{i32 229, i32 0, metadata !182, null}
!335 = metadata !{i32 42, i32 0, metadata !291, metadata !334}
!336 = metadata !{i32 43, i32 0, metadata !291, metadata !334}
!337 = metadata !{i32 44, i32 0, metadata !291, metadata !334}
!338 = metadata !{i32 45, i32 0, metadata !291, metadata !334}
!339 = metadata !{i32 46, i32 0, metadata !291, metadata !334}
!340 = metadata !{i32 47, i32 0, metadata !291, metadata !334}
!341 = metadata !{i32 48, i32 0, metadata !291, metadata !334}
!342 = metadata !{i32 49, i32 0, metadata !291, metadata !334}
!343 = metadata !{i32 50, i32 0, metadata !291, metadata !334}
!344 = metadata !{i32 51, i32 0, metadata !291, metadata !334}
!345 = metadata !{i32 52, i32 0, metadata !291, metadata !334}
!346 = metadata !{i32 53, i32 0, metadata !291, metadata !334}
!347 = metadata !{i32 54, i32 0, metadata !291, metadata !334}
!348 = metadata !{i32 56, i32 0, metadata !291, metadata !334}
!349 = metadata !{i32 57, i32 0, metadata !291, metadata !334}
!350 = metadata !{i32 58, i32 0, metadata !291, metadata !334}
!351 = metadata !{i32 230, i32 0, metadata !182, null}
!352 = metadata !{i32 214, i32 0, metadata !82, null}
!353 = metadata !{i32 215, i32 0, metadata !354, null}
!354 = metadata !{i32 589835, metadata !82, i32 214, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!355 = metadata !{i32 104, i32 0, metadata !85, null}
!356 = metadata !{i32 105, i32 0, metadata !189, null}
!357 = metadata !{i32 106, i32 0, metadata !189, null}
!358 = metadata !{i32 41, i32 0, metadata !0, metadata !359}
!359 = metadata !{i32 107, i32 0, metadata !189, null}
!360 = metadata !{i32 42, i32 0, metadata !291, metadata !359}
!361 = metadata !{i32 43, i32 0, metadata !291, metadata !359}
!362 = metadata !{i32 44, i32 0, metadata !291, metadata !359}
!363 = metadata !{i32 45, i32 0, metadata !291, metadata !359}
!364 = metadata !{i32 46, i32 0, metadata !291, metadata !359}
!365 = metadata !{i32 47, i32 0, metadata !291, metadata !359}
!366 = metadata !{i32 48, i32 0, metadata !291, metadata !359}
!367 = metadata !{i32 49, i32 0, metadata !291, metadata !359}
!368 = metadata !{i32 50, i32 0, metadata !291, metadata !359}
!369 = metadata !{i32 51, i32 0, metadata !291, metadata !359}
!370 = metadata !{i32 52, i32 0, metadata !291, metadata !359}
!371 = metadata !{i32 53, i32 0, metadata !291, metadata !359}
!372 = metadata !{i32 54, i32 0, metadata !291, metadata !359}
!373 = metadata !{i32 56, i32 0, metadata !291, metadata !359}
!374 = metadata !{i32 57, i32 0, metadata !291, metadata !359}
!375 = metadata !{i32 58, i32 0, metadata !291, metadata !359}
!376 = metadata !{i32 108, i32 0, metadata !189, null}
!377 = metadata !{i32 97, i32 0, metadata !88, null}
!378 = metadata !{i32 98, i32 0, metadata !195, null}
!379 = metadata !{i32 99, i32 0, metadata !195, null}
!380 = metadata !{i32 41, i32 0, metadata !0, metadata !381}
!381 = metadata !{i32 100, i32 0, metadata !195, null}
!382 = metadata !{i32 42, i32 0, metadata !291, metadata !381}
!383 = metadata !{i32 43, i32 0, metadata !291, metadata !381}
!384 = metadata !{i32 44, i32 0, metadata !291, metadata !381}
!385 = metadata !{i32 45, i32 0, metadata !291, metadata !381}
!386 = metadata !{i32 46, i32 0, metadata !291, metadata !381}
!387 = metadata !{i32 47, i32 0, metadata !291, metadata !381}
!388 = metadata !{i32 48, i32 0, metadata !291, metadata !381}
!389 = metadata !{i32 49, i32 0, metadata !291, metadata !381}
!390 = metadata !{i32 50, i32 0, metadata !291, metadata !381}
!391 = metadata !{i32 51, i32 0, metadata !291, metadata !381}
!392 = metadata !{i32 52, i32 0, metadata !291, metadata !381}
!393 = metadata !{i32 53, i32 0, metadata !291, metadata !381}
!394 = metadata !{i32 54, i32 0, metadata !291, metadata !381}
!395 = metadata !{i32 56, i32 0, metadata !291, metadata !381}
!396 = metadata !{i32 57, i32 0, metadata !291, metadata !381}
!397 = metadata !{i32 58, i32 0, metadata !291, metadata !381}
!398 = metadata !{i32 101, i32 0, metadata !195, null}
!399 = metadata !{i32 219, i32 0, metadata !91, null}
!400 = metadata !{i32 220, i32 0, metadata !401, null}
!401 = metadata !{i32 589835, metadata !91, i32 219, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!402 = metadata !{i32 118, i32 0, metadata !92, null}
!403 = metadata !{i32 119, i32 0, metadata !202, null}
!404 = metadata !{i32 120, i32 0, metadata !202, null}
!405 = metadata !{i32 41, i32 0, metadata !0, metadata !406}
!406 = metadata !{i32 121, i32 0, metadata !202, null}
!407 = metadata !{i32 42, i32 0, metadata !291, metadata !406}
!408 = metadata !{i32 43, i32 0, metadata !291, metadata !406}
!409 = metadata !{i32 44, i32 0, metadata !291, metadata !406}
!410 = metadata !{i32 45, i32 0, metadata !291, metadata !406}
!411 = metadata !{i32 46, i32 0, metadata !291, metadata !406}
!412 = metadata !{i32 47, i32 0, metadata !291, metadata !406}
!413 = metadata !{i32 48, i32 0, metadata !291, metadata !406}
!414 = metadata !{i32 49, i32 0, metadata !291, metadata !406}
!415 = metadata !{i32 50, i32 0, metadata !291, metadata !406}
!416 = metadata !{i32 51, i32 0, metadata !291, metadata !406}
!417 = metadata !{i32 52, i32 0, metadata !291, metadata !406}
!418 = metadata !{i32 53, i32 0, metadata !291, metadata !406}
!419 = metadata !{i32 54, i32 0, metadata !291, metadata !406}
!420 = metadata !{i32 56, i32 0, metadata !291, metadata !406}
!421 = metadata !{i32 57, i32 0, metadata !291, metadata !406}
!422 = metadata !{i32 58, i32 0, metadata !291, metadata !406}
!423 = metadata !{i32 122, i32 0, metadata !202, null}
!424 = metadata !{i32 111, i32 0, metadata !93, null}
!425 = metadata !{i32 112, i32 0, metadata !208, null}
!426 = metadata !{i32 113, i32 0, metadata !208, null}
!427 = metadata !{i32 41, i32 0, metadata !0, metadata !428}
!428 = metadata !{i32 114, i32 0, metadata !208, null}
!429 = metadata !{i32 42, i32 0, metadata !291, metadata !428}
!430 = metadata !{i32 43, i32 0, metadata !291, metadata !428}
!431 = metadata !{i32 44, i32 0, metadata !291, metadata !428}
!432 = metadata !{i32 45, i32 0, metadata !291, metadata !428}
!433 = metadata !{i32 46, i32 0, metadata !291, metadata !428}
!434 = metadata !{i32 47, i32 0, metadata !291, metadata !428}
!435 = metadata !{i32 48, i32 0, metadata !291, metadata !428}
!436 = metadata !{i32 49, i32 0, metadata !291, metadata !428}
!437 = metadata !{i32 50, i32 0, metadata !291, metadata !428}
!438 = metadata !{i32 51, i32 0, metadata !291, metadata !428}
!439 = metadata !{i32 52, i32 0, metadata !291, metadata !428}
!440 = metadata !{i32 53, i32 0, metadata !291, metadata !428}
!441 = metadata !{i32 54, i32 0, metadata !291, metadata !428}
!442 = metadata !{i32 56, i32 0, metadata !291, metadata !428}
!443 = metadata !{i32 57, i32 0, metadata !291, metadata !428}
!444 = metadata !{i32 58, i32 0, metadata !291, metadata !428}
!445 = metadata !{i32 115, i32 0, metadata !208, null}
!446 = metadata !{i32 209, i32 0, metadata !94, null}
!447 = metadata !{i32 210, i32 0, metadata !448, null}
!448 = metadata !{i32 589835, metadata !94, i32 209, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!449 = metadata !{i32 93, i32 0, metadata !99, null}
!450 = metadata !{i32 94, i32 0, metadata !451, null}
!451 = metadata !{i32 589835, metadata !99, i32 93, i32 0, metadata !1, i32 12} ; [ DW_TAG_lexical_block ]
!452 = metadata !{i32 194, i32 0, metadata !103, null}
!453 = metadata !{i32 195, i32 0, metadata !219, null}
!454 = metadata !{i32 197, i32 0, metadata !219, null}
!455 = metadata !{i32 199, i32 0, metadata !222, null}
!456 = metadata !{i32 200, i32 0, metadata !222, null}
!457 = metadata !{i32 201, i32 0, metadata !222, null}
!458 = metadata !{i32 202, i32 0, metadata !222, null}
!459 = metadata !{i32 205, i32 0, metadata !219, null}
!460 = metadata !{i32 168, i32 0, metadata !107, null}
!461 = metadata !{i32 169, i32 0, metadata !246, null}
!462 = metadata !{i32 170, i32 0, metadata !246, null}
!463 = metadata !{i32 172, i32 0, metadata !246, null}
!464 = metadata !{i32 173, i32 0, metadata !258, null}
!465 = metadata !{i32 174, i32 0, metadata !258, null}
!466 = metadata !{i32 177, i32 0, metadata !260, null}
!467 = metadata !{i32 183, i32 0, metadata !260, null}
!468 = metadata !{i32 187, i32 0, metadata !246, null}
!469 = metadata !{i32 143, i32 0, metadata !126, null}
!470 = metadata !{i32 162, i32 0, metadata !471, null}
!471 = metadata !{i32 589835, metadata !126, i32 143, i32 0, metadata !1, i32 20} ; [ DW_TAG_lexical_block ]
!472 = metadata !{i32 139, i32 0, metadata !157, null}
!473 = metadata !{i32 140, i32 0, metadata !474, null}
!474 = metadata !{i32 589835, metadata !157, i32 139, i32 0, metadata !1, i32 21} ; [ DW_TAG_lexical_block ]
!475 = metadata !{i32 79, i32 0, metadata !160, null}
!476 = metadata !{i32 80, i32 0, metadata !270, null}
!477 = metadata !{i32 82, i32 0, metadata !270, null}
!478 = metadata !{i32 84, i32 0, metadata !272, null}
!479 = metadata !{i32 85, i32 0, metadata !272, null}
!480 = metadata !{i32 86, i32 0, metadata !272, null}
!481 = metadata !{i32 87, i32 0, metadata !272, null}
!482 = metadata !{i32 90, i32 0, metadata !270, null}
