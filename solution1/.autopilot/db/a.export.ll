; ModuleID = 'D:/Vivado/final_conv2d/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00"
@p_str7 = private unnamed_addr constant [6 x i8] c"win_j\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"win_i\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"load_j\00", align 1
@p_str3 = private unnamed_addr constant [7 x i8] c"load_i\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1
@p_str = private unnamed_addr constant [6 x i8] c"for_y\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @do_convolution([25 x i32]* %data_out, [25 x i32]* %data_in, [9 x i32]* %kernel) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_out) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_in) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %kernel) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  %window = alloca [9 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %14, %0
  %y_assign_1 = phi i3 [ 0, %0 ], [ %y, %14 ]
  %y_cast = zext i3 %y_assign_1 to i4
  %exitcond3 = icmp eq i3 %y_assign_1, -3
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %y = add i3 %y_assign_1, 1
  br i1 %exitcond3, label %15, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str) nounwind
  %tmp_cast = zext i3 %y_assign_1 to i6
  %tmp_4 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %y_assign_1, i2 0)
  %p_shl_cast = zext i5 %tmp_4 to i6
  %tmp_s = add i6 %tmp_cast, %p_shl_cast
  br label %3

; <label>:3                                       ; preds = %sumWindow.exit, %2
  %x_assign_1 = phi i3 [ 0, %2 ], [ %x, %sumWindow.exit ]
  %x_cast = zext i3 %x_assign_1 to i4
  %exitcond2 = icmp eq i3 %x_assign_1, -3
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %x = add i3 %x_assign_1, 1
  br i1 %exitcond2, label %14, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str2) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str2) nounwind
  br label %5

; <label>:5                                       ; preds = %10, %4
  %i = phi i3 [ -1, %4 ], [ %i_1, %10 ]
  %i_cast = sext i3 %i to i4
  %exitcond1 = icmp eq i3 %i, 2
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  br i1 %exitcond1, label %.preheader.preheader, label %6

.preheader.preheader:                             ; preds = %5
  br label %.preheader

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str3) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str3) nounwind
  %y_assign = add i4 %i_cast, %y_cast
  %tmp_2_cast = sext i4 %y_assign to i6
  %tmp_2 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %y_assign, i2 0)
  %tmp_3 = add i6 %tmp_2_cast, %tmp_2
  %i_1 = add i3 %i, 1
  %tmp_3_cast = zext i3 %i_1 to i5
  %tmp_6 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_1, i2 0)
  %tmp_8 = sub i5 %tmp_6, %tmp_3_cast
  %switch8 = icmp ugt i4 %y_assign, 4
  br label %7

; <label>:7                                       ; preds = %._crit_edge, %6
  %j = phi i3 [ -1, %6 ], [ %j_2, %._crit_edge ]
  %j_cast = sext i3 %j to i4
  %exitcond = icmp eq i3 %j, 2
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  br i1 %exitcond, label %10, label %8

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str4) nounwind
  %x_assign = add i4 %j_cast, %x_cast
  %switch = icmp ugt i4 %x_assign, 4
  %or_cond = or i1 %switch8, %switch
  br i1 %or_cond, label %._crit_edge, label %9

; <label>:9                                       ; preds = %8
  %tmp_6_cast = zext i4 %x_assign to i6
  %tmp_13 = add i6 %tmp_3, %tmp_6_cast
  %tmp_18_cast = sext i6 %tmp_13 to i64
  %data_in_addr = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_18_cast
  %data_in_load = load i32* %data_in_addr, align 4
  %tmp_7 = add i3 %j, 1
  %tmp_8_cast = zext i3 %tmp_7 to i5
  %tmp_14 = add i5 %tmp_8, %tmp_8_cast
  %tmp_19_cast = sext i5 %tmp_14 to i64
  %window_addr = getelementptr [9 x i32]* %window, i64 0, i64 %tmp_19_cast
  store i32 %data_in_load, i32* %window_addr, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %8
  %j_2 = add i3 %j, 1
  br label %7

; <label>:10                                      ; preds = %7
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str3, i32 %tmp_1) nounwind
  br label %5

.preheader:                                       ; preds = %.preheader.preheader, %13
  %val_out = phi i32 [ %result_1_i, %13 ], [ 0, %.preheader.preheader ]
  %i_i = phi i3 [ %i_2, %13 ], [ -1, %.preheader.preheader ]
  %i_i_cast = sext i3 %i_i to i4
  %exitcond1_i = icmp eq i3 %i_i, 2
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  br i1 %exitcond1_i, label %sumWindow.exit, label %11

; <label>:11                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str6) nounwind
  %tmp_1_i1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str6) nounwind
  %y_assign_2 = add i4 %y_cast, %i_i_cast
  %i_2 = add i3 %i_i, 1
  %tmp_2_i_cast = zext i3 %i_2 to i5
  %tmp_11 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i_2, i2 0)
  %tmp_12 = sub i5 %tmp_11, %tmp_2_i_cast
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %y_assign_2, i32 3)
  %rev = xor i1 %tmp, true
  %tmp_i_i = icmp slt i4 %y_assign_2, 5
  %tmp4 = and i1 %tmp_i_i, %rev
  br label %12

; <label>:12                                      ; preds = %_ifconv.i, %11
  %result_1_i = phi i32 [ %val_out, %11 ], [ %result_1, %_ifconv.i ]
  %j_i = phi i3 [ -1, %11 ], [ %j_1, %_ifconv.i ]
  %j_i_cast = sext i3 %j_i to i4
  %exitcond_i = icmp eq i3 %j_i, 2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  br i1 %exitcond_i, label %13, label %_ifconv.i

_ifconv.i:                                        ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str7) nounwind
  %x_assign_2 = add i4 %x_cast, %j_i_cast
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %x_assign_2, i32 3)
  %rev7 = xor i1 %tmp_15, true
  %tmp_1_i_i = icmp slt i4 %x_assign_2, 5
  %tmp5 = and i1 %tmp_1_i_i, %rev7
  %p_i_i = and i1 %tmp5, %tmp4
  %j_1 = add i3 %j_i, 1
  %tmp_6_i_cast = zext i3 %j_1 to i5
  %tmp_16 = add i5 %tmp_12, %tmp_6_i_cast
  %tmp_20_cast = sext i5 %tmp_16 to i64
  %kernel_addr = getelementptr [9 x i32]* %kernel, i64 0, i64 %tmp_20_cast
  %window_addr_1 = getelementptr [9 x i32]* %window, i64 0, i64 %tmp_20_cast
  %window_load = load i32* %window_addr_1, align 4
  %kernel_load = load i32* %kernel_addr, align 4
  %tmp_7_i = mul nsw i32 %kernel_load, %window_load
  %result = add nsw i32 %tmp_7_i, %result_1_i
  %result_1 = select i1 %p_i_i, i32 %result, i32 %result_1_i
  br label %12

; <label>:13                                      ; preds = %12
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str6, i32 %tmp_1_i1) nounwind
  br label %.preheader

sumWindow.exit:                                   ; preds = %.preheader
  %tmp_cast_10 = zext i3 %x_assign_1 to i6
  %tmp_10 = add i6 %tmp_s, %tmp_cast_10
  %tmp_15_cast = zext i6 %tmp_10 to i64
  %data_out_addr = getelementptr [25 x i32]* %data_out, i64 0, i64 %tmp_15_cast
  store i32 %val_out, i32* %data_out_addr, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str2, i32 %tmp_5) nounwind
  br label %3

; <label>:14                                      ; preds = %3
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str, i32 %tmp_9) nounwind
  br label %1

; <label>:15                                      ; preds = %1
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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_13 = shl i4 1, %empty
  %empty_14 = and i4 %0, %empty_13
  %empty_15 = icmp ne i4 %empty_14, 0
  ret i1 %empty_15
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_16 = zext i2 %1 to i6
  %empty_17 = shl i6 %empty, 2
  %empty_18 = or i6 %empty_17, %empty_16
  ret i6 %empty_18
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_19 = zext i2 %1 to i5
  %empty_20 = shl i5 %empty, 2
  %empty_21 = or i5 %empty_20, %empty_19
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
