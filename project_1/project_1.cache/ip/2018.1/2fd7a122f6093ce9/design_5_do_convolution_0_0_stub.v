// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Dec 17 18:25:36 2024
// Host        : maytinhcuahoang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_5_do_convolution_0_0_stub.v
// Design      : design_5_do_convolution_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "do_convolution,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, out_stream_V_din, out_stream_V_full_n, out_stream_V_write, in_stream_V_dout, 
  in_stream_V_empty_n, in_stream_V_read)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,out_stream_V_din[31:0],out_stream_V_full_n,out_stream_V_write,in_stream_V_dout[31:0],in_stream_V_empty_n,in_stream_V_read" */;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]out_stream_V_din;
  input out_stream_V_full_n;
  output out_stream_V_write;
  input [31:0]in_stream_V_dout;
  input in_stream_V_empty_n;
  output in_stream_V_read;
endmodule