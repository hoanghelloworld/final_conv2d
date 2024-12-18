; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@win_y_win_x_str = internal unnamed_addr constant [12 x i8] c"win_y_win_x\00"
@kernel = constant [9 x i32] [i32 1, i32 2, i32 -1, i32 2, i32 3, i32 -2, i32 1, i32 4, i32 -1]
@for_y_for_x_str = internal unnamed_addr constant [12 x i8] c"for_y_for_x\00"
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @do_convolution(i32* %out_stream_V, i32* %in_stream_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream_V), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream_V), !map !34
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  %line_buf_0 = alloca [5 x i32], align 4
  %line_buf_1 = alloca [5 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %x = phi i3 [ 3, %0 ], [ %x_1, %2 ]
  %exitcond1 = icmp eq i3 %x, -3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  br i1 %exitcond1, label %.preheader21.0, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V)
  %tmp_s = zext i3 %x to i64
  %line_buf_0_addr = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_s
  store i32 %tmp, i32* %line_buf_0_addr, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str2, i32 %tmp_2)
  %x_1 = add i3 %x, 1
  br label %1

.preheader21.1:                                   ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_1)
  br label %5

; <label>:3                                       ; preds = %4, %.preheader21.0
  %x1 = phi i3 [ 0, %.preheader21.0 ], [ %x_2, %4 ]
  %exitcond4 = icmp eq i3 %x1, -3
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5)
  %x_2 = add i3 %x1, 1
  br i1 %exitcond4, label %.preheader21.1, label %4

.preheader21.0:                                   ; preds = %1
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3)
  br label %3

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str4) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V)
  %tmp_6 = zext i3 %x1 to i64
  %line_buf_1_addr = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_6
  store i32 %tmp_4, i32* %line_buf_1_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str4, i32 %tmp_3)
  br label %3

; <label>:5                                       ; preds = %.preheader21.1, %.preheader20
  %indvar_flatten = phi i3 [ 0, %.preheader21.1 ], [ %indvar_flatten_next, %.preheader20 ]
  %y2 = phi i2 [ 1, %.preheader21.1 ], [ %tmp_9_mid2_v, %.preheader20 ]
  %window_2_2_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_6, %.preheader20 ]
  %window_2_1_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_7, %.preheader20 ]
  %window_1_2_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_8, %.preheader20 ]
  %window_1_1_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_9, %.preheader20 ]
  %x3 = phi i2 [ 1, %.preheader21.1 ], [ %x_3, %.preheader20 ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader19.preheader.preheader, label %.preheader20

.preheader19.preheader.preheader:                 ; preds = %5
  %window_0_0_read_as = alloca i32
  %window_0_0 = alloca i32
  %window_0_1 = alloca i32
  %window_1_0_read_as = alloca i32
  %window_2_0_read_as = alloca i32
  %read_count_1 = alloca i32
  store i32 7, i32* %read_count_1
  br label %.preheader19.preheader

.preheader20:                                     ; preds = %5
  %y = add i2 1, %y2
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @win_y_win_x_str)
  %exitcond = icmp eq i2 %x3, -1
  %x3_mid2 = select i1 %exitcond, i2 1, i2 %x3
  %tmp_9_mid2_v = select i1 %exitcond, i2 %y, i2 %y2
  %tmp_10 = trunc i2 %tmp_9_mid2_v to i1
  %cond_mid1 = icmp eq i2 %y2, 0
  %cond = icmp eq i2 %y2, 1
  %cond_mid2 = select i1 %exitcond, i1 %cond_mid1, i1 %cond
  %x3_cast = zext i2 %x3_mid2 to i3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str6) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_7 = add i3 2, %x3_cast
  %tmp_8 = zext i3 %tmp_7 to i64
  %line_buf_0_addr_1 = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_8
  %line_buf_1_addr_1 = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_8
  %line_buf_0_load = load i32* %line_buf_0_addr_1, align 4
  %line_buf_1_load = load i32* %line_buf_1_addr_1, align 4
  %window_1_1_2 = select i1 %tmp_10, i32 %line_buf_0_load, i32 %line_buf_1_load
  %cond1 = icmp eq i2 %x3_mid2, 1
  %window_2_2_1_10 = select i1 %cond1, i32 %window_1_2_1, i32 %window_1_1_2
  %window_2_2_2 = select i1 %cond1, i32 %window_1_1_2, i32 %window_1_1_1
  %window_2_2_4 = select i1 %cond1, i32 %window_2_2_1, i32 %window_1_1_2
  %window_2_2_5 = select i1 %cond1, i32 %window_1_1_2, i32 %window_2_1_1
  %window_2_2_6 = select i1 %cond_mid2, i32 %window_2_2_1, i32 %window_2_2_4
  %window_2_2_7 = select i1 %cond_mid2, i32 %window_2_1_1, i32 %window_2_2_5
  %window_2_2_8 = select i1 %cond_mid2, i32 %window_2_2_1_10, i32 %window_1_2_1
  %window_2_2_9 = select i1 %cond_mid2, i32 %window_2_2_2, i32 %window_1_1_1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str6, i32 %tmp_5)
  %x_3 = add i2 1, %x3_mid2
  br label %5

.preheader19.preheader:                           ; preds = %.preheader19.preheader.preheader, %._crit_edge
  %indvar_flatten7 = phi i5 [ %indvar_flatten_next8, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ]
  %y_assign = phi i3 [ %y_assign_mid2, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ]
  %window_2_1 = phi i32 [ %window_2_2, %._crit_edge ], [ %window_2_2_1, %.preheader19.preheader.preheader ]
  %window_2_0 = phi i32 [ %window_2_1, %._crit_edge ], [ %window_2_1_1, %.preheader19.preheader.preheader ]
  %window_1_1 = phi i32 [ %window_1_2, %._crit_edge ], [ %window_1_2_1, %.preheader19.preheader.preheader ]
  %window_1_0 = phi i32 [ %window_1_1, %._crit_edge ], [ %window_1_1_1, %.preheader19.preheader.preheader ]
  %x_assign = phi i3 [ %x_4, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as
  %window_0_0_load = load i32* %window_0_0
  %window_0_1_load = load i32* %window_0_1
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as
  %tmp_i_i = icmp ne i3 %y_assign, 0
  %y_1 = add i3 %y_assign, 1
  %tmp_i2_i = icmp ult i3 %y_1, -3
  %exitcond_flatten9 = icmp eq i5 %indvar_flatten7, -7
  %indvar_flatten_next8 = add i5 %indvar_flatten7, 1
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten9, label %7, label %.preheader19

; <label>:6                                       ; preds = %.preheader19
  %tmp_20 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V)
  %read_count = add nsw i32 %read_count_1_load, 1
  store i32 %read_count, i32* %read_count_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %.preheader19
  %window_2_2 = phi i32 [ %tmp_20, %6 ], [ 0, %.preheader19 ]
  store i32 %window_2_2, i32* %line_buf_1_addr_2, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str8, i32 %tmp_9)
  br label %.preheader19.preheader

.preheader19:                                     ; preds = %.preheader19.preheader
  %window_0_1_load_1 = load i32* %window_0_1
  %read_count_1_load = load i32* %read_count_1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @for_y_for_x_str)
  %exitcond2 = icmp eq i3 %x_assign, -3
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign
  %tmp_i_i_mid1 = icmp ne i3 %y_1, 0
  %tmp_i_i_mid2 = select i1 %exitcond2, i1 %tmp_i_i_mid1, i1 %tmp_i_i
  %y_assign_1_mid1 = add i3 2, %y_assign
  %tmp_i2_i_mid1 = icmp ult i3 %y_assign_1_mid1, -3
  %tmp_i2_i_mid2 = select i1 %exitcond2, i1 %tmp_i2_i_mid1, i1 %tmp_i2_i
  %y_assign_mid2 = select i1 %exitcond2, i3 %y_1, i3 %y_assign
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str8) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_14_i_i = icmp ne i3 %x_assign_mid2, 0
  %or_cond1_i_i = and i1 %tmp_i_i_mid2, %tmp_14_i_i
  %p_read_i = select i1 %or_cond1_i_i, i32 %window_0_0_read_as_1, i32 0
  %tmp_11 = shl i32 %window_0_0_load, 1
  %result_3_0_1_i = add nsw i32 %p_read_i, %tmp_11
  %result_2_0_1_i = select i1 %tmp_i_i_mid2, i32 %result_3_0_1_i, i32 0
  %x_4 = add i3 1, %x_assign_mid2
  %tmp_15_i2_i = icmp ult i3 %x_4, -3
  %p_i2_i = and i1 %tmp_i_i_mid2, %tmp_15_i2_i
  %result_3_0_2_i = sub i32 %result_2_0_1_i, %window_0_1_load_1
  %result_2_0_2_i = select i1 %p_i2_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i
  %tmp_14 = shl i32 %window_1_0_read_as_1, 1
  %result_3_1_i = add nsw i32 %result_2_0_2_i, %tmp_14
  %result_2_1_i = select i1 %tmp_14_i_i, i32 %result_3_1_i, i32 %result_2_0_2_i
  %tmp_15 = shl i32 %window_1_0, 2
  %tmp_7_1_1_i = sub i32 %tmp_15, %window_1_0
  %result_3_1_1_i = add nsw i32 %tmp_7_1_1_i, %result_2_1_i
  %tmp_16 = shl i32 %window_1_1, 1
  %result_3_1_2_i = sub i32 %result_3_1_1_i, %tmp_16
  %result_2_1_2_i = select i1 %tmp_15_i2_i, i32 %result_3_1_2_i, i32 %result_3_1_1_i
  %or_cond1_i6_i = and i1 %tmp_i2_i_mid2, %tmp_14_i_i
  %result_3_2_i = add nsw i32 %result_2_1_2_i, %window_2_0_read_as_1
  %result_2_2_i = select i1 %or_cond1_i6_i, i32 %result_3_2_i, i32 %result_2_1_2_i
  %tmp_17 = shl i32 %window_2_0, 2
  %result_3_2_1_i = add nsw i32 %result_2_2_i, %tmp_17
  %result_2_2_1_i = select i1 %tmp_i2_i_mid2, i32 %result_3_2_1_i, i32 %result_2_1_2_i
  %p_i8_i = and i1 %tmp_i2_i_mid2, %tmp_15_i2_i
  %result_3_2_2_i = sub i32 %result_2_2_1_i, %window_2_1
  %val_out = select i1 %p_i8_i, i32 %result_3_2_2_i, i32 %result_2_2_1_i
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_stream_V, i32 %val_out)
  %tmp_12 = zext i3 %x_assign_mid2 to i64
  %line_buf_0_addr_2 = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_12
  %window_0_2 = load i32* %line_buf_0_addr_2, align 4
  %line_buf_1_addr_2 = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_12
  %window_1_2 = load i32* %line_buf_1_addr_2, align 4
  store i32 %window_1_2, i32* %line_buf_0_addr_2, align 4
  %tmp_13 = icmp slt i32 %read_count_1_load, 25
  store i32 %window_0_2, i32* %window_0_1
  br i1 %tmp_13, label %6, label %._crit_edge

; <label>:7                                       ; preds = %.preheader19.preheader
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

!opencl.kernels = !{!0, !7, !13, !19, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"out_stream.V", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"in_stream.V", metadata !32, metadata !"int", i32 0, i32 31}
