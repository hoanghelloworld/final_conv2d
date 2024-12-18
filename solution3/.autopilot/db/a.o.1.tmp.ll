; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@kernel = constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 -1], [3 x i32] [i32 2, i32 3, i32 -2], [3 x i32] [i32 1, i32 4, i32 -1]], align 16 ; [#uses=0 type=[3 x [3 x i32]]*]
@do_convolution.str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"for_y\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"win_y\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@.str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]

; [#uses=1]
define internal fastcc i32 @sum_window(i32 %"window[0][0].read", i32 %"window[0][1].read", i32 %"window[0][2].read", i32 %"window[1][0].read", i32 %"window[1][1].read", i32 %"window[1][2].read", i32 %"window[2][0].read", i32 %"window[2][1].read", i32 %"window[2][2].read", i32 %y, i32 %x) readnone {
._crit_edge.0.0:
  call void @llvm.dbg.value(metadata !{i32 %"window[0][0].read"}, i64 0, metadata !98), !dbg !107 ; [debug line = 18:27] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][1].read"}, i64 0, metadata !108), !dbg !107 ; [debug line = 18:27] [debug variable = window[0][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][2].read"}, i64 0, metadata !109), !dbg !107 ; [debug line = 18:27] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][0].read"}, i64 0, metadata !110), !dbg !107 ; [debug line = 18:27] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].read"}, i64 0, metadata !111), !dbg !107 ; [debug line = 18:27] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][2].read"}, i64 0, metadata !112), !dbg !107 ; [debug line = 18:27] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][0].read"}, i64 0, metadata !113), !dbg !107 ; [debug line = 18:27] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][1].read"}, i64 0, metadata !114), !dbg !107 ; [debug line = 18:27] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].read"}, i64 0, metadata !115), !dbg !107 ; [debug line = 18:27] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !116), !dbg !117 ; [debug line = 18:45] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !118), !dbg !119 ; [debug line = 18:52] [debug variable = x]
  %y.assign = add nsw i32 %y, -1, !dbg !120       ; [#uses=1 type=i32] [debug line = 26:17]
  %x.assign = add nsw i32 %x, -1, !dbg !120       ; [#uses=1 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y.assign}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %tmp.i = icmp sgt i32 %y, 0, !dbg !133          ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp..i = icmp slt i32 %y.assign, 5, !dbg !133  ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %or.cond.i = and i1 %tmp.i, %tmp..i, !dbg !133  ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %tmp.14.i = icmp sgt i32 %x, 0, !dbg !133       ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %or.cond1.i = and i1 %or.cond.i, %tmp.14.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp.15.i = icmp slt i32 %x.assign, 5, !dbg !133 ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %..i = and i1 %or.cond1.i, %tmp.15.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %.read. = select i1 %..i, i32 %"window[0][0].read", i32 0, !dbg !120 ; [#uses=2 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y.assign}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %tmp.14.i1 = icmp sgt i32 %x, -1, !dbg !133     ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %or.cond1.i1 = and i1 %or.cond.i, %tmp.14.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp.15.i1 = icmp slt i32 %x, 5, !dbg !133      ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %..i1 = and i1 %or.cond1.i1, %tmp.15.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  br i1 %..i1, label %0, label %._crit_edge.0.1, !dbg !120 ; [debug line = 26:17]

._crit_edge.0.1:                                  ; preds = %0, %._crit_edge.0.0
  %result.2.0.1 = phi i32 [ %result.3.0.1, %0 ], [ %.read., %._crit_edge.0.0 ] ; [#uses=2 type=i32]
  %x.assign.1 = add nsw i32 %x, 1, !dbg !120      ; [#uses=2 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y.assign}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign.1}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %tmp.14.i2 = icmp sgt i32 %x.assign.1, -1, !dbg !133 ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %or.cond1.i2 = and i1 %or.cond.i, %tmp.14.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp.15.i2 = icmp slt i32 %x.assign.1, 5, !dbg !133 ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %..i2 = and i1 %or.cond1.i2, %tmp.15.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %result.3.0.2 = sub i32 %result.2.0.1, %"window[0][2].read", !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.2.0.2 = select i1 %..i2, i32 %result.3.0.2, i32 %result.2.0.1, !dbg !120 ; [#uses=2 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %tmp.i1 = icmp sgt i32 %y, -1, !dbg !133        ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp..i1 = icmp slt i32 %y, 5, !dbg !133        ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %or.cond.i1 = and i1 %tmp.i1, %tmp..i1, !dbg !133 ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %or.cond1.i3 = and i1 %or.cond.i1, %tmp.14.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i3 = and i1 %or.cond1.i3, %tmp.15.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  br i1 %..i3, label %1, label %._crit_edge.1.0, !dbg !120 ; [debug line = 26:17]

; <label>:0                                       ; preds = %._crit_edge.0.0
  %tmp.7.0.1 = shl nsw i32 %"window[0][1].read", 1, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3.0.1 = add nsw i32 %tmp.7.0.1, %.read., !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  br label %._crit_edge.0.1, !dbg !137            ; [debug line = 29:13]

._crit_edge.1.0:                                  ; preds = %1, %._crit_edge.0.1
  %result.2.1 = phi i32 [ %result.3.1, %1 ], [ %result.2.0.2, %._crit_edge.0.1 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %or.cond1.i4 = and i1 %or.cond.i1, %tmp.14.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i4 = and i1 %or.cond1.i4, %tmp.15.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  br i1 %..i4, label %2, label %._crit_edge.1.1, !dbg !120 ; [debug line = 26:17]

; <label>:1                                       ; preds = %._crit_edge.0.1
  %tmp.7.1 = shl nsw i32 %"window[1][0].read", 1, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3.1 = add nsw i32 %tmp.7.1, %result.2.0.2, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  br label %._crit_edge.1.0, !dbg !137            ; [debug line = 29:13]

._crit_edge.1.1:                                  ; preds = %2, %._crit_edge.1.0
  %result.2.1.1 = phi i32 [ %result.3.1.1, %2 ], [ %result.2.1, %._crit_edge.1.0 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign.1}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %or.cond1.i5 = and i1 %or.cond.i1, %tmp.14.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i5 = and i1 %or.cond1.i5, %tmp.15.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  br i1 %..i5, label %3, label %._crit_edge.1.2, !dbg !120 ; [debug line = 26:17]

; <label>:2                                       ; preds = %._crit_edge.1.0
  %_shl = shl i32 %"window[1][1].read", 2, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %tmp.7.1.1 = sub i32 %_shl, %"window[1][1].read", !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3.1.1 = add nsw i32 %result.2.1, %tmp.7.1.1, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  br label %._crit_edge.1.1, !dbg !137            ; [debug line = 29:13]

._crit_edge.1.2:                                  ; preds = %3, %._crit_edge.1.1
  %result.2.1.2 = phi i32 [ %result.3.1.2, %3 ], [ %result.2.1.1, %._crit_edge.1.1 ] ; [#uses=2 type=i32]
  %y.assign.1 = add nsw i32 %y, 1, !dbg !120      ; [#uses=2 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y.assign.1}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %tmp.i2 = icmp sgt i32 %y.assign.1, -1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %tmp..i2 = icmp slt i32 %y.assign.1, 5, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %or.cond.i2 = and i1 %tmp.i2, %tmp..i2, !dbg !133 ; [#uses=3 type=i1] [debug line = 14:3@26:17]
  %or.cond1.i6 = and i1 %or.cond.i2, %tmp.14.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i6 = and i1 %or.cond1.i6, %tmp.15.i, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %result.3.2 = add nsw i32 %result.2.1.2, %"window[2][0].read", !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.2.2 = select i1 %..i6, i32 %result.3.2, i32 %result.2.1.2, !dbg !120 ; [#uses=2 type=i32] [debug line = 26:17]
  call void @llvm.dbg.value(metadata !{i32 %y.assign.1}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %or.cond1.i7 = and i1 %or.cond.i2, %tmp.14.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i7 = and i1 %or.cond1.i7, %tmp.15.i1, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  br i1 %..i7, label %4, label %._crit_edge.2.1, !dbg !120 ; [debug line = 26:17]

; <label>:3                                       ; preds = %._crit_edge.1.1
  %_shl9 = shl i32 %"window[1][2].read", 1, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3.1.2 = sub i32 %result.2.1.1, %_shl9, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  br label %._crit_edge.1.2, !dbg !137            ; [debug line = 29:13]

._crit_edge.2.1:                                  ; preds = %4, %._crit_edge.1.2
  %result.2.2.1 = phi i32 [ %result.3.2.1, %4 ], [ %result.2.2, %._crit_edge.1.2 ] ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y.assign.1}, i64 0, metadata !126), !dbg !130 ; [debug line = 12:27@26:17] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x.assign.1}, i64 0, metadata !131), !dbg !132 ; [debug line = 12:34@26:17] [debug variable = x]
  %or.cond1.i8 = and i1 %or.cond.i2, %tmp.14.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %..i8 = and i1 %or.cond1.i8, %tmp.15.i2, !dbg !133 ; [#uses=1 type=i1] [debug line = 14:3@26:17]
  %result.3.2.2 = sub i32 %result.2.2.1, %"window[2][2].read", !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.2.2.2 = select i1 %..i8, i32 %result.3.2.2, i32 %result.2.2.1, !dbg !120 ; [#uses=1 type=i32] [debug line = 26:17]
  ret i32 %result.2.2.2, !dbg !138                ; [debug line = 33:5]

; <label>:4                                       ; preds = %._crit_edge.1.2
  %tmp.7.2.1 = shl nsw i32 %"window[2][1].read", 2, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3.2.1 = add nsw i32 %tmp.7.2.1, %result.2.2, !dbg !135 ; [#uses=1 type=i32] [debug line = 28:17]
  br label %._crit_edge.2.1, !dbg !137            ; [debug line = 29:13]
}

; [#uses=86]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution(i32* %out_stream.V, i32* %in_stream.V) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %in_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %out_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream.V), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream.V), !map !145
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution.str) nounwind
  %tmp.17 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.10 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.4 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %"line_buf[0]" = alloca [5 x i32], align 4      ; [#uses=3 type=[5 x i32]*]
  %"line_buf[1]" = alloca [5 x i32], align 4      ; [#uses=3 type=[5 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %out_stream.V}, i64 0, metadata !149), !dbg !154 ; [debug line = 37:39] [debug variable = out_stream.V]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !155), !dbg !157 ; [debug line = 37:69] [debug variable = in_stream.V]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %"line_buf[0]"}, metadata !158), !dbg !166 ; [debug line = 39:7] [debug variable = line_buf[0]]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %"line_buf[1]"}, metadata !167), !dbg !166 ; [debug line = 39:7] [debug variable = line_buf[1]]
  br label %3, !dbg !168                          ; [debug line = 48:48]

; <label>:3                                       ; preds = %5, %0
  %x = phi i32 [ 3, %0 ], [ %x.1, %5 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %x, 5, !dbg !168       ; [#uses=1 type=i1] [debug line = 48:48]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader21.0, label %5, !dbg !168 ; [debug line = 48:48]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str2) nounwind, !dbg !170 ; [debug line = 50:3]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str2), !dbg !170 ; [#uses=1 type=i32] [debug line = 50:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !172 ; [debug line = 49:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !173), !dbg !178 ; [debug line = 129:56@50:37] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !180) nounwind, !dbg !182 ; [debug line = 130:22@50:37] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp) nounwind, !dbg !183 ; [debug line = 131:9@50:37]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !180), !dbg !184 ; [debug line = 132:9@50:37] [debug variable = tmp]
  %6 = load i32* %tmp, align 4, !dbg !184         ; [#uses=1 type=i32] [debug line = 132:9@50:37]
  %tmp. = zext i32 %x to i64, !dbg !179           ; [#uses=1 type=i64] [debug line = 50:37]
  %"line_buf[0].addr" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp. ; [#uses=1 type=i32*]
  store i32 %6, i32* %"line_buf[0].addr", align 4, !dbg !179 ; [debug line = 50:37]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str2, i32 %tmp.2), !dbg !185 ; [#uses=0 type=i32] [debug line = 50:52]
  %x.1 = add nsw i32 %x, 1, !dbg !186             ; [#uses=1 type=i32] [debug line = 48:57]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !187), !dbg !186 ; [debug line = 48:57] [debug variable = x]
  br label %3, !dbg !186                          ; [debug line = 48:57]

.preheader21.1:                                   ; preds = %9
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str3, i32 %tmp.1), !dbg !188 ; [#uses=0 type=i32] [debug line = 54:34]
  br label %.preheader20, !dbg !192               ; [debug line = 57:39]

; <label>:9                                       ; preds = %11, %.preheader21.0
  %x1 = phi i32 [ 0, %.preheader21.0 ], [ %x.2, %11 ] ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %x1, 5, !dbg !194      ; [#uses=1 type=i1] [debug line = 52:28]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader21.1, label %11, !dbg !194 ; [debug line = 52:28]

.preheader21.0:                                   ; preds = %3
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str3), !dbg !195 ; [#uses=1 type=i32] [debug line = 52:5]
  br label %9, !dbg !194                          ; [debug line = 52:28]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str4) nounwind, !dbg !196 ; [debug line = 54:3]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str4), !dbg !196 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !198 ; [debug line = 53:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !173), !dbg !199 ; [debug line = 129:56@54:19] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.4}, metadata !180) nounwind, !dbg !201 ; [debug line = 130:22@54:19] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp.4) nounwind, !dbg !202 ; [debug line = 131:9@54:19]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !180), !dbg !203 ; [debug line = 132:9@54:19] [debug variable = tmp]
  %tmp.4.load = load i32* %tmp.4, align 4, !dbg !203 ; [#uses=1 type=i32] [debug line = 132:9@54:19]
  %tmp.6 = zext i32 %x1 to i64, !dbg !200         ; [#uses=1 type=i64] [debug line = 54:19]
  %"line_buf[1].addr" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.6 ; [#uses=1 type=i32*]
  store i32 %tmp.4.load, i32* %"line_buf[1].addr", align 4, !dbg !200 ; [debug line = 54:19]
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str4, i32 %tmp.3), !dbg !204 ; [#uses=0 type=i32] [debug line = 54:34]
  %x.2 = add nsw i32 %x1, 1, !dbg !205            ; [#uses=1 type=i32] [debug line = 52:37]
  br label %9, !dbg !205                          ; [debug line = 52:37]

.preheader20:                                     ; preds = %21, %.preheader21.1
  %window.2.2 = phi i32 [ undef, %.preheader21.1 ], [ %window.2.2.1.lcssa, %21 ] ; [#uses=2 type=i32]
  %window.2.1 = phi i32 [ undef, %.preheader21.1 ], [ %window.2.1.1.lcssa, %21 ] ; [#uses=2 type=i32]
  %window.1.2 = phi i32 [ undef, %.preheader21.1 ], [ %window.1.2.1.lcssa, %21 ] ; [#uses=2 type=i32]
  %window.1.1 = phi i32 [ undef, %.preheader21.1 ], [ %window.1.1.1.lcssa, %21 ] ; [#uses=2 type=i32]
  %y2 = phi i32 [ 1, %.preheader21.1 ], [ %y, %21 ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %y2, 3, !dbg !192      ; [#uses=1 type=i1] [debug line = 57:39]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader19.preheader, label %14, !dbg !192 ; [debug line = 57:39]

.preheader19.preheader:                           ; preds = %.preheader20
  %window.1.1.lcssa = phi i32 [ %window.1.1, %.preheader20 ] ; [#uses=1 type=i32]
  %window.1.2.lcssa = phi i32 [ %window.1.2, %.preheader20 ] ; [#uses=1 type=i32]
  %window.2.1.lcssa = phi i32 [ %window.2.1, %.preheader20 ] ; [#uses=1 type=i32]
  %window.2.2.lcssa = phi i32 [ %window.2.2, %.preheader20 ] ; [#uses=1 type=i32]
  br label %.preheader19, !dbg !206               ; [debug line = 63:25]

; <label>:14                                      ; preds = %.preheader20
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str5) nounwind, !dbg !208 ; [debug line = 58:5]
  %tmp.5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str5), !dbg !208 ; [#uses=1 type=i32] [debug line = 58:5]
  %tmp.9 = trunc i32 %y2 to i1, !dbg !210         ; [#uses=1 type=i1] [debug line = 60:2]
  %y2.t = trunc i32 %y2 to i2                     ; [#uses=1 type=i2]
  %cond = icmp eq i2 %y2.t, 1, !dbg !210          ; [#uses=1 type=i1] [debug line = 60:2]
  br label %15, !dbg !213                         ; [debug line = 58:41]

; <label>:15                                      ; preds = %19, %14
  %window.2.2.1 = phi i32 [ %window.2.2, %14 ], [ %window.2.2.2, %19 ] ; [#uses=3 type=i32]
  %window.2.1.1 = phi i32 [ %window.2.1, %14 ], [ %window.2.1.2, %19 ] ; [#uses=3 type=i32]
  %window.1.2.1 = phi i32 [ %window.1.2, %14 ], [ %window.1.2.2, %19 ] ; [#uses=3 type=i32]
  %window.1.1.1 = phi i32 [ %window.1.1, %14 ], [ %window.1.1.2, %19 ] ; [#uses=3 type=i32]
  %x3 = phi i32 [ 1, %14 ], [ %x.3, %19 ]         ; [#uses=4 type=i32]
  %exitcond6 = icmp eq i32 %x3, 3, !dbg !213      ; [#uses=1 type=i1] [debug line = 58:41]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond6, label %21, label %17, !dbg !213 ; [debug line = 58:41]

; <label>:17                                      ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str6) nounwind, !dbg !214 ; [debug line = 60:3]
  %tmp.14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str6), !dbg !214 ; [#uses=1 type=i32] [debug line = 60:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !215 ; [debug line = 59:1]
  %tmp.7 = add nsw i32 %x3, 2, !dbg !210          ; [#uses=1 type=i32] [debug line = 60:2]
  %tmp.8 = zext i32 %tmp.7 to i64, !dbg !210      ; [#uses=2 type=i64] [debug line = 60:2]
  %"line_buf[0].addr.1" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp.8, !dbg !210 ; [#uses=1 type=i32*] [debug line = 60:2]
  %"line_buf[1].addr.1" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.8, !dbg !210 ; [#uses=1 type=i32*] [debug line = 60:2]
  br i1 %tmp.9, label %branch0, label %branch1, !dbg !210 ; [debug line = 60:2]

; <label>:18                                      ; preds = %branch1, %branch0
  %"window[1][1].2" = phi i32 [ %"line_buf[0].load", %branch0 ], [ %"line_buf[1].load", %branch1 ], !dbg !210 ; [#uses=4 type=i32] [debug line = 60:2]
  %x3.t = trunc i32 %x3 to i2                     ; [#uses=2 type=i2]
  br i1 %cond, label %branch3, label %branch4, !dbg !210 ; [debug line = 60:2]

; <label>:19                                      ; preds = %branch4, %branch3
  %window.2.2.2 = phi i32 [ %window.2.2.1, %branch3 ], [ %"window[2][2].4", %branch4 ] ; [#uses=1 type=i32]
  %window.2.1.2 = phi i32 [ %window.2.1.1, %branch3 ], [ %"window[2][2].5", %branch4 ] ; [#uses=1 type=i32]
  %window.1.2.2 = phi i32 [ %"window[2][2].1", %branch3 ], [ %window.1.2.1, %branch4 ] ; [#uses=1 type=i32]
  %window.1.1.2 = phi i32 [ %"window[2][2].2", %branch3 ], [ %window.1.1.1, %branch4 ] ; [#uses=1 type=i32]
  %20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str6, i32 %tmp.14), !dbg !216 ; [#uses=0 type=i32] [debug line = 60:42]
  %x.3 = add nsw i32 %x3, 1, !dbg !217            ; [#uses=1 type=i32] [debug line = 58:50]
  call void @llvm.dbg.value(metadata !{i32 %x.3}, i64 0, metadata !218), !dbg !217 ; [debug line = 58:50] [debug variable = x]
  br label %15, !dbg !217                         ; [debug line = 58:50]

; <label>:21                                      ; preds = %15
  %window.1.1.1.lcssa = phi i32 [ %window.1.1.1, %15 ] ; [#uses=1 type=i32]
  %window.1.2.1.lcssa = phi i32 [ %window.1.2.1, %15 ] ; [#uses=1 type=i32]
  %window.2.1.1.lcssa = phi i32 [ %window.2.1.1, %15 ] ; [#uses=1 type=i32]
  %window.2.2.1.lcssa = phi i32 [ %window.2.2.1, %15 ] ; [#uses=1 type=i32]
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str5, i32 %tmp.5), !dbg !219 ; [#uses=0 type=i32] [debug line = 60:42]
  %y = add nsw i32 %y2, 1, !dbg !220              ; [#uses=1 type=i32] [debug line = 57:48]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !221), !dbg !220 ; [debug line = 57:48] [debug variable = y]
  br label %.preheader20, !dbg !220               ; [debug line = 57:48]

.preheader19:                                     ; preds = %30, %.preheader19.preheader
  %window.2.2.3 = phi i32 [ %"window[2][1].lcssa", %30 ], [ %window.2.2.lcssa, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.2.1.3 = phi i32 [ %"window[2][0].lcssa", %30 ], [ %window.2.1.lcssa, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.2.0. = phi i32 [ %window.2.0.1.lcssa, %30 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.2.3 = phi i32 [ %"window[1][1].lcssa", %30 ], [ %window.1.2.lcssa, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.1.3 = phi i32 [ %"window[1][0].lcssa", %30 ], [ %window.1.1.lcssa, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.0. = phi i32 [ %window.1.0.1.lcssa, %30 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.2. = phi i32 [ %"window[0][1].lcssa", %30 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.1. = phi i32 [ %"window[0][0].lcssa", %30 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.0. = phi i32 [ %window.0.0.1.lcssa, %30 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %read_count = phi i32 [ %read_count.1.lcssa, %30 ], [ 7, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %y4 = phi i32 [ %y.1, %30 ], [ 0, %.preheader19.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %y4, 5, !dbg !206      ; [#uses=1 type=i1] [debug line = 63:25]
  %23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %32, label %24, !dbg !206 ; [debug line = 63:25]

; <label>:24                                      ; preds = %.preheader19
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str7) nounwind, !dbg !222 ; [debug line = 64:4]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str7), !dbg !222 ; [#uses=1 type=i32] [debug line = 64:4]
  br label %25, !dbg !224                         ; [debug line = 65:27]

; <label>:25                                      ; preds = %._crit_edge, %24
  %"window[2][1]" = phi i32 [ %window.2.2.3, %24 ], [ %"window[2][2]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[2][0]" = phi i32 [ %window.2.1.3, %24 ], [ %"window[2][1]", %._crit_edge ] ; [#uses=3 type=i32]
  %window.2.0.1 = phi i32 [ %window.2.0., %24 ], [ %"window[2][0]", %._crit_edge ] ; [#uses=2 type=i32]
  %"window[1][1]" = phi i32 [ %window.1.2.3, %24 ], [ %"right[1]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[1][0]" = phi i32 [ %window.1.1.3, %24 ], [ %"window[1][1]", %._crit_edge ] ; [#uses=3 type=i32]
  %window.1.0.1 = phi i32 [ %window.1.0., %24 ], [ %"window[1][0]", %._crit_edge ] ; [#uses=2 type=i32]
  %"window[0][1]" = phi i32 [ %window.0.2., %24 ], [ %"right[0]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[0][0]" = phi i32 [ %window.0.1., %24 ], [ %"window[0][1]", %._crit_edge ] ; [#uses=3 type=i32]
  %window.0.0.1 = phi i32 [ %window.0.0., %24 ], [ %"window[0][0]", %._crit_edge ] ; [#uses=2 type=i32]
  %read_count.1 = phi i32 [ %read_count, %24 ], [ %read_count.2, %._crit_edge ] ; [#uses=4 type=i32]
  %x5 = phi i32 [ 0, %24 ], [ %x.4, %._crit_edge ] ; [#uses=4 type=i32]
  %exitcond7 = icmp eq i32 %x5, 5, !dbg !224      ; [#uses=1 type=i1] [debug line = 65:27]
  %26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond7, label %30, label %27, !dbg !224 ; [debug line = 65:27]

; <label>:27                                      ; preds = %25
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str8) nounwind, !dbg !226 ; [debug line = 66:6]
  %tmp.15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str8), !dbg !226 ; [#uses=1 type=i32] [debug line = 66:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !228 ; [debug line = 67:1]
  %val_out = call fastcc i32 @sum_window(i32 %window.0.0.1, i32 %"window[0][0]", i32 %"window[0][1]", i32 %window.1.0.1, i32 %"window[1][0]", i32 %"window[1][1]", i32 %window.2.0.1, i32 %"window[2][0]", i32 %"window[2][1]", i32 %y4, i32 %x5), !dbg !229 ; [#uses=1 type=i32] [debug line = 68:16]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !230), !dbg !229 ; [debug line = 68:16] [debug variable = val_out]
  call void @llvm.dbg.value(metadata !{i32* %out_stream.V}, i64 0, metadata !231), !dbg !234 ; [debug line = 144:48@71:7] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.10}, metadata !236) nounwind, !dbg !238 ; [debug line = 145:22@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !236), !dbg !239 ; [debug line = 145:31@71:7] [debug variable = tmp]
  store i32 %val_out, i32* %tmp.10, align 4, !dbg !239 ; [debug line = 145:31@71:7]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_stream.V, i32* %tmp.10) nounwind, !dbg !240 ; [debug line = 146:9@71:7]
  %tmp.12 = zext i32 %x5 to i64, !dbg !241        ; [#uses=2 type=i64] [debug line = 74:7]
  %"line_buf[0].addr.2" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp.12 ; [#uses=2 type=i32*]
  %"right[0]" = load i32* %"line_buf[0].addr.2", align 4, !dbg !241 ; [#uses=1 type=i32] [debug line = 74:7]
  call void @llvm.dbg.value(metadata !{i32 %"right[0]"}, i64 0, metadata !242), !dbg !241 ; [debug line = 74:7] [debug variable = right[0]]
  %"line_buf[1].addr.2" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.12 ; [#uses=2 type=i32*]
  %"right[1]" = load i32* %"line_buf[1].addr.2", align 4, !dbg !244 ; [#uses=2 type=i32] [debug line = 76:9]
  store i32 %"right[1]", i32* %"line_buf[0].addr.2", align 4, !dbg !244 ; [debug line = 76:9]
  call void @llvm.dbg.value(metadata !{i32 %"right[1]"}, i64 0, metadata !246), !dbg !244 ; [debug line = 76:9] [debug variable = right[1]]
  %tmp.13 = icmp slt i32 %read_count.1, 25, !dbg !247 ; [#uses=1 type=i1] [debug line = 80:7]
  br i1 %tmp.13, label %28, label %._crit_edge, !dbg !247 ; [debug line = 80:7]

; <label>:28                                      ; preds = %27
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !173), !dbg !248 ; [debug line = 129:56@82:18] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.17}, metadata !180) nounwind, !dbg !251 ; [debug line = 130:22@82:18] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp.17) nounwind, !dbg !252 ; [debug line = 131:9@82:18]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !180), !dbg !253 ; [debug line = 132:9@82:18] [debug variable = tmp]
  %val_in = load i32* %tmp.17, align 4, !dbg !253 ; [#uses=1 type=i32] [debug line = 132:9@82:18]
  call void @llvm.dbg.value(metadata !{i32 %val_in}, i64 0, metadata !254), !dbg !249 ; [debug line = 82:18] [debug variable = val_in]
  %read_count.3 = add nsw i32 %read_count.1, 1, !dbg !255 ; [#uses=1 type=i32] [debug line = 83:9]
  call void @llvm.dbg.value(metadata !{i32 %read_count.3}, i64 0, metadata !256), !dbg !255 ; [debug line = 83:9] [debug variable = read_count]
  br label %._crit_edge, !dbg !257                ; [debug line = 84:7]

._crit_edge:                                      ; preds = %28, %27
  %read_count.2 = phi i32 [ %read_count.3, %28 ], [ %read_count.1, %27 ] ; [#uses=1 type=i32]
  %"window[2][2]" = phi i32 [ %val_in, %28 ], [ 0, %27 ] ; [#uses=2 type=i32]
  store i32 %"window[2][2]", i32* %"line_buf[1].addr.2", align 4, !dbg !258 ; [debug line = 85:7]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][0]"}, i64 0, metadata !259), !dbg !261 ; [debug line = 90:11] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][1]"}, i64 0, metadata !264), !dbg !261 ; [debug line = 90:11] [debug variable = window[0][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][0]"}, i64 0, metadata !265), !dbg !261 ; [debug line = 90:11] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1]"}, i64 0, metadata !266), !dbg !261 ; [debug line = 90:11] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][0]"}, i64 0, metadata !267), !dbg !261 ; [debug line = 90:11] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][1]"}, i64 0, metadata !268), !dbg !261 ; [debug line = 90:11] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"right[0]"}, i64 0, metadata !269), !dbg !270 ; [debug line = 94:9] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %"right[1]"}, i64 0, metadata !272), !dbg !270 ; [debug line = 94:9] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2]"}, i64 0, metadata !273), !dbg !270 ; [debug line = 94:9] [debug variable = window[2][2]]
  %29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str8, i32 %tmp.15), !dbg !274 ; [#uses=0 type=i32] [debug line = 95:5]
  %x.4 = add nsw i32 %x5, 1, !dbg !275            ; [#uses=1 type=i32] [debug line = 65:36]
  call void @llvm.dbg.value(metadata !{i32 %x.4}, i64 0, metadata !276), !dbg !275 ; [debug line = 65:36] [debug variable = x]
  br label %25, !dbg !275                         ; [debug line = 65:36]

; <label>:30                                      ; preds = %25
  %read_count.1.lcssa = phi i32 [ %read_count.1, %25 ] ; [#uses=1 type=i32]
  %window.0.0.1.lcssa = phi i32 [ %window.0.0.1, %25 ] ; [#uses=1 type=i32]
  %"window[0][0].lcssa" = phi i32 [ %"window[0][0]", %25 ] ; [#uses=1 type=i32]
  %"window[0][1].lcssa" = phi i32 [ %"window[0][1]", %25 ] ; [#uses=1 type=i32]
  %window.1.0.1.lcssa = phi i32 [ %window.1.0.1, %25 ] ; [#uses=1 type=i32]
  %"window[1][0].lcssa" = phi i32 [ %"window[1][0]", %25 ] ; [#uses=1 type=i32]
  %"window[1][1].lcssa" = phi i32 [ %"window[1][1]", %25 ] ; [#uses=1 type=i32]
  %window.2.0.1.lcssa = phi i32 [ %window.2.0.1, %25 ] ; [#uses=1 type=i32]
  %"window[2][0].lcssa" = phi i32 [ %"window[2][0]", %25 ] ; [#uses=1 type=i32]
  %"window[2][1].lcssa" = phi i32 [ %"window[2][1]", %25 ] ; [#uses=1 type=i32]
  %31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str7, i32 %tmp.11), !dbg !277 ; [#uses=0 type=i32] [debug line = 96:3]
  %y.1 = add nsw i32 %y4, 1, !dbg !278            ; [#uses=1 type=i32] [debug line = 63:34]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !279), !dbg !278 ; [debug line = 63:34] [debug variable = y]
  br label %.preheader19, !dbg !278               ; [debug line = 63:34]

; <label>:32                                      ; preds = %.preheader19
  ret void, !dbg !280                             ; [debug line = 97:1]

branch0:                                          ; preds = %17
  %"line_buf[0].load" = load i32* %"line_buf[0].addr.1", align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  br label %18, !dbg !210                         ; [debug line = 60:2]

branch1:                                          ; preds = %17
  %"line_buf[1].load" = load i32* %"line_buf[1].addr.1", align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  br label %18, !dbg !210                         ; [debug line = 60:2]

branch3:                                          ; preds = %18
  %cond1 = icmp eq i2 %x3.t, 1, !dbg !210         ; [#uses=2 type=i1] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !266), !dbg !210 ; [debug line = 60:2] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !272), !dbg !210 ; [debug line = 60:2] [debug variable = window[1][2]]
  %"window[2][2].1" = select i1 %cond1, i32 %window.1.2.1, i32 %"window[1][1].2", !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].1"}, i64 0, metadata !273), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].2" = select i1 %cond1, i32 %"window[1][1].2", i32 %window.1.1.1, !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].2"}, i64 0, metadata !273), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][2]]
  br label %19, !dbg !210                         ; [debug line = 60:2]

branch4:                                          ; preds = %18
  %cond2 = icmp eq i2 %x3.t, 1, !dbg !210         ; [#uses=2 type=i1] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !268), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !273), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].4" = select i1 %cond2, i32 %window.2.2.1, i32 %"window[1][1].2", !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].4"}, i64 0, metadata !273), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].5" = select i1 %cond2, i32 %"window[1][1].2", i32 %window.2.1.1, !dbg !210 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].5"}, i64 0, metadata !273), !dbg !210 ; [debug line = 60:2] [debug variable = window[2][2]]
  br label %19, !dbg !210                         ; [debug line = 60:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecInterface(...)

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=3]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!opencl.kernels = !{!0, !7, !13, !19, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<int> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"in_stream"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"y", metadata !"x"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!28 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Vivado/final_conv2d/solution3/.autopilot/db/conv_v2.pragma.2.cpp", metadata !"D:\5CVivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, metadata !29, metadata !92} ; [ DW_TAG_compile_unit ]
!29 = metadata !{i32 786478, i32 0, metadata !30, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionRN3hls6streamIiEES2_", metadata !30, i32 37, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !44, i32 38} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"final_conv2d/conv_v2/conv_v2.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !33}
!33 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!34 = metadata !{i32 786434, metadata !35, metadata !"stream<int>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !37, i32 0, null, metadata !90} ; [ DW_TAG_class_type ]
!35 = metadata !{i32 786489, null, metadata !"hls", metadata !36, i32 69} ; [ DW_TAG_namespace ]
!36 = metadata !{i32 786473, metadata !"D:/Vivado/2018.1/common/technology/autopilot\5Chls_stream.h", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!37 = metadata !{metadata !38, metadata !40, metadata !46, metadata !52, metadata !57, metadata !60, metadata !64, metadata !69, metadata !74, metadata !75, metadata !76, metadata !79, metadata !82, metadata !83, metadata !86}
!38 = metadata !{i32 786445, metadata !34, metadata !"V", metadata !36, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ]
!39 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 83, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 83} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !43}
!43 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !34} ; [ DW_TAG_pointer_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!46 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 86, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 86} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !43, metadata !49}
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786478, i32 0, metadata !34, metadata !"stream", metadata !"stream", metadata !"", metadata !36, i32 91, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !44, i32 91} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !43, metadata !55}
!55 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_reference_type ]
!56 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!57 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !36, i32 94, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !44, i32 94} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{metadata !33, metadata !43, metadata !55}
!60 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !36, i32 101, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 101} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{null, metadata !43, metadata !63}
!63 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_reference_type ]
!64 = metadata !{i32 786478, i32 0, metadata !34, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !36, i32 105, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 105} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !43, metadata !67}
!67 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_reference_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786478, i32 0, metadata !34, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !36, i32 112, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 112} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !72, metadata !73}
!72 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !56} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786478, i32 0, metadata !34, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !36, i32 117, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 117} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !36, i32 123, metadata !61, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 123} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !36, i32 129, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 129} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !39, metadata !43}
!79 = metadata !{i32 786478, i32 0, metadata !34, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !36, i32 136, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 136} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{metadata !72, metadata !43, metadata !63}
!82 = metadata !{i32 786478, i32 0, metadata !34, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !36, i32 144, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 144} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786478, i32 0, metadata !34, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !36, i32 150, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 150} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{metadata !72, metadata !43, metadata !67}
!86 = metadata !{i32 786478, i32 0, metadata !34, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !36, i32 157, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !44, i32 157} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{metadata !89, metadata !43}
!89 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !39, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786484, i32 0, null, metadata !"kernel", metadata !"kernel", metadata !"", metadata !30, i32 5, metadata !95, i32 0, i32 1, [3 x [3 x i32]]* @kernel} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !39, metadata !96, i32 0, i32 0} ; [ DW_TAG_array_type ]
!96 = metadata !{metadata !97, metadata !97}
!97 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!98 = metadata !{i32 790533, metadata !99, metadata !"window[0][0]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!99 = metadata !{i32 786689, metadata !100, metadata !"window", null, i32 18, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 786478, i32 0, metadata !30, metadata !"sum_window", metadata !"sum_window", metadata !"_Z10sum_windowPA3_iii", metadata !30, i32 18, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !44, i32 19} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !39, metadata !103, metadata !39, metadata !39}
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !39, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ]
!105 = metadata !{metadata !97}
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 18, i32 27, metadata !100, null}
!108 = metadata !{i32 790533, metadata !99, metadata !"window[0][1]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!109 = metadata !{i32 790533, metadata !99, metadata !"window[0][2]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!110 = metadata !{i32 790533, metadata !99, metadata !"window[1][0]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!111 = metadata !{i32 790533, metadata !99, metadata !"window[1][1]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!112 = metadata !{i32 790533, metadata !99, metadata !"window[1][2]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!113 = metadata !{i32 790533, metadata !99, metadata !"window[2][0]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!114 = metadata !{i32 790533, metadata !99, metadata !"window[2][1]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!115 = metadata !{i32 790533, metadata !99, metadata !"window[2][2]", null, i32 18, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable_field_ro ]
!116 = metadata !{i32 786689, metadata !100, metadata !"y", metadata !30, i32 33554450, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 18, i32 45, metadata !100, null}
!118 = metadata !{i32 786689, metadata !100, metadata !"x", metadata !30, i32 50331666, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 18, i32 52, metadata !100, null}
!120 = metadata !{i32 26, i32 17, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 25, i32 9, metadata !30, i32 26} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 24, i32 17, metadata !30, i32 25} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 23, i32 5, metadata !30, i32 24} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !125, i32 22, i32 13, metadata !30, i32 23} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786443, metadata !100, i32 19, i32 1, metadata !30, i32 22} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786689, metadata !127, metadata !"y", metadata !30, i32 16777228, metadata !39, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 786478, i32 0, metadata !30, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !30, i32 12, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !44, i32 13} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!129 = metadata !{metadata !72, metadata !39, metadata !39}
!130 = metadata !{i32 12, i32 27, metadata !127, metadata !120}
!131 = metadata !{i32 786689, metadata !127, metadata !"x", metadata !30, i32 33554444, metadata !39, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 12, i32 34, metadata !127, metadata !120}
!133 = metadata !{i32 14, i32 3, metadata !134, metadata !120}
!134 = metadata !{i32 786443, metadata !127, i32 13, i32 1, metadata !30, i32 28} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 28, i32 17, metadata !136, null}
!136 = metadata !{i32 786443, metadata !121, i32 27, i32 13, metadata !30, i32 27} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 29, i32 13, metadata !136, null}
!138 = metadata !{i32 33, i32 5, metadata !125, null}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 31, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"out_stream.V", metadata !143, metadata !"int", i32 0, i32 31}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 0, i32 1}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 31, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"in_stream.V", metadata !143, metadata !"int", i32 0, i32 31}
!149 = metadata !{i32 790531, metadata !150, metadata !"out_stream.V", null, i32 37, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!150 = metadata !{i32 786689, metadata !29, metadata !"out_stream", metadata !30, i32 16777253, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 786438, metadata !35, metadata !"stream<int>", metadata !36, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !153, i32 0, null, metadata !90} ; [ DW_TAG_class_field_type ]
!153 = metadata !{metadata !38}
!154 = metadata !{i32 37, i32 39, metadata !29, null}
!155 = metadata !{i32 790531, metadata !156, metadata !"in_stream.V", null, i32 37, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!156 = metadata !{i32 786689, metadata !29, metadata !"in_stream", metadata !30, i32 33554469, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 37, i32 69, metadata !29, null}
!158 = metadata !{i32 790529, metadata !159, metadata !"line_buf[0]", null, i32 39, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!159 = metadata !{i32 786688, metadata !160, metadata !"line_buf", metadata !30, i32 39, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 786443, metadata !29, i32 38, i32 1, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !39, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ]
!162 = metadata !{metadata !163, metadata !164}
!163 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!164 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!165 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !39, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ]
!166 = metadata !{i32 39, i32 7, metadata !160, null}
!167 = metadata !{i32 790529, metadata !159, metadata !"line_buf[1]", null, i32 39, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!168 = metadata !{i32 48, i32 48, metadata !169, null}
!169 = metadata !{i32 786443, metadata !160, i32 48, i32 12, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 50, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !169, i32 50, i32 2, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 49, i32 1, metadata !171, null}
!173 = metadata !{i32 790531, metadata !174, metadata !"stream<int>.V", null, i32 129, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!174 = metadata !{i32 786689, metadata !175, metadata !"this", metadata !36, i32 16777345, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 786478, i32 0, metadata !35, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !36, i32 129, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !76, metadata !44, i32 129} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!177 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_pointer_type ]
!178 = metadata !{i32 129, i32 56, metadata !175, metadata !179}
!179 = metadata !{i32 50, i32 37, metadata !171, null}
!180 = metadata !{i32 786688, metadata !181, metadata !"tmp", metadata !36, i32 130, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 786443, metadata !175, i32 129, i32 63, metadata !36, i32 21} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 130, i32 22, metadata !181, metadata !179}
!183 = metadata !{i32 131, i32 9, metadata !181, metadata !179}
!184 = metadata !{i32 132, i32 9, metadata !181, metadata !179}
!185 = metadata !{i32 50, i32 52, metadata !171, null}
!186 = metadata !{i32 48, i32 57, metadata !169, null}
!187 = metadata !{i32 786688, metadata !169, metadata !"x", metadata !30, i32 48, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 54, i32 34, metadata !189, null}
!189 = metadata !{i32 786443, metadata !190, i32 52, i32 14, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 786443, metadata !191, i32 52, i32 5, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 786443, metadata !160, i32 51, i32 11, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 57, i32 39, metadata !193, null}
!193 = metadata !{i32 786443, metadata !160, i32 57, i32 11, metadata !30, i32 7} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 52, i32 28, metadata !189, null}
!195 = metadata !{i32 52, i32 5, metadata !190, null}
!196 = metadata !{i32 54, i32 3, metadata !197, null}
!197 = metadata !{i32 786443, metadata !189, i32 54, i32 2, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 53, i32 1, metadata !197, null}
!199 = metadata !{i32 129, i32 56, metadata !175, metadata !200}
!200 = metadata !{i32 54, i32 19, metadata !197, null}
!201 = metadata !{i32 130, i32 22, metadata !181, metadata !200}
!202 = metadata !{i32 131, i32 9, metadata !181, metadata !200}
!203 = metadata !{i32 132, i32 9, metadata !181, metadata !200}
!204 = metadata !{i32 54, i32 34, metadata !197, null}
!205 = metadata !{i32 52, i32 37, metadata !189, null}
!206 = metadata !{i32 63, i32 25, metadata !207, null}
!207 = metadata !{i32 786443, metadata !160, i32 63, i32 11, metadata !30, i32 11} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 58, i32 5, metadata !209, null}
!209 = metadata !{i32 786443, metadata !193, i32 58, i32 5, metadata !30, i32 8} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 60, i32 2, metadata !211, null}
!211 = metadata !{i32 786443, metadata !212, i32 60, i32 2, metadata !30, i32 10} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 786443, metadata !209, i32 58, i32 13, metadata !30, i32 9} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 58, i32 41, metadata !212, null}
!214 = metadata !{i32 60, i32 3, metadata !211, null}
!215 = metadata !{i32 59, i32 1, metadata !211, null}
!216 = metadata !{i32 60, i32 42, metadata !211, null}
!217 = metadata !{i32 58, i32 50, metadata !212, null}
!218 = metadata !{i32 786688, metadata !212, metadata !"x", metadata !30, i32 58, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!219 = metadata !{i32 60, i32 42, metadata !212, null}
!220 = metadata !{i32 57, i32 48, metadata !193, null}
!221 = metadata !{i32 786688, metadata !193, metadata !"y", metadata !30, i32 57, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 64, i32 4, metadata !223, null}
!223 = metadata !{i32 786443, metadata !207, i32 64, i32 3, metadata !30, i32 12} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 65, i32 27, metadata !225, null}
!225 = metadata !{i32 786443, metadata !223, i32 65, i32 13, metadata !30, i32 13} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 66, i32 6, metadata !227, null}
!227 = metadata !{i32 786443, metadata !225, i32 66, i32 5, metadata !30, i32 14} ; [ DW_TAG_lexical_block ]
!228 = metadata !{i32 67, i32 1, metadata !227, null}
!229 = metadata !{i32 68, i32 16, metadata !227, null}
!230 = metadata !{i32 786688, metadata !227, metadata !"val_out", metadata !30, i32 68, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!231 = metadata !{i32 790531, metadata !232, metadata !"stream<int>.V", null, i32 144, metadata !177, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!232 = metadata !{i32 786689, metadata !233, metadata !"this", metadata !36, i32 16777360, metadata !176, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!233 = metadata !{i32 786478, i32 0, metadata !35, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !36, i32 144, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !82, metadata !44, i32 144} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 144, i32 48, metadata !233, metadata !235}
!235 = metadata !{i32 71, i32 7, metadata !227, null}
!236 = metadata !{i32 786688, metadata !237, metadata !"tmp", metadata !36, i32 145, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 786443, metadata !233, i32 144, i32 79, metadata !36, i32 20} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 145, i32 22, metadata !237, metadata !235}
!239 = metadata !{i32 145, i32 31, metadata !237, metadata !235}
!240 = metadata !{i32 146, i32 9, metadata !237, metadata !235}
!241 = metadata !{i32 74, i32 7, metadata !227, null}
!242 = metadata !{i32 790529, metadata !243, metadata !"right[0]", null, i32 41, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!243 = metadata !{i32 786688, metadata !160, metadata !"right", metadata !30, i32 41, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!244 = metadata !{i32 76, i32 9, metadata !245, null}
!245 = metadata !{i32 786443, metadata !227, i32 75, i32 7, metadata !30, i32 15} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 790529, metadata !243, metadata !"right[1]", null, i32 41, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!247 = metadata !{i32 80, i32 7, metadata !227, null}
!248 = metadata !{i32 129, i32 56, metadata !175, metadata !249}
!249 = metadata !{i32 82, i32 18, metadata !250, null}
!250 = metadata !{i32 786443, metadata !227, i32 81, i32 7, metadata !30, i32 16} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 130, i32 22, metadata !181, metadata !249}
!252 = metadata !{i32 131, i32 9, metadata !181, metadata !249}
!253 = metadata !{i32 132, i32 9, metadata !181, metadata !249}
!254 = metadata !{i32 786688, metadata !227, metadata !"val_in", metadata !30, i32 79, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!255 = metadata !{i32 83, i32 9, metadata !250, null}
!256 = metadata !{i32 786688, metadata !160, metadata !"read_count", metadata !30, i32 47, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 84, i32 7, metadata !250, null}
!258 = metadata !{i32 85, i32 7, metadata !227, null}
!259 = metadata !{i32 790529, metadata !260, metadata !"window[0][0]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!260 = metadata !{i32 786688, metadata !160, metadata !"window", metadata !30, i32 40, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!261 = metadata !{i32 90, i32 11, metadata !262, null}
!262 = metadata !{i32 786443, metadata !263, i32 89, i32 9, metadata !30, i32 18} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 786443, metadata !227, i32 88, i32 7, metadata !30, i32 17} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 790529, metadata !260, metadata !"window[0][1]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!265 = metadata !{i32 790529, metadata !260, metadata !"window[1][0]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!266 = metadata !{i32 790529, metadata !260, metadata !"window[1][1]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!267 = metadata !{i32 790529, metadata !260, metadata !"window[2][0]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!268 = metadata !{i32 790529, metadata !260, metadata !"window[2][1]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!269 = metadata !{i32 790529, metadata !260, metadata !"window[0][2]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!270 = metadata !{i32 94, i32 9, metadata !271, null}
!271 = metadata !{i32 786443, metadata !227, i32 93, i32 7, metadata !30, i32 19} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 790529, metadata !260, metadata !"window[1][2]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!273 = metadata !{i32 790529, metadata !260, metadata !"window[2][2]", null, i32 40, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!274 = metadata !{i32 95, i32 5, metadata !227, null}
!275 = metadata !{i32 65, i32 36, metadata !225, null}
!276 = metadata !{i32 786688, metadata !225, metadata !"x", metadata !30, i32 65, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 96, i32 3, metadata !223, null}
!278 = metadata !{i32 63, i32 34, metadata !207, null}
!279 = metadata !{i32 786688, metadata !207, metadata !"y", metadata !30, i32 63, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!280 = metadata !{i32 97, i32 1, metadata !160, null}
