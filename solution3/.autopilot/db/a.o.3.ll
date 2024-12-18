; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@win_y_win_x_str = internal unnamed_addr constant [12 x i8] c"win_y_win_x\00" ; [#uses=1 type=[12 x i8]*]
@kernel = constant [9 x i32] [i32 1, i32 2, i32 -1, i32 2, i32 3, i32 -2, i32 1, i32 4, i32 -1] ; [#uses=0 type=[9 x i32]*]
@for_y_for_x_str = internal unnamed_addr constant [12 x i8] c"for_y_for_x\00" ; [#uses=1 type=[12 x i8]*]
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@p_str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1 ; [#uses=2 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]

; [#uses=50]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution(i32* %out_stream_V, i32* %in_stream_V) {
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %out_stream_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream_V), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream_V), !map !34
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  %line_buf_0 = alloca [5 x i32], align 4         ; [#uses=3 type=[5 x i32]*]
  %line_buf_1 = alloca [5 x i32], align 4         ; [#uses=3 type=[5 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %out_stream_V}, i64 0, metadata !38), !dbg !106 ; [debug line = 37:39] [debug variable = out_stream.V]
  call void @llvm.dbg.value(metadata !{i32* %in_stream_V}, i64 0, metadata !107), !dbg !109 ; [debug line = 37:69] [debug variable = in_stream.V]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %line_buf_0}, metadata !110), !dbg !118 ; [debug line = 39:7] [debug variable = line_buf[0]]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %line_buf_1}, metadata !119), !dbg !118 ; [debug line = 39:7] [debug variable = line_buf[1]]
  br label %1, !dbg !120                          ; [debug line = 48:48]

; <label>:1                                       ; preds = %2, %0
  %x = phi i3 [ 3, %0 ], [ %x_1, %2 ]             ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %x, -3, !dbg !120       ; [#uses=1 type=i1] [debug line = 48:48]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader21.0, label %2, !dbg !120 ; [debug line = 48:48]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind, !dbg !122 ; [debug line = 50:3]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str2), !dbg !122 ; [#uses=1 type=i32] [debug line = 50:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !124 ; [debug line = 49:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream_V}, i64 0, metadata !125), !dbg !130 ; [debug line = 129:56@50:37] [debug variable = stream<int>.V]
  %tmp = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V), !dbg !132 ; [#uses=1 type=i32] [debug line = 131:9@50:37]
  call void @llvm.dbg.value(metadata !{i32 %tmp}, i64 0, metadata !134), !dbg !132 ; [debug line = 131:9@50:37] [debug variable = tmp]
  %tmp_s = zext i3 %x to i64, !dbg !131           ; [#uses=1 type=i64] [debug line = 50:37]
  %line_buf_0_addr = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_s ; [#uses=1 type=i32*]
  store i32 %tmp, i32* %line_buf_0_addr, align 4, !dbg !131 ; [debug line = 50:37]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str2, i32 %tmp_2), !dbg !135 ; [#uses=0 type=i32] [debug line = 50:52]
  %x_1 = add i3 %x, 1, !dbg !136                  ; [#uses=1 type=i3] [debug line = 48:57]
  call void @llvm.dbg.value(metadata !{i3 %x_1}, i64 0, metadata !137), !dbg !136 ; [debug line = 48:57] [debug variable = x]
  br label %1, !dbg !136                          ; [debug line = 48:57]

.preheader21.1:                                   ; preds = %3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_1), !dbg !138 ; [#uses=0 type=i32] [debug line = 54:34]
  br label %5, !dbg !142                          ; [debug line = 57:39]

; <label>:3                                       ; preds = %4, %.preheader21.0
  %x1 = phi i3 [ 0, %.preheader21.0 ], [ %x_2, %4 ] ; [#uses=3 type=i3]
  %exitcond4 = icmp eq i3 %x1, -3, !dbg !144      ; [#uses=1 type=i1] [debug line = 52:28]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  %x_2 = add i3 %x1, 1, !dbg !145                 ; [#uses=1 type=i3] [debug line = 52:37]
  br i1 %exitcond4, label %.preheader21.1, label %4, !dbg !144 ; [debug line = 52:28]

.preheader21.0:                                   ; preds = %1
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3), !dbg !146 ; [#uses=1 type=i32] [debug line = 52:5]
  br label %3, !dbg !144                          ; [debug line = 52:28]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str4) nounwind, !dbg !147 ; [debug line = 54:3]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str4), !dbg !147 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !149 ; [debug line = 53:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream_V}, i64 0, metadata !125), !dbg !150 ; [debug line = 129:56@54:19] [debug variable = stream<int>.V]
  %tmp_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V), !dbg !152 ; [#uses=1 type=i32] [debug line = 131:9@54:19]
  call void @llvm.dbg.value(metadata !{i32 %tmp_4}, i64 0, metadata !134), !dbg !152 ; [debug line = 131:9@54:19] [debug variable = tmp]
  %tmp_6 = zext i3 %x1 to i64, !dbg !151          ; [#uses=1 type=i64] [debug line = 54:19]
  %line_buf_1_addr = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_6 ; [#uses=1 type=i32*]
  store i32 %tmp_4, i32* %line_buf_1_addr, align 4, !dbg !151 ; [debug line = 54:19]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str4, i32 %tmp_3), !dbg !153 ; [#uses=0 type=i32] [debug line = 54:34]
  br label %3, !dbg !145                          ; [debug line = 52:37]

; <label>:5                                       ; preds = %.preheader20, %.preheader21.1
  %indvar_flatten = phi i3 [ 0, %.preheader21.1 ], [ %indvar_flatten_next, %.preheader20 ] ; [#uses=2 type=i3]
  %y2 = phi i2 [ 1, %.preheader21.1 ], [ %tmp_9_mid2_v, %.preheader20 ] ; [#uses=4 type=i2]
  %window_2_2_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_6, %.preheader20 ] ; [#uses=3 type=i32]
  %window_2_1_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_7, %.preheader20 ] ; [#uses=3 type=i32]
  %window_1_2_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_8, %.preheader20 ] ; [#uses=3 type=i32]
  %window_1_1_1 = phi i32 [ undef, %.preheader21.1 ], [ %window_2_2_9, %.preheader20 ] ; [#uses=3 type=i32]
  %x3 = phi i2 [ 1, %.preheader21.1 ], [ %x_3, %.preheader20 ] ; [#uses=2 type=i2]
  call void @llvm.dbg.value(metadata !{i2 %y}, i64 0, metadata !154), !dbg !155 ; [debug line = 57:48] [debug variable = y]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i3 %indvar_flatten, 1 ; [#uses=1 type=i3]
  br i1 %exitcond_flatten, label %.preheader19.preheader.preheader, label %.preheader20

.preheader19.preheader.preheader:                 ; preds = %5
  %window_0_0_read_as = alloca i32                ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_0_read_as}, metadata !156) ; [debug variable = window[0][0]]
  %window_0_0 = alloca i32                        ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_0}, metadata !173) ; [debug variable = window[0][0]]
  %window_0_1 = alloca i32                        ; [#uses=3 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_1}, metadata !175) ; [debug variable = window[0][1]]
  %window_1_0_read_as = alloca i32                ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_1_0_read_as}, metadata !176) ; [debug variable = window[1][0]]
  %window_2_0_read_as = alloca i32                ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_2_0_read_as}, metadata !177) ; [debug variable = window[2][0]]
  %read_count_1 = alloca i32                      ; [#uses=3 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %read_count_1}, metadata !178) ; [debug variable = read_count]
  store i32 7, i32* %read_count_1
  br label %.preheader19.preheader, !dbg !179     ; [debug line = 14:3@26:17@68:16]

.preheader20:                                     ; preds = %5
  %y = add i2 1, %y2, !dbg !155                   ; [#uses=1 type=i2] [debug line = 57:48]
  call void @llvm.dbg.value(metadata !{i2 %y}, i64 0, metadata !154), !dbg !155 ; [debug line = 57:48] [debug variable = y]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @win_y_win_x_str)
  %exitcond = icmp eq i2 %x3, -1, !dbg !190       ; [#uses=3 type=i1] [debug line = 58:41]
  %x3_mid2 = select i1 %exitcond, i2 1, i2 %x3    ; [#uses=3 type=i2]
  %tmp_9_mid2_v = select i1 %exitcond, i2 %y, i2 %y2, !dbg !193 ; [#uses=2 type=i2] [debug line = 60:2]
  %tmp_10 = trunc i2 %tmp_9_mid2_v to i1, !dbg !193 ; [#uses=1 type=i1] [debug line = 60:2]
  %cond_mid1 = icmp eq i2 %y2, 0, !dbg !193       ; [#uses=1 type=i1] [debug line = 60:2]
  %cond = icmp eq i2 %y2, 1, !dbg !193            ; [#uses=1 type=i1] [debug line = 60:2]
  %cond_mid2 = select i1 %exitcond, i1 %cond_mid1, i1 %cond, !dbg !193 ; [#uses=4 type=i1] [debug line = 60:2]
  %x3_cast = zext i2 %x3_mid2 to i3, !dbg !190    ; [#uses=1 type=i3] [debug line = 58:41]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str6) nounwind, !dbg !195 ; [debug line = 60:3]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str6), !dbg !195 ; [#uses=1 type=i32] [debug line = 60:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !196 ; [debug line = 59:1]
  %tmp_7 = add i3 2, %x3_cast, !dbg !193          ; [#uses=1 type=i3] [debug line = 60:2]
  %tmp_8 = zext i3 %tmp_7 to i64, !dbg !193       ; [#uses=2 type=i64] [debug line = 60:2]
  %line_buf_0_addr_1 = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_8, !dbg !193 ; [#uses=1 type=i32*] [debug line = 60:2]
  %line_buf_1_addr_1 = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_8, !dbg !193 ; [#uses=1 type=i32*] [debug line = 60:2]
  %line_buf_0_load = load i32* %line_buf_0_addr_1, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  %line_buf_1_load = load i32* %line_buf_1_addr_1, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  %window_1_1_2 = select i1 %tmp_10, i32 %line_buf_0_load, i32 %line_buf_1_load, !dbg !193 ; [#uses=4 type=i32] [debug line = 60:2]
  %cond1 = icmp eq i2 %x3_mid2, 1, !dbg !193      ; [#uses=4 type=i1] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1_2}, i64 0, metadata !197), !dbg !193 ; [debug line = 60:2] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1_2}, i64 0, metadata !198), !dbg !193 ; [debug line = 60:2] [debug variable = window[1][2]]
  %window_2_2_1_10 = select i1 %cond1, i32 %window_1_2_1, i32 %window_1_1_2, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_1_10}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_2 = select i1 %cond1, i32 %window_1_1_2, i32 %window_1_1_1, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_2}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1_2}, i64 0, metadata !200), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1_2}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_4 = select i1 %cond1, i32 %window_2_2_1, i32 %window_1_1_2, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_4}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_5 = select i1 %cond1, i32 %window_1_1_2, i32 %window_2_1_1, !dbg !193 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_5}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_6 = select i1 %cond_mid2, i32 %window_2_2_1, i32 %window_2_2_4 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_6}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_7 = select i1 %cond_mid2, i32 %window_2_1_1, i32 %window_2_2_5 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_7}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_8 = select i1 %cond_mid2, i32 %window_2_2_1_10, i32 %window_1_2_1 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_8}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %window_2_2_9 = select i1 %cond_mid2, i32 %window_2_2_2, i32 %window_1_1_1 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_9}, i64 0, metadata !199), !dbg !193 ; [debug line = 60:2] [debug variable = window[2][2]]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str6, i32 %tmp_5), !dbg !201 ; [#uses=0 type=i32] [debug line = 60:42]
  %x_3 = add i2 1, %x3_mid2, !dbg !202            ; [#uses=1 type=i2] [debug line = 58:50]
  call void @llvm.dbg.value(metadata !{i2 %x_3}, i64 0, metadata !203), !dbg !202 ; [debug line = 58:50] [debug variable = x]
  br label %5, !dbg !202                          ; [debug line = 58:50]

.preheader19.preheader:                           ; preds = %._crit_edge, %.preheader19.preheader.preheader
  %indvar_flatten7 = phi i5 [ %indvar_flatten_next8, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ] ; [#uses=2 type=i5]
  %y_assign = phi i3 [ %y_assign_mid2, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ] ; [#uses=4 type=i3]
  %window_2_1 = phi i32 [ %window_2_2, %._crit_edge ], [ %window_2_2_1, %.preheader19.preheader.preheader ] ; [#uses=2 type=i32]
  %window_2_0 = phi i32 [ %window_2_1, %._crit_edge ], [ %window_2_1_1, %.preheader19.preheader.preheader ] ; [#uses=2 type=i32]
  %window_1_1 = phi i32 [ %window_1_2, %._crit_edge ], [ %window_1_2_1, %.preheader19.preheader.preheader ] ; [#uses=2 type=i32]
  %window_1_0 = phi i32 [ %window_1_1, %._crit_edge ], [ %window_1_1_1, %.preheader19.preheader.preheader ] ; [#uses=3 type=i32]
  %x_assign = phi i3 [ %x_4, %._crit_edge ], [ 0, %.preheader19.preheader.preheader ] ; [#uses=2 type=i3]
  %window_0_0_read_as_1 = load i32* %window_0_0_read_as, !dbg !184 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  %window_0_0_load = load i32* %window_0_0, !dbg !204 ; [#uses=2 type=i32] [debug line = 28:17@68:16]
  %window_0_1_load = load i32* %window_0_1        ; [#uses=1 type=i32]
  %window_1_0_read_as_1 = load i32* %window_1_0_read_as, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %window_2_0_read_as_1 = load i32* %window_2_0_read_as, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %tmp_i_i = icmp ne i3 %y_assign, 0, !dbg !179   ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %y_1 = add i3 %y_assign, 1, !dbg !184           ; [#uses=3 type=i3] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %y_1}, i64 0, metadata !206), !dbg !207 ; [debug line = 63:34] [debug variable = y]
  %tmp_i2_i = icmp ult i3 %y_1, -3, !dbg !179     ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %exitcond_flatten9 = icmp eq i5 %indvar_flatten7, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next8 = add i5 %indvar_flatten7, 1 ; [#uses=1 type=i5]
  store i32 %window_2_0, i32* %window_2_0_read_as
  store i32 %window_1_0, i32* %window_1_0_read_as
  store i32 %window_0_1_load, i32* %window_0_0
  store i32 %window_0_0_load, i32* %window_0_0_read_as
  br i1 %exitcond_flatten9, label %7, label %.preheader19

; <label>:6                                       ; preds = %.preheader19
  call void @llvm.dbg.value(metadata !{i32* %in_stream_V}, i64 0, metadata !125), !dbg !208 ; [debug line = 129:56@82:18] [debug variable = stream<int>.V]
  %tmp_20 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V), !dbg !211 ; [#uses=1 type=i32] [debug line = 131:9@82:18]
  call void @llvm.dbg.value(metadata !{i32 %tmp_20}, i64 0, metadata !134), !dbg !211 ; [debug line = 131:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_20}, i64 0, metadata !212), !dbg !209 ; [debug line = 82:18] [debug variable = val_in]
  %read_count = add nsw i32 %read_count_1_load, 1, !dbg !213 ; [#uses=1 type=i32] [debug line = 83:9]
  call void @llvm.dbg.value(metadata !{i32 %read_count}, i64 0, metadata !178), !dbg !213 ; [debug line = 83:9] [debug variable = read_count]
  store i32 %read_count, i32* %read_count_1, !dbg !213 ; [debug line = 83:9]
  br label %._crit_edge, !dbg !214                ; [debug line = 84:7]

._crit_edge:                                      ; preds = %.preheader19, %6
  %window_2_2 = phi i32 [ %tmp_20, %6 ], [ 0, %.preheader19 ] ; [#uses=2 type=i32]
  store i32 %window_2_2, i32* %line_buf_1_addr_2, align 4, !dbg !215 ; [debug line = 85:7]
  call void @llvm.dbg.value(metadata !{i32 %window_1_0}, i64 0, metadata !216), !dbg !217 ; [debug line = 90:11] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1}, i64 0, metadata !197), !dbg !217 ; [debug line = 90:11] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_0}, i64 0, metadata !220), !dbg !217 ; [debug line = 90:11] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_1}, i64 0, metadata !200), !dbg !217 ; [debug line = 90:11] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_0_2}, i64 0, metadata !221), !dbg !222 ; [debug line = 94:9] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_2}, i64 0, metadata !198), !dbg !222 ; [debug line = 94:9] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2}, i64 0, metadata !199), !dbg !222 ; [debug line = 94:9] [debug variable = window[2][2]]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str8, i32 %tmp_9), !dbg !224 ; [#uses=0 type=i32] [debug line = 95:5]
  call void @llvm.dbg.value(metadata !{i3 %x_4}, i64 0, metadata !225), !dbg !226 ; [debug line = 65:36] [debug variable = x]
  br label %.preheader19.preheader

.preheader19:                                     ; preds = %.preheader19.preheader
  %window_0_1_load_1 = load i32* %window_0_1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %read_count_1_load = load i32* %read_count_1, !dbg !227 ; [#uses=2 type=i32] [debug line = 80:7]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @for_y_for_x_str)
  %exitcond2 = icmp eq i3 %x_assign, -3, !dbg !228 ; [#uses=4 type=i1] [debug line = 65:27]
  %x_assign_mid2 = select i1 %exitcond2, i3 0, i3 %x_assign ; [#uses=3 type=i3]
  %tmp_i_i_mid1 = icmp ne i3 %y_1, 0, !dbg !179   ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %tmp_i_i_mid2 = select i1 %exitcond2, i1 %tmp_i_i_mid1, i1 %tmp_i_i, !dbg !179 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %y_assign_1_mid1 = add i3 2, %y_assign, !dbg !184 ; [#uses=1 type=i3] [debug line = 26:17@68:16]
  %tmp_i2_i_mid1 = icmp ult i3 %y_assign_1_mid1, -3, !dbg !179 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %tmp_i2_i_mid2 = select i1 %exitcond2, i1 %tmp_i2_i_mid1, i1 %tmp_i2_i, !dbg !179 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %y_assign_mid2 = select i1 %exitcond2, i3 %y_1, i3 %y_assign ; [#uses=1 type=i3]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str8) nounwind, !dbg !229 ; [debug line = 66:6]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str8), !dbg !229 ; [#uses=1 type=i32] [debug line = 66:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !230 ; [debug line = 67:1]
  call void @llvm.dbg.value(metadata !{i32 %window_1_0}, i64 0, metadata !231), !dbg !232 ; [debug line = 18:27@68:16] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1}, i64 0, metadata !233), !dbg !232 ; [debug line = 18:27@68:16] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_0}, i64 0, metadata !234), !dbg !232 ; [debug line = 18:27@68:16] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_1}, i64 0, metadata !235), !dbg !232 ; [debug line = 18:27@68:16] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i3 %y_assign}, i64 0, metadata !236), !dbg !237 ; [debug line = 18:45@68:16] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i3 %x_assign}, i64 0, metadata !238), !dbg !239 ; [debug line = 18:52@68:16] [debug variable = x]
  %tmp_14_i_i = icmp ne i3 %x_assign_mid2, 0, !dbg !179 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %or_cond1_i_i = and i1 %tmp_i_i_mid2, %tmp_14_i_i, !dbg !179 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %p_read_i = select i1 %or_cond1_i_i, i32 %window_0_0_read_as_1, i32 0, !dbg !184 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %x_assign}, i64 0, metadata !240), !dbg !241 ; [debug line = 12:34@26:17@68:16] [debug variable = x]
  %tmp_11 = shl i32 %window_0_0_load, 1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_3_0_1_i = add nsw i32 %p_read_i, %tmp_11, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_0_1_i = select i1 %tmp_i_i_mid2, i32 %result_3_0_1_i, i32 0 ; [#uses=2 type=i32]
  %x_4 = add i3 1, %x_assign_mid2, !dbg !184      ; [#uses=2 type=i3] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %x_4}, i64 0, metadata !240), !dbg !241 ; [debug line = 12:34@26:17@68:16] [debug variable = x]
  %tmp_15_i2_i = icmp ult i3 %x_4, -3, !dbg !179  ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %p_i2_i = and i1 %tmp_i_i_mid2, %tmp_15_i2_i, !dbg !179 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result_3_0_2_i = sub i32 %result_2_0_1_i, %window_0_1_load_1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_0_2_i = select i1 %p_i2_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i, !dbg !184 ; [#uses=2 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %y_assign}, i64 0, metadata !242), !dbg !243 ; [debug line = 12:27@26:17@68:16] [debug variable = y]
  %tmp_14 = shl i32 %window_1_0_read_as_1, 1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_3_1_i = add nsw i32 %result_2_0_2_i, %tmp_14, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_1_i = select i1 %tmp_14_i_i, i32 %result_3_1_i, i32 %result_2_0_2_i ; [#uses=1 type=i32]
  %tmp_15 = shl i32 %window_1_0, 2, !dbg !204     ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %tmp_7_1_1_i = sub i32 %tmp_15, %window_1_0, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_3_1_1_i = add nsw i32 %tmp_7_1_1_i, %result_2_1_i, !dbg !204 ; [#uses=2 type=i32] [debug line = 28:17@68:16]
  %tmp_16 = shl i32 %window_1_1, 1, !dbg !204     ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_3_1_2_i = sub i32 %result_3_1_1_i, %tmp_16, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_1_2_i = select i1 %tmp_15_i2_i, i32 %result_3_1_2_i, i32 %result_3_1_1_i ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i3 %y_1}, i64 0, metadata !242), !dbg !243 ; [debug line = 12:27@26:17@68:16] [debug variable = y]
  %or_cond1_i6_i = and i1 %tmp_i2_i_mid2, %tmp_14_i_i, !dbg !179 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result_3_2_i = add nsw i32 %result_2_1_2_i, %window_2_0_read_as_1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_2_i = select i1 %or_cond1_i6_i, i32 %result_3_2_i, i32 %result_2_1_2_i, !dbg !184 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  %tmp_17 = shl i32 %window_2_0, 2, !dbg !204     ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_3_2_1_i = add nsw i32 %result_2_2_i, %tmp_17, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result_2_2_1_i = select i1 %tmp_i2_i_mid2, i32 %result_3_2_1_i, i32 %result_2_1_2_i ; [#uses=2 type=i32]
  %p_i8_i = and i1 %tmp_i2_i_mid2, %tmp_15_i2_i, !dbg !179 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result_3_2_2_i = sub i32 %result_2_2_1_i, %window_2_1, !dbg !204 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %val_out = select i1 %p_i8_i, i32 %result_3_2_2_i, i32 %result_2_2_1_i, !dbg !184 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !244), !dbg !168 ; [debug line = 68:16] [debug variable = val_out]
  call void @llvm.dbg.value(metadata !{i32* %out_stream_V}, i64 0, metadata !245), !dbg !248 ; [debug line = 144:48@71:7] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !250), !dbg !252 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %out_stream_V, i32 %val_out), !dbg !253 ; [debug line = 146:9@71:7]
  %tmp_12 = zext i3 %x_assign_mid2 to i64, !dbg !254 ; [#uses=2 type=i64] [debug line = 74:7]
  %line_buf_0_addr_2 = getelementptr [5 x i32]* %line_buf_0, i64 0, i64 %tmp_12 ; [#uses=2 type=i32*]
  %window_0_2 = load i32* %line_buf_0_addr_2, align 4, !dbg !254 ; [#uses=1 type=i32] [debug line = 74:7]
  call void @llvm.dbg.value(metadata !{i32 %window_0_2}, i64 0, metadata !255), !dbg !254 ; [debug line = 74:7] [debug variable = right[0]]
  %line_buf_1_addr_2 = getelementptr [5 x i32]* %line_buf_1, i64 0, i64 %tmp_12 ; [#uses=2 type=i32*]
  %window_1_2 = load i32* %line_buf_1_addr_2, align 4, !dbg !257 ; [#uses=2 type=i32] [debug line = 76:9]
  store i32 %window_1_2, i32* %line_buf_0_addr_2, align 4, !dbg !257 ; [debug line = 76:9]
  call void @llvm.dbg.value(metadata !{i32 %window_1_2}, i64 0, metadata !259), !dbg !257 ; [debug line = 76:9] [debug variable = right[1]]
  %tmp_13 = icmp slt i32 %read_count_1_load, 25, !dbg !227 ; [#uses=1 type=i1] [debug line = 80:7]
  store i32 %window_0_2, i32* %window_0_1
  br i1 %tmp_13, label %6, label %._crit_edge, !dbg !227 ; [debug line = 80:7]

; <label>:7                                       ; preds = %.preheader19.preheader
  ret void, !dbg !260                             ; [debug line = 97:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1) ; [#uses=0 type=i32]
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone

; [#uses=0]
declare i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone

; [#uses=1]
declare i32 @_autotb_FifoWrite_i32(i32*, i32)

; [#uses=1]
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
!38 = metadata !{i32 790531, metadata !39, metadata !"out_stream.V", null, i32 37, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!39 = metadata !{i32 786689, metadata !40, metadata !"out_stream", metadata !41, i32 16777253, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786478, i32 0, metadata !41, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionRN3hls6streamIiEES2_", metadata !41, i32 37, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !55, i32 38} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786473, metadata !"final_conv2d/conv_v2/conv_v2.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !44, metadata !44}
!44 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_reference_type ]
!45 = metadata !{i32 786434, metadata !46, metadata !"stream<int>", metadata !47, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !48, i32 0, null, metadata !101} ; [ DW_TAG_class_type ]
!46 = metadata !{i32 786489, null, metadata !"hls", metadata !47, i32 69} ; [ DW_TAG_namespace ]
!47 = metadata !{i32 786473, metadata !"D:/Vivado/2018.1/common/technology/autopilot\5Chls_stream.h", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!48 = metadata !{metadata !49, metadata !51, metadata !57, metadata !63, metadata !68, metadata !71, metadata !75, metadata !80, metadata !85, metadata !86, metadata !87, metadata !90, metadata !93, metadata !94, metadata !97}
!49 = metadata !{i32 786445, metadata !45, metadata !"V", metadata !47, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ]
!50 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786478, i32 0, metadata !45, metadata !"stream", metadata !"stream", metadata !"", metadata !47, i32 83, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 83} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{null, metadata !54}
!54 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !45} ; [ DW_TAG_pointer_type ]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!57 = metadata !{i32 786478, i32 0, metadata !45, metadata !"stream", metadata !"stream", metadata !"", metadata !47, i32 86, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 86} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !54, metadata !60}
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_const_type ]
!62 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 786478, i32 0, metadata !45, metadata !"stream", metadata !"stream", metadata !"", metadata !47, i32 91, metadata !64, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !55, i32 91} ; [ DW_TAG_subprogram ]
!64 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!65 = metadata !{null, metadata !54, metadata !66}
!66 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_reference_type ]
!67 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ]
!68 = metadata !{i32 786478, i32 0, metadata !45, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !47, i32 94, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !55, i32 94} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !44, metadata !54, metadata !66}
!71 = metadata !{i32 786478, i32 0, metadata !45, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !47, i32 101, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !54, metadata !74}
!74 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_reference_type ]
!75 = metadata !{i32 786478, i32 0, metadata !45, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !47, i32 105, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 105} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{null, metadata !54, metadata !78}
!78 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_reference_type ]
!79 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ]
!80 = metadata !{i32 786478, i32 0, metadata !45, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !47, i32 112, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 112} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{metadata !83, metadata !84}
!83 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !67} ; [ DW_TAG_pointer_type ]
!85 = metadata !{i32 786478, i32 0, metadata !45, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !47, i32 117, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 117} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786478, i32 0, metadata !45, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !47, i32 123, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 123} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786478, i32 0, metadata !45, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !47, i32 129, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 129} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !50, metadata !54}
!90 = metadata !{i32 786478, i32 0, metadata !45, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !47, i32 136, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 136} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{metadata !83, metadata !54, metadata !74}
!93 = metadata !{i32 786478, i32 0, metadata !45, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !47, i32 144, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 144} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !45, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !47, i32 150, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 150} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !83, metadata !54, metadata !78}
!97 = metadata !{i32 786478, i32 0, metadata !45, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !47, i32 157, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !55, i32 157} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !100, metadata !54}
!100 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !50, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!104 = metadata !{i32 786438, metadata !46, metadata !"stream<int>", metadata !47, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !105, i32 0, null, metadata !101} ; [ DW_TAG_class_field_type ]
!105 = metadata !{metadata !49}
!106 = metadata !{i32 37, i32 39, metadata !40, null}
!107 = metadata !{i32 790531, metadata !108, metadata !"in_stream.V", null, i32 37, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!108 = metadata !{i32 786689, metadata !40, metadata !"in_stream", metadata !41, i32 33554469, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 37, i32 69, metadata !40, null}
!110 = metadata !{i32 790529, metadata !111, metadata !"line_buf[0]", null, i32 39, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!111 = metadata !{i32 786688, metadata !112, metadata !"line_buf", metadata !41, i32 39, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786443, metadata !40, i32 38, i32 1, metadata !41, i32 0} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !50, metadata !114, i32 0, i32 0} ; [ DW_TAG_array_type ]
!114 = metadata !{metadata !115, metadata !116}
!115 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!116 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!117 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !50, metadata !114, i32 0, i32 0} ; [ DW_TAG_array_type ]
!118 = metadata !{i32 39, i32 7, metadata !112, null}
!119 = metadata !{i32 790529, metadata !111, metadata !"line_buf[1]", null, i32 39, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!120 = metadata !{i32 48, i32 48, metadata !121, null}
!121 = metadata !{i32 786443, metadata !112, i32 48, i32 12, metadata !41, i32 1} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 50, i32 3, metadata !123, null}
!123 = metadata !{i32 786443, metadata !121, i32 50, i32 2, metadata !41, i32 2} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 49, i32 1, metadata !123, null}
!125 = metadata !{i32 790531, metadata !126, metadata !"stream<int>.V", null, i32 129, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!126 = metadata !{i32 786689, metadata !127, metadata !"this", metadata !47, i32 16777345, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 786478, i32 0, metadata !46, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !47, i32 129, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !87, metadata !55, i32 129} ; [ DW_TAG_subprogram ]
!128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ]
!130 = metadata !{i32 129, i32 56, metadata !127, metadata !131}
!131 = metadata !{i32 50, i32 37, metadata !123, null}
!132 = metadata !{i32 131, i32 9, metadata !133, metadata !131}
!133 = metadata !{i32 786443, metadata !127, i32 129, i32 63, metadata !47, i32 21} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786688, metadata !133, metadata !"tmp", metadata !47, i32 130, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 50, i32 52, metadata !123, null}
!136 = metadata !{i32 48, i32 57, metadata !121, null}
!137 = metadata !{i32 786688, metadata !121, metadata !"x", metadata !41, i32 48, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 54, i32 34, metadata !139, null}
!139 = metadata !{i32 786443, metadata !140, i32 52, i32 14, metadata !41, i32 5} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 786443, metadata !141, i32 52, i32 5, metadata !41, i32 4} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 786443, metadata !112, i32 51, i32 11, metadata !41, i32 3} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 57, i32 39, metadata !143, null}
!143 = metadata !{i32 786443, metadata !112, i32 57, i32 11, metadata !41, i32 7} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 52, i32 28, metadata !139, null}
!145 = metadata !{i32 52, i32 37, metadata !139, null}
!146 = metadata !{i32 52, i32 5, metadata !140, null}
!147 = metadata !{i32 54, i32 3, metadata !148, null}
!148 = metadata !{i32 786443, metadata !139, i32 54, i32 2, metadata !41, i32 6} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 53, i32 1, metadata !148, null}
!150 = metadata !{i32 129, i32 56, metadata !127, metadata !151}
!151 = metadata !{i32 54, i32 19, metadata !148, null}
!152 = metadata !{i32 131, i32 9, metadata !133, metadata !151}
!153 = metadata !{i32 54, i32 34, metadata !148, null}
!154 = metadata !{i32 786688, metadata !143, metadata !"y", metadata !41, i32 57, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 57, i32 48, metadata !143, null}
!156 = metadata !{i32 790533, metadata !157, metadata !"window[0][0]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!157 = metadata !{i32 786689, metadata !158, metadata !"window", null, i32 18, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!158 = metadata !{i32 786478, i32 0, metadata !41, metadata !"sum_window", metadata !"sum_window", metadata !"_Z10sum_windowPA3_iii", metadata !41, i32 18, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !55, i32 19} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!160 = metadata !{metadata !50, metadata !161, metadata !50, metadata !50}
!161 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ]
!162 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !50, metadata !163, i32 0, i32 0} ; [ DW_TAG_array_type ]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ]
!165 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !50, metadata !166, i32 0, i32 0} ; [ DW_TAG_array_type ]
!166 = metadata !{metadata !164, metadata !164}
!167 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ]
!168 = metadata !{i32 68, i32 16, metadata !169, null}
!169 = metadata !{i32 786443, metadata !170, i32 66, i32 5, metadata !41, i32 14} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786443, metadata !171, i32 65, i32 13, metadata !41, i32 13} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !172, i32 64, i32 3, metadata !41, i32 12} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 786443, metadata !112, i32 63, i32 11, metadata !41, i32 11} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 790529, metadata !174, metadata !"window[0][0]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!174 = metadata !{i32 786688, metadata !112, metadata !"window", metadata !41, i32 40, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 790529, metadata !174, metadata !"window[0][1]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 790533, metadata !157, metadata !"window[1][0]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!177 = metadata !{i32 790533, metadata !157, metadata !"window[2][0]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!178 = metadata !{i32 786688, metadata !112, metadata !"read_count", metadata !41, i32 47, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 14, i32 3, metadata !180, metadata !184}
!180 = metadata !{i32 786443, metadata !181, i32 13, i32 1, metadata !41, i32 28} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786478, i32 0, metadata !41, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !41, i32 12, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !55, i32 13} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !83, metadata !50, metadata !50}
!184 = metadata !{i32 26, i32 17, metadata !185, metadata !168}
!185 = metadata !{i32 786443, metadata !186, i32 25, i32 9, metadata !41, i32 26} ; [ DW_TAG_lexical_block ]
!186 = metadata !{i32 786443, metadata !187, i32 24, i32 17, metadata !41, i32 25} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 786443, metadata !188, i32 23, i32 5, metadata !41, i32 24} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 786443, metadata !189, i32 22, i32 13, metadata !41, i32 23} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786443, metadata !158, i32 19, i32 1, metadata !41, i32 22} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 58, i32 41, metadata !191, null}
!191 = metadata !{i32 786443, metadata !192, i32 58, i32 13, metadata !41, i32 9} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 786443, metadata !143, i32 58, i32 5, metadata !41, i32 8} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 60, i32 2, metadata !194, null}
!194 = metadata !{i32 786443, metadata !191, i32 60, i32 2, metadata !41, i32 10} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 60, i32 3, metadata !194, null}
!196 = metadata !{i32 59, i32 1, metadata !194, null}
!197 = metadata !{i32 790529, metadata !174, metadata !"window[1][1]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!198 = metadata !{i32 790529, metadata !174, metadata !"window[1][2]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!199 = metadata !{i32 790529, metadata !174, metadata !"window[2][2]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!200 = metadata !{i32 790529, metadata !174, metadata !"window[2][1]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!201 = metadata !{i32 60, i32 42, metadata !194, null}
!202 = metadata !{i32 58, i32 50, metadata !191, null}
!203 = metadata !{i32 786688, metadata !191, metadata !"x", metadata !41, i32 58, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 28, i32 17, metadata !205, metadata !168}
!205 = metadata !{i32 786443, metadata !185, i32 27, i32 13, metadata !41, i32 27} ; [ DW_TAG_lexical_block ]
!206 = metadata !{i32 786688, metadata !172, metadata !"y", metadata !41, i32 63, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!207 = metadata !{i32 63, i32 34, metadata !172, null}
!208 = metadata !{i32 129, i32 56, metadata !127, metadata !209}
!209 = metadata !{i32 82, i32 18, metadata !210, null}
!210 = metadata !{i32 786443, metadata !169, i32 81, i32 7, metadata !41, i32 16} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 131, i32 9, metadata !133, metadata !209}
!212 = metadata !{i32 786688, metadata !169, metadata !"val_in", metadata !41, i32 79, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 83, i32 9, metadata !210, null}
!214 = metadata !{i32 84, i32 7, metadata !210, null}
!215 = metadata !{i32 85, i32 7, metadata !169, null}
!216 = metadata !{i32 790529, metadata !174, metadata !"window[1][0]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!217 = metadata !{i32 90, i32 11, metadata !218, null}
!218 = metadata !{i32 786443, metadata !219, i32 89, i32 9, metadata !41, i32 18} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 786443, metadata !169, i32 88, i32 7, metadata !41, i32 17} ; [ DW_TAG_lexical_block ]
!220 = metadata !{i32 790529, metadata !174, metadata !"window[2][0]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!221 = metadata !{i32 790529, metadata !174, metadata !"window[0][2]", null, i32 40, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!222 = metadata !{i32 94, i32 9, metadata !223, null}
!223 = metadata !{i32 786443, metadata !169, i32 93, i32 7, metadata !41, i32 19} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 95, i32 5, metadata !169, null}
!225 = metadata !{i32 786688, metadata !170, metadata !"x", metadata !41, i32 65, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 65, i32 36, metadata !170, null}
!227 = metadata !{i32 80, i32 7, metadata !169, null}
!228 = metadata !{i32 65, i32 27, metadata !170, null}
!229 = metadata !{i32 66, i32 6, metadata !169, null}
!230 = metadata !{i32 67, i32 1, metadata !169, null}
!231 = metadata !{i32 790533, metadata !157, metadata !"window[1][1]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!232 = metadata !{i32 18, i32 27, metadata !158, metadata !168}
!233 = metadata !{i32 790533, metadata !157, metadata !"window[1][2]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!234 = metadata !{i32 790533, metadata !157, metadata !"window[2][1]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!235 = metadata !{i32 790533, metadata !157, metadata !"window[2][2]", null, i32 18, metadata !167, i32 0, metadata !168} ; [ DW_TAG_arg_variable_field_ro ]
!236 = metadata !{i32 786689, metadata !158, metadata !"y", metadata !41, i32 33554450, metadata !50, i32 0, metadata !168} ; [ DW_TAG_arg_variable ]
!237 = metadata !{i32 18, i32 45, metadata !158, metadata !168}
!238 = metadata !{i32 786689, metadata !158, metadata !"x", metadata !41, i32 50331666, metadata !50, i32 0, metadata !168} ; [ DW_TAG_arg_variable ]
!239 = metadata !{i32 18, i32 52, metadata !158, metadata !168}
!240 = metadata !{i32 786689, metadata !181, metadata !"x", metadata !41, i32 33554444, metadata !50, i32 0, metadata !184} ; [ DW_TAG_arg_variable ]
!241 = metadata !{i32 12, i32 34, metadata !181, metadata !184}
!242 = metadata !{i32 786689, metadata !181, metadata !"y", metadata !41, i32 16777228, metadata !50, i32 0, metadata !184} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 12, i32 27, metadata !181, metadata !184}
!244 = metadata !{i32 786688, metadata !169, metadata !"val_out", metadata !41, i32 68, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!245 = metadata !{i32 790531, metadata !246, metadata !"stream<int>.V", null, i32 144, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!246 = metadata !{i32 786689, metadata !247, metadata !"this", metadata !47, i32 16777360, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!247 = metadata !{i32 786478, i32 0, metadata !46, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !47, i32 144, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !93, metadata !55, i32 144} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 144, i32 48, metadata !247, metadata !249}
!249 = metadata !{i32 71, i32 7, metadata !169, null}
!250 = metadata !{i32 786688, metadata !251, metadata !"tmp", metadata !47, i32 145, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!251 = metadata !{i32 786443, metadata !247, i32 144, i32 79, metadata !47, i32 20} ; [ DW_TAG_lexical_block ]
!252 = metadata !{i32 145, i32 31, metadata !251, metadata !249}
!253 = metadata !{i32 146, i32 9, metadata !251, metadata !249}
!254 = metadata !{i32 74, i32 7, metadata !169, null}
!255 = metadata !{i32 790529, metadata !256, metadata !"right[0]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!256 = metadata !{i32 786688, metadata !112, metadata !"right", metadata !41, i32 41, metadata !162, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 76, i32 9, metadata !258, null}
!258 = metadata !{i32 786443, metadata !169, i32 75, i32 7, metadata !41, i32 15} ; [ DW_TAG_lexical_block ]
!259 = metadata !{i32 790529, metadata !256, metadata !"right[1]", null, i32 41, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!260 = metadata !{i32 97, i32 1, metadata !112, null}
