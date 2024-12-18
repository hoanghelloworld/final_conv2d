; ModuleID = 'D:/Vivado/final_conv2d/solution3/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%"class.hls::stream" = type { i32 }

@kernel = global [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 -1], [3 x i32] [i32 2, i32 3, i32 -2], [3 x i32] [i32 1, i32 4, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@.str = private unnamed_addr constant [9 x i8] c"COMPLETE\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"buf_x1\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"buf_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [7 x i8] c"buf_x2\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str5 = private unnamed_addr constant [6 x i8] c"win_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [6 x i8] c"win_x\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"for_y\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [6 x i8] c"for_x\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str9 = private unnamed_addr constant [6 x i8] c"win_i\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str10 = private unnamed_addr constant [6 x i8] c"win_j\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
define void @_Z14do_convolutionRN3hls6streamIiEES2_(%"class.hls::stream"* %out_stream, %"class.hls::stream"* %in_stream) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=4 type=%"class.hls::stream"**]
  %line_buf = alloca [2 x [5 x i32]], align 16    ; [#uses=8 type=[2 x [5 x i32]]*]
  %window = alloca [3 x [3 x i32]], align 16      ; [#uses=6 type=[3 x [3 x i32]]*]
  %right = alloca [3 x i32], align 4              ; [#uses=5 type=[3 x i32]*]
  %read_count = alloca i32, align 4               ; [#uses=4 type=i32*]
  %x = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %y = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %x1 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %y2 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %x3 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %y4 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %x5 = alloca i32, align 4                       ; [#uses=9 type=i32*]
  %val_out = alloca i32, align 4                  ; [#uses=2 type=i32*]
  %y6 = alloca i32, align 4                       ; [#uses=7 type=i32*]
  %val_in = alloca i32, align 4                   ; [#uses=3 type=i32*]
  %y7 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %x8 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %y9 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  store %"class.hls::stream"* %out_stream, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !113), !dbg !114 ; [debug line = 37:39] [debug variable = out_stream]
  store %"class.hls::stream"* %in_stream, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !115), !dbg !116 ; [debug line = 37:69] [debug variable = in_stream]
  call void @llvm.dbg.declare(metadata !{[2 x [5 x i32]]* %line_buf}, metadata !117), !dbg !123 ; [debug line = 39:7] [debug variable = line_buf]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %window}, metadata !124), !dbg !125 ; [debug line = 40:7] [debug variable = window]
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %right}, metadata !126), !dbg !127 ; [debug line = 41:7] [debug variable = right]
  %3 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i32 0, !dbg !128 ; [#uses=1 type=[5 x i32]*] [debug line = 42:1]
  call void (...)* @_ssdm_SpecArrayPartition([5 x i32]* %3, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !128 ; [debug line = 42:1]
  %4 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i32 0, !dbg !129 ; [#uses=1 type=[3 x i32]*] [debug line = 43:1]
  call void (...)* @_ssdm_SpecArrayPartition([3 x i32]* %4, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 43:1]
  %5 = getelementptr inbounds [3 x i32]* %right, i32 0, i32 0, !dbg !130 ; [#uses=1 type=i32*] [debug line = 44:1]
  call void (...)* @_ssdm_SpecArrayPartition(i32* %5, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !130 ; [debug line = 44:1]
  call void @llvm.dbg.declare(metadata !{i32* %read_count}, metadata !131), !dbg !132 ; [debug line = 47:6] [debug variable = read_count]
  store i32 7, i32* %read_count, align 4, !dbg !133 ; [debug line = 47:60]
  br label %6, !dbg !133                          ; [debug line = 47:60]

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !134), !dbg !136 ; [debug line = 48:21] [debug variable = x]
  store i32 3, i32* %x, align 4, !dbg !137        ; [debug line = 48:48]
  br label %7, !dbg !137                          ; [debug line = 48:48]

; <label>:7                                       ; preds = %17, %6
  %8 = load i32* %x, align 4, !dbg !137           ; [#uses=1 type=i32] [debug line = 48:48]
  %9 = icmp slt i32 %8, 5, !dbg !137              ; [#uses=1 type=i1] [debug line = 48:48]
  br i1 %9, label %10, label %20, !dbg !137       ; [debug line = 48:48]

; <label>:10                                      ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 50:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !138 ; [debug line = 50:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !140 ; [debug line = 49:1]
  %11 = load %"class.hls::stream"** %2, align 8, !dbg !141 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 50:37]
  %12 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream"* %11), !dbg !141 ; [#uses=1 type=i32] [debug line = 50:37]
  %13 = load i32* %x, align 4, !dbg !141          ; [#uses=1 type=i32] [debug line = 50:37]
  %14 = sext i32 %13 to i64, !dbg !141            ; [#uses=1 type=i64] [debug line = 50:37]
  %15 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 0, !dbg !141 ; [#uses=1 type=[5 x i32]*] [debug line = 50:37]
  %16 = getelementptr inbounds [5 x i32]* %15, i32 0, i64 %14, !dbg !141 ; [#uses=1 type=i32*] [debug line = 50:37]
  store i32 %12, i32* %16, align 4, !dbg !141     ; [debug line = 50:37]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 50:52]
  br label %17, !dbg !142                         ; [debug line = 50:52]

; <label>:17                                      ; preds = %10
  %18 = load i32* %x, align 4, !dbg !143          ; [#uses=1 type=i32] [debug line = 48:57]
  %19 = add nsw i32 %18, 1, !dbg !143             ; [#uses=1 type=i32] [debug line = 48:57]
  store i32 %19, i32* %x, align 4, !dbg !143      ; [debug line = 48:57]
  br label %7, !dbg !143                          ; [debug line = 48:57]

; <label>:20                                      ; preds = %7
  br label %21, !dbg !144                         ; [debug line = 50:52]

; <label>:21                                      ; preds = %20
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !145), !dbg !147 ; [debug line = 51:20] [debug variable = y]
  store i32 1, i32* %y, align 4, !dbg !148        ; [debug line = 51:39]
  br label %22, !dbg !148                         ; [debug line = 51:39]

; <label>:22                                      ; preds = %43, %21
  %23 = load i32* %y, align 4, !dbg !148          ; [#uses=1 type=i32] [debug line = 51:39]
  %24 = icmp slt i32 %23, 2, !dbg !148            ; [#uses=1 type=i1] [debug line = 51:39]
  br i1 %24, label %25, label %46, !dbg !148      ; [debug line = 51:39]

; <label>:25                                      ; preds = %22
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 52:5]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !149 ; [debug line = 52:5]
  br label %26, !dbg !149                         ; [debug line = 52:5]

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %x1}, metadata !151), !dbg !153 ; [debug line = 52:23] [debug variable = x]
  store i32 0, i32* %x1, align 4, !dbg !154       ; [debug line = 52:28]
  br label %27, !dbg !154                         ; [debug line = 52:28]

; <label>:27                                      ; preds = %39, %26
  %28 = load i32* %x1, align 4, !dbg !154         ; [#uses=1 type=i32] [debug line = 52:28]
  %29 = icmp slt i32 %28, 5, !dbg !154            ; [#uses=1 type=i1] [debug line = 52:28]
  br i1 %29, label %30, label %42, !dbg !154      ; [debug line = 52:28]

; <label>:30                                      ; preds = %27
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !155 ; [debug line = 54:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !155 ; [debug line = 54:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !157 ; [debug line = 53:1]
  %31 = load %"class.hls::stream"** %2, align 8, !dbg !158 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 54:19]
  %32 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream"* %31), !dbg !158 ; [#uses=1 type=i32] [debug line = 54:19]
  %33 = load i32* %x1, align 4, !dbg !158         ; [#uses=1 type=i32] [debug line = 54:19]
  %34 = sext i32 %33 to i64, !dbg !158            ; [#uses=1 type=i64] [debug line = 54:19]
  %35 = load i32* %y, align 4, !dbg !158          ; [#uses=1 type=i32] [debug line = 54:19]
  %36 = sext i32 %35 to i64, !dbg !158            ; [#uses=1 type=i64] [debug line = 54:19]
  %37 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 %36, !dbg !158 ; [#uses=1 type=[5 x i32]*] [debug line = 54:19]
  %38 = getelementptr inbounds [5 x i32]* %37, i32 0, i64 %34, !dbg !158 ; [#uses=1 type=i32*] [debug line = 54:19]
  store i32 %32, i32* %38, align 4, !dbg !158     ; [debug line = 54:19]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !159 ; [debug line = 54:34]
  br label %39, !dbg !159                         ; [debug line = 54:34]

; <label>:39                                      ; preds = %30
  %40 = load i32* %x1, align 4, !dbg !160         ; [#uses=1 type=i32] [debug line = 52:37]
  %41 = add nsw i32 %40, 1, !dbg !160             ; [#uses=1 type=i32] [debug line = 52:37]
  store i32 %41, i32* %x1, align 4, !dbg !160     ; [debug line = 52:37]
  br label %27, !dbg !160                         ; [debug line = 52:37]

; <label>:42                                      ; preds = %27
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !161 ; [debug line = 54:34]
  br label %43, !dbg !161                         ; [debug line = 54:34]

; <label>:43                                      ; preds = %42
  %44 = load i32* %y, align 4, !dbg !162          ; [#uses=1 type=i32] [debug line = 51:52]
  %45 = add nsw i32 %44, 1, !dbg !162             ; [#uses=1 type=i32] [debug line = 51:52]
  store i32 %45, i32* %y, align 4, !dbg !162      ; [debug line = 51:52]
  br label %22, !dbg !162                         ; [debug line = 51:52]

; <label>:46                                      ; preds = %22
  br label %47, !dbg !163                         ; [debug line = 54:34]

; <label>:47                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{i32* %y2}, metadata !164), !dbg !166 ; [debug line = 57:20] [debug variable = y]
  store i32 1, i32* %y2, align 4, !dbg !167       ; [debug line = 57:39]
  br label %48, !dbg !167                         ; [debug line = 57:39]

; <label>:48                                      ; preds = %77, %47
  %49 = load i32* %y2, align 4, !dbg !167         ; [#uses=1 type=i32] [debug line = 57:39]
  %50 = icmp slt i32 %49, 3, !dbg !167            ; [#uses=1 type=i1] [debug line = 57:39]
  br i1 %50, label %51, label %80, !dbg !167      ; [debug line = 57:39]

; <label>:51                                      ; preds = %48
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 58:5]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !168 ; [debug line = 58:5]
  br label %52, !dbg !168                         ; [debug line = 58:5]

; <label>:52                                      ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %x3}, metadata !170), !dbg !172 ; [debug line = 58:22] [debug variable = x]
  store i32 1, i32* %x3, align 4, !dbg !173       ; [debug line = 58:41]
  br label %53, !dbg !173                         ; [debug line = 58:41]

; <label>:53                                      ; preds = %73, %52
  %54 = load i32* %x3, align 4, !dbg !173         ; [#uses=1 type=i32] [debug line = 58:41]
  %55 = icmp slt i32 %54, 3, !dbg !173            ; [#uses=1 type=i1] [debug line = 58:41]
  br i1 %55, label %56, label %76, !dbg !173      ; [debug line = 58:41]

; <label>:56                                      ; preds = %53
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !174 ; [debug line = 60:3]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !174 ; [debug line = 60:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !176 ; [debug line = 59:1]
  %57 = load i32* %x3, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 60:2]
  %58 = add nsw i32 %57, 5, !dbg !177             ; [#uses=1 type=i32] [debug line = 60:2]
  %59 = sub nsw i32 %58, 3, !dbg !177             ; [#uses=1 type=i32] [debug line = 60:2]
  %60 = sext i32 %59 to i64, !dbg !177            ; [#uses=1 type=i64] [debug line = 60:2]
  %61 = load i32* %y2, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 60:2]
  %62 = sub nsw i32 %61, 1, !dbg !177             ; [#uses=1 type=i32] [debug line = 60:2]
  %63 = sext i32 %62 to i64, !dbg !177            ; [#uses=1 type=i64] [debug line = 60:2]
  %64 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 %63, !dbg !177 ; [#uses=1 type=[5 x i32]*] [debug line = 60:2]
  %65 = getelementptr inbounds [5 x i32]* %64, i32 0, i64 %60, !dbg !177 ; [#uses=1 type=i32*] [debug line = 60:2]
  %66 = load i32* %65, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 60:2]
  %67 = load i32* %x3, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 60:2]
  %68 = sext i32 %67 to i64, !dbg !177            ; [#uses=1 type=i64] [debug line = 60:2]
  %69 = load i32* %y2, align 4, !dbg !177         ; [#uses=1 type=i32] [debug line = 60:2]
  %70 = sext i32 %69 to i64, !dbg !177            ; [#uses=1 type=i64] [debug line = 60:2]
  %71 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i64 %70, !dbg !177 ; [#uses=1 type=[3 x i32]*] [debug line = 60:2]
  %72 = getelementptr inbounds [3 x i32]* %71, i32 0, i64 %68, !dbg !177 ; [#uses=1 type=i32*] [debug line = 60:2]
  store i32 %66, i32* %72, align 4, !dbg !177     ; [debug line = 60:2]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !178 ; [debug line = 60:42]
  br label %73, !dbg !178                         ; [debug line = 60:42]

; <label>:73                                      ; preds = %56
  %74 = load i32* %x3, align 4, !dbg !179         ; [#uses=1 type=i32] [debug line = 58:50]
  %75 = add nsw i32 %74, 1, !dbg !179             ; [#uses=1 type=i32] [debug line = 58:50]
  store i32 %75, i32* %x3, align 4, !dbg !179     ; [debug line = 58:50]
  br label %53, !dbg !179                         ; [debug line = 58:50]

; <label>:76                                      ; preds = %53
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !180 ; [debug line = 60:42]
  br label %77, !dbg !180                         ; [debug line = 60:42]

; <label>:77                                      ; preds = %76
  %78 = load i32* %y2, align 4, !dbg !181         ; [#uses=1 type=i32] [debug line = 57:48]
  %79 = add nsw i32 %78, 1, !dbg !181             ; [#uses=1 type=i32] [debug line = 57:48]
  store i32 %79, i32* %y2, align 4, !dbg !181     ; [debug line = 57:48]
  br label %48, !dbg !181                         ; [debug line = 57:48]

; <label>:80                                      ; preds = %48
  br label %81, !dbg !182                         ; [debug line = 60:42]

; <label>:81                                      ; preds = %80
  call void @llvm.dbg.declare(metadata !{i32* %y4}, metadata !183), !dbg !185 ; [debug line = 63:20] [debug variable = y]
  store i32 0, i32* %y4, align 4, !dbg !186       ; [debug line = 63:25]
  br label %82, !dbg !186                         ; [debug line = 63:25]

; <label>:82                                      ; preds = %191, %81
  %83 = load i32* %y4, align 4, !dbg !186         ; [#uses=1 type=i32] [debug line = 63:25]
  %84 = icmp slt i32 %83, 5, !dbg !186            ; [#uses=1 type=i1] [debug line = 63:25]
  br i1 %84, label %85, label %194, !dbg !186     ; [debug line = 63:25]

; <label>:85                                      ; preds = %82
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !187 ; [debug line = 64:4]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !187 ; [debug line = 64:4]
  br label %86, !dbg !187                         ; [debug line = 64:4]

; <label>:86                                      ; preds = %85
  call void @llvm.dbg.declare(metadata !{i32* %x5}, metadata !189), !dbg !191 ; [debug line = 65:22] [debug variable = x]
  store i32 0, i32* %x5, align 4, !dbg !192       ; [debug line = 65:27]
  br label %87, !dbg !192                         ; [debug line = 65:27]

; <label>:87                                      ; preds = %187, %86
  %88 = load i32* %x5, align 4, !dbg !192         ; [#uses=1 type=i32] [debug line = 65:27]
  %89 = icmp slt i32 %88, 5, !dbg !192            ; [#uses=1 type=i1] [debug line = 65:27]
  br i1 %89, label %90, label %190, !dbg !192     ; [debug line = 65:27]

; <label>:90                                      ; preds = %87
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !193 ; [debug line = 66:6]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !193 ; [debug line = 66:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !195 ; [debug line = 67:1]
  call void @llvm.dbg.declare(metadata !{i32* %val_out}, metadata !196), !dbg !197 ; [debug line = 68:6] [debug variable = val_out]
  %91 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i32 0, !dbg !198 ; [#uses=1 type=[3 x i32]*] [debug line = 68:16]
  %92 = load i32* %y4, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 68:16]
  %93 = load i32* %x5, align 4, !dbg !198         ; [#uses=1 type=i32] [debug line = 68:16]
  %94 = call i32 @_Z10sum_windowPA3_iii([3 x i32]* %91, i32 %92, i32 %93), !dbg !198 ; [#uses=1 type=i32] [debug line = 68:16]
  store i32 %94, i32* %val_out, align 4, !dbg !198 ; [debug line = 68:16]
  %95 = load %"class.hls::stream"** %1, align 8, !dbg !199 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 71:7]
  call void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream"* %95, i32* %val_out), !dbg !199 ; [debug line = 71:7]
  %96 = load i32* %x5, align 4, !dbg !200         ; [#uses=1 type=i32] [debug line = 74:7]
  %97 = sext i32 %96 to i64, !dbg !200            ; [#uses=1 type=i64] [debug line = 74:7]
  %98 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 0, !dbg !200 ; [#uses=1 type=[5 x i32]*] [debug line = 74:7]
  %99 = getelementptr inbounds [5 x i32]* %98, i32 0, i64 %97, !dbg !200 ; [#uses=1 type=i32*] [debug line = 74:7]
  %100 = load i32* %99, align 4, !dbg !200        ; [#uses=1 type=i32] [debug line = 74:7]
  %101 = getelementptr inbounds [3 x i32]* %right, i32 0, i64 0, !dbg !200 ; [#uses=1 type=i32*] [debug line = 74:7]
  store i32 %100, i32* %101, align 4, !dbg !200   ; [debug line = 74:7]
  call void @llvm.dbg.declare(metadata !{i32* %y6}, metadata !201), !dbg !203 ; [debug line = 75:16] [debug variable = y]
  store i32 1, i32* %y6, align 4, !dbg !204       ; [debug line = 75:21]
  br label %102, !dbg !204                        ; [debug line = 75:21]

; <label>:102                                     ; preds = %123, %90
  %103 = load i32* %y6, align 4, !dbg !204        ; [#uses=1 type=i32] [debug line = 75:21]
  %104 = icmp slt i32 %103, 2, !dbg !204          ; [#uses=1 type=i1] [debug line = 75:21]
  br i1 %104, label %105, label %126, !dbg !204   ; [debug line = 75:21]

; <label>:105                                     ; preds = %102
  %106 = load i32* %x5, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 76:9]
  %107 = sext i32 %106 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 76:9]
  %108 = load i32* %y6, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 76:9]
  %109 = sext i32 %108 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 76:9]
  %110 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 %109, !dbg !205 ; [#uses=1 type=[5 x i32]*] [debug line = 76:9]
  %111 = getelementptr inbounds [5 x i32]* %110, i32 0, i64 %107, !dbg !205 ; [#uses=1 type=i32*] [debug line = 76:9]
  %112 = load i32* %111, align 4, !dbg !205       ; [#uses=2 type=i32] [debug line = 76:9]
  %113 = load i32* %x5, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 76:9]
  %114 = sext i32 %113 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 76:9]
  %115 = load i32* %y6, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 76:9]
  %116 = sub nsw i32 %115, 1, !dbg !205           ; [#uses=1 type=i32] [debug line = 76:9]
  %117 = sext i32 %116 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 76:9]
  %118 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 %117, !dbg !205 ; [#uses=1 type=[5 x i32]*] [debug line = 76:9]
  %119 = getelementptr inbounds [5 x i32]* %118, i32 0, i64 %114, !dbg !205 ; [#uses=1 type=i32*] [debug line = 76:9]
  store i32 %112, i32* %119, align 4, !dbg !205   ; [debug line = 76:9]
  %120 = load i32* %y6, align 4, !dbg !205        ; [#uses=1 type=i32] [debug line = 76:9]
  %121 = sext i32 %120 to i64, !dbg !205          ; [#uses=1 type=i64] [debug line = 76:9]
  %122 = getelementptr inbounds [3 x i32]* %right, i32 0, i64 %121, !dbg !205 ; [#uses=1 type=i32*] [debug line = 76:9]
  store i32 %112, i32* %122, align 4, !dbg !205   ; [debug line = 76:9]
  br label %123, !dbg !205                        ; [debug line = 76:9]

; <label>:123                                     ; preds = %105
  %124 = load i32* %y6, align 4, !dbg !206        ; [#uses=1 type=i32] [debug line = 75:34]
  %125 = add nsw i32 %124, 1, !dbg !206           ; [#uses=1 type=i32] [debug line = 75:34]
  store i32 %125, i32* %y6, align 4, !dbg !206    ; [debug line = 75:34]
  br label %102, !dbg !206                        ; [debug line = 75:34]

; <label>:126                                     ; preds = %102
  call void @llvm.dbg.declare(metadata !{i32* %val_in}, metadata !207), !dbg !208 ; [debug line = 79:11] [debug variable = val_in]
  store i32 0, i32* %val_in, align 4, !dbg !209   ; [debug line = 79:21]
  %127 = load i32* %read_count, align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 80:7]
  %128 = icmp slt i32 %127, 25, !dbg !210         ; [#uses=1 type=i1] [debug line = 80:7]
  br i1 %128, label %129, label %134, !dbg !210   ; [debug line = 80:7]

; <label>:129                                     ; preds = %126
  %130 = load %"class.hls::stream"** %2, align 8, !dbg !211 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 82:18]
  %131 = call i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream"* %130), !dbg !211 ; [#uses=1 type=i32] [debug line = 82:18]
  store i32 %131, i32* %val_in, align 4, !dbg !211 ; [debug line = 82:18]
  %132 = load i32* %read_count, align 4, !dbg !213 ; [#uses=1 type=i32] [debug line = 83:9]
  %133 = add nsw i32 %132, 1, !dbg !213           ; [#uses=1 type=i32] [debug line = 83:9]
  store i32 %133, i32* %read_count, align 4, !dbg !213 ; [debug line = 83:9]
  br label %134, !dbg !214                        ; [debug line = 84:7]

; <label>:134                                     ; preds = %129, %126
  %135 = load i32* %val_in, align 4, !dbg !215    ; [#uses=2 type=i32] [debug line = 85:7]
  %136 = load i32* %x5, align 4, !dbg !215        ; [#uses=1 type=i32] [debug line = 85:7]
  %137 = sext i32 %136 to i64, !dbg !215          ; [#uses=1 type=i64] [debug line = 85:7]
  %138 = getelementptr inbounds [2 x [5 x i32]]* %line_buf, i32 0, i64 1, !dbg !215 ; [#uses=1 type=[5 x i32]*] [debug line = 85:7]
  %139 = getelementptr inbounds [5 x i32]* %138, i32 0, i64 %137, !dbg !215 ; [#uses=1 type=i32*] [debug line = 85:7]
  store i32 %135, i32* %139, align 4, !dbg !215   ; [debug line = 85:7]
  %140 = getelementptr inbounds [3 x i32]* %right, i32 0, i64 2, !dbg !215 ; [#uses=1 type=i32*] [debug line = 85:7]
  store i32 %135, i32* %140, align 4, !dbg !215   ; [debug line = 85:7]
  call void @llvm.dbg.declare(metadata !{i32* %y7}, metadata !216), !dbg !218 ; [debug line = 88:16] [debug variable = y]
  store i32 0, i32* %y7, align 4, !dbg !219       ; [debug line = 88:21]
  br label %141, !dbg !219                        ; [debug line = 88:21]

; <label>:141                                     ; preds = %167, %134
  %142 = load i32* %y7, align 4, !dbg !219        ; [#uses=1 type=i32] [debug line = 88:21]
  %143 = icmp slt i32 %142, 3, !dbg !219          ; [#uses=1 type=i1] [debug line = 88:21]
  br i1 %143, label %144, label %170, !dbg !219   ; [debug line = 88:21]

; <label>:144                                     ; preds = %141
  call void @llvm.dbg.declare(metadata !{i32* %x8}, metadata !220), !dbg !222 ; [debug line = 89:18] [debug variable = x]
  store i32 0, i32* %x8, align 4, !dbg !223       ; [debug line = 89:23]
  br label %145, !dbg !223                        ; [debug line = 89:23]

; <label>:145                                     ; preds = %163, %144
  %146 = load i32* %x8, align 4, !dbg !223        ; [#uses=1 type=i32] [debug line = 89:23]
  %147 = icmp slt i32 %146, 2, !dbg !223          ; [#uses=1 type=i1] [debug line = 89:23]
  br i1 %147, label %148, label %166, !dbg !223   ; [debug line = 89:23]

; <label>:148                                     ; preds = %145
  %149 = load i32* %x8, align 4, !dbg !224        ; [#uses=1 type=i32] [debug line = 90:11]
  %150 = add nsw i32 %149, 1, !dbg !224           ; [#uses=1 type=i32] [debug line = 90:11]
  %151 = sext i32 %150 to i64, !dbg !224          ; [#uses=1 type=i64] [debug line = 90:11]
  %152 = load i32* %y7, align 4, !dbg !224        ; [#uses=1 type=i32] [debug line = 90:11]
  %153 = sext i32 %152 to i64, !dbg !224          ; [#uses=1 type=i64] [debug line = 90:11]
  %154 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i64 %153, !dbg !224 ; [#uses=1 type=[3 x i32]*] [debug line = 90:11]
  %155 = getelementptr inbounds [3 x i32]* %154, i32 0, i64 %151, !dbg !224 ; [#uses=1 type=i32*] [debug line = 90:11]
  %156 = load i32* %155, align 4, !dbg !224       ; [#uses=1 type=i32] [debug line = 90:11]
  %157 = load i32* %x8, align 4, !dbg !224        ; [#uses=1 type=i32] [debug line = 90:11]
  %158 = sext i32 %157 to i64, !dbg !224          ; [#uses=1 type=i64] [debug line = 90:11]
  %159 = load i32* %y7, align 4, !dbg !224        ; [#uses=1 type=i32] [debug line = 90:11]
  %160 = sext i32 %159 to i64, !dbg !224          ; [#uses=1 type=i64] [debug line = 90:11]
  %161 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i64 %160, !dbg !224 ; [#uses=1 type=[3 x i32]*] [debug line = 90:11]
  %162 = getelementptr inbounds [3 x i32]* %161, i32 0, i64 %158, !dbg !224 ; [#uses=1 type=i32*] [debug line = 90:11]
  store i32 %156, i32* %162, align 4, !dbg !224   ; [debug line = 90:11]
  br label %163, !dbg !224                        ; [debug line = 90:11]

; <label>:163                                     ; preds = %148
  %164 = load i32* %x8, align 4, !dbg !225        ; [#uses=1 type=i32] [debug line = 89:36]
  %165 = add nsw i32 %164, 1, !dbg !225           ; [#uses=1 type=i32] [debug line = 89:36]
  store i32 %165, i32* %x8, align 4, !dbg !225    ; [debug line = 89:36]
  br label %145, !dbg !225                        ; [debug line = 89:36]

; <label>:166                                     ; preds = %145
  br label %167, !dbg !226                        ; [debug line = 90:41]

; <label>:167                                     ; preds = %166
  %168 = load i32* %y7, align 4, !dbg !227        ; [#uses=1 type=i32] [debug line = 88:30]
  %169 = add nsw i32 %168, 1, !dbg !227           ; [#uses=1 type=i32] [debug line = 88:30]
  store i32 %169, i32* %y7, align 4, !dbg !227    ; [debug line = 88:30]
  br label %141, !dbg !227                        ; [debug line = 88:30]

; <label>:170                                     ; preds = %141
  call void @llvm.dbg.declare(metadata !{i32* %y9}, metadata !228), !dbg !230 ; [debug line = 93:16] [debug variable = y]
  store i32 0, i32* %y9, align 4, !dbg !231       ; [debug line = 93:21]
  br label %171, !dbg !231                        ; [debug line = 93:21]

; <label>:171                                     ; preds = %183, %170
  %172 = load i32* %y9, align 4, !dbg !231        ; [#uses=1 type=i32] [debug line = 93:21]
  %173 = icmp slt i32 %172, 3, !dbg !231          ; [#uses=1 type=i1] [debug line = 93:21]
  br i1 %173, label %174, label %186, !dbg !231   ; [debug line = 93:21]

; <label>:174                                     ; preds = %171
  %175 = load i32* %y9, align 4, !dbg !232        ; [#uses=1 type=i32] [debug line = 94:9]
  %176 = sext i32 %175 to i64, !dbg !232          ; [#uses=1 type=i64] [debug line = 94:9]
  %177 = getelementptr inbounds [3 x i32]* %right, i32 0, i64 %176, !dbg !232 ; [#uses=1 type=i32*] [debug line = 94:9]
  %178 = load i32* %177, align 4, !dbg !232       ; [#uses=1 type=i32] [debug line = 94:9]
  %179 = load i32* %y9, align 4, !dbg !232        ; [#uses=1 type=i32] [debug line = 94:9]
  %180 = sext i32 %179 to i64, !dbg !232          ; [#uses=1 type=i64] [debug line = 94:9]
  %181 = getelementptr inbounds [3 x [3 x i32]]* %window, i32 0, i64 %180, !dbg !232 ; [#uses=1 type=[3 x i32]*] [debug line = 94:9]
  %182 = getelementptr inbounds [3 x i32]* %181, i32 0, i64 2, !dbg !232 ; [#uses=1 type=i32*] [debug line = 94:9]
  store i32 %178, i32* %182, align 4, !dbg !232   ; [debug line = 94:9]
  br label %183, !dbg !232                        ; [debug line = 94:9]

; <label>:183                                     ; preds = %174
  %184 = load i32* %y9, align 4, !dbg !233        ; [#uses=1 type=i32] [debug line = 93:30]
  %185 = add nsw i32 %184, 1, !dbg !233           ; [#uses=1 type=i32] [debug line = 93:30]
  store i32 %185, i32* %y9, align 4, !dbg !233    ; [debug line = 93:30]
  br label %171, !dbg !233                        ; [debug line = 93:30]

; <label>:186                                     ; preds = %171
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !234 ; [debug line = 95:5]
  br label %187, !dbg !234                        ; [debug line = 95:5]

; <label>:187                                     ; preds = %186
  %188 = load i32* %x5, align 4, !dbg !235        ; [#uses=1 type=i32] [debug line = 65:36]
  %189 = add nsw i32 %188, 1, !dbg !235           ; [#uses=1 type=i32] [debug line = 65:36]
  store i32 %189, i32* %x5, align 4, !dbg !235    ; [debug line = 65:36]
  br label %87, !dbg !235                         ; [debug line = 65:36]

; <label>:190                                     ; preds = %87
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !236 ; [debug line = 96:3]
  br label %191, !dbg !236                        ; [debug line = 96:3]

; <label>:191                                     ; preds = %190
  %192 = load i32* %y4, align 4, !dbg !237        ; [#uses=1 type=i32] [debug line = 63:34]
  %193 = add nsw i32 %192, 1, !dbg !237           ; [#uses=1 type=i32] [debug line = 63:34]
  store i32 %193, i32* %y4, align 4, !dbg !237    ; [debug line = 63:34]
  br label %82, !dbg !237                         ; [debug line = 63:34]

; <label>:194                                     ; preds = %82
  ret void, !dbg !238                             ; [debug line = 97:1]
}

; [#uses=32]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=9]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
define internal i32 @_ZN3hls6streamIiE4readEv(%"class.hls::stream"* %this) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !239), !dbg !241 ; [debug line = 129:56] [debug variable = this]
  %2 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !242), !dbg !244 ; [debug line = 130:22] [debug variable = tmp]
  %3 = getelementptr inbounds %"class.hls::stream"* %2, i32 0, i32 0, !dbg !245 ; [#uses=1 type=i32*] [debug line = 131:9]
  call void (...)* @_ssdm_StreamRead(i32* %3, i32* %tmp) nounwind, !dbg !245 ; [debug line = 131:9]
  %4 = load i32* %tmp, align 4, !dbg !246         ; [#uses=1 type=i32] [debug line = 132:9]
  ret i32 %4, !dbg !246                           ; [debug line = 132:9]
}

; [#uses=9]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal i32 @_Z10sum_windowPA3_iii([3 x i32]* %window, i32 %y, i32 %x) nounwind uwtable inlinehint {
  %1 = alloca [3 x i32]*, align 8                 ; [#uses=3 type=[3 x i32]**]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %result = alloca i32, align 4                   ; [#uses=4 type=i32*]
  %i = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=7 type=i32*]
  store [3 x i32]* %window, [3 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i32]** %1}, metadata !247), !dbg !248 ; [debug line = 18:27] [debug variable = window]
  store i32 %y, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !249), !dbg !250 ; [debug line = 18:45] [debug variable = y]
  store i32 %x, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !251), !dbg !252 ; [debug line = 18:52] [debug variable = x]
  %4 = load [3 x i32]** %1, align 8, !dbg !253    ; [#uses=1 type=[3 x i32]*] [debug line = 19:2]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %4, i32 3) nounwind, !dbg !253 ; [debug line = 19:2]
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !255), !dbg !256 ; [debug line = 20:9] [debug variable = result]
  store i32 0, i32* %result, align 4, !dbg !257   ; [debug line = 20:19]
  br label %5, !dbg !257                          ; [debug line = 20:19]

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !258), !dbg !260 ; [debug line = 22:22] [debug variable = i]
  store i32 -1, i32* %i, align 4, !dbg !261       ; [debug line = 22:42]
  br label %6, !dbg !261                          ; [debug line = 22:42]

; <label>:6                                       ; preds = %50, %5
  %7 = load i32* %i, align 4, !dbg !261           ; [#uses=1 type=i32] [debug line = 22:42]
  %8 = icmp sle i32 %7, 1, !dbg !261              ; [#uses=1 type=i1] [debug line = 22:42]
  br i1 %8, label %9, label %53, !dbg !261        ; [debug line = 22:42]

; <label>:9                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !262 ; [debug line = 23:6]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !262 ; [debug line = 23:6]
  br label %10, !dbg !262                         ; [debug line = 23:6]

; <label>:10                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !264), !dbg !266 ; [debug line = 24:26] [debug variable = j]
  store i32 -1, i32* %j, align 4, !dbg !267       ; [debug line = 24:46]
  br label %11, !dbg !267                         ; [debug line = 24:46]

; <label>:11                                      ; preds = %46, %10
  %12 = load i32* %j, align 4, !dbg !267          ; [#uses=1 type=i32] [debug line = 24:46]
  %13 = icmp sle i32 %12, 1, !dbg !267            ; [#uses=1 type=i1] [debug line = 24:46]
  br i1 %13, label %14, label %49, !dbg !267      ; [debug line = 24:46]

; <label>:14                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !268 ; [debug line = 25:10]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !268 ; [debug line = 25:10]
  %15 = load i32* %2, align 4, !dbg !270          ; [#uses=1 type=i32] [debug line = 26:17]
  %16 = load i32* %i, align 4, !dbg !270          ; [#uses=1 type=i32] [debug line = 26:17]
  %17 = add nsw i32 %15, %16, !dbg !270           ; [#uses=1 type=i32] [debug line = 26:17]
  %18 = load i32* %3, align 4, !dbg !270          ; [#uses=1 type=i32] [debug line = 26:17]
  %19 = load i32* %j, align 4, !dbg !270          ; [#uses=1 type=i32] [debug line = 26:17]
  %20 = add nsw i32 %18, %19, !dbg !270           ; [#uses=1 type=i32] [debug line = 26:17]
  %21 = call zeroext i1 @_Z9bounds_okii(i32 %17, i32 %20), !dbg !270 ; [#uses=1 type=i1] [debug line = 26:17]
  br i1 %21, label %22, label %45, !dbg !270      ; [debug line = 26:17]

; <label>:22                                      ; preds = %14
  %23 = load i32* %j, align 4, !dbg !271          ; [#uses=1 type=i32] [debug line = 28:17]
  %24 = add nsw i32 %23, 1, !dbg !271             ; [#uses=1 type=i32] [debug line = 28:17]
  %25 = sext i32 %24 to i64, !dbg !271            ; [#uses=1 type=i64] [debug line = 28:17]
  %26 = load i32* %i, align 4, !dbg !271          ; [#uses=1 type=i32] [debug line = 28:17]
  %27 = add nsw i32 %26, 1, !dbg !271             ; [#uses=1 type=i32] [debug line = 28:17]
  %28 = sext i32 %27 to i64, !dbg !271            ; [#uses=1 type=i64] [debug line = 28:17]
  %29 = load [3 x i32]** %1, align 8, !dbg !271   ; [#uses=1 type=[3 x i32]*] [debug line = 28:17]
  %30 = getelementptr inbounds [3 x i32]* %29, i64 %28, !dbg !271 ; [#uses=1 type=[3 x i32]*] [debug line = 28:17]
  %31 = getelementptr inbounds [3 x i32]* %30, i32 0, i64 %25, !dbg !271 ; [#uses=1 type=i32*] [debug line = 28:17]
  %32 = load i32* %31, align 4, !dbg !271         ; [#uses=1 type=i32] [debug line = 28:17]
  %33 = load i32* %j, align 4, !dbg !271          ; [#uses=1 type=i32] [debug line = 28:17]
  %34 = add nsw i32 %33, 1, !dbg !271             ; [#uses=1 type=i32] [debug line = 28:17]
  %35 = sext i32 %34 to i64, !dbg !271            ; [#uses=1 type=i64] [debug line = 28:17]
  %36 = load i32* %i, align 4, !dbg !271          ; [#uses=1 type=i32] [debug line = 28:17]
  %37 = add nsw i32 %36, 1, !dbg !271             ; [#uses=1 type=i32] [debug line = 28:17]
  %38 = sext i32 %37 to i64, !dbg !271            ; [#uses=1 type=i64] [debug line = 28:17]
  %39 = getelementptr inbounds [3 x [3 x i32]]* @kernel, i32 0, i64 %38, !dbg !271 ; [#uses=1 type=[3 x i32]*] [debug line = 28:17]
  %40 = getelementptr inbounds [3 x i32]* %39, i32 0, i64 %35, !dbg !271 ; [#uses=1 type=i32*] [debug line = 28:17]
  %41 = load i32* %40, align 4, !dbg !271         ; [#uses=1 type=i32] [debug line = 28:17]
  %42 = mul nsw i32 %32, %41, !dbg !271           ; [#uses=1 type=i32] [debug line = 28:17]
  %43 = load i32* %result, align 4, !dbg !271     ; [#uses=1 type=i32] [debug line = 28:17]
  %44 = add nsw i32 %43, %42, !dbg !271           ; [#uses=1 type=i32] [debug line = 28:17]
  store i32 %44, i32* %result, align 4, !dbg !271 ; [debug line = 28:17]
  br label %45, !dbg !273                         ; [debug line = 29:13]

; <label>:45                                      ; preds = %22, %14
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !274 ; [debug line = 30:9]
  br label %46, !dbg !274                         ; [debug line = 30:9]

; <label>:46                                      ; preds = %45
  %47 = load i32* %j, align 4, !dbg !275          ; [#uses=1 type=i32] [debug line = 24:70]
  %48 = add nsw i32 %47, 1, !dbg !275             ; [#uses=1 type=i32] [debug line = 24:70]
  store i32 %48, i32* %j, align 4, !dbg !275      ; [debug line = 24:70]
  br label %11, !dbg !275                         ; [debug line = 24:70]

; <label>:49                                      ; preds = %11
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !276 ; [debug line = 31:5]
  br label %50, !dbg !276                         ; [debug line = 31:5]

; <label>:50                                      ; preds = %49
  %51 = load i32* %i, align 4, !dbg !277          ; [#uses=1 type=i32] [debug line = 22:66]
  %52 = add nsw i32 %51, 1, !dbg !277             ; [#uses=1 type=i32] [debug line = 22:66]
  store i32 %52, i32* %i, align 4, !dbg !277      ; [debug line = 22:66]
  br label %6, !dbg !277                          ; [debug line = 22:66]

; <label>:53                                      ; preds = %6
  %54 = load i32* %result, align 4, !dbg !278     ; [#uses=1 type=i32] [debug line = 33:5]
  ret i32 %54, !dbg !278                          ; [debug line = 33:5]
}

; [#uses=1]
define internal void @_ZN3hls6streamIiE5writeERKi(%"class.hls::stream"* %this, i32* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !279), !dbg !280 ; [debug line = 144:48] [debug variable = this]
  store i32* %din, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !281), !dbg !282 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !283), !dbg !285 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load i32** %2, align 8, !dbg !286          ; [#uses=1 type=i32*] [debug line = 145:31]
  %5 = load i32* %4, align 4, !dbg !286           ; [#uses=1 type=i32] [debug line = 145:31]
  store i32 %5, i32* %tmp, align 4, !dbg !286     ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !287 ; [#uses=1 type=i32*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(i32* %6, i32* %tmp) nounwind, !dbg !287 ; [debug line = 146:9]
  ret void, !dbg !288                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
define internal zeroext i1 @_Z9bounds_okii(i32 %y, i32 %x) nounwind uwtable inlinehint {
  %1 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  store i32 %y, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !289), !dbg !290 ; [debug line = 12:27] [debug variable = y]
  store i32 %x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !291), !dbg !292 ; [debug line = 12:34] [debug variable = x]
  %3 = load i32* %1, align 4, !dbg !293           ; [#uses=1 type=i32] [debug line = 14:3]
  %4 = icmp sle i32 0, %3, !dbg !293              ; [#uses=1 type=i1] [debug line = 14:3]
  br i1 %4, label %5, label %14, !dbg !293        ; [debug line = 14:3]

; <label>:5                                       ; preds = %0
  %6 = load i32* %1, align 4, !dbg !293           ; [#uses=1 type=i32] [debug line = 14:3]
  %7 = icmp slt i32 %6, 5, !dbg !293              ; [#uses=1 type=i1] [debug line = 14:3]
  br i1 %7, label %8, label %14, !dbg !293        ; [debug line = 14:3]

; <label>:8                                       ; preds = %5
  %9 = load i32* %2, align 4, !dbg !293           ; [#uses=1 type=i32] [debug line = 14:3]
  %10 = icmp sle i32 0, %9, !dbg !293             ; [#uses=1 type=i1] [debug line = 14:3]
  br i1 %10, label %11, label %14, !dbg !293      ; [debug line = 14:3]

; <label>:11                                      ; preds = %8
  %12 = load i32* %2, align 4, !dbg !293          ; [#uses=1 type=i32] [debug line = 14:3]
  %13 = icmp slt i32 %12, 5, !dbg !293            ; [#uses=1 type=i1] [debug line = 14:3]
  br label %14

; <label>:14                                      ; preds = %11, %8, %5, %0
  %15 = phi i1 [ false, %8 ], [ false, %5 ], [ false, %0 ], [ %13, %11 ] ; [#uses=1 type=i1]
  ret i1 %15, !dbg !295                           ; [debug line = 15:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!85, !92, !98, !104, !110}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Vivado/final_conv2d/solution3/.autopilot/db/conv_v2.pragma.2.cpp", metadata !"D:\5CVivado", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !80} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !68, metadata !69, metadata !70, metadata !77}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"do_convolution", metadata !"do_convolution", metadata !"_Z14do_convolutionRN3hls6streamIiEES2_", metadata !6, i32 37, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z14do_convolutionRN3hls6streamIiEES2_, null, null, metadata !20, i32 38} ; [ DW_TAG_subprogram ]
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
!68 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE5writeERKi, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%"class.hls::stream"*)* @_ZN3hls6streamIiE4readEv, null, metadata !52, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sum_window", metadata !"sum_window", metadata !"_Z10sum_windowPA3_iii", metadata !6, i32 18, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*, i32, i32)* @_Z10sum_windowPA3_iii, null, null, metadata !20, i32 19} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!72 = metadata !{metadata !15, metadata !73, metadata !15, metadata !15}
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !15, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!77 = metadata !{i32 786478, i32 0, metadata !6, metadata !"bounds_ok", metadata !"bounds_ok", metadata !"_Z9bounds_okii", metadata !6, i32 12, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i32, i32)* @_Z9bounds_okii, null, null, metadata !20, i32 13} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !48, metadata !15, metadata !15}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786484, i32 0, null, metadata !"kernel", metadata !"kernel", metadata !"", metadata !6, i32 5, metadata !83, i32 0, i32 1, [3 x [3 x i32]]* @kernel} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !15, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !76, metadata !76}
!85 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*)* @_Z14do_convolutionRN3hls6streamIiEES2_, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91}
!86 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!87 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<int> &"}
!89 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"out_stream", metadata !"in_stream"}
!91 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!92 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE5writeERKi, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !91}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const int &"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!98 = metadata !{i32 (%"class.hls::stream"*)* @_ZN3hls6streamIiE4readEv, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !91}
!99 = metadata !{metadata !"kernel_arg_addr_space"}
!100 = metadata !{metadata !"kernel_arg_access_qual"}
!101 = metadata !{metadata !"kernel_arg_type"}
!102 = metadata !{metadata !"kernel_arg_type_qual"}
!103 = metadata !{metadata !"kernel_arg_name"}
!104 = metadata !{i32 ([3 x i32]*, i32, i32)* @_Z10sum_windowPA3_iii, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !91}
!105 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!106 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int", metadata !"int"}
!108 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"window", metadata !"y", metadata !"x"}
!110 = metadata !{i1 (i32, i32)* @_Z9bounds_okii, metadata !86, metadata !87, metadata !111, metadata !89, metadata !112, metadata !91}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!113 = metadata !{i32 786689, metadata !5, metadata !"out_stream", metadata !6, i32 16777253, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 37, i32 39, metadata !5, null}
!115 = metadata !{i32 786689, metadata !5, metadata !"in_stream", metadata !6, i32 33554469, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 37, i32 69, metadata !5, null}
!117 = metadata !{i32 786688, metadata !118, metadata !"line_buf", metadata !6, i32 39, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786443, metadata !5, i32 38, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320, i64 32, i32 0, i32 0, metadata !15, metadata !120, i32 0, i32 0} ; [ DW_TAG_array_type ]
!120 = metadata !{metadata !121, metadata !122}
!121 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ]
!122 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ]
!123 = metadata !{i32 39, i32 7, metadata !118, null}
!124 = metadata !{i32 786688, metadata !118, metadata !"window", metadata !6, i32 40, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 40, i32 7, metadata !118, null}
!126 = metadata !{i32 786688, metadata !118, metadata !"right", metadata !6, i32 41, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 41, i32 7, metadata !118, null}
!128 = metadata !{i32 42, i32 1, metadata !118, null}
!129 = metadata !{i32 43, i32 1, metadata !118, null}
!130 = metadata !{i32 44, i32 1, metadata !118, null}
!131 = metadata !{i32 786688, metadata !118, metadata !"read_count", metadata !6, i32 47, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 47, i32 6, metadata !118, null}
!133 = metadata !{i32 47, i32 60, metadata !118, null}
!134 = metadata !{i32 786688, metadata !135, metadata !"x", metadata !6, i32 48, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786443, metadata !118, i32 48, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 48, i32 21, metadata !135, null}
!137 = metadata !{i32 48, i32 48, metadata !135, null}
!138 = metadata !{i32 50, i32 3, metadata !139, null}
!139 = metadata !{i32 786443, metadata !135, i32 50, i32 2, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 49, i32 1, metadata !139, null}
!141 = metadata !{i32 50, i32 37, metadata !139, null}
!142 = metadata !{i32 50, i32 52, metadata !139, null}
!143 = metadata !{i32 48, i32 57, metadata !135, null}
!144 = metadata !{i32 50, i32 52, metadata !135, null}
!145 = metadata !{i32 786688, metadata !146, metadata !"y", metadata !6, i32 51, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 786443, metadata !118, i32 51, i32 11, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 51, i32 20, metadata !146, null}
!148 = metadata !{i32 51, i32 39, metadata !146, null}
!149 = metadata !{i32 52, i32 5, metadata !150, null}
!150 = metadata !{i32 786443, metadata !146, i32 52, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786688, metadata !152, metadata !"x", metadata !6, i32 52, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 786443, metadata !150, i32 52, i32 14, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 52, i32 23, metadata !152, null}
!154 = metadata !{i32 52, i32 28, metadata !152, null}
!155 = metadata !{i32 54, i32 3, metadata !156, null}
!156 = metadata !{i32 786443, metadata !152, i32 54, i32 2, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 53, i32 1, metadata !156, null}
!158 = metadata !{i32 54, i32 19, metadata !156, null}
!159 = metadata !{i32 54, i32 34, metadata !156, null}
!160 = metadata !{i32 52, i32 37, metadata !152, null}
!161 = metadata !{i32 54, i32 34, metadata !152, null}
!162 = metadata !{i32 51, i32 52, metadata !146, null}
!163 = metadata !{i32 54, i32 34, metadata !146, null}
!164 = metadata !{i32 786688, metadata !165, metadata !"y", metadata !6, i32 57, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 786443, metadata !118, i32 57, i32 11, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 57, i32 20, metadata !165, null}
!167 = metadata !{i32 57, i32 39, metadata !165, null}
!168 = metadata !{i32 58, i32 5, metadata !169, null}
!169 = metadata !{i32 786443, metadata !165, i32 58, i32 5, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786688, metadata !171, metadata !"x", metadata !6, i32 58, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 786443, metadata !169, i32 58, i32 13, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 58, i32 22, metadata !171, null}
!173 = metadata !{i32 58, i32 41, metadata !171, null}
!174 = metadata !{i32 60, i32 3, metadata !175, null}
!175 = metadata !{i32 786443, metadata !171, i32 60, i32 2, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 59, i32 1, metadata !175, null}
!177 = metadata !{i32 60, i32 2, metadata !175, null}
!178 = metadata !{i32 60, i32 42, metadata !175, null}
!179 = metadata !{i32 58, i32 50, metadata !171, null}
!180 = metadata !{i32 60, i32 42, metadata !171, null}
!181 = metadata !{i32 57, i32 48, metadata !165, null}
!182 = metadata !{i32 60, i32 42, metadata !165, null}
!183 = metadata !{i32 786688, metadata !184, metadata !"y", metadata !6, i32 63, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 786443, metadata !118, i32 63, i32 11, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 63, i32 20, metadata !184, null}
!186 = metadata !{i32 63, i32 25, metadata !184, null}
!187 = metadata !{i32 64, i32 4, metadata !188, null}
!188 = metadata !{i32 786443, metadata !184, i32 64, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 786688, metadata !190, metadata !"x", metadata !6, i32 65, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786443, metadata !188, i32 65, i32 13, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 65, i32 22, metadata !190, null}
!192 = metadata !{i32 65, i32 27, metadata !190, null}
!193 = metadata !{i32 66, i32 6, metadata !194, null}
!194 = metadata !{i32 786443, metadata !190, i32 66, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 67, i32 1, metadata !194, null}
!196 = metadata !{i32 786688, metadata !194, metadata !"val_out", metadata !6, i32 68, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 68, i32 6, metadata !194, null}
!198 = metadata !{i32 68, i32 16, metadata !194, null}
!199 = metadata !{i32 71, i32 7, metadata !194, null}
!200 = metadata !{i32 74, i32 7, metadata !194, null}
!201 = metadata !{i32 786688, metadata !202, metadata !"y", metadata !6, i32 75, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 786443, metadata !194, i32 75, i32 7, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 75, i32 16, metadata !202, null}
!204 = metadata !{i32 75, i32 21, metadata !202, null}
!205 = metadata !{i32 76, i32 9, metadata !202, null}
!206 = metadata !{i32 75, i32 34, metadata !202, null}
!207 = metadata !{i32 786688, metadata !194, metadata !"val_in", metadata !6, i32 79, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 79, i32 11, metadata !194, null}
!209 = metadata !{i32 79, i32 21, metadata !194, null}
!210 = metadata !{i32 80, i32 7, metadata !194, null}
!211 = metadata !{i32 82, i32 18, metadata !212, null}
!212 = metadata !{i32 786443, metadata !194, i32 81, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 83, i32 9, metadata !212, null}
!214 = metadata !{i32 84, i32 7, metadata !212, null}
!215 = metadata !{i32 85, i32 7, metadata !194, null}
!216 = metadata !{i32 786688, metadata !217, metadata !"y", metadata !6, i32 88, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!217 = metadata !{i32 786443, metadata !194, i32 88, i32 7, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!218 = metadata !{i32 88, i32 16, metadata !217, null}
!219 = metadata !{i32 88, i32 21, metadata !217, null}
!220 = metadata !{i32 786688, metadata !221, metadata !"x", metadata !6, i32 89, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!221 = metadata !{i32 786443, metadata !217, i32 89, i32 9, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 89, i32 18, metadata !221, null}
!223 = metadata !{i32 89, i32 23, metadata !221, null}
!224 = metadata !{i32 90, i32 11, metadata !221, null}
!225 = metadata !{i32 89, i32 36, metadata !221, null}
!226 = metadata !{i32 90, i32 41, metadata !221, null}
!227 = metadata !{i32 88, i32 30, metadata !217, null}
!228 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !6, i32 93, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 786443, metadata !194, i32 93, i32 7, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 93, i32 16, metadata !229, null}
!231 = metadata !{i32 93, i32 21, metadata !229, null}
!232 = metadata !{i32 94, i32 9, metadata !229, null}
!233 = metadata !{i32 93, i32 30, metadata !229, null}
!234 = metadata !{i32 95, i32 5, metadata !194, null}
!235 = metadata !{i32 65, i32 36, metadata !190, null}
!236 = metadata !{i32 96, i32 3, metadata !188, null}
!237 = metadata !{i32 63, i32 34, metadata !184, null}
!238 = metadata !{i32 97, i32 1, metadata !118, null}
!239 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777345, metadata !240, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!240 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!241 = metadata !{i32 129, i32 56, metadata !69, null}
!242 = metadata !{i32 786688, metadata !243, metadata !"tmp", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!243 = metadata !{i32 786443, metadata !69, i32 129, i32 63, metadata !12, i32 21} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 130, i32 22, metadata !243, null}
!245 = metadata !{i32 131, i32 9, metadata !243, null}
!246 = metadata !{i32 132, i32 9, metadata !243, null}
!247 = metadata !{i32 786689, metadata !70, metadata !"window", metadata !6, i32 16777234, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!248 = metadata !{i32 18, i32 27, metadata !70, null}
!249 = metadata !{i32 786689, metadata !70, metadata !"y", metadata !6, i32 33554450, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!250 = metadata !{i32 18, i32 45, metadata !70, null}
!251 = metadata !{i32 786689, metadata !70, metadata !"x", metadata !6, i32 50331666, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 18, i32 52, metadata !70, null}
!253 = metadata !{i32 19, i32 2, metadata !254, null}
!254 = metadata !{i32 786443, metadata !70, i32 19, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 786688, metadata !254, metadata !"result", metadata !6, i32 20, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!256 = metadata !{i32 20, i32 9, metadata !254, null}
!257 = metadata !{i32 20, i32 19, metadata !254, null}
!258 = metadata !{i32 786688, metadata !259, metadata !"i", metadata !6, i32 22, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 786443, metadata !254, i32 22, i32 13, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 22, i32 22, metadata !259, null}
!261 = metadata !{i32 22, i32 42, metadata !259, null}
!262 = metadata !{i32 23, i32 6, metadata !263, null}
!263 = metadata !{i32 786443, metadata !259, i32 23, i32 5, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!264 = metadata !{i32 786688, metadata !265, metadata !"j", metadata !6, i32 24, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!265 = metadata !{i32 786443, metadata !263, i32 24, i32 17, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 24, i32 26, metadata !265, null}
!267 = metadata !{i32 24, i32 46, metadata !265, null}
!268 = metadata !{i32 25, i32 10, metadata !269, null}
!269 = metadata !{i32 786443, metadata !265, i32 25, i32 9, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!270 = metadata !{i32 26, i32 17, metadata !269, null}
!271 = metadata !{i32 28, i32 17, metadata !272, null}
!272 = metadata !{i32 786443, metadata !269, i32 27, i32 13, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 29, i32 13, metadata !272, null}
!274 = metadata !{i32 30, i32 9, metadata !269, null}
!275 = metadata !{i32 24, i32 70, metadata !265, null}
!276 = metadata !{i32 31, i32 5, metadata !263, null}
!277 = metadata !{i32 22, i32 66, metadata !259, null}
!278 = metadata !{i32 33, i32 5, metadata !254, null}
!279 = metadata !{i32 786689, metadata !68, metadata !"this", metadata !12, i32 16777360, metadata !240, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!280 = metadata !{i32 144, i32 48, metadata !68, null}
!281 = metadata !{i32 786689, metadata !68, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!282 = metadata !{i32 144, i32 74, metadata !68, null}
!283 = metadata !{i32 786688, metadata !284, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!284 = metadata !{i32 786443, metadata !68, i32 144, i32 79, metadata !12, i32 20} ; [ DW_TAG_lexical_block ]
!285 = metadata !{i32 145, i32 22, metadata !284, null}
!286 = metadata !{i32 145, i32 31, metadata !284, null}
!287 = metadata !{i32 146, i32 9, metadata !284, null}
!288 = metadata !{i32 147, i32 5, metadata !284, null}
!289 = metadata !{i32 786689, metadata !77, metadata !"y", metadata !6, i32 16777228, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!290 = metadata !{i32 12, i32 27, metadata !77, null}
!291 = metadata !{i32 786689, metadata !77, metadata !"x", metadata !6, i32 33554444, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!292 = metadata !{i32 12, i32 34, metadata !77, null}
!293 = metadata !{i32 14, i32 3, metadata !294, null}
!294 = metadata !{i32 786443, metadata !77, i32 13, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!295 = metadata !{i32 15, i32 1, metadata !77, null}
