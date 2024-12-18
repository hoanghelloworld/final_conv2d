; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@kernel = constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 -1], [3 x i32] [i32 2, i32 3, i32 -2], [3 x i32] [i32 1, i32 4, i32 -1]], align 16 ; [#uses=0 type=[3 x [3 x i32]]*]
@do_convolution.str = internal unnamed_addr constant [15 x i8] c"do_convolution\00" ; [#uses=1 type=[15 x i8]*]
@ap_fifo.str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00" ; [#uses=2 type=[8 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"for_y\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"win_y\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=4 type=[1 x i8]*]
@.str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=12 type=[1 x i8]*]

; [#uses=60]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @do_convolution(i32* %out_stream.V, i32* %in_stream.V) {
  %1 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %in_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  %2 = call i32 (...)* @_ssdm_op_SpecInterface(i32* %out_stream.V, [8 x i8]* @ap_fifo.str, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @.str, [1 x i8]* @.str) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream.V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream.V), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @do_convolution.str) nounwind
  %tmp.17 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.10 = alloca i32, align 4                   ; [#uses=2 type=i32*]
  %tmp.4 = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  %"line_buf[0]" = alloca [5 x i32], align 4      ; [#uses=3 type=[5 x i32]*]
  %"line_buf[1]" = alloca [5 x i32], align 4      ; [#uses=3 type=[5 x i32]*]
  call void @llvm.dbg.value(metadata !{i32* %out_stream.V}, i64 0, metadata !47), !dbg !113 ; [debug line = 37:39] [debug variable = out_stream.V]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !114), !dbg !116 ; [debug line = 37:69] [debug variable = in_stream.V]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %"line_buf[0]"}, metadata !117), !dbg !125 ; [debug line = 39:7] [debug variable = line_buf[0]]
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %"line_buf[1]"}, metadata !126), !dbg !125 ; [debug line = 39:7] [debug variable = line_buf[1]]
  br label %3, !dbg !127                          ; [debug line = 48:48]

; <label>:3                                       ; preds = %5, %0
  %x = phi i3 [ 3, %0 ], [ %x.1, %5 ]             ; [#uses=3 type=i3]
  %exitcond1 = icmp eq i3 %x, -3, !dbg !127       ; [#uses=1 type=i1] [debug line = 48:48]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader21.0, label %5, !dbg !127 ; [debug line = 48:48]

; <label>:5                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str2) nounwind, !dbg !129 ; [debug line = 50:3]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str2), !dbg !129 ; [#uses=1 type=i32] [debug line = 50:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !131 ; [debug line = 49:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !132), !dbg !137 ; [debug line = 129:56@50:37] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !139) nounwind, !dbg !141 ; [debug line = 130:22@50:37] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp) nounwind, !dbg !142 ; [debug line = 131:9@50:37]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !139), !dbg !143 ; [debug line = 132:9@50:37] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !139), !dbg !143 ; [debug line = 132:9@50:37] [debug variable = tmp]
  %6 = load i32* %tmp, align 4, !dbg !143         ; [#uses=1 type=i32] [debug line = 132:9@50:37]
  %tmp. = zext i3 %x to i64, !dbg !138            ; [#uses=1 type=i64] [debug line = 50:37]
  %"line_buf[0].addr" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp. ; [#uses=1 type=i32*]
  store i32 %6, i32* %"line_buf[0].addr", align 4, !dbg !138 ; [debug line = 50:37]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str2, i32 %tmp.2), !dbg !144 ; [#uses=0 type=i32] [debug line = 50:52]
  %x.1 = add i3 %x, 1, !dbg !145                  ; [#uses=1 type=i3] [debug line = 48:57]
  call void @llvm.dbg.value(metadata !{i3 %x.1}, i64 0, metadata !146), !dbg !145 ; [debug line = 48:57] [debug variable = x]
  br label %3, !dbg !145                          ; [debug line = 48:57]

.preheader21.1:                                   ; preds = %9
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str3, i32 %tmp.1), !dbg !147 ; [#uses=0 type=i32] [debug line = 54:34]
  br label %.preheader20, !dbg !151               ; [debug line = 57:39]

; <label>:9                                       ; preds = %11, %.preheader21.0
  %x1 = phi i3 [ 0, %.preheader21.0 ], [ %x.2, %11 ] ; [#uses=3 type=i3]
  %exitcond4 = icmp eq i3 %x1, -3, !dbg !153      ; [#uses=1 type=i1] [debug line = 52:28]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader21.1, label %11, !dbg !153 ; [debug line = 52:28]

.preheader21.0:                                   ; preds = %3
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str3), !dbg !154 ; [#uses=1 type=i32] [debug line = 52:5]
  br label %9, !dbg !153                          ; [debug line = 52:28]

; <label>:11                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str4) nounwind, !dbg !155 ; [debug line = 54:3]
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str4), !dbg !155 ; [#uses=1 type=i32] [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !157 ; [debug line = 53:1]
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !132), !dbg !158 ; [debug line = 129:56@54:19] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.4}, metadata !139) nounwind, !dbg !160 ; [debug line = 130:22@54:19] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp.4) nounwind, !dbg !161 ; [debug line = 131:9@54:19]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !139), !dbg !162 ; [debug line = 132:9@54:19] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.4}, i64 0, metadata !139), !dbg !162 ; [debug line = 132:9@54:19] [debug variable = tmp]
  %tmp.4.load = load i32* %tmp.4, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 132:9@54:19]
  %tmp.6 = zext i3 %x1 to i64, !dbg !159          ; [#uses=1 type=i64] [debug line = 54:19]
  %"line_buf[1].addr" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.6 ; [#uses=1 type=i32*]
  store i32 %tmp.4.load, i32* %"line_buf[1].addr", align 4, !dbg !159 ; [debug line = 54:19]
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str4, i32 %tmp.3), !dbg !163 ; [#uses=0 type=i32] [debug line = 54:34]
  %x.2 = add i3 %x1, 1, !dbg !164                 ; [#uses=1 type=i3] [debug line = 52:37]
  br label %9, !dbg !164                          ; [debug line = 52:37]

.preheader20:                                     ; preds = %18, %.preheader21.1
  %window.2.2 = phi i32 [ undef, %.preheader21.1 ], [ %window.2.2.1.lcssa, %18 ] ; [#uses=2 type=i32]
  %window.2.1 = phi i32 [ undef, %.preheader21.1 ], [ %window.2.1.1.lcssa, %18 ] ; [#uses=2 type=i32]
  %window.1.2 = phi i32 [ undef, %.preheader21.1 ], [ %window.1.2.1.lcssa, %18 ] ; [#uses=2 type=i32]
  %window.1.1 = phi i32 [ undef, %.preheader21.1 ], [ %window.1.1.1.lcssa, %18 ] ; [#uses=2 type=i32]
  %y2 = phi i2 [ 1, %.preheader21.1 ], [ %y, %18 ] ; [#uses=4 type=i2]
  %exitcond3 = icmp eq i2 %y2, -1, !dbg !151      ; [#uses=1 type=i1] [debug line = 57:39]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader19.preheader, label %14, !dbg !151 ; [debug line = 57:39]

.preheader19.preheader:                           ; preds = %.preheader20
  br label %.preheader19, !dbg !165               ; [debug line = 63:25]

; <label>:14                                      ; preds = %.preheader20
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str5) nounwind, !dbg !167 ; [debug line = 58:5]
  %tmp.5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str5), !dbg !167 ; [#uses=1 type=i32] [debug line = 58:5]
  %tmp.9 = trunc i2 %y2 to i1, !dbg !169          ; [#uses=1 type=i1] [debug line = 60:2]
  %cond = icmp eq i2 %y2, 1, !dbg !169            ; [#uses=4 type=i1] [debug line = 60:2]
  br label %15, !dbg !172                         ; [debug line = 58:41]

; <label>:15                                      ; preds = %_ifconv, %14
  %window.2.2.1 = phi i32 [ %window.2.2, %14 ], [ %"window[2][2].6", %_ifconv ] ; [#uses=3 type=i32]
  %window.2.1.1 = phi i32 [ %window.2.1, %14 ], [ %"window[2][2].7", %_ifconv ] ; [#uses=3 type=i32]
  %window.1.2.1 = phi i32 [ %window.1.2, %14 ], [ %"window[2][2].8", %_ifconv ] ; [#uses=3 type=i32]
  %window.1.1.1 = phi i32 [ %window.1.1, %14 ], [ %"window[2][2].9", %_ifconv ] ; [#uses=3 type=i32]
  %x3 = phi i2 [ 1, %14 ], [ %x.3, %_ifconv ]     ; [#uses=4 type=i2]
  %x3.cast = zext i2 %x3 to i3, !dbg !172         ; [#uses=1 type=i3] [debug line = 58:41]
  %exitcond6 = icmp eq i2 %x3, -1, !dbg !172      ; [#uses=1 type=i1] [debug line = 58:41]
  %16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  br i1 %exitcond6, label %18, label %_ifconv, !dbg !172 ; [debug line = 58:41]

_ifconv:                                          ; preds = %15
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str6) nounwind, !dbg !173 ; [debug line = 60:3]
  %tmp.14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str6), !dbg !173 ; [#uses=1 type=i32] [debug line = 60:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !174 ; [debug line = 59:1]
  %tmp.7 = add i3 %x3.cast, 2, !dbg !169          ; [#uses=1 type=i3] [debug line = 60:2]
  %tmp.8 = zext i3 %tmp.7 to i64, !dbg !169       ; [#uses=2 type=i64] [debug line = 60:2]
  %"line_buf[0].addr.1" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp.8, !dbg !169 ; [#uses=1 type=i32*] [debug line = 60:2]
  %"line_buf[1].addr.1" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.8, !dbg !169 ; [#uses=1 type=i32*] [debug line = 60:2]
  %"line_buf[0].load" = load i32* %"line_buf[0].addr.1", align 4, !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  %"line_buf[1].load" = load i32* %"line_buf[1].addr.1", align 4, !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  %"window[1][1].2" = select i1 %tmp.9, i32 %"line_buf[0].load", i32 %"line_buf[1].load", !dbg !169 ; [#uses=4 type=i32] [debug line = 60:2]
  %cond1 = icmp eq i2 %x3, 1, !dbg !169           ; [#uses=4 type=i1] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !175), !dbg !169 ; [debug line = 60:2] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !177), !dbg !169 ; [debug line = 60:2] [debug variable = window[1][2]]
  %"window[2][2].1" = select i1 %cond1, i32 %window.1.2.1, i32 %"window[1][1].2", !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].1"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].2" = select i1 %cond1, i32 %"window[1][1].2", i32 %window.1.1.1, !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].2"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !179), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].2"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].4" = select i1 %cond1, i32 %window.2.2.1, i32 %"window[1][1].2", !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].4"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].5" = select i1 %cond1, i32 %"window[1][1].2", i32 %window.2.1.1, !dbg !169 ; [#uses=1 type=i32] [debug line = 60:2]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].5"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].6" = select i1 %cond, i32 %window.2.2.1, i32 %"window[2][2].4" ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].6"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].7" = select i1 %cond, i32 %window.2.1.1, i32 %"window[2][2].5" ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].7"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].8" = select i1 %cond, i32 %"window[2][2].1", i32 %window.1.2.1 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].8"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %"window[2][2].9" = select i1 %cond, i32 %"window[2][2].2", i32 %window.1.1.1 ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].9"}, i64 0, metadata !178), !dbg !169 ; [debug line = 60:2] [debug variable = window[2][2]]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str6, i32 %tmp.14), !dbg !180 ; [#uses=0 type=i32] [debug line = 60:42]
  %x.3 = add i2 %x3, 1, !dbg !181                 ; [#uses=1 type=i2] [debug line = 58:50]
  call void @llvm.dbg.value(metadata !{i2 %x.3}, i64 0, metadata !182), !dbg !181 ; [debug line = 58:50] [debug variable = x]
  br label %15, !dbg !181                         ; [debug line = 58:50]

; <label>:18                                      ; preds = %15
  %window.1.1.1.lcssa = phi i32 [ %window.1.1.1, %15 ] ; [#uses=1 type=i32]
  %window.1.2.1.lcssa = phi i32 [ %window.1.2.1, %15 ] ; [#uses=1 type=i32]
  %window.2.1.1.lcssa = phi i32 [ %window.2.1.1, %15 ] ; [#uses=1 type=i32]
  %window.2.2.1.lcssa = phi i32 [ %window.2.2.1, %15 ] ; [#uses=1 type=i32]
  %19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str5, i32 %tmp.5), !dbg !183 ; [#uses=0 type=i32] [debug line = 60:42]
  %y = add i2 %y2, 1, !dbg !184                   ; [#uses=1 type=i2] [debug line = 57:48]
  call void @llvm.dbg.value(metadata !{i2 %y}, i64 0, metadata !185), !dbg !184 ; [debug line = 57:48] [debug variable = y]
  br label %.preheader20, !dbg !184               ; [debug line = 57:48]

.preheader19:                                     ; preds = %27, %.preheader19.preheader
  %window.2.2.3 = phi i32 [ %"window[2][1].lcssa", %27 ], [ %window.2.2, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.2.1.3 = phi i32 [ %"window[2][0].lcssa", %27 ], [ %window.2.1, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.2.0. = phi i32 [ %window.2.0.1.lcssa, %27 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.2.3 = phi i32 [ %"window[1][1].lcssa", %27 ], [ %window.1.2, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.1.3 = phi i32 [ %"window[1][0].lcssa", %27 ], [ %window.1.1, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.1.0. = phi i32 [ %window.1.0.1.lcssa, %27 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.2. = phi i32 [ %"window[0][1].lcssa", %27 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.1. = phi i32 [ %"window[0][0].lcssa", %27 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %window.0.0. = phi i32 [ %window.0.0.1.lcssa, %27 ], [ undef, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %read_count = phi i32 [ %read_count.1.lcssa, %27 ], [ 7, %.preheader19.preheader ] ; [#uses=1 type=i32]
  %y.assign = phi i3 [ %y.1, %27 ], [ 0, %.preheader19.preheader ] ; [#uses=4 type=i3]
  %exitcond5 = icmp eq i3 %y.assign, -3, !dbg !165 ; [#uses=1 type=i1] [debug line = 63:25]
  %20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %29, label %21, !dbg !165 ; [debug line = 63:25]

; <label>:21                                      ; preds = %.preheader19
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str7) nounwind, !dbg !186 ; [debug line = 64:4]
  %tmp.11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str7), !dbg !186 ; [#uses=1 type=i32] [debug line = 64:4]
  br label %22, !dbg !188                         ; [debug line = 65:27]

; <label>:22                                      ; preds = %._crit_edge, %21
  %"window[2][2].read.assign" = phi i32 [ %window.2.2.3, %21 ], [ %"window[2][2]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[2][1].read.assign" = phi i32 [ %window.2.1.3, %21 ], [ %"window[2][2].read.assign", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[2][0].read.assign" = phi i32 [ %window.2.0., %21 ], [ %"window[2][1].read.assign", %._crit_edge ] ; [#uses=2 type=i32]
  %"window[1][2].read.assign" = phi i32 [ %window.1.2.3, %21 ], [ %"right[1]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[1][1].read.assign" = phi i32 [ %window.1.1.3, %21 ], [ %"window[1][2].read.assign", %._crit_edge ] ; [#uses=4 type=i32]
  %"window[1][0].read.assign" = phi i32 [ %window.1.0., %21 ], [ %"window[1][1].read.assign", %._crit_edge ] ; [#uses=2 type=i32]
  %"window[0][2].read.assign" = phi i32 [ %window.0.2., %21 ], [ %"right[0]", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[0][1].read.assign" = phi i32 [ %window.0.1., %21 ], [ %"window[0][2].read.assign", %._crit_edge ] ; [#uses=3 type=i32]
  %"window[0][0].read.assign" = phi i32 [ %window.0.0., %21 ], [ %"window[0][1].read.assign", %._crit_edge ] ; [#uses=2 type=i32]
  %read_count.1 = phi i32 [ %read_count, %21 ], [ %read_count.2, %._crit_edge ] ; [#uses=4 type=i32]
  %x.assign = phi i3 [ 0, %21 ], [ %x.4, %._crit_edge ] ; [#uses=5 type=i3]
  %exitcond7 = icmp eq i3 %x.assign, -3, !dbg !188 ; [#uses=1 type=i1] [debug line = 65:27]
  %23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) ; [#uses=0 type=i32]
  br i1 %exitcond7, label %27, label %24, !dbg !188 ; [debug line = 65:27]

; <label>:24                                      ; preds = %22
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str8) nounwind, !dbg !190 ; [debug line = 66:6]
  %tmp.15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str8), !dbg !190 ; [#uses=1 type=i32] [debug line = 66:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !192 ; [debug line = 67:1]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][0].read.assign"}, i64 0, metadata !193), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][1].read.assign"}, i64 0, metadata !204), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[0][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][2].read.assign"}, i64 0, metadata !205), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][0].read.assign"}, i64 0, metadata !206), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].read.assign"}, i64 0, metadata !207), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][2].read.assign"}, i64 0, metadata !208), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][0].read.assign"}, i64 0, metadata !209), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][1].read.assign"}, i64 0, metadata !210), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].read.assign"}, i64 0, metadata !211), !dbg !203 ; [debug line = 18:27@68:16] [debug variable = window[2][2]]
  call void @llvm.dbg.value(metadata !{i3 %y.assign}, i64 0, metadata !212), !dbg !213 ; [debug line = 18:45@68:16] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i3 %x.assign}, i64 0, metadata !214), !dbg !215 ; [debug line = 18:52@68:16] [debug variable = x]
  %tmp.i.i = icmp ne i3 %y.assign, 0, !dbg !216   ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %tmp.14.i.i = icmp ne i3 %x.assign, 0, !dbg !216 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %or.cond1.i.i = and i1 %tmp.i.i, %tmp.14.i.i, !dbg !216 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %.read..i = select i1 %or.cond1.i.i, i32 %"window[0][0].read.assign", i32 0, !dbg !221 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %x.assign}, i64 0, metadata !227), !dbg !228 ; [debug line = 12:34@26:17@68:16] [debug variable = x]
  %tmp.7.0.1.i = shl nsw i32 %"window[0][1].read.assign", 1, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.3.0.1.i = add nsw i32 %tmp.7.0.1.i, %.read..i, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.0.1.i = select i1 %tmp.i.i, i32 %result.3.0.1.i, i32 0 ; [#uses=2 type=i32]
  %x.assign.1 = add i3 %x.assign, 1, !dbg !221    ; [#uses=1 type=i3] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %x.assign.1}, i64 0, metadata !227), !dbg !228 ; [debug line = 12:34@26:17@68:16] [debug variable = x]
  %tmp.15.i2.i = icmp ult i3 %x.assign.1, -3, !dbg !216 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %..i2.i = and i1 %tmp.i.i, %tmp.15.i2.i, !dbg !216 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result.3.0.2.i = sub i32 %result.2.0.1.i, %"window[0][2].read.assign", !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.0.2.i = select i1 %..i2.i, i32 %result.3.0.2.i, i32 %result.2.0.1.i, !dbg !221 ; [#uses=2 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %y.assign}, i64 0, metadata !231), !dbg !232 ; [debug line = 12:27@26:17@68:16] [debug variable = y]
  %tmp.7.1.i = shl nsw i32 %"window[1][0].read.assign", 1, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.3.1.i = add nsw i32 %tmp.7.1.i, %result.2.0.2.i, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.1.i = select i1 %tmp.14.i.i, i32 %result.3.1.i, i32 %result.2.0.2.i ; [#uses=1 type=i32]
  %_shl.i = shl i32 %"window[1][1].read.assign", 2, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %tmp.7.1.1.i = sub i32 %_shl.i, %"window[1][1].read.assign", !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.3.1.1.i = add nsw i32 %result.2.1.i, %tmp.7.1.1.i, !dbg !229 ; [#uses=2 type=i32] [debug line = 28:17@68:16]
  %_shl9.i = shl i32 %"window[1][2].read.assign", 1, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.3.1.2.i = sub i32 %result.3.1.1.i, %_shl9.i, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.1.2.i = select i1 %tmp.15.i2.i, i32 %result.3.1.2.i, i32 %result.3.1.1.i ; [#uses=3 type=i32]
  %y.assign.1 = add i3 %y.assign, 1, !dbg !221    ; [#uses=1 type=i3] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i3 %y.assign.1}, i64 0, metadata !231), !dbg !232 ; [debug line = 12:27@26:17@68:16] [debug variable = y]
  %tmp..i2.i = icmp ult i3 %y.assign.1, -3, !dbg !216 ; [#uses=3 type=i1] [debug line = 14:3@26:17@68:16]
  %or.cond1.i6.i = and i1 %tmp..i2.i, %tmp.14.i.i, !dbg !216 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result.3.2.i = add nsw i32 %"window[2][0].read.assign", %result.2.1.2.i, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.2.i = select i1 %or.cond1.i6.i, i32 %result.3.2.i, i32 %result.2.1.2.i, !dbg !221 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  %tmp.7.2.1.i = shl nsw i32 %"window[2][1].read.assign", 2, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.3.2.1.i = add nsw i32 %tmp.7.2.1.i, %result.2.2.i, !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %result.2.2.1.i = select i1 %tmp..i2.i, i32 %result.3.2.1.i, i32 %result.2.1.2.i ; [#uses=2 type=i32]
  %..i8.i = and i1 %tmp..i2.i, %tmp.15.i2.i, !dbg !216 ; [#uses=1 type=i1] [debug line = 14:3@26:17@68:16]
  %result.3.2.2.i = sub i32 %result.2.2.1.i, %"window[2][2].read.assign", !dbg !229 ; [#uses=1 type=i32] [debug line = 28:17@68:16]
  %val_out = select i1 %..i8.i, i32 %result.3.2.2.i, i32 %result.2.2.1.i, !dbg !221 ; [#uses=1 type=i32] [debug line = 26:17@68:16]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !233), !dbg !202 ; [debug line = 68:16] [debug variable = val_out]
  call void @llvm.dbg.value(metadata !{i32* %out_stream.V}, i64 0, metadata !234), !dbg !237 ; [debug line = 144:48@71:7] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.10}, metadata !239) nounwind, !dbg !241 ; [debug line = 145:22@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !239), !dbg !242 ; [debug line = 145:31@71:7] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %val_out}, i64 0, metadata !239), !dbg !242 ; [debug line = 145:31@71:7] [debug variable = tmp]
  store i32 %val_out, i32* %tmp.10, align 4, !dbg !242 ; [debug line = 145:31@71:7]
  call void @_ssdm_op_IfWrite.Stream.i32P.i32P(i32* %out_stream.V, i32* %tmp.10) nounwind, !dbg !243 ; [debug line = 146:9@71:7]
  %tmp.12 = zext i3 %x.assign to i64, !dbg !244   ; [#uses=2 type=i64] [debug line = 74:7]
  %"line_buf[0].addr.2" = getelementptr [5 x i32]* %"line_buf[0]", i64 0, i64 %tmp.12 ; [#uses=2 type=i32*]
  %"right[0]" = load i32* %"line_buf[0].addr.2", align 4, !dbg !244 ; [#uses=1 type=i32] [debug line = 74:7]
  call void @llvm.dbg.value(metadata !{i32 %"right[0]"}, i64 0, metadata !245), !dbg !244 ; [debug line = 74:7] [debug variable = right[0]]
  %"line_buf[1].addr.2" = getelementptr [5 x i32]* %"line_buf[1]", i64 0, i64 %tmp.12 ; [#uses=2 type=i32*]
  %"right[1]" = load i32* %"line_buf[1].addr.2", align 4, !dbg !247 ; [#uses=2 type=i32] [debug line = 76:9]
  store i32 %"right[1]", i32* %"line_buf[0].addr.2", align 4, !dbg !247 ; [debug line = 76:9]
  call void @llvm.dbg.value(metadata !{i32 %"right[1]"}, i64 0, metadata !249), !dbg !247 ; [debug line = 76:9] [debug variable = right[1]]
  %tmp.13 = icmp slt i32 %read_count.1, 25, !dbg !250 ; [#uses=1 type=i1] [debug line = 80:7]
  br i1 %tmp.13, label %25, label %._crit_edge, !dbg !250 ; [debug line = 80:7]

; <label>:25                                      ; preds = %24
  call void @llvm.dbg.value(metadata !{i32* %in_stream.V}, i64 0, metadata !132), !dbg !251 ; [debug line = 129:56@82:18] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp.17}, metadata !139) nounwind, !dbg !254 ; [debug line = 130:22@82:18] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %in_stream.V, i32* %tmp.17) nounwind, !dbg !255 ; [debug line = 131:9@82:18]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !139), !dbg !256 ; [debug line = 132:9@82:18] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp.17}, i64 0, metadata !139), !dbg !256 ; [debug line = 132:9@82:18] [debug variable = tmp]
  %val_in = load i32* %tmp.17, align 4, !dbg !256 ; [#uses=1 type=i32] [debug line = 132:9@82:18]
  call void @llvm.dbg.value(metadata !{i32 %val_in}, i64 0, metadata !257), !dbg !252 ; [debug line = 82:18] [debug variable = val_in]
  %read_count.3 = add nsw i32 %read_count.1, 1, !dbg !258 ; [#uses=1 type=i32] [debug line = 83:9]
  call void @llvm.dbg.value(metadata !{i32 %read_count.3}, i64 0, metadata !259), !dbg !258 ; [debug line = 83:9] [debug variable = read_count]
  br label %._crit_edge, !dbg !260                ; [debug line = 84:7]

._crit_edge:                                      ; preds = %25, %24
  %read_count.2 = phi i32 [ %read_count.3, %25 ], [ %read_count.1, %24 ] ; [#uses=1 type=i32]
  %"window[2][2]" = phi i32 [ %val_in, %25 ], [ 0, %24 ] ; [#uses=2 type=i32]
  store i32 %"window[2][2]", i32* %"line_buf[1].addr.2", align 4, !dbg !261 ; [debug line = 85:7]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][1].read.assign"}, i64 0, metadata !262), !dbg !263 ; [debug line = 90:11] [debug variable = window[0][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[0][2].read.assign"}, i64 0, metadata !266), !dbg !263 ; [debug line = 90:11] [debug variable = window[0][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][1].read.assign"}, i64 0, metadata !267), !dbg !263 ; [debug line = 90:11] [debug variable = window[1][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[1][2].read.assign"}, i64 0, metadata !175), !dbg !263 ; [debug line = 90:11] [debug variable = window[1][1]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][1].read.assign"}, i64 0, metadata !268), !dbg !263 ; [debug line = 90:11] [debug variable = window[2][0]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2].read.assign"}, i64 0, metadata !179), !dbg !263 ; [debug line = 90:11] [debug variable = window[2][1]]
  call void @llvm.dbg.value(metadata !{i32 %"right[0]"}, i64 0, metadata !269), !dbg !270 ; [debug line = 94:9] [debug variable = window[0][2]]
  call void @llvm.dbg.value(metadata !{i32 %"right[1]"}, i64 0, metadata !177), !dbg !270 ; [debug line = 94:9] [debug variable = window[1][2]]
  call void @llvm.dbg.value(metadata !{i32 %"window[2][2]"}, i64 0, metadata !178), !dbg !270 ; [debug line = 94:9] [debug variable = window[2][2]]
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str8, i32 %tmp.15), !dbg !272 ; [#uses=0 type=i32] [debug line = 95:5]
  %x.4 = add i3 %x.assign, 1, !dbg !273           ; [#uses=1 type=i3] [debug line = 65:36]
  call void @llvm.dbg.value(metadata !{i3 %x.4}, i64 0, metadata !274), !dbg !273 ; [debug line = 65:36] [debug variable = x]
  br label %22, !dbg !273                         ; [debug line = 65:36]

; <label>:27                                      ; preds = %22
  %read_count.1.lcssa = phi i32 [ %read_count.1, %22 ] ; [#uses=1 type=i32]
  %window.0.0.1.lcssa = phi i32 [ %"window[0][0].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[0][0].lcssa" = phi i32 [ %"window[0][1].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[0][1].lcssa" = phi i32 [ %"window[0][2].read.assign", %22 ] ; [#uses=1 type=i32]
  %window.1.0.1.lcssa = phi i32 [ %"window[1][0].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[1][0].lcssa" = phi i32 [ %"window[1][1].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[1][1].lcssa" = phi i32 [ %"window[1][2].read.assign", %22 ] ; [#uses=1 type=i32]
  %window.2.0.1.lcssa = phi i32 [ %"window[2][0].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[2][0].lcssa" = phi i32 [ %"window[2][1].read.assign", %22 ] ; [#uses=1 type=i32]
  %"window[2][1].lcssa" = phi i32 [ %"window[2][2].read.assign", %22 ] ; [#uses=1 type=i32]
  %28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str7, i32 %tmp.11), !dbg !275 ; [#uses=0 type=i32] [debug line = 96:3]
  %y.1 = add i3 %y.assign, 1, !dbg !276           ; [#uses=1 type=i3] [debug line = 63:34]
  call void @llvm.dbg.value(metadata !{i3 %y.1}, i64 0, metadata !277), !dbg !276 ; [debug line = 63:34] [debug variable = y]
  br label %.preheader19, !dbg !276               ; [debug line = 63:34]

; <label>:29                                      ; preds = %.preheader19
  ret void, !dbg !278                             ; [debug line = 97:1]
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
declare void @_ssdm_SpecKeepAssert(...)

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
!28 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Vivado/final_conv2d/solution3/.autopilot/db/conv_v2.pragma.2.cpp", metadata !"D:\5CVivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !29} ; [ DW_TAG_compile_unit ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786484, i32 0, null, metadata !"kernel", metadata !"kernel", metadata !"", metadata !32, i32 5, metadata !33, i32 0, i32 1, [3 x [3 x i32]]* @kernel} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"final_conv2d/conv_v2/conv_v2.cpp", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !34, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!35 = metadata !{metadata !36, metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"out_stream.V", metadata !41, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 1}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"in_stream.V", metadata !41, metadata !"int", i32 0, i32 31}
!47 = metadata !{i32 790531, metadata !48, metadata !"out_stream.V", null, i32 37, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!48 = metadata !{i32 786689, metadata !49, metadata !"out_stream", metadata !32, i32 16777253, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786478, i32 0, metadata !32, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionRN3hls6streamIiEES2_", metadata !32, i32 37, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 38} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !52, metadata !52}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786434, metadata !54, metadata !"stream<int>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !56, i32 0, null, metadata !108} ; [ DW_TAG_class_type ]
!54 = metadata !{i32 786489, null, metadata !"hls", metadata !55, i32 69} ; [ DW_TAG_namespace ]
!55 = metadata !{i32 786473, metadata !"D:/Vivado/2018.1/common/technology/autopilot\5Chls_stream.h", metadata !"D:\5CVivado", null} ; [ DW_TAG_file_type ]
!56 = metadata !{metadata !57, metadata !58, metadata !64, metadata !70, metadata !75, metadata !78, metadata !82, metadata !87, metadata !92, metadata !93, metadata !94, metadata !97, metadata !100, metadata !101, metadata !104}
!57 = metadata !{i32 786445, metadata !53, metadata !"V", metadata !55, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!58 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 83, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 83} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !61}
!61 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !53} ; [ DW_TAG_pointer_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 86, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 86} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !61, metadata !67}
!67 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!70 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 91, metadata !71, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 91} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{null, metadata !61, metadata !73}
!73 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_reference_type ]
!74 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ]
!75 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !55, i32 94, metadata !76, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !62, i32 94} ; [ DW_TAG_subprogram ]
!76 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!77 = metadata !{metadata !52, metadata !61, metadata !73}
!78 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !55, i32 101, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 101} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !61, metadata !81}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !55, i32 105, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 105} ; [ DW_TAG_subprogram ]
!83 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!84 = metadata !{null, metadata !61, metadata !85}
!85 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_reference_type ]
!86 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!87 = metadata !{i32 786478, i32 0, metadata !53, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !55, i32 112, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 112} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !74} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !53, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !55, i32 117, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 117} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !55, i32 123, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 123} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !55, i32 129, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{metadata !34, metadata !61}
!97 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !55, i32 136, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 136} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !90, metadata !61, metadata !81}
!100 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !55, i32 144, metadata !83, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !55, i32 150, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 150} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !90, metadata !61, metadata !85}
!104 = metadata !{i32 786478, i32 0, metadata !53, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !55, i32 157, metadata !105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !62, i32 157} ; [ DW_TAG_subprogram ]
!105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!106 = metadata !{metadata !107, metadata !61}
!107 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !34, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786438, metadata !54, metadata !"stream<int>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, metadata !108} ; [ DW_TAG_class_field_type ]
!112 = metadata !{metadata !57}
!113 = metadata !{i32 37, i32 39, metadata !49, null}
!114 = metadata !{i32 790531, metadata !115, metadata !"in_stream.V", null, i32 37, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!115 = metadata !{i32 786689, metadata !49, metadata !"in_stream", metadata !32, i32 33554469, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 37, i32 69, metadata !49, null}
!117 = metadata !{i32 790529, metadata !118, metadata !"line_buf[0]", null, i32 39, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!118 = metadata !{i32 786688, metadata !119, metadata !"line_buf", metadata !32, i32 39, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 786443, metadata !49, i32 38, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !34, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ]
!121 = metadata !{metadata !122, metadata !123}
!122 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!123 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!124 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 160, i64 32, i32 0, i32 0, metadata !34, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ]
!125 = metadata !{i32 39, i32 7, metadata !119, null}
!126 = metadata !{i32 790529, metadata !118, metadata !"line_buf[1]", null, i32 39, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!127 = metadata !{i32 48, i32 48, metadata !128, null}
!128 = metadata !{i32 786443, metadata !119, i32 48, i32 12, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 50, i32 3, metadata !130, null}
!130 = metadata !{i32 786443, metadata !128, i32 50, i32 2, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 49, i32 1, metadata !130, null}
!132 = metadata !{i32 790531, metadata !133, metadata !"stream<int>.V", null, i32 129, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!133 = metadata !{i32 786689, metadata !134, metadata !"this", metadata !55, i32 16777345, metadata !135, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !55, i32 129, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !94, metadata !62, i32 129} ; [ DW_TAG_subprogram ]
!135 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!137 = metadata !{i32 129, i32 56, metadata !134, metadata !138}
!138 = metadata !{i32 50, i32 37, metadata !130, null}
!139 = metadata !{i32 786688, metadata !140, metadata !"tmp", metadata !55, i32 130, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 786443, metadata !134, i32 129, i32 63, metadata !55, i32 21} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 130, i32 22, metadata !140, metadata !138}
!142 = metadata !{i32 131, i32 9, metadata !140, metadata !138}
!143 = metadata !{i32 132, i32 9, metadata !140, metadata !138}
!144 = metadata !{i32 50, i32 52, metadata !130, null}
!145 = metadata !{i32 48, i32 57, metadata !128, null}
!146 = metadata !{i32 786688, metadata !128, metadata !"x", metadata !32, i32 48, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 54, i32 34, metadata !148, null}
!148 = metadata !{i32 786443, metadata !149, i32 52, i32 14, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !150, i32 52, i32 5, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !119, i32 51, i32 11, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 57, i32 39, metadata !152, null}
!152 = metadata !{i32 786443, metadata !119, i32 57, i32 11, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 52, i32 28, metadata !148, null}
!154 = metadata !{i32 52, i32 5, metadata !149, null}
!155 = metadata !{i32 54, i32 3, metadata !156, null}
!156 = metadata !{i32 786443, metadata !148, i32 54, i32 2, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 53, i32 1, metadata !156, null}
!158 = metadata !{i32 129, i32 56, metadata !134, metadata !159}
!159 = metadata !{i32 54, i32 19, metadata !156, null}
!160 = metadata !{i32 130, i32 22, metadata !140, metadata !159}
!161 = metadata !{i32 131, i32 9, metadata !140, metadata !159}
!162 = metadata !{i32 132, i32 9, metadata !140, metadata !159}
!163 = metadata !{i32 54, i32 34, metadata !156, null}
!164 = metadata !{i32 52, i32 37, metadata !148, null}
!165 = metadata !{i32 63, i32 25, metadata !166, null}
!166 = metadata !{i32 786443, metadata !119, i32 63, i32 11, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 58, i32 5, metadata !168, null}
!168 = metadata !{i32 786443, metadata !152, i32 58, i32 5, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 60, i32 2, metadata !170, null}
!170 = metadata !{i32 786443, metadata !171, i32 60, i32 2, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !168, i32 58, i32 13, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 58, i32 41, metadata !171, null}
!173 = metadata !{i32 60, i32 3, metadata !170, null}
!174 = metadata !{i32 59, i32 1, metadata !170, null}
!175 = metadata !{i32 790529, metadata !176, metadata !"window[1][1]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!176 = metadata !{i32 786688, metadata !119, metadata !"window", metadata !32, i32 40, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 790529, metadata !176, metadata !"window[1][2]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!178 = metadata !{i32 790529, metadata !176, metadata !"window[2][2]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!179 = metadata !{i32 790529, metadata !176, metadata !"window[2][1]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!180 = metadata !{i32 60, i32 42, metadata !170, null}
!181 = metadata !{i32 58, i32 50, metadata !171, null}
!182 = metadata !{i32 786688, metadata !171, metadata !"x", metadata !32, i32 58, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 60, i32 42, metadata !171, null}
!184 = metadata !{i32 57, i32 48, metadata !152, null}
!185 = metadata !{i32 786688, metadata !152, metadata !"y", metadata !32, i32 57, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 64, i32 4, metadata !187, null}
!187 = metadata !{i32 786443, metadata !166, i32 64, i32 3, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!188 = metadata !{i32 65, i32 27, metadata !189, null}
!189 = metadata !{i32 786443, metadata !187, i32 65, i32 13, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 66, i32 6, metadata !191, null}
!191 = metadata !{i32 786443, metadata !189, i32 66, i32 5, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 67, i32 1, metadata !191, null}
!193 = metadata !{i32 790533, metadata !194, metadata !"window[0][0]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!194 = metadata !{i32 786689, metadata !195, metadata !"window", null, i32 18, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 786478, i32 0, metadata !32, metadata !"sum_window", metadata !"sum_window", metadata !"_Z10sum_windowPA3_iii", metadata !32, i32 18, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 19} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !34, metadata !198, metadata !34, metadata !34}
!198 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !199} ; [ DW_TAG_pointer_type ]
!199 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !34, metadata !200, i32 0, i32 0} ; [ DW_TAG_array_type ]
!200 = metadata !{metadata !36}
!201 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!202 = metadata !{i32 68, i32 16, metadata !191, null}
!203 = metadata !{i32 18, i32 27, metadata !195, metadata !202}
!204 = metadata !{i32 790533, metadata !194, metadata !"window[0][1]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!205 = metadata !{i32 790533, metadata !194, metadata !"window[0][2]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!206 = metadata !{i32 790533, metadata !194, metadata !"window[1][0]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!207 = metadata !{i32 790533, metadata !194, metadata !"window[1][1]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!208 = metadata !{i32 790533, metadata !194, metadata !"window[1][2]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!209 = metadata !{i32 790533, metadata !194, metadata !"window[2][0]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!210 = metadata !{i32 790533, metadata !194, metadata !"window[2][1]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!211 = metadata !{i32 790533, metadata !194, metadata !"window[2][2]", null, i32 18, metadata !201, i32 0, metadata !202} ; [ DW_TAG_arg_variable_field_ro ]
!212 = metadata !{i32 786689, metadata !195, metadata !"y", metadata !32, i32 33554450, metadata !34, i32 0, metadata !202} ; [ DW_TAG_arg_variable ]
!213 = metadata !{i32 18, i32 45, metadata !195, metadata !202}
!214 = metadata !{i32 786689, metadata !195, metadata !"x", metadata !32, i32 50331666, metadata !34, i32 0, metadata !202} ; [ DW_TAG_arg_variable ]
!215 = metadata !{i32 18, i32 52, metadata !195, metadata !202}
!216 = metadata !{i32 14, i32 3, metadata !217, metadata !221}
!217 = metadata !{i32 786443, metadata !218, i32 13, i32 1, metadata !32, i32 28} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 786478, i32 0, metadata !32, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !32, i32 12, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !62, i32 13} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !90, metadata !34, metadata !34}
!221 = metadata !{i32 26, i32 17, metadata !222, metadata !202}
!222 = metadata !{i32 786443, metadata !223, i32 25, i32 9, metadata !32, i32 26} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 786443, metadata !224, i32 24, i32 17, metadata !32, i32 25} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 786443, metadata !225, i32 23, i32 5, metadata !32, i32 24} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 786443, metadata !226, i32 22, i32 13, metadata !32, i32 23} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 786443, metadata !195, i32 19, i32 1, metadata !32, i32 22} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 786689, metadata !218, metadata !"x", metadata !32, i32 33554444, metadata !34, i32 0, metadata !221} ; [ DW_TAG_arg_variable ]
!228 = metadata !{i32 12, i32 34, metadata !218, metadata !221}
!229 = metadata !{i32 28, i32 17, metadata !230, metadata !202}
!230 = metadata !{i32 786443, metadata !222, i32 27, i32 13, metadata !32, i32 27} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 786689, metadata !218, metadata !"y", metadata !32, i32 16777228, metadata !34, i32 0, metadata !221} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 12, i32 27, metadata !218, metadata !221}
!233 = metadata !{i32 786688, metadata !191, metadata !"val_out", metadata !32, i32 68, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!234 = metadata !{i32 790531, metadata !235, metadata !"stream<int>.V", null, i32 144, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!235 = metadata !{i32 786689, metadata !236, metadata !"this", metadata !55, i32 16777360, metadata !135, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!236 = metadata !{i32 786478, i32 0, metadata !54, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !55, i32 144, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !100, metadata !62, i32 144} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 144, i32 48, metadata !236, metadata !238}
!238 = metadata !{i32 71, i32 7, metadata !191, null}
!239 = metadata !{i32 786688, metadata !240, metadata !"tmp", metadata !55, i32 145, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!240 = metadata !{i32 786443, metadata !236, i32 144, i32 79, metadata !55, i32 20} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 145, i32 22, metadata !240, metadata !238}
!242 = metadata !{i32 145, i32 31, metadata !240, metadata !238}
!243 = metadata !{i32 146, i32 9, metadata !240, metadata !238}
!244 = metadata !{i32 74, i32 7, metadata !191, null}
!245 = metadata !{i32 790529, metadata !246, metadata !"right[0]", null, i32 41, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!246 = metadata !{i32 786688, metadata !119, metadata !"right", metadata !32, i32 41, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!247 = metadata !{i32 76, i32 9, metadata !248, null}
!248 = metadata !{i32 786443, metadata !191, i32 75, i32 7, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 790529, metadata !246, metadata !"right[1]", null, i32 41, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!250 = metadata !{i32 80, i32 7, metadata !191, null}
!251 = metadata !{i32 129, i32 56, metadata !134, metadata !252}
!252 = metadata !{i32 82, i32 18, metadata !253, null}
!253 = metadata !{i32 786443, metadata !191, i32 81, i32 7, metadata !32, i32 16} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 130, i32 22, metadata !140, metadata !252}
!255 = metadata !{i32 131, i32 9, metadata !140, metadata !252}
!256 = metadata !{i32 132, i32 9, metadata !140, metadata !252}
!257 = metadata !{i32 786688, metadata !191, metadata !"val_in", metadata !32, i32 79, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!258 = metadata !{i32 83, i32 9, metadata !253, null}
!259 = metadata !{i32 786688, metadata !119, metadata !"read_count", metadata !32, i32 47, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 84, i32 7, metadata !253, null}
!261 = metadata !{i32 85, i32 7, metadata !191, null}
!262 = metadata !{i32 790529, metadata !176, metadata !"window[0][0]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!263 = metadata !{i32 90, i32 11, metadata !264, null}
!264 = metadata !{i32 786443, metadata !265, i32 89, i32 9, metadata !32, i32 18} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 786443, metadata !191, i32 88, i32 7, metadata !32, i32 17} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 790529, metadata !176, metadata !"window[0][1]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!267 = metadata !{i32 790529, metadata !176, metadata !"window[1][0]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!268 = metadata !{i32 790529, metadata !176, metadata !"window[2][0]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!269 = metadata !{i32 790529, metadata !176, metadata !"window[0][2]", null, i32 40, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!270 = metadata !{i32 94, i32 9, metadata !271, null}
!271 = metadata !{i32 786443, metadata !191, i32 93, i32 7, metadata !32, i32 19} ; [ DW_TAG_lexical_block ]
!272 = metadata !{i32 95, i32 5, metadata !191, null}
!273 = metadata !{i32 65, i32 36, metadata !189, null}
!274 = metadata !{i32 786688, metadata !189, metadata !"x", metadata !32, i32 65, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!275 = metadata !{i32 96, i32 3, metadata !187, null}
!276 = metadata !{i32 63, i32 34, metadata !166, null}
!277 = metadata !{i32 786688, metadata !166, metadata !"y", metadata !32, i32 63, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!278 = metadata !{i32 97, i32 1, metadata !119, null}
