; ModuleID = 'buffers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-f128:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_queue_t = type { i64*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.stream_buffer_t = type { i8*, i64, i64, i64, i64, %struct.event_queue_t, i64, i64, i32, i16 }

@counter.5148 = internal unnamed_addr global i64 0

define i64 @klee_get_wlist() nounwind {
entry:
  %0 = load i64* @counter.5148, align 8, !dbg !117
  %1 = add i64 %0, 1, !dbg !117
  store i64 %1, i64* @counter.5148, align 8, !dbg !117
  ret i64 %0, !dbg !117
}

define i64 @_count_iovec(%struct.iovec* nocapture %iov, i32 %iovcnt) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !71), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !72), !dbg !119
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !73), !dbg !121
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !75), !dbg !123
  %0 = icmp sgt i32 %iovcnt, 0, !dbg !123
  br i1 %0, label %bb.lr.ph, label %bb2, !dbg !123

bb.lr.ph:                                         ; preds = %entry
  %tmp = zext i32 %iovcnt to i64
  br label %bb

bb:                                               ; preds = %bb, %bb.lr.ph
  %indvar = phi i64 [ 0, %bb.lr.ph ], [ %indvar.next, %bb ]
  %result.04 = phi i64 [ 0, %bb.lr.ph ], [ %2, %bb ]
  %scevgep = getelementptr %struct.iovec* %iov, i64 %indvar, i32 1
  %1 = load i64* %scevgep, align 8, !dbg !124
  %2 = add i64 %1, %result.04, !dbg !124
  %indvar.next = add i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, %tmp
  br i1 %exitcond, label %bb2, label %bb, !dbg !123

bb2:                                              ; preds = %bb, %entry
  %result.0.lcssa = phi i64 [ 0, %entry ], [ %2, %bb ]
  ret i64 %result.0.lcssa, !dbg !125
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i64 @_stream_readv(%struct.stream_buffer_t* nocapture %buff, %struct.iovec* nocapture %iov, i32 %iovcnt) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %buff}, i64 0, metadata !76), !dbg !126
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !77), !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !78), !dbg !126
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !71), !dbg !127
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !72), !dbg !127
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !73), !dbg !129
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !75), !dbg !130
  %0 = icmp sgt i32 %iovcnt, 0, !dbg !130
  br i1 %0, label %bb.lr.ph.i, label %bb18, !dbg !130

bb.lr.ph.i:                                       ; preds = %entry
  %tmp33 = zext i32 %iovcnt to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.lr.ph.i
  %indvar.i = phi i64 [ 0, %bb.lr.ph.i ], [ %indvar.next.i, %bb.i ]
  %result.04.i = phi i64 [ 0, %bb.lr.ph.i ], [ %2, %bb.i ]
  %scevgep.i = getelementptr %struct.iovec* %iov, i64 %indvar.i, i32 1
  %1 = load i64* %scevgep.i, align 8, !dbg !131
  %2 = add i64 %1, %result.04.i, !dbg !131
  %indvar.next.i = add i64 %indvar.i, 1
  %exitcond = icmp eq i64 %indvar.next.i, %tmp33
  br i1 %exitcond, label %_count_iovec.exit, label %bb.i, !dbg !130

_count_iovec.exit:                                ; preds = %bb.i
  tail call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !79), !dbg !128
  %3 = icmp eq i64 %2, 0, !dbg !132
  br i1 %3, label %bb18, label %bb5.preheader, !dbg !132

bb5.preheader:                                    ; preds = %_count_iovec.exit
  %4 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 4, !dbg !133
  %5 = load i64* %4, align 8, !dbg !133
  %6 = icmp eq i64 %5, 0, !dbg !133
  %7 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 9, !dbg !134
  br label %bb5

bb1:                                              ; preds = %bb5
  %8 = load i16* %7, align 4, !dbg !134
  %9 = zext i16 %8 to i32, !dbg !134
  %10 = and i32 %9, 2, !dbg !134
  %11 = icmp eq i32 %10, 0, !dbg !134
  br i1 %11, label %bb3, label %bb18, !dbg !134

bb3:                                              ; preds = %bb1
  %12 = and i16 %8, 1
  %toBool = icmp eq i16 %12, 0, !dbg !135
  br i1 %toBool, label %bb5, label %bb4, !dbg !135

bb4:                                              ; preds = %bb3
  %13 = bitcast %struct.stream_buffer_t* %buff to i8*, !dbg !136
  tail call void @free(i8* %13) nounwind, !dbg !136
  br label %bb18, !dbg !137

bb5:                                              ; preds = %bb5.preheader, %bb3
  br i1 %6, label %bb1, label %bb6, !dbg !133

bb6:                                              ; preds = %bb5
  %14 = icmp ult i64 %5, %2, !dbg !138
  tail call void @llvm.dbg.value(metadata !{i64 %5}, i64 0, metadata !79), !dbg !139
  %count.0 = select i1 %14, i64 %5, i64 %2
  %15 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 2, !dbg !140
  %16 = load i64* %15, align 8, !dbg !140
  %17 = icmp ult i64 %16, %count.0, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i64 %16}, i64 0, metadata !79), !dbg !141
  %count.1 = select i1 %17, i64 %16, i64 %count.0
  %18 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 3, !dbg !142
  %19 = load i64* %18, align 8, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i64 %19}, i64 0, metadata !82), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i64 %count.1}, i64 0, metadata !83), !dbg !143
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !81), !dbg !144
  %20 = icmp slt i32 %iovcnt, 1, !dbg !144
  %21 = icmp eq i64 %count.1, 0, !dbg !145
  %or.cond20 = or i1 %20, %21
  br i1 %or.cond20, label %bb17, label %bb12.lr.ph, !dbg !144

bb12.lr.ph:                                       ; preds = %bb6
  %22 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 1, !dbg !146
  %23 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 0, !dbg !147
  br label %bb12

bb12:                                             ; preds = %bb12.lr.ph, %bb15
  %indvar = phi i64 [ 0, %bb12.lr.ph ], [ %tmp, %bb15 ]
  %remaining.023 = phi i64 [ %count.1, %bb12.lr.ph ], [ %40, %bb15 ]
  %offset.122 = phi i64 [ %19, %bb12.lr.ph ], [ %offset.0, %bb15 ]
  %scevgep30 = getelementptr inbounds %struct.iovec* %iov, i64 %indvar, i32 0
  %scevgep31 = getelementptr %struct.iovec* %iov, i64 %indvar, i32 1
  %tmp = add i64 %indvar, 1
  %tmp32 = trunc i64 %tmp to i32
  %24 = load i64* %scevgep31, align 8, !dbg !148
  %25 = icmp ule i64 %24, %remaining.023, !dbg !148
  %min = select i1 %25, i64 %24, i64 %remaining.023, !dbg !148
  %26 = add i64 %min, %offset.122, !dbg !146
  %27 = load i64* %22, align 8, !dbg !146
  %28 = icmp ugt i64 %26, %27, !dbg !146
  br i1 %28, label %bb13, label %bb14, !dbg !146

bb13:                                             ; preds = %bb12
  %29 = urem i64 %26, %27, !dbg !149
  %30 = sub i64 %min, %29, !dbg !147
  %31 = load i8** %23, align 8, !dbg !147
  %32 = getelementptr inbounds i8* %31, i64 %offset.122, !dbg !147
  %33 = load i8** %scevgep30, align 8, !dbg !147
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %32, i64 %30, i32 1, i1 false), !dbg !147
  %34 = load i8** %23, align 8, !dbg !150
  %35 = load i8** %scevgep30, align 8, !dbg !150
  %36 = getelementptr inbounds i8* %35, i64 %30, !dbg !150
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %34, i64 %29, i32 1, i1 false), !dbg !150
  br label %bb15, !dbg !151

bb14:                                             ; preds = %bb12
  %37 = load i8** %23, align 8, !dbg !152
  %38 = getelementptr inbounds i8* %37, i64 %offset.122, !dbg !152
  %39 = load i8** %scevgep30, align 8, !dbg !152
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %38, i64 %min, i32 1, i1 false), !dbg !152
  br label %bb15, !dbg !153

bb15:                                             ; preds = %bb14, %bb13
  %offset.0 = phi i64 [ %29, %bb13 ], [ %26, %bb14 ]
  %40 = sub i64 %remaining.023, %min, !dbg !154
  %41 = icmp sge i32 %tmp32, %iovcnt, !dbg !144
  %42 = icmp eq i64 %remaining.023, %min, !dbg !145
  %or.cond = or i1 %41, %42
  br i1 %or.cond, label %bb16.bb17_crit_edge, label %bb12, !dbg !144

bb16.bb17_crit_edge:                              ; preds = %bb15
  tail call void @llvm.dbg.value(metadata !{i64 %min}, i64 0, metadata !84), !dbg !148
  tail call void @llvm.dbg.value(metadata !{i64 %40}, i64 0, metadata !83), !dbg !154
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !81), !dbg !144
  %.pre = load i64* %4, align 8
  br label %bb17

bb17:                                             ; preds = %bb16.bb17_crit_edge, %bb6
  %43 = phi i64 [ %.pre, %bb16.bb17_crit_edge ], [ %5, %bb6 ]
  %offset.1.lcssa = phi i64 [ %offset.0, %bb16.bb17_crit_edge ], [ %19, %bb6 ]
  store i64 %offset.1.lcssa, i64* %18, align 8, !dbg !155
  %44 = sub i64 %43, %count.1, !dbg !156
  store i64 %44, i64* %4, align 8, !dbg !156
  br label %bb18, !dbg !157

bb18:                                             ; preds = %bb1, %entry, %_count_iovec.exit, %bb17, %bb4
  %.0 = phi i64 [ -1, %bb4 ], [ %count.1, %bb17 ], [ 0, %_count_iovec.exit ], [ 0, %entry ], [ 0, %bb1 ]
  ret i64 %.0, !dbg !158
}

declare void @free(i8* nocapture) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind

define i64 @_stream_read(%struct.stream_buffer_t* nocapture %buff, i8* %dest, i64 %count) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %buff}, i64 0, metadata !88), !dbg !159
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !89), !dbg !159
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !90), !dbg !159
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !91), !dbg !160
  %0 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !160
  store i8* %dest, i8** %0, align 8, !dbg !160
  %1 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !160
  store i64 %count, i64* %1, align 8, !dbg !160
  %2 = call i64 @_stream_readv(%struct.stream_buffer_t* %buff, %struct.iovec* %iov, i32 1) nounwind, !dbg !161
  ret i64 %2, !dbg !161
}

define i64 @_stream_writev(%struct.stream_buffer_t* %buff, %struct.iovec* nocapture %iov, i32 %iovcnt) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %buff}, i64 0, metadata !93), !dbg !162
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !94), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !95), !dbg !162
  tail call void @llvm.dbg.value(metadata !{%struct.iovec* %iov}, i64 0, metadata !71), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %iovcnt}, i64 0, metadata !72), !dbg !163
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !73), !dbg !165
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !75), !dbg !166
  %0 = icmp sgt i32 %iovcnt, 0, !dbg !166
  br i1 %0, label %bb.lr.ph.i, label %bb20, !dbg !166

bb.lr.ph.i:                                       ; preds = %entry
  %tmp41 = zext i32 %iovcnt to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.lr.ph.i
  %indvar.i = phi i64 [ 0, %bb.lr.ph.i ], [ %indvar.next.i, %bb.i ]
  %result.04.i = phi i64 [ 0, %bb.lr.ph.i ], [ %2, %bb.i ]
  %scevgep.i = getelementptr %struct.iovec* %iov, i64 %indvar.i, i32 1
  %1 = load i64* %scevgep.i, align 8, !dbg !167
  %2 = add i64 %1, %result.04.i, !dbg !167
  %indvar.next.i = add i64 %indvar.i, 1
  %exitcond = icmp eq i64 %indvar.next.i, %tmp41
  br i1 %exitcond, label %_count_iovec.exit, label %bb.i, !dbg !166

_count_iovec.exit:                                ; preds = %bb.i
  tail call void @llvm.dbg.value(metadata !{i64 %2}, i64 0, metadata !96), !dbg !164
  %3 = icmp eq i64 %2, 0, !dbg !168
  br i1 %3, label %bb20, label %bb1, !dbg !168

bb1:                                              ; preds = %_count_iovec.exit
  %4 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 9, !dbg !169
  %5 = load i16* %4, align 4, !dbg !169
  %6 = zext i16 %5 to i32, !dbg !169
  %7 = and i32 %6, 2, !dbg !169
  %8 = icmp eq i32 %7, 0, !dbg !169
  br i1 %8, label %bb9.preheader, label %bb20, !dbg !169

bb9.preheader:                                    ; preds = %bb1
  %9 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 4, !dbg !170
  %10 = load i64* %9, align 8, !dbg !170
  %11 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 1, !dbg !170
  %12 = load i64* %11, align 8, !dbg !170
  %13 = icmp eq i64 %10, %12, !dbg !170
  br label %bb9

bb3:                                              ; preds = %bb9
  %14 = and i16 %5, 1
  %toBool = icmp eq i16 %14, 0, !dbg !171
  br i1 %toBool, label %bb9, label %bb4, !dbg !171

bb4:                                              ; preds = %bb3
  %15 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 8, !dbg !172
  %16 = load i32* %15, align 8, !dbg !172
  %17 = icmp eq i32 %16, 0, !dbg !172
  br i1 %17, label %bb5, label %bb20, !dbg !172

bb5:                                              ; preds = %bb4
  %18 = bitcast %struct.stream_buffer_t* %buff to i8*, !dbg !173
  tail call void @free(i8* %18) nounwind, !dbg !173
  br label %bb20, !dbg !173

bb9:                                              ; preds = %bb3, %bb9.preheader
  br i1 %13, label %bb3, label %bb10, !dbg !170

bb10:                                             ; preds = %bb9
  %19 = sub i64 %12, %10, !dbg !174
  %20 = icmp ult i64 %19, %2, !dbg !174
  tail call void @llvm.dbg.value(metadata !{i64 %19}, i64 0, metadata !96), !dbg !175
  %count.0 = select i1 %20, i64 %19, i64 %2
  tail call void @llvm.dbg.value(metadata !{i64 %26}, i64 0, metadata !99), !dbg !176
  tail call void @llvm.dbg.value(metadata !{i64 %count.0}, i64 0, metadata !100), !dbg !177
  tail call void @llvm.dbg.value(metadata !122, i64 0, metadata !98), !dbg !178
  %21 = icmp slt i32 %iovcnt, 1, !dbg !178
  %22 = icmp eq i64 %count.0, 0, !dbg !179
  %or.cond22 = or i1 %21, %22
  br i1 %or.cond22, label %bb19, label %bb14.lr.ph, !dbg !178

bb14.lr.ph:                                       ; preds = %bb10
  %23 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 3, !dbg !176
  %24 = load i64* %23, align 8, !dbg !176
  %25 = add i64 %10, %24, !dbg !176
  %26 = urem i64 %25, %12, !dbg !176
  %27 = getelementptr inbounds %struct.stream_buffer_t* %buff, i64 0, i32 0, !dbg !180
  br label %bb14

bb14:                                             ; preds = %bb17.bb14_crit_edge, %bb14.lr.ph
  %28 = phi i64 [ %12, %bb14.lr.ph ], [ %.pre43, %bb17.bb14_crit_edge ]
  %indvar = phi i64 [ 0, %bb14.lr.ph ], [ %tmp, %bb17.bb14_crit_edge ]
  %remaining.025 = phi i64 [ %count.0, %bb14.lr.ph ], [ %46, %bb17.bb14_crit_edge ]
  %offset.124 = phi i64 [ %26, %bb14.lr.ph ], [ %offset.0, %bb17.bb14_crit_edge ]
  %scevgep38 = getelementptr inbounds %struct.iovec* %iov, i64 %indvar, i32 0
  %scevgep39 = getelementptr %struct.iovec* %iov, i64 %indvar, i32 1
  %tmp = add i64 %indvar, 1
  %tmp40 = trunc i64 %tmp to i32
  %29 = load i64* %scevgep39, align 8, !dbg !181
  %30 = icmp ule i64 %29, %remaining.025, !dbg !181
  %min = select i1 %30, i64 %29, i64 %remaining.025, !dbg !181
  %31 = add i64 %min, %offset.124, !dbg !182
  %32 = icmp ugt i64 %31, %28, !dbg !182
  br i1 %32, label %bb15, label %bb16, !dbg !182

bb15:                                             ; preds = %bb14
  %33 = urem i64 %31, %28, !dbg !183
  %34 = sub i64 %min, %33, !dbg !180
  %35 = load i8** %scevgep38, align 8, !dbg !180
  %36 = load i8** %27, align 8, !dbg !180
  %37 = getelementptr inbounds i8* %36, i64 %offset.124, !dbg !180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %35, i64 %34, i32 1, i1 false), !dbg !180
  %38 = load i8** %scevgep38, align 8, !dbg !184
  %39 = getelementptr inbounds i8* %38, i64 %34, !dbg !184
  %40 = load i8** %27, align 8, !dbg !184
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %39, i64 %33, i32 1, i1 false), !dbg !184
  br label %bb17, !dbg !185

bb16:                                             ; preds = %bb14
  %41 = load i8** %scevgep38, align 8, !dbg !186
  %42 = load i8** %27, align 8, !dbg !186
  %43 = getelementptr inbounds i8* %42, i64 %offset.124, !dbg !186
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %41, i64 %min, i32 1, i1 false), !dbg !186
  br label %bb17, !dbg !187

bb17:                                             ; preds = %bb16, %bb15
  %offset.0 = phi i64 [ %33, %bb15 ], [ %31, %bb16 ]
  %44 = icmp sge i32 %tmp40, %iovcnt, !dbg !178
  %45 = icmp eq i64 %remaining.025, %min, !dbg !179
  %or.cond = or i1 %44, %45
  br i1 %or.cond, label %bb18.bb19_crit_edge, label %bb17.bb14_crit_edge, !dbg !178

bb17.bb14_crit_edge:                              ; preds = %bb17
  %46 = sub i64 %remaining.025, %min, !dbg !188
  %.pre43 = load i64* %11, align 8
  br label %bb14

bb18.bb19_crit_edge:                              ; preds = %bb17
  tail call void @llvm.dbg.value(metadata !{i64 %min}, i64 0, metadata !101), !dbg !181
  tail call void @llvm.dbg.value(metadata !{i64 %46}, i64 0, metadata !100), !dbg !188
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !98), !dbg !178
  %.pre = load i64* %9, align 8
  br label %bb19

bb19:                                             ; preds = %bb18.bb19_crit_edge, %bb10
  %47 = phi i64 [ %.pre, %bb18.bb19_crit_edge ], [ %10, %bb10 ]
  %48 = add i64 %47, %count.0, !dbg !189
  store i64 %48, i64* %9, align 8, !dbg !189
  br label %bb20, !dbg !190

bb20:                                             ; preds = %entry, %bb4, %bb5, %bb1, %_count_iovec.exit, %bb19
  %.0 = phi i64 [ %count.0, %bb19 ], [ 0, %_count_iovec.exit ], [ 0, %bb1 ], [ -1, %bb5 ], [ -1, %bb4 ], [ 0, %entry ]
  ret i64 %.0, !dbg !191
}

define i64 @_stream_write(%struct.stream_buffer_t* %buff, i8* %src, i64 %count) nounwind {
entry:
  %iov = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %buff}, i64 0, metadata !105), !dbg !192
  call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !106), !dbg !192
  call void @llvm.dbg.value(metadata !{i64 %count}, i64 0, metadata !107), !dbg !192
  call void @llvm.dbg.declare(metadata !{%struct.iovec* %iov}, metadata !108), !dbg !193
  %0 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 0, !dbg !193
  store i8* %src, i8** %0, align 8, !dbg !193
  %1 = getelementptr inbounds %struct.iovec* %iov, i64 0, i32 1, !dbg !193
  store i64 %count, i64* %1, align 8, !dbg !193
  %2 = call i64 @_stream_writev(%struct.stream_buffer_t* %buff, %struct.iovec* %iov, i32 1) nounwind, !dbg !194
  ret i64 %2, !dbg !194
}

define void @_event_queue_init(%struct.event_queue_t* nocapture %q, i32 %count, i32 %shared) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.event_queue_t* %q}, i64 0, metadata !110), !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %count}, i64 0, metadata !111), !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %shared}, i64 0, metadata !112), !dbg !195
  %0 = zext i32 %count to i64, !dbg !196
  %1 = shl nuw nsw i64 %0, 3, !dbg !196
  %2 = tail call noalias i8* @malloc(i64 %1) nounwind, !dbg !196
  %3 = bitcast i8* %2 to i64*, !dbg !196
  %4 = getelementptr inbounds %struct.event_queue_t* %q, i64 0, i32 0, !dbg !196
  store i64* %3, i64** %4, align 8, !dbg !196
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %1, i32 8, i1 false), !dbg !198
  %5 = getelementptr inbounds %struct.event_queue_t* %q, i64 0, i32 1, !dbg !199
  store i32 %count, i32* %5, align 8, !dbg !199
  ret void, !dbg !200
}

declare noalias i8* @malloc(i64) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define noalias %struct.stream_buffer_t* @_stream_create(i64 %max_size, i32 %shared) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %max_size}, i64 0, metadata !113), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %shared}, i64 0, metadata !114), !dbg !201
  %0 = tail call noalias i8* @malloc(i64 80) nounwind, !dbg !202
  %1 = bitcast i8* %0 to %struct.stream_buffer_t*, !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct.stream_buffer_t* %1}, i64 0, metadata !115), !dbg !202
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false), !dbg !203
  %2 = tail call noalias i8* @malloc(i64 %max_size) nounwind, !dbg !204
  %3 = bitcast i8* %0 to i8**, !dbg !204
  store i8* %2, i8** %3, align 8, !dbg !204
  %4 = getelementptr inbounds i8* %0, i64 8
  %5 = bitcast i8* %4 to i64*, !dbg !205
  store i64 %max_size, i64* %5, align 8, !dbg !205
  %6 = getelementptr inbounds i8* %0, i64 16
  %7 = bitcast i8* %6 to i64*, !dbg !206
  store i64 %max_size, i64* %7, align 8, !dbg !206
  %8 = getelementptr inbounds i8* %0, i64 72
  %9 = bitcast i8* %8 to i32*, !dbg !207
  store i32 0, i32* %9, align 8, !dbg !207
  %10 = load i64* @counter.5148, align 8, !dbg !208
  %11 = add i64 %10, 1, !dbg !208
  %12 = getelementptr inbounds i8* %0, i64 56
  %13 = bitcast i8* %12 to i64*, !dbg !209
  store i64 %10, i64* %13, align 8, !dbg !209
  %14 = add i64 %10, 2, !dbg !210
  store i64 %14, i64* @counter.5148, align 8, !dbg !210
  %15 = getelementptr inbounds i8* %0, i64 64
  %16 = bitcast i8* %15 to i64*, !dbg !211
  store i64 %11, i64* %16, align 8, !dbg !211
  %17 = getelementptr inbounds i8* %0, i64 40
  tail call void @llvm.dbg.value(metadata !{null}, i64 0, metadata !110) nounwind, !dbg !212
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !111) nounwind, !dbg !212
  tail call void @llvm.dbg.value(metadata !215, i64 0, metadata !112) nounwind, !dbg !212
  %18 = tail call noalias i8* @malloc(i64 32) nounwind, !dbg !216
  %19 = bitcast i8* %18 to i64*, !dbg !216
  %20 = bitcast i8* %17 to i64**, !dbg !216
  store i64* %19, i64** %20, align 8, !dbg !216
  tail call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 32, i32 8, i1 false) nounwind, !dbg !217
  %21 = getelementptr inbounds i8* %0, i64 48
  %22 = bitcast i8* %21 to i32*, !dbg !218
  store i32 4, i32* %22, align 8, !dbg !218
  ret %struct.stream_buffer_t* %1, !dbg !219
}

!llvm.dbg.sp = !{!0, !8, !22, !54, !57, !58, !63, !67}
!llvm.dbg.gv = !{!70}
!llvm.dbg.lv._count_iovec = !{!71, !72, !73, !75}
!llvm.dbg.lv._stream_readv = !{!76, !77, !78, !79, !81, !82, !83, !84, !86}
!llvm.dbg.lv._stream_read = !{!88, !89, !90, !91}
!llvm.dbg.lv._stream_writev = !{!93, !94, !95, !96, !98, !99, !100, !101, !103}
!llvm.dbg.lv._stream_write = !{!105, !106, !107, !108}
!llvm.dbg.lv._event_queue_init = !{!110, !111, !112}
!llvm.dbg.lv._stream_create = !{!113, !114, !115}

!0 = metadata !{i32 589870, i32 0, metadata !1, metadata !"klee_get_wlist", metadata !"klee_get_wlist", metadata !"klee_get_wlist", metadata !1, i32 9, metadata !3, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 ()* @klee_get_wlist} ; [ DW_TAG_subprogram ]
!1 = metadata !{i32 589865, metadata !"buffers.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!2 = metadata !{i32 589841, i32 0, i32 1, metadata !"buffers.c", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !"4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2.9)", i1 true, i1 true, metadata !"", i32 0} ; [ DW_TAG_compile_unit ]
!3 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !4, i32 0, null} ; [ DW_TAG_subroutine_type ]
!4 = metadata !{metadata !5}
!5 = metadata !{i32 589846, metadata !6, metadata !"uint64_t", metadata !6, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!6 = metadata !{i32 589865, metadata !"stdint.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 589860, metadata !1, metadata !"long unsigned int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_count_iovec", metadata !"_count_iovec", metadata !"_count_iovec", metadata !1, i32 24, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.iovec*, i32)* @_count_iovec} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null} ; [ DW_TAG_subroutine_type ]
!10 = metadata !{metadata !11, metadata !13, metadata !21}
!11 = metadata !{i32 589846, metadata !12, metadata !"size_t", metadata !12, i32 233, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 589865, metadata !"unistd.h", metadata !"/usr/include", metadata !2} ; [ DW_TAG_file_type ]
!13 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 128, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!15 = metadata !{i32 589843, metadata !1, metadata !"iovec", metadata !16, i32 45, i64 128, i64 64, i64 0, i32 0, null, metadata !17, i32 0, null} ; [ DW_TAG_structure_type ]
!16 = metadata !{i32 589865, metadata !"uio.h", metadata !"/usr/include/x86_64-linux-gnu/bits", metadata !2} ; [ DW_TAG_file_type ]
!17 = metadata !{metadata !18, metadata !20}
!18 = metadata !{i32 589837, metadata !15, metadata !"iov_base", metadata !16, i32 46, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ]
!19 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 589837, metadata !15, metadata !"iov_len", metadata !16, i32 47, i64 64, i64 64, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ]
!21 = metadata !{i32 589860, metadata !1, metadata !"int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_readv", metadata !"_stream_readv", metadata !"_stream_readv", metadata !1, i32 117, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.stream_buffer_t*, %struct.iovec*, i32)* @_stream_readv} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !25, metadata !28, metadata !13, metadata !21}
!25 = metadata !{i32 589846, metadata !26, metadata !"ssize_t", metadata !26, i32 214, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 589865, metadata !"stddef.h", metadata !"/home/klee/Downloads/llvm-gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.2.1/include", metadata !2} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 589860, metadata !1, metadata !"long int", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 589846, metadata !26, metadata !"stream_buffer_t", metadata !26, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ]
!30 = metadata !{i32 589843, metadata !1, metadata !"", metadata !31, i32 27, i64 640, i64 64, i64 0, i32 0, null, metadata !32, i32 0, null} ; [ DW_TAG_structure_type ]
!31 = metadata !{i32 589865, metadata !"buffers.h", metadata !"/home/klee/Downloads/klee/runtime/POSIX/", metadata !2} ; [ DW_TAG_file_type ]
!32 = metadata !{metadata !33, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !49, metadata !50, metadata !51, metadata !52}
!33 = metadata !{i32 589837, metadata !30, metadata !"contents", metadata !31, i32 28, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!35 = metadata !{i32 589860, metadata !1, metadata !"char", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!36 = metadata !{i32 589837, metadata !30, metadata !"max_size", metadata !31, i32 29, i64 64, i64 64, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ]
!37 = metadata !{i32 589837, metadata !30, metadata !"max_rsize", metadata !31, i32 30, i64 64, i64 64, i64 128, i32 0, metadata !11} ; [ DW_TAG_member ]
!38 = metadata !{i32 589837, metadata !30, metadata !"start", metadata !31, i32 32, i64 64, i64 64, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ]
!39 = metadata !{i32 589837, metadata !30, metadata !"size", metadata !31, i32 33, i64 64, i64 64, i64 256, i32 0, metadata !11} ; [ DW_TAG_member ]
!40 = metadata !{i32 589837, metadata !30, metadata !"evt_queue", metadata !31, i32 35, i64 128, i64 64, i64 320, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 589846, metadata !31, metadata !"event_queue_t", metadata !31, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ]
!42 = metadata !{i32 589843, metadata !1, metadata !"", metadata !31, i32 21, i64 128, i64 64, i64 0, i32 0, null, metadata !43, i32 0, null} ; [ DW_TAG_structure_type ]
!43 = metadata !{metadata !44, metadata !47}
!44 = metadata !{i32 589837, metadata !42, metadata !"queue", metadata !31, i32 22, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ]
!45 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!46 = metadata !{i32 589846, metadata !31, metadata !"wlist_id_t", metadata !31, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ]
!47 = metadata !{i32 589837, metadata !42, metadata !"count", metadata !31, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ]
!48 = metadata !{i32 589860, metadata !1, metadata !"unsigned int", metadata !1, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 589837, metadata !30, metadata !"empty_wlist", metadata !31, i32 36, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ]
!50 = metadata !{i32 589837, metadata !30, metadata !"full_wlist", metadata !31, i32 37, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ]
!51 = metadata !{i32 589837, metadata !30, metadata !"queued", metadata !31, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ]
!52 = metadata !{i32 589837, metadata !30, metadata !"status", metadata !31, i32 40, i64 16, i64 16, i64 608, i32 0, metadata !53} ; [ DW_TAG_member ]
!53 = metadata !{i32 589860, metadata !1, metadata !"short unsigned int", metadata !1, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_read", metadata !"_stream_read", metadata !"_stream_read", metadata !1, i32 169, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.stream_buffer_t*, i8*, i64)* @_stream_read} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !25, metadata !28, metadata !34, metadata !11}
!57 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_writev", metadata !"_stream_writev", metadata !"_stream_writev", metadata !1, i32 54, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.stream_buffer_t*, %struct.iovec*, i32)* @_stream_writev} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_write", metadata !"_stream_write", metadata !"_stream_write", metadata !1, i32 111, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (%struct.stream_buffer_t*, i8*, i64)* @_stream_write} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !25, metadata !28, metadata !61, metadata !11}
!61 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 589862, metadata !1, metadata !"", metadata !1, i32 0, i64 8, i64 8, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!63 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_event_queue_init", metadata !"_event_queue_init", metadata !"_event_queue_init", metadata !1, i32 15, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.event_queue_t*, i32, i32)* @_event_queue_init} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, null} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !66, metadata !48, metadata !21}
!66 = metadata !{i32 589839, metadata !1, metadata !"", metadata !1, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!67 = metadata !{i32 589870, i32 0, metadata !1, metadata !"_stream_create", metadata !"_stream_create", metadata !"_stream_create", metadata !1, i32 34, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.stream_buffer_t* (i64, i32)* @_stream_create} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 589845, metadata !1, metadata !"", metadata !1, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, null} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !28, metadata !11, metadata !21}
!70 = metadata !{i32 589876, i32 0, metadata !0, metadata !"counter", metadata !"counter", metadata !"", metadata !1, i32 10, metadata !5, i1 true, i1 true, i64* @counter.5148} ; [ DW_TAG_variable ]
!71 = metadata !{i32 590081, metadata !8, metadata !"iov", metadata !1, i32 24, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 590081, metadata !8, metadata !"iovcnt", metadata !1, i32 24, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 590080, metadata !74, metadata !"result", metadata !1, i32 25, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 589835, metadata !8, i32 24, i32 0, metadata !1, i32 1} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 590080, metadata !74, metadata !"i", metadata !1, i32 26, metadata !21, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 590081, metadata !22, metadata !"buff", metadata !1, i32 117, metadata !28, i32 0} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 590081, metadata !22, metadata !"iov", metadata !1, i32 117, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 590081, metadata !22, metadata !"iovcnt", metadata !1, i32 117, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 590080, metadata !80, metadata !"count", metadata !1, i32 118, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 589835, metadata !22, i32 117, i32 0, metadata !1, i32 2} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 590080, metadata !80, metadata !"i", metadata !1, i32 140, metadata !21, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 590080, metadata !80, metadata !"offset", metadata !1, i32 141, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 590080, metadata !80, metadata !"remaining", metadata !1, i32 142, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 590080, metadata !85, metadata !"cur_count", metadata !1, i32 148, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 589835, metadata !80, i32 145, i32 0, metadata !1, i32 3} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 590080, metadata !87, metadata !"overflow", metadata !1, i32 151, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 589835, metadata !85, i32 151, i32 0, metadata !1, i32 4} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 590081, metadata !54, metadata !"buff", metadata !1, i32 169, metadata !28, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 590081, metadata !54, metadata !"dest", metadata !1, i32 169, metadata !34, i32 0} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 590081, metadata !54, metadata !"count", metadata !1, i32 169, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 590080, metadata !92, metadata !"iov", metadata !1, i32 170, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 589835, metadata !54, i32 169, i32 0, metadata !1, i32 5} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 590081, metadata !57, metadata !"buff", metadata !1, i32 54, metadata !28, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 590081, metadata !57, metadata !"iov", metadata !1, i32 54, metadata !13, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 590081, metadata !57, metadata !"iovcnt", metadata !1, i32 54, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 590080, metadata !97, metadata !"count", metadata !1, i32 55, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 589835, metadata !57, i32 54, i32 0, metadata !1, i32 6} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 590080, metadata !97, metadata !"i", metadata !1, i32 82, metadata !21, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 590080, metadata !97, metadata !"offset", metadata !1, i32 83, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 590080, metadata !97, metadata !"remaining", metadata !1, i32 84, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 590080, metadata !102, metadata !"cur_count", metadata !1, i32 90, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 589835, metadata !97, i32 87, i32 0, metadata !1, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 590080, metadata !104, metadata !"overflow", metadata !1, i32 93, metadata !11, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 589835, metadata !102, i32 93, i32 0, metadata !1, i32 8} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 590081, metadata !58, metadata !"buff", metadata !1, i32 111, metadata !28, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 590081, metadata !58, metadata !"src", metadata !1, i32 111, metadata !61, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 590081, metadata !58, metadata !"count", metadata !1, i32 111, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 590080, metadata !109, metadata !"iov", metadata !1, i32 112, metadata !15, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 589835, metadata !58, i32 111, i32 0, metadata !1, i32 9} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 590081, metadata !63, metadata !"q", metadata !1, i32 15, metadata !66, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 590081, metadata !63, metadata !"count", metadata !1, i32 15, metadata !48, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 590081, metadata !63, metadata !"shared", metadata !1, i32 15, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 590081, metadata !67, metadata !"max_size", metadata !1, i32 34, metadata !11, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 590081, metadata !67, metadata !"shared", metadata !1, i32 34, metadata !21, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 590080, metadata !116, metadata !"buff", metadata !1, i32 35, metadata !28, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 589835, metadata !67, i32 34, i32 0, metadata !1, i32 11} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 11, i32 0, metadata !118, null}
!118 = metadata !{i32 589835, metadata !0, i32 9, i32 0, metadata !1, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 24, i32 0, metadata !8, null}
!120 = metadata !{i64 0}
!121 = metadata !{i32 25, i32 0, metadata !74, null}
!122 = metadata !{i32 0}
!123 = metadata !{i32 27, i32 0, metadata !74, null}
!124 = metadata !{i32 28, i32 0, metadata !74, null}
!125 = metadata !{i32 29, i32 0, metadata !74, null}
!126 = metadata !{i32 117, i32 0, metadata !22, null}
!127 = metadata !{i32 24, i32 0, metadata !8, metadata !128}
!128 = metadata !{i32 118, i32 0, metadata !80, null}
!129 = metadata !{i32 25, i32 0, metadata !74, metadata !128}
!130 = metadata !{i32 27, i32 0, metadata !74, metadata !128}
!131 = metadata !{i32 28, i32 0, metadata !74, metadata !128}
!132 = metadata !{i32 120, i32 0, metadata !80, null}
!133 = metadata !{i32 124, i32 0, metadata !80, null}
!134 = metadata !{i32 125, i32 0, metadata !80, null}
!135 = metadata !{i32 129, i32 0, metadata !80, null}
!136 = metadata !{i32 130, i32 0, metadata !80, null}
!137 = metadata !{i32 131, i32 0, metadata !80, null}
!138 = metadata !{i32 135, i32 0, metadata !80, null}
!139 = metadata !{i32 136, i32 0, metadata !80, null}
!140 = metadata !{i32 137, i32 0, metadata !80, null}
!141 = metadata !{i32 138, i32 0, metadata !80, null}
!142 = metadata !{i32 141, i32 0, metadata !80, null}
!143 = metadata !{i32 142, i32 0, metadata !80, null}
!144 = metadata !{i32 144, i32 0, metadata !80, null}
!145 = metadata !{i32 145, i32 0, metadata !85, null}
!146 = metadata !{i32 150, i32 0, metadata !85, null}
!147 = metadata !{i32 153, i32 0, metadata !87, null}
!148 = metadata !{i32 148, i32 0, metadata !85, null}
!149 = metadata !{i32 151, i32 0, metadata !87, null}
!150 = metadata !{i32 154, i32 0, metadata !87, null}
!151 = metadata !{i32 155, i32 0, metadata !87, null}
!152 = metadata !{i32 157, i32 0, metadata !85, null}
!153 = metadata !{i32 158, i32 0, metadata !85, null}
!154 = metadata !{i32 160, i32 0, metadata !85, null}
!155 = metadata !{i32 163, i32 0, metadata !80, null}
!156 = metadata !{i32 164, i32 0, metadata !80, null}
!157 = metadata !{i32 166, i32 0, metadata !80, null}
!158 = metadata !{i32 121, i32 0, metadata !80, null}
!159 = metadata !{i32 169, i32 0, metadata !54, null}
!160 = metadata !{i32 170, i32 0, metadata !92, null}
!161 = metadata !{i32 171, i32 0, metadata !92, null}
!162 = metadata !{i32 54, i32 0, metadata !57, null}
!163 = metadata !{i32 24, i32 0, metadata !8, metadata !164}
!164 = metadata !{i32 55, i32 0, metadata !97, null}
!165 = metadata !{i32 25, i32 0, metadata !74, metadata !164}
!166 = metadata !{i32 27, i32 0, metadata !74, metadata !164}
!167 = metadata !{i32 28, i32 0, metadata !74, metadata !164}
!168 = metadata !{i32 57, i32 0, metadata !97, null}
!169 = metadata !{i32 61, i32 0, metadata !97, null}
!170 = metadata !{i32 65, i32 0, metadata !97, null}
!171 = metadata !{i32 67, i32 0, metadata !97, null}
!172 = metadata !{i32 68, i32 0, metadata !97, null}
!173 = metadata !{i32 69, i32 0, metadata !97, null}
!174 = metadata !{i32 79, i32 0, metadata !97, null}
!175 = metadata !{i32 80, i32 0, metadata !97, null}
!176 = metadata !{i32 83, i32 0, metadata !97, null}
!177 = metadata !{i32 84, i32 0, metadata !97, null}
!178 = metadata !{i32 86, i32 0, metadata !97, null}
!179 = metadata !{i32 87, i32 0, metadata !102, null}
!180 = metadata !{i32 95, i32 0, metadata !104, null}
!181 = metadata !{i32 90, i32 0, metadata !102, null}
!182 = metadata !{i32 92, i32 0, metadata !102, null}
!183 = metadata !{i32 93, i32 0, metadata !104, null}
!184 = metadata !{i32 96, i32 0, metadata !104, null}
!185 = metadata !{i32 97, i32 0, metadata !104, null}
!186 = metadata !{i32 99, i32 0, metadata !102, null}
!187 = metadata !{i32 100, i32 0, metadata !102, null}
!188 = metadata !{i32 102, i32 0, metadata !102, null}
!189 = metadata !{i32 105, i32 0, metadata !97, null}
!190 = metadata !{i32 107, i32 0, metadata !97, null}
!191 = metadata !{i32 58, i32 0, metadata !97, null}
!192 = metadata !{i32 111, i32 0, metadata !58, null}
!193 = metadata !{i32 112, i32 0, metadata !109, null}
!194 = metadata !{i32 114, i32 0, metadata !109, null}
!195 = metadata !{i32 15, i32 0, metadata !63, null}
!196 = metadata !{i32 16, i32 0, metadata !197, null}
!197 = metadata !{i32 589835, metadata !63, i32 15, i32 0, metadata !1, i32 10} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 18, i32 0, metadata !197, null}
!199 = metadata !{i32 20, i32 0, metadata !197, null}
!200 = metadata !{i32 21, i32 0, metadata !197, null}
!201 = metadata !{i32 34, i32 0, metadata !67, null}
!202 = metadata !{i32 35, i32 0, metadata !116, null}
!203 = metadata !{i32 37, i32 0, metadata !116, null}
!204 = metadata !{i32 38, i32 0, metadata !116, null}
!205 = metadata !{i32 39, i32 0, metadata !116, null}
!206 = metadata !{i32 40, i32 0, metadata !116, null}
!207 = metadata !{i32 41, i32 0, metadata !116, null}
!208 = metadata !{i32 11, i32 0, metadata !118, metadata !209}
!209 = metadata !{i32 42, i32 0, metadata !116, null}
!210 = metadata !{i32 11, i32 0, metadata !118, metadata !211}
!211 = metadata !{i32 43, i32 0, metadata !116, null}
!212 = metadata !{i32 15, i32 0, metadata !63, metadata !213}
!213 = metadata !{i32 44, i32 0, metadata !116, null}
!214 = metadata !{i32 4}
!215 = metadata !{i32 undef}
!216 = metadata !{i32 16, i32 0, metadata !197, metadata !213}
!217 = metadata !{i32 18, i32 0, metadata !197, metadata !213}
!218 = metadata !{i32 20, i32 0, metadata !197, metadata !213}
!219 = metadata !{i32 51, i32 0, metadata !116, null}
