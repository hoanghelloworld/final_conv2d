; ModuleID = 'D:/Vivado/final_conv2d/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@p_str7 = private unnamed_addr constant [6 x i8] c"win_j\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [6 x i8] c"win_i\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str4 = private unnamed_addr constant [7 x i8] c"load_j\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str3 = private unnamed_addr constant [7 x i8] c"load_i\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"for_y\00", align 1 ; [#uses=3 type=[6 x i8]*]

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution([25 x i32]* %data_out, [25 x i32]* %data_in, [9 x i32]* %kernel) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_out) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_in) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %kernel) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  %window = alloca [9 x i32], align 4             ; [#uses=2 type=[9 x i32]*]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %window}, i64 0, metadata !48) nounwind, !dbg !78 ; [debug line = 10:26@46:21] [debug variable = window]
  call void @llvm.dbg.value(metadata !{[25 x i32]* %data_out}, i64 0, metadata !79), !dbg !82 ; [debug line = 24:25] [debug variable = data_out]
  call void @llvm.dbg.value(metadata !{[25 x i32]* %data_in}, i64 0, metadata !83), !dbg !85 ; [debug line = 25:29] [debug variable = data_in]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %kernel}, i64 0, metadata !86), !dbg !87 ; [debug line = 26:23] [debug variable = kernel]
  call void @llvm.dbg.declare(metadata !{[9 x i32]* %window}, metadata !88), !dbg !89 ; [debug line = 28:7] [debug variable = window]
  br label %1, !dbg !90                           ; [debug line = 32:25]

; <label>:1                                       ; preds = %14, %0
  %y_assign_1 = phi i3 [ 0, %0 ], [ %y, %14 ]     ; [#uses=5 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %y_assign_1}, i64 0, metadata !91) nounwind, !dbg !92 ; [debug line = 10:62@46:21] [debug variable = y]
  %y_cast = zext i3 %y_assign_1 to i4, !dbg !90   ; [#uses=2 type=i4] [debug line = 32:25]
  %exitcond3 = icmp eq i3 %y_assign_1, -3, !dbg !90 ; [#uses=1 type=i1] [debug line = 32:25]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %y = add i3 %y_assign_1, 1, !dbg !93            ; [#uses=1 type=i3] [debug line = 32:34]
  br i1 %exitcond3, label %15, label %2, !dbg !90 ; [debug line = 32:25]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind, !dbg !94 ; [debug line = 33:4]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str) nounwind, !dbg !94 ; [#uses=1 type=i32] [debug line = 33:4]
  %tmp_cast = zext i3 %y_assign_1 to i6           ; [#uses=1 type=i6]
  %tmp_4 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %y_assign_1, i2 0) ; [#uses=1 type=i5]
  %p_shl_cast = zext i5 %tmp_4 to i6, !dbg !95    ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp_s = add i6 %tmp_cast, %p_shl_cast, !dbg !95 ; [#uses=1 type=i6] [debug line = 47:7]
  br label %3, !dbg !96                           ; [debug line = 35:27]

; <label>:3                                       ; preds = %sumWindow.exit, %2
  %x_assign_1 = phi i3 [ 0, %2 ], [ %x, %sumWindow.exit ] ; [#uses=4 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %x_assign_1}, i64 0, metadata !97) nounwind, !dbg !98 ; [debug line = 10:69@46:21] [debug variable = x]
  %x_cast = zext i3 %x_assign_1 to i4, !dbg !96   ; [#uses=2 type=i4] [debug line = 35:27]
  %exitcond2 = icmp eq i3 %x_assign_1, -3, !dbg !96 ; [#uses=1 type=i1] [debug line = 35:27]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind ; [#uses=0 type=i32]
  %x = add i3 %x_assign_1, 1, !dbg !99            ; [#uses=1 type=i3] [debug line = 35:36]
  br i1 %exitcond2, label %14, label %4, !dbg !96 ; [debug line = 35:27]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str2) nounwind, !dbg !100 ; [debug line = 36:6]
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str2) nounwind, !dbg !100 ; [#uses=1 type=i32] [debug line = 36:6]
  br label %5, !dbg !101                          ; [debug line = 40:45]

; <label>:5                                       ; preds = %10, %4
  %i = phi i3 [ -1, %4 ], [ %i_1, %10 ]           ; [#uses=3 type=i3]
  %i_cast = sext i3 %i to i4, !dbg !101           ; [#uses=1 type=i4] [debug line = 40:45]
  %exitcond1 = icmp eq i3 %i, 2, !dbg !101        ; [#uses=1 type=i1] [debug line = 40:45]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader.preheader, label %6, !dbg !101 ; [debug line = 40:45]

.preheader.preheader:                             ; preds = %5
  br label %.preheader, !dbg !103                 ; [debug line = 15:40@46:21]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str3) nounwind, !dbg !106 ; [debug line = 41:9]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str3) nounwind, !dbg !106 ; [#uses=1 type=i32] [debug line = 41:9]
  %y_assign = add i4 %i_cast, %y_cast, !dbg !108  ; [#uses=3 type=i4] [debug line = 42:15]
  %tmp_2_cast = sext i4 %y_assign to i6           ; [#uses=1 type=i6]
  %tmp_2 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %y_assign, i2 0) ; [#uses=1 type=i6]
  %tmp_3 = add i6 %tmp_2_cast, %tmp_2, !dbg !111  ; [#uses=1 type=i6] [debug line = 43:13]
  %i_1 = add i3 %i, 1, !dbg !111                  ; [#uses=3 type=i3] [debug line = 43:13]
  %tmp_3_cast = zext i3 %i_1 to i5                ; [#uses=1 type=i5]
  %tmp_6 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_1, i2 0) ; [#uses=1 type=i5]
  %tmp_8 = sub i5 %tmp_6, %tmp_3_cast, !dbg !111  ; [#uses=1 type=i5] [debug line = 43:13]
  %switch8 = icmp ugt i4 %y_assign, 4             ; [#uses=1 type=i1]
  br label %7, !dbg !112                          ; [debug line = 41:47]

; <label>:7                                       ; preds = %._crit_edge, %6
  %j = phi i3 [ -1, %6 ], [ %j_2, %._crit_edge ]  ; [#uses=4 type=i3]
  %j_cast = sext i3 %j to i4, !dbg !112           ; [#uses=1 type=i4] [debug line = 41:47]
  %exitcond = icmp eq i3 %j, 2, !dbg !112         ; [#uses=1 type=i1] [debug line = 41:47]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %10, label %8, !dbg !112 ; [debug line = 41:47]

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str4) nounwind, !dbg !113 ; [debug line = 42:11]
  %x_assign = add i4 %j_cast, %x_cast, !dbg !108  ; [#uses=2 type=i4] [debug line = 42:15]
  call void @llvm.dbg.value(metadata !{i4 %y_assign}, i64 0, metadata !114), !dbg !119 ; [debug line = 4:27@42:15] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i4 %x_assign}, i64 0, metadata !120), !dbg !121 ; [debug line = 4:34@42:15] [debug variable = x]
  %switch = icmp ugt i4 %x_assign, 4, !dbg !108   ; [#uses=1 type=i1] [debug line = 42:15]
  %or_cond = or i1 %switch8, %switch, !dbg !108   ; [#uses=1 type=i1] [debug line = 42:15]
  br i1 %or_cond, label %._crit_edge, label %9

; <label>:9                                       ; preds = %8
  %tmp_6_cast = zext i4 %x_assign to i6, !dbg !111 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_13 = add i6 %tmp_3, %tmp_6_cast, !dbg !111 ; [#uses=1 type=i6] [debug line = 43:13]
  %tmp_18_cast = sext i6 %tmp_13 to i64, !dbg !111 ; [#uses=1 type=i64] [debug line = 43:13]
  %data_in_addr = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_18_cast, !dbg !111 ; [#uses=1 type=i32*] [debug line = 43:13]
  %data_in_load = load i32* %data_in_addr, align 4, !dbg !111 ; [#uses=1 type=i32] [debug line = 43:13]
  %tmp_7 = add i3 %j, 1, !dbg !111                ; [#uses=1 type=i3] [debug line = 43:13]
  %tmp_8_cast = zext i3 %tmp_7 to i5, !dbg !111   ; [#uses=1 type=i5] [debug line = 43:13]
  %tmp_14 = add i5 %tmp_8, %tmp_8_cast, !dbg !111 ; [#uses=1 type=i5] [debug line = 43:13]
  %tmp_19_cast = sext i5 %tmp_14 to i64, !dbg !111 ; [#uses=1 type=i64] [debug line = 43:13]
  %window_addr = getelementptr [9 x i32]* %window, i64 0, i64 %tmp_19_cast, !dbg !111 ; [#uses=1 type=i32*] [debug line = 43:13]
  store i32 %data_in_load, i32* %window_addr, align 4, !dbg !111 ; [debug line = 43:13]
  br label %._crit_edge, !dbg !111                ; [debug line = 43:13]

._crit_edge:                                      ; preds = %9, %8
  %j_2 = add i3 %j, 1, !dbg !122                  ; [#uses=1 type=i3] [debug line = 41:71]
  call void @llvm.dbg.value(metadata !{i3 %j_2}, i64 0, metadata !123), !dbg !122 ; [debug line = 41:71] [debug variable = j]
  br label %7, !dbg !122                          ; [debug line = 41:71]

; <label>:10                                      ; preds = %7
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str3, i32 %tmp_1) nounwind, !dbg !124 ; [#uses=0 type=i32] [debug line = 43:84]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !125), !dbg !126 ; [debug line = 40:69] [debug variable = i]
  br label %5, !dbg !126                          ; [debug line = 40:69]

.preheader:                                       ; preds = %13, %.preheader.preheader
  %val_out = phi i32 [ %result_1_i, %13 ], [ 0, %.preheader.preheader ] ; [#uses=2 type=i32]
  %i_i = phi i3 [ %i_2, %13 ], [ -1, %.preheader.preheader ] ; [#uses=3 type=i3]
  %i_i_cast = sext i3 %i_i to i4, !dbg !103       ; [#uses=1 type=i4] [debug line = 15:40@46:21]
  %exitcond1_i = icmp eq i3 %i_i, 2, !dbg !103    ; [#uses=1 type=i1] [debug line = 15:40@46:21]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1_i, label %sumWindow.exit, label %11, !dbg !103 ; [debug line = 15:40@46:21]

; <label>:11                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str6) nounwind, !dbg !127 ; [debug line = 16:5@46:21]
  %tmp_1_i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str6) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 16:5@46:21]
  %y_assign_2 = add i4 %y_cast, %i_i_cast, !dbg !129 ; [#uses=2 type=i4] [debug line = 17:11@46:21]
  %i_2 = add i3 %i_i, 1, !dbg !132                ; [#uses=3 type=i3] [debug line = 18:9@46:21]
  %tmp_2_i_cast = zext i3 %i_2 to i5              ; [#uses=1 type=i5]
  %tmp_11 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_2, i2 0) ; [#uses=1 type=i5]
  %tmp_12 = sub i5 %tmp_11, %tmp_2_i_cast, !dbg !132 ; [#uses=1 type=i5] [debug line = 18:9@46:21]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %y_assign_2, i32 3), !dbg !133 ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %rev = xor i1 %tmp, true, !dbg !133             ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %tmp_i_i = icmp slt i4 %y_assign_2, 5, !dbg !133 ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %tmp4 = and i1 %tmp_i_i, %rev, !dbg !133        ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  br label %12, !dbg !135                         ; [debug line = 16:42@46:21]

; <label>:12                                      ; preds = %_ifconv.i, %11
  %result_1_i = phi i32 [ %val_out, %11 ], [ %result_1, %_ifconv.i ] ; [#uses=3 type=i32]
  %j_i = phi i3 [ -1, %11 ], [ %j_1, %_ifconv.i ] ; [#uses=3 type=i3]
  %j_i_cast = sext i3 %j_i to i4, !dbg !135       ; [#uses=1 type=i4] [debug line = 16:42@46:21]
  %exitcond_i = icmp eq i3 %j_i, 2, !dbg !135     ; [#uses=1 type=i1] [debug line = 16:42@46:21]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %13, label %_ifconv.i, !dbg !135 ; [debug line = 16:42@46:21]

_ifconv.i:                                        ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str7) nounwind, !dbg !136 ; [debug line = 17:7@46:21]
  %x_assign_2 = add i4 %x_cast, %j_i_cast, !dbg !129 ; [#uses=2 type=i4] [debug line = 17:11@46:21]
  call void @llvm.dbg.value(metadata !{i4 %y_assign_2}, i64 0, metadata !137) nounwind, !dbg !138 ; [debug line = 4:27@17:11@46:21] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i4 %x_assign_2}, i64 0, metadata !139) nounwind, !dbg !140 ; [debug line = 4:34@17:11@46:21] [debug variable = x]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %x_assign_2, i32 3), !dbg !133 ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %rev7 = xor i1 %tmp_15, true, !dbg !133         ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %tmp_1_i_i = icmp slt i4 %x_assign_2, 5, !dbg !133 ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %tmp5 = and i1 %tmp_1_i_i, %rev7, !dbg !133     ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %p_i_i = and i1 %tmp5, %tmp4, !dbg !133         ; [#uses=1 type=i1] [debug line = 6:3@17:11@46:21]
  %j_1 = add i3 %j_i, 1, !dbg !132                ; [#uses=2 type=i3] [debug line = 18:9@46:21]
  %tmp_6_i_cast = zext i3 %j_1 to i5, !dbg !132   ; [#uses=1 type=i5] [debug line = 18:9@46:21]
  %tmp_16 = add i5 %tmp_12, %tmp_6_i_cast, !dbg !132 ; [#uses=1 type=i5] [debug line = 18:9@46:21]
  %tmp_20_cast = sext i5 %tmp_16 to i64, !dbg !132 ; [#uses=2 type=i64] [debug line = 18:9@46:21]
  %kernel_addr = getelementptr [9 x i32]* %kernel, i64 0, i64 %tmp_20_cast, !dbg !132 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %window_addr_1 = getelementptr [9 x i32]* %window, i64 0, i64 %tmp_20_cast, !dbg !132 ; [#uses=1 type=i32*] [debug line = 18:9@46:21]
  %window_load = load i32* %window_addr_1, align 4, !dbg !132 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %kernel_load = load i32* %kernel_addr, align 4, !dbg !132 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %tmp_7_i = mul nsw i32 %kernel_load, %window_load, !dbg !132 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  %result = add nsw i32 %tmp_7_i, %result_1_i, !dbg !132 ; [#uses=1 type=i32] [debug line = 18:9@46:21]
  call void @llvm.dbg.value(metadata !{i32 %result}, i64 0, metadata !141) nounwind, !dbg !132 ; [debug line = 18:9@46:21] [debug variable = result]
  %result_1 = select i1 %p_i_i, i32 %result, i32 %result_1_i ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %result_1}, i64 0, metadata !141) nounwind, !dbg !132 ; [debug line = 18:9@46:21] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i3 %j_1}, i64 0, metadata !142) nounwind, !dbg !143 ; [debug line = 16:66@46:21] [debug variable = j]
  br label %12, !dbg !143                         ; [debug line = 16:66@46:21]

; <label>:13                                      ; preds = %12
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str6, i32 %tmp_1_i1) nounwind, !dbg !144 ; [#uses=0 type=i32] [debug line = 18:117@46:21]
  call void @llvm.dbg.value(metadata !{i3 %i_2}, i64 0, metadata !145) nounwind, !dbg !146 ; [debug line = 15:64@46:21] [debug variable = i]
  br label %.preheader, !dbg !146                 ; [debug line = 15:64@46:21]

sumWindow.exit:                                   ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !147), !dbg !62 ; [debug line = 46:21] [debug variable = val_out]
  %tmp_cast_10 = zext i3 %x_assign_1 to i6, !dbg !95 ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp_10 = add i6 %tmp_s, %tmp_cast_10, !dbg !95 ; [#uses=1 type=i6] [debug line = 47:7]
  %tmp_15_cast = zext i6 %tmp_10 to i64, !dbg !95 ; [#uses=1 type=i64] [debug line = 47:7]
  %data_out_addr = getelementptr [25 x i32]* %data_out, i64 0, i64 %tmp_15_cast, !dbg !95 ; [#uses=1 type=i32*] [debug line = 47:7]
  store i32 %val_out, i32* %data_out_addr, align 4, !dbg !95 ; [debug line = 47:7]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str2, i32 %tmp_5) nounwind, !dbg !148 ; [#uses=0 type=i32] [debug line = 48:5]
  call void @llvm.dbg.value(metadata !{i3 %x}, i64 0, metadata !149), !dbg !99 ; [debug line = 35:36] [debug variable = x]
  br label %3, !dbg !99                           ; [debug line = 35:36]

; <label>:14                                      ; preds = %3
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str, i32 %tmp_9) nounwind, !dbg !150 ; [#uses=0 type=i32] [debug line = 49:3]
  call void @llvm.dbg.value(metadata !{i3 %y}, i64 0, metadata !151), !dbg !93 ; [debug line = 32:34] [debug variable = y]
  br label %1, !dbg !93                           ; [debug line = 32:34]

; <label>:15                                      ; preds = %1
  ret void, !dbg !152                             ; [debug line = 50:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4                     ; [#uses=1 type=i4]
  %empty_13 = shl i4 1, %empty                    ; [#uses=1 type=i4]
  %empty_14 = and i4 %0, %empty_13                ; [#uses=1 type=i4]
  %empty_15 = icmp ne i4 %empty_14, 0             ; [#uses=1 type=i1]
  ret i1 %empty_15
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6                       ; [#uses=1 type=i6]
  %empty_16 = zext i2 %1 to i6                    ; [#uses=1 type=i6]
  %empty_17 = shl i6 %empty, 2                    ; [#uses=1 type=i6]
  %empty_18 = or i6 %empty_17, %empty_16          ; [#uses=1 type=i6]
  ret i6 %empty_18
}

; [#uses=3]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_19 = zext i2 %1 to i5                    ; [#uses=1 type=i5]
  %empty_20 = shl i5 %empty, 2                    ; [#uses=1 type=i5]
  %empty_21 = or i5 %empty_20, %empty_19          ; [#uses=1 type=i5]
  ret i5 %empty_21
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
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"data_out", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 0, i32 4, i32 1}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"data_in", metadata !36, metadata !"int", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"kernel", metadata !46, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 0, i32 2, i32 1}
!48 = metadata !{i32 786689, metadata !49, metadata !"window", null, i32 10, metadata !60, i32 0, metadata !62} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786478, i32 0, metadata !50, metadata !"sumWindow", metadata !"sumWindow", metadata !"_Z9sumWindowPA3_iS0_ii", metadata !50, i32 10, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !58, i32 11} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786473, metadata !"final_conv2d/conv_v1/conv_v1.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{metadata !53, metadata !54, metadata !54, metadata !53, metadata !53}
!53 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ]
!55 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !53, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!60 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !53, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ]
!61 = metadata !{metadata !57, metadata !57}
!62 = metadata !{i32 46, i32 21, metadata !63, null}
!63 = metadata !{i32 786443, metadata !64, i32 36, i32 5, metadata !50, i32 4} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !65, i32 35, i32 13, metadata !50, i32 3} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !66, i32 33, i32 3, metadata !50, i32 2} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !67, i32 32, i32 11, metadata !50, i32 1} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !68, i32 27, i32 1, metadata !50, i32 0} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786478, i32 0, metadata !50, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionPA5_iPA5_KiPA3_i", metadata !50, i32 24, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !58, i32 27} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{null, metadata !71, metadata !75, metadata !54}
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !53, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !77, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ]
!78 = metadata !{i32 10, i32 26, metadata !49, metadata !62}
!79 = metadata !{i32 786689, metadata !68, metadata !"data_out", null, i32 24, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 32, i32 0, i32 0, metadata !53, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!81 = metadata !{metadata !74, metadata !74}
!82 = metadata !{i32 24, i32 25, metadata !68, null}
!83 = metadata !{i32 786689, metadata !68, metadata !"data_in", null, i32 25, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 800, i64 32, i32 0, i32 0, metadata !77, metadata !81, i32 0, i32 0} ; [ DW_TAG_array_type ]
!85 = metadata !{i32 25, i32 29, metadata !68, null}
!86 = metadata !{i32 786689, metadata !68, metadata !"kernel", null, i32 26, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 26, i32 23, metadata !68, null}
!88 = metadata !{i32 786688, metadata !67, metadata !"window", metadata !50, i32 28, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 28, i32 7, metadata !67, null}
!90 = metadata !{i32 32, i32 25, metadata !66, null}
!91 = metadata !{i32 786689, metadata !49, metadata !"y", metadata !50, i32 50331658, metadata !53, i32 0, metadata !62} ; [ DW_TAG_arg_variable ]
!92 = metadata !{i32 10, i32 62, metadata !49, metadata !62}
!93 = metadata !{i32 32, i32 34, metadata !66, null}
!94 = metadata !{i32 33, i32 4, metadata !65, null}
!95 = metadata !{i32 47, i32 7, metadata !63, null}
!96 = metadata !{i32 35, i32 27, metadata !64, null}
!97 = metadata !{i32 786689, metadata !49, metadata !"x", metadata !50, i32 67108874, metadata !53, i32 0, metadata !62} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 10, i32 69, metadata !49, metadata !62}
!99 = metadata !{i32 35, i32 36, metadata !64, null}
!100 = metadata !{i32 36, i32 6, metadata !63, null}
!101 = metadata !{i32 40, i32 45, metadata !102, null}
!102 = metadata !{i32 786443, metadata !63, i32 40, i32 16, metadata !50, i32 5} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 15, i32 40, metadata !104, metadata !62}
!104 = metadata !{i32 786443, metadata !105, i32 15, i32 11, metadata !50, i32 14} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !49, i32 11, i32 1, metadata !50, i32 13} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 41, i32 9, metadata !107, null}
!107 = metadata !{i32 786443, metadata !102, i32 41, i32 9, metadata !50, i32 6} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 42, i32 15, metadata !109, null}
!109 = metadata !{i32 786443, metadata !110, i32 42, i32 11, metadata !50, i32 8} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786443, metadata !107, i32 41, i32 18, metadata !50, i32 7} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 43, i32 13, metadata !109, null}
!112 = metadata !{i32 41, i32 47, metadata !110, null}
!113 = metadata !{i32 42, i32 11, metadata !109, null}
!114 = metadata !{i32 786689, metadata !115, metadata !"y", metadata !50, i32 16777220, metadata !53, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 786478, i32 0, metadata !50, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !50, i32 4, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !58, i32 5} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !118, metadata !53, metadata !53}
!118 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!119 = metadata !{i32 4, i32 27, metadata !115, metadata !108}
!120 = metadata !{i32 786689, metadata !115, metadata !"x", metadata !50, i32 33554436, metadata !53, i32 0, metadata !108} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 4, i32 34, metadata !115, metadata !108}
!122 = metadata !{i32 41, i32 71, metadata !110, null}
!123 = metadata !{i32 786688, metadata !110, metadata !"j", metadata !50, i32 41, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 43, i32 84, metadata !110, null}
!125 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !50, i32 40, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 40, i32 69, metadata !102, null}
!127 = metadata !{i32 16, i32 5, metadata !128, metadata !62}
!128 = metadata !{i32 786443, metadata !104, i32 16, i32 5, metadata !50, i32 15} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 17, i32 11, metadata !130, metadata !62}
!130 = metadata !{i32 786443, metadata !131, i32 17, i32 7, metadata !50, i32 17} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 786443, metadata !128, i32 16, i32 13, metadata !50, i32 16} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 18, i32 9, metadata !130, metadata !62}
!133 = metadata !{i32 6, i32 3, metadata !134, metadata !129}
!134 = metadata !{i32 786443, metadata !115, i32 5, i32 1, metadata !50, i32 18} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 16, i32 42, metadata !131, metadata !62}
!136 = metadata !{i32 17, i32 7, metadata !130, metadata !62}
!137 = metadata !{i32 786689, metadata !115, metadata !"y", metadata !50, i32 16777220, metadata !53, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 4, i32 27, metadata !115, metadata !129}
!139 = metadata !{i32 786689, metadata !115, metadata !"x", metadata !50, i32 33554436, metadata !53, i32 0, metadata !129} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 4, i32 34, metadata !115, metadata !129}
!141 = metadata !{i32 786688, metadata !105, metadata !"result", metadata !50, i32 12, metadata !53, i32 0, metadata !62} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 786688, metadata !131, metadata !"j", metadata !50, i32 16, metadata !53, i32 0, metadata !62} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 16, i32 66, metadata !131, metadata !62}
!144 = metadata !{i32 18, i32 117, metadata !131, metadata !62}
!145 = metadata !{i32 786688, metadata !104, metadata !"i", metadata !50, i32 15, metadata !53, i32 0, metadata !62} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 15, i32 64, metadata !104, metadata !62}
!147 = metadata !{i32 786688, metadata !63, metadata !"val_out", metadata !50, i32 46, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 48, i32 5, metadata !63, null}
!149 = metadata !{i32 786688, metadata !64, metadata !"x", metadata !50, i32 35, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!150 = metadata !{i32 49, i32 3, metadata !65, null}
!151 = metadata !{i32 786688, metadata !66, metadata !"y", metadata !50, i32 32, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 50, i32 1, metadata !67, null}
