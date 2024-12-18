; ModuleID = 'D:/Vivado/final_conv2d/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@for_y_for_x_str = internal unnamed_addr constant [12 x i8] c"for_y_for_x\00" ; [#uses=1 type=[12 x i8]*]
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=45]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution([25 x i32]* %data_out, [25 x i32]* %data_in, [9 x i32]* %kernel) nounwind uwtable {
  %window_0_0_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_0_1}, metadata !32) ; [debug variable = window[0][0]]
  %window_0_1_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_1_1}, metadata !64) ; [debug variable = window[0][1]]
  %window_0_2_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_0_2_1}, metadata !65) ; [debug variable = window[0][2]]
  %window_1_0_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_1_0_1}, metadata !66) ; [debug variable = window[1][0]]
  %window_1_2_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_1_2_1}, metadata !67) ; [debug variable = window[1][2]]
  %window_2_0_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_2_0_1}, metadata !68) ; [debug variable = window[2][0]]
  %window_2_1_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_2_1_1}, metadata !69) ; [debug variable = window[2][1]]
  %window_2_2_1 = alloca i32                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %window_2_2_1}, metadata !70) ; [debug variable = window[2][2]]
  %kernel_addr = getelementptr [9 x i32]* %kernel, i64 0, i64 0, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_1 = getelementptr [9 x i32]* %kernel, i64 0, i64 1, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_2 = getelementptr [9 x i32]* %kernel, i64 0, i64 2, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_3 = getelementptr [9 x i32]* %kernel, i64 0, i64 3, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_4 = getelementptr [9 x i32]* %kernel, i64 0, i64 4, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_5 = getelementptr [9 x i32]* %kernel, i64 0, i64 5, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_6 = getelementptr [9 x i32]* %kernel, i64 0, i64 6, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_7 = getelementptr [9 x i32]* %kernel, i64 0, i64 7, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %kernel_addr_8 = getelementptr [9 x i32]* %kernel, i64 0, i64 8, !dbg !71 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_out) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_in) nounwind, !map !83
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %kernel) nounwind, !map !87
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  call void @llvm.dbg.value(metadata !{[25 x i32]* %data_out}, i64 0, metadata !93), !dbg !96 ; [debug line = 24:25] [debug variable = data_out]
  call void @llvm.dbg.value(metadata !{[25 x i32]* %data_in}, i64 0, metadata !97), !dbg !99 ; [debug line = 25:29] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %kernel}, i64 0, metadata !100), !dbg !101 ; [debug line = 26:23] [debug variable = kernel]
  br label %1, !dbg !102                          ; [debug line = 32:24]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i5 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i5]
  %y_assign_1 = phi i3 [ 0, %0 ], [ %tmp_mid2, %.reset ] ; [#uses=6 type=i3]
  %x_assign_1 = phi i3 [ 0, %0 ], [ %x, %.reset ] ; [#uses=2 type=i3]
  %y_assign = add i3 %y_assign_1, -1, !dbg !103   ; [#uses=1 type=i3] [debug line = 42:15]
  %tmp_i = icmp ne i3 %y_assign_1, 0, !dbg !108   ; [#uses=1 type=i1] [debug line = 6:3@42:15]
  %y = add i3 %y_assign_1, 1, !dbg !103           ; [#uses=4 type=i3] [debug line = 42:15]
  call void @llvm.dbg.value(metadata !{i3 %y}, i64 0, metadata !114), !dbg !115 ; [debug line = 32:33] [debug variable = y]
  %tmp_i4 = icmp ult i3 %y, -3, !dbg !108         ; [#uses=1 type=i1] [debug line = 6:3@42:15]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -7 ; [#uses=1 type=i1]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 25, i64 25, i64 25) nounwind ; [#uses=0 type=i32]
  %indvar_flatten_next = add i5 %indvar_flatten, 1 ; [#uses=1 type=i5]
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %window_0_0_1_load = load i32* %window_0_0_1    ; [#uses=1 type=i32]
  %window_0_1_1_load = load i32* %window_0_1_1    ; [#uses=1 type=i32]
  %window_0_2_1_load = load i32* %window_0_2_1    ; [#uses=1 type=i32]
  %window_1_0_1_load = load i32* %window_1_0_1    ; [#uses=1 type=i32]
  %window_1_2_1_load = load i32* %window_1_2_1    ; [#uses=1 type=i32]
  %window_2_0_1_load = load i32* %window_2_0_1    ; [#uses=1 type=i32]
  %window_2_1_1_load = load i32* %window_2_1_1    ; [#uses=1 type=i32]
  %window_2_2_1_load = load i32* %window_2_2_1    ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @for_y_for_x_str)
  %exitcond = icmp eq i3 %x_assign_1, -3, !dbg !116 ; [#uses=6 type=i1] [debug line = 35:27]
  %x_assign_1_mid2 = select i1 %exitcond, i3 0, i3 %x_assign_1 ; [#uses=4 type=i3]
  %tmp_mid2 = select i1 %exitcond, i3 %y, i3 %y_assign_1, !dbg !117 ; [#uses=3 type=i3] [debug line = 47:7]
  %tmp_mid2_cast = zext i3 %tmp_mid2 to i6, !dbg !117 ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_mid2, i2 0) ; [#uses=1 type=i5]
  %p_shl2_cast = zext i5 %tmp to i6, !dbg !117    ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp_3 = add i6 %p_shl2_cast, %tmp_mid2_cast, !dbg !117 ; [#uses=3 type=i6] [debug line = 47:7]
  %tmp_4_mid2_v = select i1 %exitcond, i3 %y_assign_1, i3 %y_assign, !dbg !118 ; [#uses=2 type=i3] [debug line = 43:13]
  %tmp_4_mid2_cast = sext i3 %tmp_4_mid2_v to i6  ; [#uses=1 type=i6]
  %tmp_4 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_4_mid2_v, i2 0) ; [#uses=1 type=i5]
  %p_shl1_cast = sext i5 %tmp_4 to i6, !dbg !118  ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_5 = add i6 %p_shl1_cast, %tmp_4_mid2_cast, !dbg !118 ; [#uses=3 type=i6] [debug line = 43:13]
  %tmp_i_mid1 = icmp ne i3 %y, 0, !dbg !108       ; [#uses=1 type=i1] [debug line = 6:3@42:15]
  %tmp_i_mid2 = select i1 %exitcond, i1 %tmp_i_mid1, i1 %tmp_i, !dbg !108 ; [#uses=4 type=i1] [debug line = 6:3@42:15]
  %y_assign_2_mid1 = add i3 %y_assign_1, 2, !dbg !103 ; [#uses=2 type=i3] [debug line = 42:15]
  %tmp_2_2_mid2 = select i1 %exitcond, i3 %y_assign_2_mid1, i3 %y, !dbg !118 ; [#uses=2 type=i3] [debug line = 43:13]
  %tmp_2_2_mid2_cast = zext i3 %tmp_2_2_mid2 to i6, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_2_2_mid2, i2 0) ; [#uses=1 type=i5]
  %p_shl_cast = zext i5 %tmp_1 to i6, !dbg !118   ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_8 = add i6 %p_shl_cast, %tmp_2_2_mid2_cast, !dbg !118 ; [#uses=3 type=i6] [debug line = 43:13]
  %tmp_i4_mid1 = icmp ult i3 %y_assign_2_mid1, -3, !dbg !108 ; [#uses=1 type=i1] [debug line = 6:3@42:15]
  %tmp_i4_mid2 = select i1 %exitcond, i1 %tmp_i4_mid1, i1 %tmp_i4, !dbg !108 ; [#uses=4 type=i1] [debug line = 6:3@42:15]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind, !dbg !119 ; [debug line = 36:6]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str4) nounwind, !dbg !119 ; [#uses=1 type=i32] [debug line = 36:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !120 ; [debug line = 37:1]
  %x_assign = add i3 %x_assign_1_mid2, -1, !dbg !103 ; [#uses=1 type=i3] [debug line = 42:15]
  call void @llvm.dbg.value(metadata !{i3 %y_assign}, i64 0, metadata !121), !dbg !122 ; [debug line = 4:27@42:15] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i3 %x_assign}, i64 0, metadata !123), !dbg !124 ; [debug line = 4:34@42:15] [debug variable = x]
  %tmp_9_i = icmp ne i3 %x_assign_1_mid2, 0, !dbg !108 ; [#uses=4 type=i1] [debug line = 6:3@42:15]
  %or_cond1_i = and i1 %tmp_i_mid2, %tmp_9_i, !dbg !108 ; [#uses=2 type=i1] [debug line = 6:3@42:15]
  %tmp_6_cast = sext i3 %x_assign to i6, !dbg !118 ; [#uses=3 type=i6] [debug line = 43:13]
  %tmp_9 = add i6 %tmp_6_cast, %tmp_5, !dbg !118  ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_9_cast = sext i6 %tmp_9 to i64, !dbg !118  ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_9_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %tmp_s = add i6 %tmp_6_cast, %tmp_3, !dbg !118  ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_10_cast = zext i6 %tmp_s to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_3 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_10_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %tmp_6 = add i6 %tmp_6_cast, %tmp_8, !dbg !118  ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_11_cast = zext i6 %tmp_6 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_6 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_11_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %window_0_0 = load i32* %data_in_addr, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_0_0}, i64 0, metadata !125), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][0]]
  %window_0_0_1_3 = select i1 %or_cond1_i, i32 %window_0_0, i32 %window_0_0_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_0_0_1_3}, i64 0, metadata !125), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i3 %x_assign_1}, i64 0, metadata !123), !dbg !124 ; [debug line = 4:34@42:15] [debug variable = x]
  %tmp_6_0_1_cast = zext i3 %x_assign_1_mid2 to i6, !dbg !117 ; [#uses=3 type=i6] [debug line = 47:7]
  %tmp_7 = add i6 %tmp_6_0_1_cast, %tmp_3, !dbg !117 ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp_12_cast = zext i6 %tmp_7 to i64, !dbg !117 ; [#uses=2 type=i64] [debug line = 47:7]
  %data_out_addr = getelementptr [25 x i32]* %data_out, i64 0, i64 %tmp_12_cast, !dbg !117 ; [#uses=1 type=i32*] [debug line = 47:7]
  %tmp_10 = add i6 %tmp_6_0_1_cast, %tmp_5, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_13_cast = sext i6 %tmp_10 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_1 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_13_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %data_in_addr_4 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_12_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %tmp_11 = add i6 %tmp_6_0_1_cast, %tmp_8, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_14_cast = zext i6 %tmp_11 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_7 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_14_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %window_0_1 = load i32* %data_in_addr_1, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_0_1}, i64 0, metadata !127), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][1]]
  %window_0_1_1_4 = select i1 %tmp_i_mid2, i32 %window_0_1, i32 %window_0_1_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_0_1_1_4}, i64 0, metadata !127), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][1]]
  %x = add i3 %x_assign_1_mid2, 1, !dbg !103      ; [#uses=3 type=i3] [debug line = 42:15]
  call void @llvm.dbg.value(metadata !{i3 %x}, i64 0, metadata !123), !dbg !124 ; [debug line = 4:34@42:15] [debug variable = x]
  %tmp_1_i4 = icmp ult i3 %x, -3, !dbg !108       ; [#uses=4 type=i1] [debug line = 6:3@42:15]
  %p_i = and i1 %tmp_i_mid2, %tmp_1_i4, !dbg !108 ; [#uses=2 type=i1] [debug line = 6:3@42:15]
  %tmp_6_0_2_cast = zext i3 %x to i6, !dbg !118   ; [#uses=3 type=i6] [debug line = 43:13]
  %tmp_12 = add i6 %tmp_6_0_2_cast, %tmp_5, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_15_cast = sext i6 %tmp_12 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_2 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_15_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %tmp_13 = add i6 %tmp_6_0_2_cast, %tmp_3, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_16_cast = zext i6 %tmp_13 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_5 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_16_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %tmp_14 = add i6 %tmp_6_0_2_cast, %tmp_8, !dbg !118 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_17_cast = zext i6 %tmp_14 to i64, !dbg !118 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr_8 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_17_cast, !dbg !118 ; [#uses=1 type=i32*] [debug line = 43:13]
  %window_0_2 = load i32* %data_in_addr_2, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_0_2}, i64 0, metadata !128), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][2]]
  %window_0_2_1_5 = select i1 %p_i, i32 %window_0_2, i32 %window_0_2_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_0_2_1_5}, i64 0, metadata !128), !dbg !118 ; [debug line = 43:13] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i3 %y_assign_1}, i64 0, metadata !121), !dbg !122 ; [debug line = 4:27@42:15] [debug variable = y]
  %window_1_0 = load i32* %data_in_addr_3, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_1_0}, i64 0, metadata !129), !dbg !118 ; [debug line = 43:13] [debug variable = window[1][0]]
  %window_1_0_1_6 = select i1 %tmp_9_i, i32 %window_1_0, i32 %window_1_0_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_1_0_1_6}, i64 0, metadata !129), !dbg !118 ; [debug line = 43:13] [debug variable = window[1][0]]
  %window_1_1 = load i32* %data_in_addr_4, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1}, i64 0, metadata !130), !dbg !118 ; [debug line = 43:13] [debug variable = window[1][1]]
  %window_1_2 = load i32* %data_in_addr_5, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_1_2}, i64 0, metadata !131), !dbg !118 ; [debug line = 43:13] [debug variable = window[1][2]]
  %window_1_2_1_7 = select i1 %tmp_1_i4, i32 %window_1_2, i32 %window_1_2_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_1_2_1_7}, i64 0, metadata !131), !dbg !118 ; [debug line = 43:13] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i3 %y}, i64 0, metadata !121), !dbg !122 ; [debug line = 4:27@42:15] [debug variable = y]
  %or_cond1_i1 = and i1 %tmp_i4_mid2, %tmp_9_i, !dbg !108 ; [#uses=2 type=i1] [debug line = 6:3@42:15]
  %window_2_0 = load i32* %data_in_addr_6, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_2_0}, i64 0, metadata !132), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][0]]
  %window_2_0_1_8 = select i1 %or_cond1_i1, i32 %window_2_0, i32 %window_2_0_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_0_1_8}, i64 0, metadata !132), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][0]]
  %window_2_1 = load i32* %data_in_addr_7, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_2_1}, i64 0, metadata !133), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][1]]
  %window_2_1_1_9 = select i1 %tmp_i4_mid2, i32 %window_2_1, i32 %window_2_1_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_1_1_9}, i64 0, metadata !133), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][1]]
  %p_i1 = and i1 %tmp_i4_mid2, %tmp_1_i4, !dbg !108 ; [#uses=2 type=i1] [debug line = 6:3@42:15]
  %window_2_2 = load i32* %data_in_addr_8, align 4, !dbg !118 ; [#uses=1 type=i32] [debug line = 43:13]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2}, i64 0, metadata !134), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][2]]
  %window_2_2_1_10 = select i1 %p_i1, i32 %window_2_2, i32 %window_2_2_1_load ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_1_10}, i64 0, metadata !134), !dbg !118 ; [debug line = 43:13] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_0_0_1_3}, i64 0, metadata !32) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i32 %window_0_1_1_4}, i64 0, metadata !64) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[0][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_0_2_1_5}, i64 0, metadata !65) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_0_1_6}, i64 0, metadata !66) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_1}, i64 0, metadata !136) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_1_2_1_7}, i64 0, metadata !67) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_0_1_8}, i64 0, metadata !68) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_1_1_9}, i64 0, metadata !69) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %window_2_2_1_10}, i64 0, metadata !70) nounwind, !dbg !135 ; [debug line = 10:26@46:21] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %kernel}, i64 0, metadata !137) nounwind, !dbg !138 ; [debug line = 10:44@46:21] [debug variable = kernel]
  call void @llvm.dbg.value(metadata !{i3 %y_assign_1}, i64 0, metadata !139) nounwind, !dbg !140 ; [debug line = 10:62@46:21] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i3 %x_assign_1}, i64 0, metadata !141) nounwind, !dbg !142 ; [debug line = 10:69@46:21] [debug variable = x]
  %kernel_load = load i32* %kernel_addr, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_i = mul nsw i32 %window_0_0_1_3, %kernel_load, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_i = select i1 %or_cond1_i, i32 %tmp_7_i, i32 0 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i3 %x_assign_1}, i64 0, metadata !143) nounwind, !dbg !145 ; [debug line = 4:34@17:11@46:21] [debug variable = x]
  %kernel_load_1 = load i32* %kernel_addr_1, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_0_1_i = mul nsw i32 %window_0_1_1_4, %kernel_load_1, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_0_1_i = add nsw i32 %tmp_7_0_1_i, %result_2_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_0_1_i = select i1 %tmp_i_mid2, i32 %result_3_0_1_i, i32 0 ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i3 %x}, i64 0, metadata !143) nounwind, !dbg !145 ; [debug line = 4:34@17:11@46:21] [debug variable = x]
  %kernel_load_2 = load i32* %kernel_addr_2, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_0_2_i = mul nsw i32 %window_0_2_1_5, %kernel_load_2, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_0_2_i = add nsw i32 %tmp_7_0_2_i, %result_2_0_1_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_0_2_i = select i1 %p_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i3 %y_assign_1}, i64 0, metadata !146) nounwind, !dbg !147 ; [debug line = 4:27@17:11@46:21] [debug variable = y]
  %kernel_load_3 = load i32* %kernel_addr_3, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_1_i = mul nsw i32 %window_1_0_1_6, %kernel_load_3, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_1_i = add nsw i32 %tmp_7_1_i, %result_2_0_2_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_1_i = select i1 %tmp_9_i, i32 %result_3_1_i, i32 %result_2_0_2_i ; [#uses=1 type=i32]
  %kernel_load_4 = load i32* %kernel_addr_4, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_1_1_i = mul nsw i32 %window_1_1, %kernel_load_4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_1_1_i = add nsw i32 %tmp_7_1_1_i, %result_2_1_i, !dbg !71 ; [#uses=2 type=i32] [debug line = 18:9@46:21]
  %kernel_load_5 = load i32* %kernel_addr_5, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_1_2_i = mul nsw i32 %window_1_2_1_7, %kernel_load_5, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_1_2_i = add nsw i32 %tmp_7_1_2_i, %result_3_1_1_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_1_2_i = select i1 %tmp_1_i4, i32 %result_3_1_2_i, i32 %result_3_1_1_i ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i3 %y}, i64 0, metadata !146) nounwind, !dbg !147 ; [debug line = 4:27@17:11@46:21] [debug variable = y]
  %kernel_load_6 = load i32* %kernel_addr_6, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_2_i = mul nsw i32 %window_2_0_1_8, %kernel_load_6, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_2_i = add nsw i32 %tmp_7_2_i, %result_2_1_2_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_2_i = select i1 %or_cond1_i1, i32 %result_3_2_i, i32 %result_2_1_2_i ; [#uses=1 type=i32]
  %kernel_load_7 = load i32* %kernel_addr_7, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_2_1_i = mul nsw i32 %window_2_1_1_9, %kernel_load_7, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_2_1_i = add nsw i32 %tmp_7_2_1_i, %result_2_2_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_2_2_1_i = select i1 %tmp_i4_mid2, i32 %result_3_2_1_i, i32 %result_2_1_2_i ; [#uses=2 type=i32]
  %kernel_load_8 = load i32* %kernel_addr_8, align 4, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_2_2_i = mul nsw i32 %window_2_2_1_10, %kernel_load_8, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result_3_2_2_i = add nsw i32 %tmp_7_2_2_i, %result_2_2_1_i, !dbg !71 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %val_out = select i1 %p_i1, i32 %result_3_2_2_i, i32 %result_2_2_1_i ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !148), !dbg !48 ; [debug line = 46:21] [debug variable = val_out]
  store i32 %val_out, i32* %data_out_addr, align 4, !dbg !117 ; [debug line = 47:7]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str4, i32 %tmp_2) nounwind, !dbg !149 ; [#uses=0 type=i32] [debug line = 48:5]
  call void @llvm.dbg.value(metadata !{i3 %x}, i64 0, metadata !150), !dbg !151 ; [debug line = 35:36] [debug variable = x]
  store i32 %window_2_2_1_10, i32* %window_2_2_1
  store i32 %window_2_1_1_9, i32* %window_2_1_1
  store i32 %window_2_0_1_8, i32* %window_2_0_1
  store i32 %window_1_2_1_7, i32* %window_1_2_1
  store i32 %window_1_0_1_6, i32* %window_1_0_1
  store i32 %window_0_2_1_5, i32* %window_0_2_1
  store i32 %window_0_1_1_4, i32* %window_0_1_1
  store i32 %window_0_0_1_3, i32* %window_0_0_1
  br label %1

; <label>:2                                       ; preds = %1
  ret void, !dbg !152                             ; [debug line = 50:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_12 = zext i2 %1 to i5                    ; [#uses=1 type=i5]
  %empty_13 = shl i5 %empty, 2                    ; [#uses=1 type=i5]
  %empty_14 = or i5 %empty_13, %empty_12          ; [#uses=1 type=i5]
  ret i5 %empty_14
}

!opencl.kernels = !{!0, !7, !7, !7, !7, !7, !7, !13, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!25}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int [5]*", metadata !"const int [5]*", metadata !"int [3]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data_out", metadata !"data_in", metadata !"kernel"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int [3]*", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"kernel", metadata !"y", metadata !"x"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!25 = metadata !{metadata !26, [0 x i32]* @llvm_global_ctors_0}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"llvm.global_ctors.0", metadata !30, metadata !"", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, i32 1}
!32 = metadata !{i32 790533, metadata !33, metadata !"window[0][0]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!33 = metadata !{i32 786689, metadata !34, metadata !"window", null, i32 10, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 786478, i32 0, metadata !35, metadata !"sumWindow", metadata !"sumWindow", metadata !"_Z9sumWindowPA3_iS0_ii", metadata !35, i32 10, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 11} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786473, metadata !"final_conv2d/conv_v1/conv_v1.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{metadata !38, metadata !39, metadata !39, metadata !38, metadata !38}
!38 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !38, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !38, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !42, metadata !42}
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 46, i32 21, metadata !49, null}
!49 = metadata !{i32 786443, metadata !50, i32 36, i32 5, metadata !35, i32 4} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 786443, metadata !51, i32 35, i32 13, metadata !35, i32 3} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !52, i32 33, i32 3, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !53, i32 32, i32 10, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !54, i32 27, i32 1, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786478, i32 0, metadata !35, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionPA5_iPA5_KiPA3_i", metadata !35, i32 24, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 27} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !57, metadata !61, metadata !39}
!57 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ]
!58 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !38, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ]
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !63, metadata !59, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_const_type ]
!64 = metadata !{i32 790533, metadata !33, metadata !"window[0][1]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!65 = metadata !{i32 790533, metadata !33, metadata !"window[0][2]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!66 = metadata !{i32 790533, metadata !33, metadata !"window[1][0]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!67 = metadata !{i32 790533, metadata !33, metadata !"window[1][2]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!68 = metadata !{i32 790533, metadata !33, metadata !"window[2][0]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!69 = metadata !{i32 790533, metadata !33, metadata !"window[2][1]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!70 = metadata !{i32 790533, metadata !33, metadata !"window[2][2]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!71 = metadata !{i32 18, i32 9, metadata !72, metadata !48}
!72 = metadata !{i32 786443, metadata !73, i32 17, i32 7, metadata !35, i32 17} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 786443, metadata !74, i32 16, i32 13, metadata !35, i32 16} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !75, i32 16, i32 5, metadata !35, i32 15} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !76, i32 15, i32 11, metadata !35, i32 14} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !34, i32 11, i32 1, metadata !35, i32 13} ; [ DW_TAG_lexical_block ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"data_out", metadata !81, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82, metadata !82}
!82 = metadata !{i32 0, i32 4, i32 1}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"data_in", metadata !81, metadata !"int", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 31, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"kernel", metadata !91, metadata !"int", i32 0, i32 31}
!91 = metadata !{metadata !92, metadata !92}
!92 = metadata !{i32 0, i32 2, i32 1}
!93 = metadata !{i32 786689, metadata !54, metadata !"data_out", null, i32 24, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 32, i32 0, i32 0, metadata !38, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ]
!95 = metadata !{metadata !60, metadata !60}
!96 = metadata !{i32 24, i32 25, metadata !54, null}
!97 = metadata !{i32 786689, metadata !54, metadata !"data_in", null, i32 25, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 32, i32 0, i32 0, metadata !63, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ]
!99 = metadata !{i32 25, i32 29, metadata !54, null}
!100 = metadata !{i32 786689, metadata !54, metadata !"kernel", null, i32 26, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 26, i32 23, metadata !54, null}
!102 = metadata !{i32 32, i32 24, metadata !52, null}
!103 = metadata !{i32 42, i32 15, metadata !104, null}
!104 = metadata !{i32 786443, metadata !105, i32 42, i32 11, metadata !35, i32 8} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 41, i32 18, metadata !35, i32 7} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !107, i32 41, i32 9, metadata !35, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !49, i32 40, i32 11, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 6, i32 3, metadata !109, metadata !103}
!109 = metadata !{i32 786443, metadata !110, i32 5, i32 1, metadata !35, i32 18} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786478, i32 0, metadata !35, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !35, i32 4, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !43, i32 5} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !113, metadata !38, metadata !38}
!113 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!114 = metadata !{i32 786688, metadata !52, metadata !"y", metadata !35, i32 32, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 32, i32 33, metadata !52, null}
!116 = metadata !{i32 35, i32 27, metadata !50, null}
!117 = metadata !{i32 47, i32 7, metadata !49, null}
!118 = metadata !{i32 43, i32 13, metadata !104, null}
!119 = metadata !{i32 36, i32 6, metadata !49, null}
!120 = metadata !{i32 37, i32 1, metadata !49, null}
!121 = metadata !{i32 786689, metadata !110, metadata !"y", metadata !35, i32 16777220, metadata !38, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 4, i32 27, metadata !110, metadata !103}
!123 = metadata !{i32 786689, metadata !110, metadata !"x", metadata !35, i32 33554436, metadata !38, i32 0, metadata !103} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 4, i32 34, metadata !110, metadata !103}
!125 = metadata !{i32 790529, metadata !126, metadata !"window[0][0]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!126 = metadata !{i32 786688, metadata !53, metadata !"window", metadata !35, i32 28, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 790529, metadata !126, metadata !"window[0][1]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!128 = metadata !{i32 790529, metadata !126, metadata !"window[0][2]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!129 = metadata !{i32 790529, metadata !126, metadata !"window[1][0]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!130 = metadata !{i32 790529, metadata !126, metadata !"window[1][1]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!131 = metadata !{i32 790529, metadata !126, metadata !"window[1][2]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!132 = metadata !{i32 790529, metadata !126, metadata !"window[2][0]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!133 = metadata !{i32 790529, metadata !126, metadata !"window[2][1]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!134 = metadata !{i32 790529, metadata !126, metadata !"window[2][2]", null, i32 28, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!135 = metadata !{i32 10, i32 26, metadata !34, metadata !48}
!136 = metadata !{i32 790533, metadata !33, metadata !"window[1][1]", null, i32 10, metadata !47, i32 0, metadata !48} ; [ DW_TAG_arg_variable_field_ro ]
!137 = metadata !{i32 786689, metadata !34, metadata !"kernel", null, i32 10, metadata !45, i32 0, metadata !48} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 10, i32 44, metadata !34, metadata !48}
!139 = metadata !{i32 786689, metadata !34, metadata !"y", metadata !35, i32 50331658, metadata !38, i32 0, metadata !48} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 10, i32 62, metadata !34, metadata !48}
!141 = metadata !{i32 786689, metadata !34, metadata !"x", metadata !35, i32 67108874, metadata !38, i32 0, metadata !48} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 10, i32 69, metadata !34, metadata !48}
!143 = metadata !{i32 786689, metadata !110, metadata !"x", metadata !35, i32 33554436, metadata !38, i32 0, metadata !144} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 17, i32 11, metadata !72, metadata !48}
!145 = metadata !{i32 4, i32 34, metadata !110, metadata !144}
!146 = metadata !{i32 786689, metadata !110, metadata !"y", metadata !35, i32 16777220, metadata !38, i32 0, metadata !144} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 4, i32 27, metadata !110, metadata !144}
!148 = metadata !{i32 786688, metadata !49, metadata !"val_out", metadata !35, i32 46, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 48, i32 5, metadata !49, null}
!150 = metadata !{i32 786688, metadata !50, metadata !"x", metadata !35, i32 35, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 35, i32 36, metadata !50, null}
!152 = metadata !{i32 50, i32 1, metadata !53, null}
