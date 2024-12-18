; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%"class.hls::stream.0" = type { i32 }

@kernel = constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 -1], [3 x i32] [i32 2, i32 3, i32 -2], [3 x i32] [i32 1, i32 4, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@do_convolution.str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@.str9 = private unnamed_addr constant [6 x i8] c"win_i\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"for_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"win_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [6 x i8] c"win_j\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
define internal fastcc i32 @sum_window([3 x i32]* %window, i32 %y, i32 %x) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %window}, i64 0, metadata !113), !dbg !114 ; [debug line = 18:27] [debug variable = window]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !115), !dbg !116 ; [debug line = 18:45] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !117), !dbg !118 ; [debug line = 18:52] [debug variable = x]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %window, i32 3) nounwind, !dbg !119 ; [debug line = 19:2]
  br label %1, !dbg !121                          ; [debug line = 22:42]

; <label>:1                                       ; preds = %6, %0
  %result = phi i32 [ 0, %0 ], [ %result.1.lcssa, %6 ] ; [#uses=2 type=i32]
  %i = phi i32 [ -1, %0 ], [ %i.1, %6 ]           ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 2, !dbg !121       ; [#uses=1 type=i1] [debug line = 22:42]
  br i1 %exitcond1, label %7, label %2, !dbg !121 ; [debug line = 22:42]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !123 ; [debug line = 23:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 23:6]
  %tmp = add nsw i32 %i, %y, !dbg !125            ; [#uses=1 type=i32] [debug line = 26:17]
  %i.1 = add nsw i32 %i, 1, !dbg !128             ; [#uses=2 type=i32] [debug line = 28:17]
  %tmp.2 = sext i32 %i.1 to i64, !dbg !128        ; [#uses=2 type=i64] [debug line = 28:17]
  br label %3, !dbg !130                          ; [debug line = 24:46]

; <label>:3                                       ; preds = %._crit_edge, %2
  %result.1 = phi i32 [ %result, %2 ], [ %result.2, %._crit_edge ] ; [#uses=3 type=i32]
  %j = phi i32 [ -1, %2 ], [ %j.1, %._crit_edge ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j, 2, !dbg !130        ; [#uses=1 type=i1] [debug line = 24:46]
  br i1 %exitcond, label %6, label %4, !dbg !130  ; [debug line = 24:46]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !131 ; [debug line = 25:10]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 25:10]
  %tmp.3 = add nsw i32 %j, %x, !dbg !125          ; [#uses=1 type=i32] [debug line = 26:17]
  %tmp.4 = call fastcc zeroext i1 @bounds_ok(i32 %tmp, i32 %tmp.3), !dbg !125 ; [#uses=1 type=i1] [debug line = 26:17]
  br i1 %tmp.4, label %5, label %._crit_edge, !dbg !125 ; [debug line = 26:17]

; <label>:5                                       ; preds = %4
  %tmp.5 = add nsw i32 %j, 1, !dbg !128           ; [#uses=1 type=i32] [debug line = 28:17]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !128      ; [#uses=2 type=i64] [debug line = 28:17]
  %window.addr = getelementptr inbounds [3 x i32]* %window, i64 %tmp.2, i64 %tmp.6, !dbg !128 ; [#uses=1 type=i32*] [debug line = 28:17]
  %window.load = load i32* %window.addr, align 4, !dbg !128 ; [#uses=2 type=i32] [debug line = 28:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %window.load) nounwind
  %kernel.addr = getelementptr inbounds [3 x [3 x i32]]* @kernel, i64 0, i64 %tmp.2, i64 %tmp.6, !dbg !128 ; [#uses=1 type=i32*] [debug line = 28:17]
  %kernel.load = load i32* %kernel.addr, align 4, !dbg !128 ; [#uses=2 type=i32] [debug line = 28:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %kernel.load) nounwind
  %tmp.7 = mul nsw i32 %kernel.load, %window.load, !dbg !128 ; [#uses=1 type=i32] [debug line = 28:17]
  %result.3 = add nsw i32 %tmp.7, %result.1, !dbg !128 ; [#uses=1 type=i32] [debug line = 28:17]
  call void @llvm.dbg.value(metadata !{i32 %result.3}, i64 0, metadata !132), !dbg !128 ; [debug line = 28:17] [debug variable = result]
  br label %._crit_edge, !dbg !133                ; [debug line = 29:13]

._crit_edge:                                      ; preds = %5, %4
  %result.2 = phi i32 [ %result.3, %5 ], [ %result.1, %4 ] ; [#uses=1 type=i32]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !134 ; [#uses=0 type=i32] [debug line = 30:9]
  %j.1 = add nsw i32 %j, 1, !dbg !135             ; [#uses=1 type=i32] [debug line = 24:70]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !136), !dbg !135 ; [debug line = 24:70] [debug variable = j]
  br label %3, !dbg !135                          ; [debug line = 24:70]

; <label>:6                                       ; preds = %3
  %result.1.lcssa = phi i32 [ %result.1, %3 ]     ; [#uses=1 type=i32]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !137 ; [#uses=0 type=i32] [debug line = 31:5]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !138), !dbg !139 ; [debug line = 22:66] [debug variable = i]
  br label %1, !dbg !139                          ; [debug line = 22:66]

; <label>:7                                       ; preds = %1
  %result.0.lcssa = phi i32 [ %result, %1 ]       ; [#uses=1 type=i32]
  ret i32 %result.0.lcssa, !dbg !140              ; [debug line = 33:5]
}

; [#uses=72]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution(%"class.hls::stream.0"* %out_stream, %"class.hls::stream.0"* %in_stream) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution.str) nounwind
  %tmp.34 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.26 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.17 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %line_buf = alloca [2 x [5 x i32]], align 16    ; [#uses=8 type=[2 x [5 x i32]]*]
  %window = alloca [3 x [3 x i32]], align 16      ; [#uses=5 type=[3 x [3 x i32]]*]
  %right = alloca [3 x i32], align 4              ; [#uses=4 type=[3 x i32]*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !141), !dbg !142 ; [debug line = 37:39] [debug variable = out_stream]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !143), !dbg !144 ; [debug line = 37:69] [debug variable = in_stream]
  call void @llvm.dbg.declare(metadata !{[2 x [5 x i32]]* %line_buf}, metadata !145), !dbg !151 ; [debug line = 39:7] [debug variable = line_buf]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %window}, metadata !152), !dbg !153 ; [debug line = 40:7] [debug variable = window]
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %right}, metadata !154), !dbg !155 ; [debug line = 41:7] [debug variable = right]
  %line_buf.addr = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 0, !dbg !156 ; [#uses=1 type=[5 x i32]*] [debug line = 42:1]
  call void (...)* @_ssdm_SpecArrayPartition([5 x i32]* %line_buf.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !156 ; [debug line = 42:1]
  %window.addr = getelementptr inbounds [3 x [3 x i32]]* %window, i64 0, i64 0, !dbg !157 ; [#uses=2 type=[3 x i32]*] [debug line = 43:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i32]* %window.addr, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !157 ; [debug line = 43:1]
  %right.addr = getelementptr inbounds [3 x i32]* %right, i64 0, i64 0, !dbg !158 ; [#uses=2 type=i32*] [debug line = 44:1]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %right.addr, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !158 ; [debug line = 44:1]
  %in_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %in_stream, i64 0, i32 0, !dbg !159 ; [#uses=3 type=i32*] [debug line = 131:9@50:37]
  br label %1, !dbg !164                          ; [debug line = 48:48]

; <label>:1                                       ; preds = %2, %0
  %x = phi i32 [ 3, %0 ], [ %x.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %x, 5, !dbg !164       ; [#uses=1 type=i1] [debug line = 48:48]
  br i1 %exitcond1, label %.preheader21.preheader, label %2, !dbg !164 ; [debug line = 48:48]

.preheader21.preheader:                           ; preds = %1
  br label %.preheader21, !dbg !165               ; [debug line = 51:39]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !167 ; [debug line = 50:3]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !167 ; [#uses=1 type=i32] [debug line = 50:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !168 ; [debug line = 49:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !169), !dbg !171 ; [debug line = 129:56@50:37] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !172) nounwind, !dbg !173 ; [debug line = 130:22@50:37] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.addr, i32* %tmp) nounwind, !dbg !159 ; [debug line = 131:9@50:37]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !172), !dbg !174 ; [debug line = 132:9@50:37] [debug variable = tmp]
  %3 = load i32* %tmp, align 4, !dbg !174         ; [#uses=1 type=i32] [debug line = 132:9@50:37]
  %tmp.10 = sext i32 %x to i64, !dbg !161         ; [#uses=1 type=i64] [debug line = 50:37]
  %line_buf.addr.1 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 0, i64 %tmp.10, !dbg !161 ; [#uses=1 type=i32*] [debug line = 50:37]
  store i32 %3, i32* %line_buf.addr.1, align 4, !dbg !161 ; [debug line = 50:37]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !175 ; [#uses=0 type=i32] [debug line = 50:52]
  %x.1 = add nsw i32 %x, 1, !dbg !176             ; [#uses=1 type=i32] [debug line = 48:57]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !177), !dbg !176 ; [debug line = 48:57] [debug variable = x]
  br label %1, !dbg !176                          ; [debug line = 48:57]

.preheader21:                                     ; preds = %7, %.preheader21.preheader
  %y = phi i32 [ %y.1, %7 ], [ 1, %.preheader21.preheader ] ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %y, 2, !dbg !165       ; [#uses=1 type=i1] [debug line = 51:39]
  br i1 %exitcond2, label %.preheader20.preheader, label %4, !dbg !165 ; [debug line = 51:39]

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20, !dbg !178               ; [debug line = 57:39]

; <label>:4                                       ; preds = %.preheader21
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !180 ; [debug line = 52:5]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !180 ; [#uses=1 type=i32] [debug line = 52:5]
  %tmp.12 = sext i32 %y to i64, !dbg !182         ; [#uses=1 type=i64] [debug line = 54:19]
  br label %5, !dbg !185                          ; [debug line = 52:28]

; <label>:5                                       ; preds = %6, %4
  %x1 = phi i32 [ 0, %4 ], [ %x.2, %6 ]           ; [#uses=3 type=i32]
  %exitcond4 = icmp eq i32 %x1, 5, !dbg !185      ; [#uses=1 type=i1] [debug line = 52:28]
  br i1 %exitcond4, label %7, label %6, !dbg !185 ; [debug line = 52:28]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !186 ; [debug line = 54:3]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !186 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 53:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !169), !dbg !188 ; [debug line = 129:56@54:19] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.17}, metadata !172) nounwind, !dbg !189 ; [debug line = 130:22@54:19] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.addr, i32* %tmp.17) nounwind, !dbg !190 ; [debug line = 131:9@54:19]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !172), !dbg !191 ; [debug line = 132:9@54:19] [debug variable = tmp]
  %tmp.17.load = load i32* %tmp.17, align 4, !dbg !191 ; [#uses=1 type=i32] [debug line = 132:9@54:19]
  %tmp.18 = sext i32 %x1 to i64, !dbg !182        ; [#uses=1 type=i64] [debug line = 54:19]
  %line_buf.addr.2 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 %tmp.12, i64 %tmp.18, !dbg !182 ; [#uses=1 type=i32*] [debug line = 54:19]
  store i32 %tmp.17.load, i32* %line_buf.addr.2, align 4, !dbg !182 ; [debug line = 54:19]
  %rend23 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !192 ; [#uses=0 type=i32] [debug line = 54:34]
  %x.2 = add nsw i32 %x1, 1, !dbg !193            ; [#uses=1 type=i32] [debug line = 52:37]
  call void @llvm.dbg.value(metadata !{i32 %x.2}, i64 0, metadata !194), !dbg !193 ; [debug line = 52:37] [debug variable = x]
  br label %5, !dbg !193                          ; [debug line = 52:37]

; <label>:7                                       ; preds = %5
  %rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !195 ; [#uses=0 type=i32] [debug line = 54:34]
  %y.1 = add nsw i32 %y, 1, !dbg !196             ; [#uses=1 type=i32] [debug line = 51:52]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !197), !dbg !196 ; [debug line = 51:52] [debug variable = y]
  br label %.preheader21, !dbg !196               ; [debug line = 51:52]

.preheader20:                                     ; preds = %11, %.preheader20.preheader
  %y2 = phi i32 [ %y.2, %11 ], [ 1, %.preheader20.preheader ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %y2, 3, !dbg !178      ; [#uses=1 type=i1] [debug line = 57:39]
  br i1 %exitcond3, label %.preheader19.preheader, label %8, !dbg !178 ; [debug line = 57:39]

.preheader19.preheader:                           ; preds = %.preheader20
  %out_stream.addr = getelementptr inbounds %"class.hls::stream.0"* %out_stream, i64 0, i32 0, !dbg !198 ; [#uses=1 type=i32*] [debug line = 146:9@71:7]
  %right.addr.1 = getelementptr inbounds [3 x i32]* %right, i64 0, i64 2, !dbg !205 ; [#uses=1 type=i32*] [debug line = 85:7]
  br label %.preheader19, !dbg !206               ; [debug line = 63:25]

; <label>:8                                       ; preds = %.preheader20
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !207 ; [debug line = 58:5]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !207 ; [#uses=1 type=i32] [debug line = 58:5]
  %tmp.13 = add nsw i32 %y2, -1, !dbg !209        ; [#uses=1 type=i32] [debug line = 60:2]
  %tmp.14 = sext i32 %tmp.13 to i64, !dbg !209    ; [#uses=1 type=i64] [debug line = 60:2]
  %tmp.15 = sext i32 %y2 to i64, !dbg !209        ; [#uses=1 type=i64] [debug line = 60:2]
  br label %9, !dbg !212                          ; [debug line = 58:41]

; <label>:9                                       ; preds = %10, %8
  %x3 = phi i32 [ 1, %8 ], [ %x.3, %10 ]          ; [#uses=4 type=i32]
  %exitcond6 = icmp eq i32 %x3, 3, !dbg !212      ; [#uses=1 type=i1] [debug line = 58:41]
  br i1 %exitcond6, label %11, label %10, !dbg !212 ; [debug line = 58:41]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !213 ; [debug line = 60:3]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !213 ; [#uses=1 type=i32] [debug line = 60:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !214 ; [debug line = 59:1]
  %tmp.21 = add nsw i32 %x3, 2, !dbg !209         ; [#uses=1 type=i32] [debug line = 60:2]
  %tmp.22 = sext i32 %tmp.21 to i64, !dbg !209    ; [#uses=1 type=i64] [debug line = 60:2]
  %line_buf.addr.3 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 %tmp.14, i64 %tmp.22, !dbg !209 ; [#uses=1 type=i32*] [debug line = 60:2]
  %line_buf.load = load i32* %line_buf.addr.3, align 4, !dbg !209 ; [#uses=2 type=i32] [debug line = 60:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %line_buf.load) nounwind
  %tmp.23 = sext i32 %x3 to i64, !dbg !209        ; [#uses=1 type=i64] [debug line = 60:2]
  %window.addr.1 = getelementptr inbounds [3 x [3 x i32]]* %window, i64 0, i64 %tmp.15, i64 %tmp.23, !dbg !209 ; [#uses=1 type=i32*] [debug line = 60:2]
  store i32 %line_buf.load, i32* %window.addr.1, align 4, !dbg !209 ; [debug line = 60:2]
  %rend31 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !215 ; [#uses=0 type=i32] [debug line = 60:42]
  %x.3 = add nsw i32 %x3, 1, !dbg !216            ; [#uses=1 type=i32] [debug line = 58:50]
  call void @llvm.dbg.value(metadata !{i32 %x.3}, i64 0, metadata !217), !dbg !216 ; [debug line = 58:50] [debug variable = x]
  br label %9, !dbg !216                          ; [debug line = 58:50]

; <label>:11                                      ; preds = %9
  %rend33 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !218 ; [#uses=0 type=i32] [debug line = 60:42]
  %y.2 = add nsw i32 %y2, 1, !dbg !219            ; [#uses=1 type=i32] [debug line = 57:48]
  call void @llvm.dbg.value(metadata !{i32 %y.2}, i64 0, metadata !220), !dbg !219 ; [debug line = 57:48] [debug variable = y]
  br label %.preheader20, !dbg !219               ; [debug line = 57:48]

.preheader19:                                     ; preds = %24, %.preheader19.preheader
  %read_count = phi i32 [ %read_count.1.lcssa, %24 ], [ 7, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %y4 = phi i32 [ %y.3, %24 ], [ 0, %.preheader19.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %y4, 5, !dbg !206      ; [#uses=1 type=i1] [debug line = 63:25]
  br i1 %exitcond5, label %25, label %12, !dbg !206 ; [debug line = 63:25]

; <label>:12                                      ; preds = %.preheader19
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !221 ; [debug line = 64:4]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !221 ; [#uses=1 type=i32] [debug line = 64:4]
  br label %13, !dbg !222                         ; [debug line = 65:27]

; <label>:13                                      ; preds = %23, %12
  %read_count.1 = phi i32 [ %read_count, %12 ], [ %read_count.2, %23 ] ; [#uses=4 type=i32]
  %x5 = phi i32 [ 0, %12 ], [ %x.4, %23 ]         ; [#uses=4 type=i32]
  %exitcond7 = icmp eq i32 %x5, 5, !dbg !222      ; [#uses=1 type=i1] [debug line = 65:27]
  br i1 %exitcond7, label %24, label %14, !dbg !222 ; [debug line = 65:27]

; <label>:14                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !223 ; [debug line = 66:6]
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !223 ; [#uses=1 type=i32] [debug line = 66:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !224 ; [debug line = 67:1]
  %val_out = call fastcc i32 @sum_window([3 x i32]* %window.addr, i32 %y4, i32 %x5), !dbg !225 ; [#uses=1 type=i32] [debug line = 68:16]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !226), !dbg !225 ; [debug line = 68:16] [debug variable = val_out]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %out_stream}, i64 0, metadata !227), !dbg !228 ; [debug line = 144:48@71:7] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.26}, metadata !229) nounwind, !dbg !230 ; [debug line = 145:22@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !229), !dbg !231 ; [debug line = 145:31@71:7] [debug variable = tmp]
  store i32 %val_out, i32* %tmp.26, align 4, !dbg !231 ; [debug line = 145:31@71:7]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_stream.addr, i32* %tmp.26) nounwind, !dbg !198 ; [debug line = 146:9@71:7]
  %tmp.28 = sext i32 %x5 to i64, !dbg !232        ; [#uses=4 type=i64] [debug line = 74:7]
  %line_buf.addr.4 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 0, i64 %tmp.28, !dbg !232 ; [#uses=1 type=i32*] [debug line = 74:7]
  %line_buf.load.1 = load i32* %line_buf.addr.4, align 4, !dbg !232 ; [#uses=2 type=i32] [debug line = 74:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %line_buf.load.1) nounwind
  store i32 %line_buf.load.1, i32* %right.addr, align 4, !dbg !232 ; [debug line = 74:7]
  br label %15, !dbg !233                         ; [debug line = 75:21]

; <label>:15                                      ; preds = %16, %14
  %y6 = phi i32 [ 1, %14 ], [ %y.4, %16 ]         ; [#uses=4 type=i32]
  %exitcond10 = icmp eq i32 %y6, 2, !dbg !233     ; [#uses=1 type=i1] [debug line = 75:21]
  br i1 %exitcond10, label %17, label %16, !dbg !233 ; [debug line = 75:21]

; <label>:16                                      ; preds = %15
  %tmp.30 = sext i32 %y6 to i64, !dbg !235        ; [#uses=2 type=i64] [debug line = 76:9]
  %line_buf.addr.5 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 %tmp.30, i64 %tmp.28, !dbg !235 ; [#uses=1 type=i32*] [debug line = 76:9]
  %line_buf.load.2 = load i32* %line_buf.addr.5, align 4, !dbg !235 ; [#uses=3 type=i32] [debug line = 76:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %line_buf.load.2) nounwind
  %tmp.31 = add nsw i32 %y6, -1, !dbg !235        ; [#uses=1 type=i32] [debug line = 76:9]
  %tmp.32 = sext i32 %tmp.31 to i64, !dbg !235    ; [#uses=1 type=i64] [debug line = 76:9]
  %line_buf.addr.6 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 %tmp.32, i64 %tmp.28, !dbg !235 ; [#uses=1 type=i32*] [debug line = 76:9]
  store i32 %line_buf.load.2, i32* %line_buf.addr.6, align 4, !dbg !235 ; [debug line = 76:9]
  %right.addr.2 = getelementptr inbounds [3 x i32]* %right, i64 0, i64 %tmp.30, !dbg !235 ; [#uses=1 type=i32*] [debug line = 76:9]
  store i32 %line_buf.load.2, i32* %right.addr.2, align 4, !dbg !235 ; [debug line = 76:9]
  %y.4 = add nsw i32 %y6, 1, !dbg !236            ; [#uses=1 type=i32] [debug line = 75:34]
  call void @llvm.dbg.value(metadata !{i32 %y.4}, i64 0, metadata !237), !dbg !236 ; [debug line = 75:34] [debug variable = y]
  br label %15, !dbg !236                         ; [debug line = 75:34]

; <label>:17                                      ; preds = %15
  %tmp.29 = icmp slt i32 %read_count.1, 25, !dbg !238 ; [#uses=1 type=i1] [debug line = 80:7]
  br i1 %tmp.29, label %18, label %._crit_edge, !dbg !238 ; [debug line = 80:7]

; <label>:18                                      ; preds = %17
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %in_stream}, i64 0, metadata !169), !dbg !239 ; [debug line = 129:56@82:18] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.34}, metadata !172) nounwind, !dbg !242 ; [debug line = 130:22@82:18] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.addr, i32* %tmp.34) nounwind, !dbg !243 ; [debug line = 131:9@82:18]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.34}, i64 0, metadata !172), !dbg !244 ; [debug line = 132:9@82:18] [debug variable = tmp]
  %val_in = load i32* %tmp.34, align 4, !dbg !244 ; [#uses=1 type=i32] [debug line = 132:9@82:18]
  call void @llvm.dbg.value(metadata !{i32 %val_in}, i64 0, metadata !245), !dbg !240 ; [debug line = 82:18] [debug variable = val_in]
  %read_count.3 = add nsw i32 %read_count.1, 1, !dbg !246 ; [#uses=1 type=i32] [debug line = 83:9]
  call void @llvm.dbg.value(metadata !{i32 %read_count.3}, i64 0, metadata !247), !dbg !246 ; [debug line = 83:9] [debug variable = read_count]
  br label %._crit_edge, !dbg !248                ; [debug line = 84:7]

._crit_edge:                                      ; preds = %18, %17
  %read_count.2 = phi i32 [ %read_count.3, %18 ], [ %read_count.1, %17 ] ; [#uses=1 type=i32]
  %val_in1 = phi i32 [ %val_in, %18 ], [ 0, %17 ] ; [#uses=2 type=i32]
  %line_buf.addr.7 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i64 0, i64 1, i64 %tmp.28, !dbg !205 ; [#uses=1 type=i32*] [debug line = 85:7]
  store i32 %val_in1, i32* %line_buf.addr.7, align 4, !dbg !205 ; [debug line = 85:7]
  store i32 %val_in1, i32* %right.addr.1, align 4, !dbg !205 ; [debug line = 85:7]
  br label %19, !dbg !249                         ; [debug line = 88:21]

; <label>:19                                      ; preds = %21, %._crit_edge
  %y7 = phi i32 [ 0, %._crit_edge ], [ %y.6, %21 ] ; [#uses=3 type=i32]
  %exitcond9 = icmp eq i32 %y7, 3, !dbg !249      ; [#uses=1 type=i1] [debug line = 88:21]
  br i1 %exitcond9, label %.preheader.preheader, label %.preheader18.preheader, !dbg !249 ; [debug line = 88:21]

.preheader.preheader:                             ; preds = %19
  br label %.preheader, !dbg !251                 ; [debug line = 93:21]

.preheader18.preheader:                           ; preds = %19
  %tmp.36 = sext i32 %y7 to i64, !dbg !253        ; [#uses=2 type=i64] [debug line = 90:11]
  br label %.preheader18, !dbg !255               ; [debug line = 89:23]

.preheader18:                                     ; preds = %20, %.preheader18.preheader
  %x8 = phi i32 [ %x.5, %20 ], [ 0, %.preheader18.preheader ] ; [#uses=3 type=i32]
  %exitcond8 = icmp eq i32 %x8, 2, !dbg !255      ; [#uses=1 type=i1] [debug line = 89:23]
  br i1 %exitcond8, label %21, label %20, !dbg !255 ; [debug line = 89:23]

; <label>:20                                      ; preds = %.preheader18
  %x.5 = add nsw i32 %x8, 1, !dbg !253            ; [#uses=2 type=i32] [debug line = 90:11]
  %tmp.42 = sext i32 %x.5 to i64, !dbg !253       ; [#uses=1 type=i64] [debug line = 90:11]
  %window.addr.3 = getelementptr inbounds [3 x [3 x i32]]* %window, i64 0, i64 %tmp.36, i64 %tmp.42, !dbg !253 ; [#uses=1 type=i32*] [debug line = 90:11]
  %window.load = load i32* %window.addr.3, align 4, !dbg !253 ; [#uses=2 type=i32] [debug line = 90:11]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %window.load) nounwind
  %tmp.43 = sext i32 %x8 to i64, !dbg !253        ; [#uses=1 type=i64] [debug line = 90:11]
  %window.addr.4 = getelementptr inbounds [3 x [3 x i32]]* %window, i64 0, i64 %tmp.36, i64 %tmp.43, !dbg !253 ; [#uses=1 type=i32*] [debug line = 90:11]
  store i32 %window.load, i32* %window.addr.4, align 4, !dbg !253 ; [debug line = 90:11]
  call void @llvm.dbg.value(metadata !{i32 %x.5}, i64 0, metadata !256), !dbg !257 ; [debug line = 89:36] [debug variable = x]
  br label %.preheader18, !dbg !257               ; [debug line = 89:36]

; <label>:21                                      ; preds = %.preheader18
  %y.6 = add nsw i32 %y7, 1, !dbg !258            ; [#uses=1 type=i32] [debug line = 88:30]
  call void @llvm.dbg.value(metadata !{i32 %y.6}, i64 0, metadata !259), !dbg !258 ; [debug line = 88:30] [debug variable = y]
  br label %19, !dbg !258                         ; [debug line = 88:30]

.preheader:                                       ; preds = %22, %.preheader.preheader
  %y9 = phi i32 [ %y.5, %22 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %y9, 3, !dbg !251       ; [#uses=1 type=i1] [debug line = 93:21]
  br i1 %exitcond, label %23, label %22, !dbg !251 ; [debug line = 93:21]

; <label>:22                                      ; preds = %.preheader
  %tmp.38 = sext i32 %y9 to i64, !dbg !260        ; [#uses=2 type=i64] [debug line = 94:9]
  %right.addr.3 = getelementptr inbounds [3 x i32]* %right, i64 0, i64 %tmp.38, !dbg !260 ; [#uses=1 type=i32*] [debug line = 94:9]
  %right.load = load i32* %right.addr.3, align 4, !dbg !260 ; [#uses=2 type=i32] [debug line = 94:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %right.load) nounwind
  %window.addr.2 = getelementptr inbounds [3 x [3 x i32]]* %window, i64 0, i64 %tmp.38, i64 2, !dbg !260 ; [#uses=1 type=i32*] [debug line = 94:9]
  store i32 %right.load, i32* %window.addr.2, align 4, !dbg !260 ; [debug line = 94:9]
  %y.5 = add nsw i32 %y9, 1, !dbg !261            ; [#uses=1 type=i32] [debug line = 93:30]
  call void @llvm.dbg.value(metadata !{i32 %y.5}, i64 0, metadata !262), !dbg !261 ; [debug line = 93:30] [debug variable = y]
  br label %.preheader, !dbg !261                 ; [debug line = 93:30]

; <label>:23                                      ; preds = %.preheader
  %rend27 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !263 ; [#uses=0 type=i32] [debug line = 95:5]
  %x.4 = add nsw i32 %x5, 1, !dbg !264            ; [#uses=1 type=i32] [debug line = 65:36]
  call void @llvm.dbg.value(metadata !{i32 %x.4}, i64 0, metadata !265), !dbg !264 ; [debug line = 65:36] [debug variable = x]
  br label %13, !dbg !264                         ; [debug line = 65:36]

; <label>:24                                      ; preds = %13
  %read_count.1.lcssa = phi i32 [ %read_count.1, %13 ] ; [#uses=1 type=i32]
  %rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !266 ; [#uses=0 type=i32] [debug line = 96:3]
  %y.3 = add nsw i32 %y4, 1, !dbg !267            ; [#uses=1 type=i32] [debug line = 63:34]
  call void @llvm.dbg.value(metadata !{i32 %y.3}, i64 0, metadata !268), !dbg !267 ; [debug line = 63:34] [debug variable = y]
  br label %.preheader19, !dbg !267               ; [debug line = 63:34]

; <label>:25                                      ; preds = %.preheader19
  ret void, !dbg !269                             ; [debug line = 97:1]
}

; [#uses=1]
define internal fastcc zeroext i1 @bounds_ok(i32 %y, i32 %x) nounwind uwtable inlinehint {
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !270), !dbg !271 ; [debug line = 12:27] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !272), !dbg !273 ; [debug line = 12:34] [debug variable = x]
  %tmp = icmp sgt i32 %y, -1, !dbg !274           ; [#uses=1 type=i1] [debug line = 14:3]
  %tmp.44 = icmp slt i32 %y, 5, !dbg !274         ; [#uses=1 type=i1] [debug line = 14:3]
  %or.cond = and i1 %tmp, %tmp.44, !dbg !274      ; [#uses=1 type=i1] [debug line = 14:3]
  %tmp.45 = icmp sgt i32 %x, -1, !dbg !274        ; [#uses=1 type=i1] [debug line = 14:3]
  %or.cond1 = and i1 %or.cond, %tmp.45, !dbg !274 ; [#uses=1 type=i1] [debug line = 14:3]
  %tmp.46 = icmp slt i32 %x, 5, !dbg !274         ; [#uses=1 type=i1] [debug line = 14:3]
  %. = and i1 %or.cond1, %tmp.46, !dbg !274       ; [#uses=1 type=i1] [debug line = 14:3]
  ret i1 %., !dbg !276                            ; [debug line = 15:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32*, i32*)

; [#uses=3]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=7]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!85, !92, !98, !104, !110}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Vivado/final_conv2d/solution3/.autopilot/db/conv_v2.pragma.2.cpp", metadata !"D:\5CVivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !80} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !68, metadata !69, metadata !70, metadata !77}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionRN3hls6streamIiEES2_", metadata !6, i32 37, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @do_convolution, null, null, metadata !20, i32 38} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"final_conv2d/conv_v2/conv_v2.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<int>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"D:/Vivado/2018.1/common/technology/autopilot\5Chls_stream.h", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !52, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sum_window", metadata !"sum_window", metadata !"_Z10sum_windowPA3_iii", metadata !6, i32 18, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*, i32, i32)* @sum_window, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !15, metadata !73, metadata !15, metadata !15}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !15, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!77 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !6, i32 12, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32, i32)* @bounds_ok, null, null, metadata !20, i32 13} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !48, metadata !15, metadata !15}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786484, i32 0, null, metadata !"kernel", metadata !"kernel", metadata !"", metadata !6, i32 5, metadata !83, i32 0, i32 1, [3 x [3 x i32]]* @kernel} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !15, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !76, metadata !76}
!85 = metadata !{void (%"class.hls::stream.0"*, %"class.hls::stream.0"*)* @do_convolution, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!86 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!87 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<int> &"}
!89 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"in_stream"}
!91 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!92 = metadata !{null, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !91}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!98 = metadata !{null, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !91}
!99 = metadata !{metadata !"kernel_arg_addr_space"}
!100 = metadata !{metadata !"kernel_arg_access_qual"}
!101 = metadata !{metadata !"kernel_arg_type"}
!102 = metadata !{metadata !"kernel_arg_type_qual"}
!103 = metadata !{metadata !"kernel_arg_name"}
!104 = metadata !{i32 ([3 x i32]*, i32, i32)* @sum_window, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !91}
!105 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!106 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int", metadata !"int"}
!108 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"y", metadata !"x"}
!110 = metadata !{i1 (i32, i32)* @bounds_ok, metadata !86, metadata !87, metadata !111, metadata !89, metadata !112, metadata !91}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!113 = metadata !{i32 786689, metadata !70, metadata !"window", metadata !6, i32 16777234, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 18, i32 27, metadata !70, null}
!115 = metadata !{i32 786689, metadata !70, metadata !"y", metadata !6, i32 33554450, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 18, i32 45, metadata !70, null}
!117 = metadata !{i32 786689, metadata !70, metadata !"x", metadata !6, i32 50331666, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 18, i32 52, metadata !70, null}
!119 = metadata !{i32 19, i32 2, metadata !120, null}
!120 = metadata !{i32 786443, metadata !70, i32 19, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 22, i32 42, metadata !122, null}
!122 = metadata !{i32 786443, metadata !120, i32 22, i32 13, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 23, i32 6, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 23, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 26, i32 17, metadata !126, null}
!126 = metadata !{i32 786443, metadata !127, i32 25, i32 9, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !124, i32 24, i32 17, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 28, i32 17, metadata !129, null}
!129 = metadata !{i32 786443, metadata !126, i32 27, i32 13, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 24, i32 46, metadata !127, null}
!131 = metadata !{i32 25, i32 10, metadata !126, null}
!132 = metadata !{i32 786688, metadata !120, metadata !"result", metadata !6, i32 20, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 29, i32 13, metadata !129, null}
!134 = metadata !{i32 30, i32 9, metadata !126, null}
!135 = metadata !{i32 24, i32 70, metadata !127, null}
!136 = metadata !{i32 786688, metadata !127, metadata !"j", metadata !6, i32 24, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 31, i32 5, metadata !124, null}
!138 = metadata !{i32 786688, metadata !122, metadata !"i", metadata !6, i32 22, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 22, i32 66, metadata !122, null}
!140 = metadata !{i32 33, i32 5, metadata !120, null}
!141 = metadata !{i32 786689, metadata !5, metadata !"out_stream", metadata !6, i32 16777253, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 37, i32 39, metadata !5, null}
!143 = metadata !{i32 786689, metadata !5, metadata !"in_stream", metadata !6, i32 33554469, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 37, i32 69, metadata !5, null}
!145 = metadata !{i32 786688, metadata !146, metadata !"line_buf", metadata !6, i32 39, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !5, i32 38, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !15, metadata !148, i32 0, i32 0} ; [ DW_TAG_array_type ]
!148 = metadata !{metadata !149, metadata !150}
!149 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!150 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!151 = metadata !{i32 39, i32 7, metadata !146, null}
!152 = metadata !{i32 786688, metadata !146, metadata !"window", metadata !6, i32 40, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 40, i32 7, metadata !146, null}
!154 = metadata !{i32 786688, metadata !146, metadata !"right", metadata !6, i32 41, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 41, i32 7, metadata !146, null}
!156 = metadata !{i32 42, i32 1, metadata !146, null}
!157 = metadata !{i32 43, i32 1, metadata !146, null}
!158 = metadata !{i32 44, i32 1, metadata !146, null}
!159 = metadata !{i32 131, i32 9, metadata !160, metadata !161}
!160 = metadata !{i32 786443, metadata !69, i32 129, i32 63, metadata !12, i32 21} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 50, i32 37, metadata !162, null}
!162 = metadata !{i32 786443, metadata !163, i32 50, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !146, i32 48, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 48, i32 48, metadata !163, null}
!165 = metadata !{i32 51, i32 39, metadata !166, null}
!166 = metadata !{i32 786443, metadata !146, i32 51, i32 11, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 50, i32 3, metadata !162, null}
!168 = metadata !{i32 49, i32 1, metadata !162, null}
!169 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777345, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!171 = metadata !{i32 129, i32 56, metadata !69, metadata !161}
!172 = metadata !{i32 786688, metadata !160, metadata !"tmp", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 130, i32 22, metadata !160, metadata !161}
!174 = metadata !{i32 132, i32 9, metadata !160, metadata !161}
!175 = metadata !{i32 50, i32 52, metadata !162, null}
!176 = metadata !{i32 48, i32 57, metadata !163, null}
!177 = metadata !{i32 786688, metadata !163, metadata !"x", metadata !6, i32 48, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 57, i32 39, metadata !179, null}
!179 = metadata !{i32 786443, metadata !146, i32 57, i32 11, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 52, i32 5, metadata !181, null}
!181 = metadata !{i32 786443, metadata !166, i32 52, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 54, i32 19, metadata !183, null}
!183 = metadata !{i32 786443, metadata !184, i32 54, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 786443, metadata !181, i32 52, i32 14, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 52, i32 28, metadata !184, null}
!186 = metadata !{i32 54, i32 3, metadata !183, null}
!187 = metadata !{i32 53, i32 1, metadata !183, null}
!188 = metadata !{i32 129, i32 56, metadata !69, metadata !182}
!189 = metadata !{i32 130, i32 22, metadata !160, metadata !182}
!190 = metadata !{i32 131, i32 9, metadata !160, metadata !182}
!191 = metadata !{i32 132, i32 9, metadata !160, metadata !182}
!192 = metadata !{i32 54, i32 34, metadata !183, null}
!193 = metadata !{i32 52, i32 37, metadata !184, null}
!194 = metadata !{i32 786688, metadata !184, metadata !"x", metadata !6, i32 52, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 54, i32 34, metadata !184, null}
!196 = metadata !{i32 51, i32 52, metadata !166, null}
!197 = metadata !{i32 786688, metadata !166, metadata !"y", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 146, i32 9, metadata !199, metadata !200}
!199 = metadata !{i32 786443, metadata !68, i32 144, i32 79, metadata !12, i32 20} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 71, i32 7, metadata !201, null}
!201 = metadata !{i32 786443, metadata !202, i32 66, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!202 = metadata !{i32 786443, metadata !203, i32 65, i32 13, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 786443, metadata !204, i32 64, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 786443, metadata !146, i32 63, i32 11, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 85, i32 7, metadata !201, null}
!206 = metadata !{i32 63, i32 25, metadata !204, null}
!207 = metadata !{i32 58, i32 5, metadata !208, null}
!208 = metadata !{i32 786443, metadata !179, i32 58, i32 5, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 60, i32 2, metadata !210, null}
!210 = metadata !{i32 786443, metadata !211, i32 60, i32 2, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 786443, metadata !208, i32 58, i32 13, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 58, i32 41, metadata !211, null}
!213 = metadata !{i32 60, i32 3, metadata !210, null}
!214 = metadata !{i32 59, i32 1, metadata !210, null}
!215 = metadata !{i32 60, i32 42, metadata !210, null}
!216 = metadata !{i32 58, i32 50, metadata !211, null}
!217 = metadata !{i32 786688, metadata !211, metadata !"x", metadata !6, i32 58, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!218 = metadata !{i32 60, i32 42, metadata !211, null}
!219 = metadata !{i32 57, i32 48, metadata !179, null}
!220 = metadata !{i32 786688, metadata !179, metadata !"y", metadata !6, i32 57, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!221 = metadata !{i32 64, i32 4, metadata !203, null}
!222 = metadata !{i32 65, i32 27, metadata !202, null}
!223 = metadata !{i32 66, i32 6, metadata !201, null}
!224 = metadata !{i32 67, i32 1, metadata !201, null}
!225 = metadata !{i32 68, i32 16, metadata !201, null}
!226 = metadata !{i32 786688, metadata !201, metadata !"val_out", metadata !6, i32 68, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 786689, metadata !68, metadata !"this", metadata !12, i32 16777360, metadata !170, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 144, i32 48, metadata !68, metadata !200}
!229 = metadata !{i32 786688, metadata !199, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!230 = metadata !{i32 145, i32 22, metadata !199, metadata !200}
!231 = metadata !{i32 145, i32 31, metadata !199, metadata !200}
!232 = metadata !{i32 74, i32 7, metadata !201, null}
!233 = metadata !{i32 75, i32 21, metadata !234, null}
!234 = metadata !{i32 786443, metadata !201, i32 75, i32 7, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 76, i32 9, metadata !234, null}
!236 = metadata !{i32 75, i32 34, metadata !234, null}
!237 = metadata !{i32 786688, metadata !234, metadata !"y", metadata !6, i32 75, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!238 = metadata !{i32 80, i32 7, metadata !201, null}
!239 = metadata !{i32 129, i32 56, metadata !69, metadata !240}
!240 = metadata !{i32 82, i32 18, metadata !241, null}
!241 = metadata !{i32 786443, metadata !201, i32 81, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 130, i32 22, metadata !160, metadata !240}
!243 = metadata !{i32 131, i32 9, metadata !160, metadata !240}
!244 = metadata !{i32 132, i32 9, metadata !160, metadata !240}
!245 = metadata !{i32 786688, metadata !201, metadata !"val_in", metadata !6, i32 79, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!246 = metadata !{i32 83, i32 9, metadata !241, null}
!247 = metadata !{i32 786688, metadata !146, metadata !"read_count", metadata !6, i32 47, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!248 = metadata !{i32 84, i32 7, metadata !241, null}
!249 = metadata !{i32 88, i32 21, metadata !250, null}
!250 = metadata !{i32 786443, metadata !201, i32 88, i32 7, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 93, i32 21, metadata !252, null}
!252 = metadata !{i32 786443, metadata !201, i32 93, i32 7, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!253 = metadata !{i32 90, i32 11, metadata !254, null}
!254 = metadata !{i32 786443, metadata !250, i32 89, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 89, i32 23, metadata !254, null}
!256 = metadata !{i32 786688, metadata !254, metadata !"x", metadata !6, i32 89, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!257 = metadata !{i32 89, i32 36, metadata !254, null}
!258 = metadata !{i32 88, i32 30, metadata !250, null}
!259 = metadata !{i32 786688, metadata !250, metadata !"y", metadata !6, i32 88, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 94, i32 9, metadata !252, null}
!261 = metadata !{i32 93, i32 30, metadata !252, null}
!262 = metadata !{i32 786688, metadata !252, metadata !"y", metadata !6, i32 93, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 95, i32 5, metadata !201, null}
!264 = metadata !{i32 65, i32 36, metadata !202, null}
!265 = metadata !{i32 786688, metadata !202, metadata !"x", metadata !6, i32 65, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!266 = metadata !{i32 96, i32 3, metadata !203, null}
!267 = metadata !{i32 63, i32 34, metadata !204, null}
!268 = metadata !{i32 786688, metadata !204, metadata !"y", metadata !6, i32 63, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!269 = metadata !{i32 97, i32 1, metadata !146, null}
!270 = metadata !{i32 786689, metadata !77, metadata !"y", metadata !6, i32 16777228, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!271 = metadata !{i32 12, i32 27, metadata !77, null}
!272 = metadata !{i32 786689, metadata !77, metadata !"x", metadata !6, i32 33554444, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!273 = metadata !{i32 12, i32 34, metadata !77, null}
!274 = metadata !{i32 14, i32 3, metadata !275, null}
!275 = metadata !{i32 786443, metadata !77, i32 13, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 15, i32 1, metadata !77, null}
