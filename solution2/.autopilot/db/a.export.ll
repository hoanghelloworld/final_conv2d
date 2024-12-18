; ModuleID = 'D:/Vivado/final_conv2d/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@for_y_for_x_str = internal unnamed_addr constant [12 x i8] c"for_y_for_x\00"
@do_convolution_str = internal unnamed_addr constant [15 x i8] c"do_convolution\00"
@p_str4 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @do_convolution([25 x i32]* %data_out, [25 x i32]* %data_in, [9 x i32]* %kernel) nounwind uwtable {
  %window_0_0_1 = alloca i32
  %window_0_1_1 = alloca i32
  %window_0_2_1 = alloca i32
  %window_1_0_1 = alloca i32
  %window_1_2_1 = alloca i32
  %window_2_0_1 = alloca i32
  %window_2_1_1 = alloca i32
  %window_2_2_1 = alloca i32
  %kernel_addr = getelementptr [9 x i32]* %kernel, i64 0, i64 0
  %kernel_addr_1 = getelementptr [9 x i32]* %kernel, i64 0, i64 1
  %kernel_addr_2 = getelementptr [9 x i32]* %kernel, i64 0, i64 2
  %kernel_addr_3 = getelementptr [9 x i32]* %kernel, i64 0, i64 3
  %kernel_addr_4 = getelementptr [9 x i32]* %kernel, i64 0, i64 4
  %kernel_addr_5 = getelementptr [9 x i32]* %kernel, i64 0, i64 5
  %kernel_addr_6 = getelementptr [9 x i32]* %kernel, i64 0, i64 6
  %kernel_addr_7 = getelementptr [9 x i32]* %kernel, i64 0, i64 7
  %kernel_addr_8 = getelementptr [9 x i32]* %kernel, i64 0, i64 8
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_out) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap([25 x i32]* %data_in) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %kernel) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution_str) nounwind
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i5 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %y_assign_1 = phi i3 [ 0, %0 ], [ %tmp_mid2, %.reset ]
  %x_assign_1 = phi i3 [ 0, %0 ], [ %x, %.reset ]
  %y_assign = add i3 %y_assign_1, -1
  %tmp_i = icmp ne i3 %y_assign_1, 0
  %y = add i3 %y_assign_1, 1
  %tmp_i4 = icmp ult i3 %y, -3
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -7
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 25, i64 25, i64 25) nounwind
  %indvar_flatten_next = add i5 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  %window_0_0_1_load = load i32* %window_0_0_1
  %window_0_1_1_load = load i32* %window_0_1_1
  %window_0_2_1_load = load i32* %window_0_2_1
  %window_1_0_1_load = load i32* %window_1_0_1
  %window_1_2_1_load = load i32* %window_1_2_1
  %window_2_0_1_load = load i32* %window_2_0_1
  %window_2_1_1_load = load i32* %window_2_1_1
  %window_2_2_1_load = load i32* %window_2_2_1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @for_y_for_x_str)
  %exitcond = icmp eq i3 %x_assign_1, -3
  %x_assign_1_mid2 = select i1 %exitcond, i3 0, i3 %x_assign_1
  %tmp_mid2 = select i1 %exitcond, i3 %y, i3 %y_assign_1
  %tmp_mid2_cast = zext i3 %tmp_mid2 to i6
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_mid2, i2 0)
  %p_shl2_cast = zext i5 %tmp to i6
  %tmp_3 = add i6 %p_shl2_cast, %tmp_mid2_cast
  %tmp_4_mid2_v = select i1 %exitcond, i3 %y_assign_1, i3 %y_assign
  %tmp_4_mid2_cast = sext i3 %tmp_4_mid2_v to i6
  %tmp_4 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_4_mid2_v, i2 0)
  %p_shl1_cast = sext i5 %tmp_4 to i6
  %tmp_5 = add i6 %p_shl1_cast, %tmp_4_mid2_cast
  %tmp_i_mid1 = icmp ne i3 %y, 0
  %tmp_i_mid2 = select i1 %exitcond, i1 %tmp_i_mid1, i1 %tmp_i
  %y_assign_2_mid1 = add i3 %y_assign_1, 2
  %tmp_2_2_mid2 = select i1 %exitcond, i3 %y_assign_2_mid1, i3 %y
  %tmp_2_2_mid2_cast = zext i3 %tmp_2_2_mid2 to i6
  %tmp_1 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %tmp_2_2_mid2, i2 0)
  %p_shl_cast = zext i5 %tmp_1 to i6
  %tmp_8 = add i6 %p_shl_cast, %tmp_2_2_mid2_cast
  %tmp_i4_mid1 = icmp ult i3 %y_assign_2_mid1, -3
  %tmp_i4_mid2 = select i1 %exitcond, i1 %tmp_i4_mid1, i1 %tmp_i4
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str4) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %x_assign = add i3 %x_assign_1_mid2, -1
  %tmp_9_i = icmp ne i3 %x_assign_1_mid2, 0
  %or_cond1_i = and i1 %tmp_i_mid2, %tmp_9_i
  %tmp_6_cast = sext i3 %x_assign to i6
  %tmp_9 = add i6 %tmp_6_cast, %tmp_5
  %tmp_9_cast = sext i6 %tmp_9 to i64
  %data_in_addr = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_9_cast
  %tmp_s = add i6 %tmp_6_cast, %tmp_3
  %tmp_10_cast = zext i6 %tmp_s to i64
  %data_in_addr_3 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_10_cast
  %tmp_6 = add i6 %tmp_6_cast, %tmp_8
  %tmp_11_cast = zext i6 %tmp_6 to i64
  %data_in_addr_6 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_11_cast
  %window_0_0 = load i32* %data_in_addr, align 4
  %window_0_0_1_3 = select i1 %or_cond1_i, i32 %window_0_0, i32 %window_0_0_1_load
  %tmp_6_0_1_cast = zext i3 %x_assign_1_mid2 to i6
  %tmp_7 = add i6 %tmp_6_0_1_cast, %tmp_3
  %tmp_12_cast = zext i6 %tmp_7 to i64
  %data_out_addr = getelementptr [25 x i32]* %data_out, i64 0, i64 %tmp_12_cast
  %tmp_10 = add i6 %tmp_6_0_1_cast, %tmp_5
  %tmp_13_cast = sext i6 %tmp_10 to i64
  %data_in_addr_1 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_13_cast
  %data_in_addr_4 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_12_cast
  %tmp_11 = add i6 %tmp_6_0_1_cast, %tmp_8
  %tmp_14_cast = zext i6 %tmp_11 to i64
  %data_in_addr_7 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_14_cast
  %window_0_1 = load i32* %data_in_addr_1, align 4
  %window_0_1_1_4 = select i1 %tmp_i_mid2, i32 %window_0_1, i32 %window_0_1_1_load
  %x = add i3 %x_assign_1_mid2, 1
  %tmp_1_i4 = icmp ult i3 %x, -3
  %p_i = and i1 %tmp_i_mid2, %tmp_1_i4
  %tmp_6_0_2_cast = zext i3 %x to i6
  %tmp_12 = add i6 %tmp_6_0_2_cast, %tmp_5
  %tmp_15_cast = sext i6 %tmp_12 to i64
  %data_in_addr_2 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_15_cast
  %tmp_13 = add i6 %tmp_6_0_2_cast, %tmp_3
  %tmp_16_cast = zext i6 %tmp_13 to i64
  %data_in_addr_5 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_16_cast
  %tmp_14 = add i6 %tmp_6_0_2_cast, %tmp_8
  %tmp_17_cast = zext i6 %tmp_14 to i64
  %data_in_addr_8 = getelementptr [25 x i32]* %data_in, i64 0, i64 %tmp_17_cast
  %window_0_2 = load i32* %data_in_addr_2, align 4
  %window_0_2_1_5 = select i1 %p_i, i32 %window_0_2, i32 %window_0_2_1_load
  %window_1_0 = load i32* %data_in_addr_3, align 4
  %window_1_0_1_6 = select i1 %tmp_9_i, i32 %window_1_0, i32 %window_1_0_1_load
  %window_1_1 = load i32* %data_in_addr_4, align 4
  %window_1_2 = load i32* %data_in_addr_5, align 4
  %window_1_2_1_7 = select i1 %tmp_1_i4, i32 %window_1_2, i32 %window_1_2_1_load
  %or_cond1_i1 = and i1 %tmp_i4_mid2, %tmp_9_i
  %window_2_0 = load i32* %data_in_addr_6, align 4
  %window_2_0_1_8 = select i1 %or_cond1_i1, i32 %window_2_0, i32 %window_2_0_1_load
  %window_2_1 = load i32* %data_in_addr_7, align 4
  %window_2_1_1_9 = select i1 %tmp_i4_mid2, i32 %window_2_1, i32 %window_2_1_1_load
  %p_i1 = and i1 %tmp_i4_mid2, %tmp_1_i4
  %window_2_2 = load i32* %data_in_addr_8, align 4
  %window_2_2_1_10 = select i1 %p_i1, i32 %window_2_2, i32 %window_2_2_1_load
  %kernel_load = load i32* %kernel_addr, align 4
  %tmp_7_i = mul nsw i32 %window_0_0_1_3, %kernel_load
  %result_2_i = select i1 %or_cond1_i, i32 %tmp_7_i, i32 0
  %kernel_load_1 = load i32* %kernel_addr_1, align 4
  %tmp_7_0_1_i = mul nsw i32 %window_0_1_1_4, %kernel_load_1
  %result_3_0_1_i = add nsw i32 %tmp_7_0_1_i, %result_2_i
  %result_2_0_1_i = select i1 %tmp_i_mid2, i32 %result_3_0_1_i, i32 0
  %kernel_load_2 = load i32* %kernel_addr_2, align 4
  %tmp_7_0_2_i = mul nsw i32 %window_0_2_1_5, %kernel_load_2
  %result_3_0_2_i = add nsw i32 %tmp_7_0_2_i, %result_2_0_1_i
  %result_2_0_2_i = select i1 %p_i, i32 %result_3_0_2_i, i32 %result_2_0_1_i
  %kernel_load_3 = load i32* %kernel_addr_3, align 4
  %tmp_7_1_i = mul nsw i32 %window_1_0_1_6, %kernel_load_3
  %result_3_1_i = add nsw i32 %tmp_7_1_i, %result_2_0_2_i
  %result_2_1_i = select i1 %tmp_9_i, i32 %result_3_1_i, i32 %result_2_0_2_i
  %kernel_load_4 = load i32* %kernel_addr_4, align 4
  %tmp_7_1_1_i = mul nsw i32 %window_1_1, %kernel_load_4
  %result_3_1_1_i = add nsw i32 %tmp_7_1_1_i, %result_2_1_i
  %kernel_load_5 = load i32* %kernel_addr_5, align 4
  %tmp_7_1_2_i = mul nsw i32 %window_1_2_1_7, %kernel_load_5
  %result_3_1_2_i = add nsw i32 %tmp_7_1_2_i, %result_3_1_1_i
  %result_2_1_2_i = select i1 %tmp_1_i4, i32 %result_3_1_2_i, i32 %result_3_1_1_i
  %kernel_load_6 = load i32* %kernel_addr_6, align 4
  %tmp_7_2_i = mul nsw i32 %window_2_0_1_8, %kernel_load_6
  %result_3_2_i = add nsw i32 %tmp_7_2_i, %result_2_1_2_i
  %result_2_2_i = select i1 %or_cond1_i1, i32 %result_3_2_i, i32 %result_2_1_2_i
  %kernel_load_7 = load i32* %kernel_addr_7, align 4
  %tmp_7_2_1_i = mul nsw i32 %window_2_1_1_9, %kernel_load_7
  %result_3_2_1_i = add nsw i32 %tmp_7_2_1_i, %result_2_2_i
  %result_2_2_1_i = select i1 %tmp_i4_mid2, i32 %result_3_2_1_i, i32 %result_2_1_2_i
  %kernel_load_8 = load i32* %kernel_addr_8, align 4
  %tmp_7_2_2_i = mul nsw i32 %window_2_2_1_10, %kernel_load_8
  %result_3_2_2_i = add nsw i32 %tmp_7_2_2_i, %result_2_2_1_i
  %val_out = select i1 %p_i1, i32 %result_3_2_2_i, i32 %result_2_2_1_i
  store i32 %val_out, i32* %data_out_addr, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str4, i32 %tmp_2) nounwind
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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_12 = zext i2 %1 to i5
  %empty_13 = shl i5 %empty, 2
  %empty_14 = or i5 %empty_13, %empty_12
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
