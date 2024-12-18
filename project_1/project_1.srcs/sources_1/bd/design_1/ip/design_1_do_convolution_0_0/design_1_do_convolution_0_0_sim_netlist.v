// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Dec 18 18:29:59 2024
// Host        : maytinhcuahoang running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/final_conv2d/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_do_convolution_0_0/design_1_do_convolution_0_0_sim_netlist.v
// Design      : design_1_do_convolution_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_do_convolution_0_0,do_convolution,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "do_convolution,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_do_convolution_0_0
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    out_stream_V_din,
    out_stream_V_full_n,
    out_stream_V_write,
    in_stream_V_dout,
    in_stream_V_empty_n,
    in_stream_V_read);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_stream_V WR_DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME out_stream_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {WR_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} FULL_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} WR_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [31:0]out_stream_V_din;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_stream_V FULL_N" *) input out_stream_V_full_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_stream_V WR_EN" *) output out_stream_V_write;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_stream_V RD_DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME in_stream_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RD_DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} EMPTY_N {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} RD_EN {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input [31:0]in_stream_V_dout;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_stream_V EMPTY_N" *) input in_stream_V_empty_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_stream_V RD_EN" *) output in_stream_V_read;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire in_stream_V_read;
  wire [31:0]out_stream_V_din;
  wire out_stream_V_full_n;
  wire out_stream_V_write;

  design_1_do_convolution_0_0_do_convolution U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .in_stream_V_dout(in_stream_V_dout),
        .in_stream_V_empty_n(in_stream_V_empty_n),
        .in_stream_V_read(in_stream_V_read),
        .out_stream_V_din(out_stream_V_din),
        .out_stream_V_full_n(out_stream_V_full_n),
        .out_stream_V_write(out_stream_V_write));
endmodule

(* ORIG_REF_NAME = "do_convolution" *) 
module design_1_do_convolution_0_0_do_convolution
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    out_stream_V_din,
    out_stream_V_full_n,
    out_stream_V_write,
    in_stream_V_dout,
    in_stream_V_empty_n,
    in_stream_V_read);
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

  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[3]_i_2_n_0 ;
  wire \ap_CS_fsm[6]_i_1_n_0 ;
  wire \ap_CS_fsm[7]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp1_stage0;
  wire ap_CS_fsm_pp2_stage0;
  wire ap_CS_fsm_pp3_stage0;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state7;
  wire [8:0]ap_NS_fsm;
  wire ap_NS_fsm137_out;
  wire ap_block_pp3_stage0_subdone11_in;
  wire ap_clk;
  wire ap_condition_pp1_exit_iter0_state5;
  wire ap_condition_pp2_exit_iter0_state8;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_i_1_n_0;
  wire ap_enable_reg_pp1_iter1_reg_n_0;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp2_iter0_i_1_n_0;
  wire ap_enable_reg_pp2_iter1;
  wire ap_enable_reg_pp2_iter1_i_1_n_0;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter0_i_1_n_0;
  wire ap_enable_reg_pp3_iter1;
  wire ap_enable_reg_pp3_iter1_i_1_n_0;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter2_i_1_n_0;
  wire ap_enable_reg_pp3_iter3;
  wire ap_enable_reg_pp3_iter3_i_1_n_0;
  wire ap_enable_reg_pp3_iter4_i_1_n_0;
  wire ap_enable_reg_pp3_iter4_reg_n_0;
  wire ap_idle;
  wire [30:0]ap_phi_mux_window_1_0_phi_fu_370_p4;
  wire [31:0]ap_phi_mux_window_2_0_phi_fu_347_p4;
  wire [31:0]ap_phi_reg_pp3_iter2_window_2_2_reg_378;
  wire \ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ;
  wire \ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ;
  wire ap_rst;
  wire ap_start;
  wire ce1;
  wire \cond1_reg_968[0]_i_1_n_0 ;
  wire \cond1_reg_968_reg_n_0_[0] ;
  wire \cond_mid2_reg_950[0]_i_1_n_0 ;
  wire \cond_mid2_reg_950[0]_i_2_n_0 ;
  wire \cond_mid2_reg_950_reg_n_0_[0] ;
  wire \exitcond1_reg_913[0]_i_1_n_0 ;
  wire \exitcond1_reg_913_reg_n_0_[0] ;
  wire \exitcond4_reg_922[0]_i_1_n_0 ;
  wire \exitcond4_reg_922_reg_n_0_[0] ;
  wire exitcond_flatten9_fu_604_p227_in;
  wire exitcond_flatten9_reg_10390;
  wire \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg_n_0_[0] ;
  wire \exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ;
  wire exitcond_flatten9_reg_1039_pp3_iter3_reg;
  wire \exitcond_flatten9_reg_1039_reg_n_0_[0] ;
  wire exitcond_flatten_reg_931;
  wire \exitcond_flatten_reg_931[0]_i_1_n_0 ;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire in_stream_V_read;
  wire indvar_flatten7_reg_3000;
  wire \indvar_flatten7_reg_300[4]_i_3_n_0 ;
  wire \indvar_flatten7_reg_300[4]_i_4_n_0 ;
  wire [4:0]indvar_flatten7_reg_300_reg__0;
  wire [4:0]indvar_flatten_next8_fu_610_p2;
  wire [2:0]indvar_flatten_next_fu_432_p2;
  wire indvar_flatten_reg_219;
  wire indvar_flatten_reg_2190;
  wire \indvar_flatten_reg_219_reg_n_0_[0] ;
  wire \indvar_flatten_reg_219_reg_n_0_[1] ;
  wire \indvar_flatten_reg_219_reg_n_0_[2] ;
  wire line_buf_0_U_n_33;
  wire line_buf_0_U_n_37;
  wire [2:0]line_buf_0_addr_2_reg_1080;
  wire line_buf_0_addr_2_reg_10800;
  wire [2:0]line_buf_0_addr_2_reg_1080_pp3_iter1_reg;
  wire [31:0]line_buf_0_q0;
  wire line_buf_1_U_n_35;
  wire line_buf_1_U_n_36;
  wire line_buf_1_U_n_37;
  wire line_buf_1_U_n_38;
  wire [31:0]line_buf_1_q0;
  wire [31:0]out_stream_V_din;
  wire \out_stream_V_din[0]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[0]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[0]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[0]_INST_0_i_9_n_0 ;
  wire \out_stream_V_din[0]_INST_0_n_0 ;
  wire \out_stream_V_din[0]_INST_0_n_1 ;
  wire \out_stream_V_din[0]_INST_0_n_2 ;
  wire \out_stream_V_din[0]_INST_0_n_3 ;
  wire \out_stream_V_din[12]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[12]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[12]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[12]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[12]_INST_0_n_0 ;
  wire \out_stream_V_din[12]_INST_0_n_1 ;
  wire \out_stream_V_din[12]_INST_0_n_2 ;
  wire \out_stream_V_din[12]_INST_0_n_3 ;
  wire \out_stream_V_din[16]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[16]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[16]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[16]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[16]_INST_0_n_0 ;
  wire \out_stream_V_din[16]_INST_0_n_1 ;
  wire \out_stream_V_din[16]_INST_0_n_2 ;
  wire \out_stream_V_din[16]_INST_0_n_3 ;
  wire \out_stream_V_din[20]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[20]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[20]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[20]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[20]_INST_0_n_0 ;
  wire \out_stream_V_din[20]_INST_0_n_1 ;
  wire \out_stream_V_din[20]_INST_0_n_2 ;
  wire \out_stream_V_din[20]_INST_0_n_3 ;
  wire \out_stream_V_din[24]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[24]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[24]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[24]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[24]_INST_0_n_0 ;
  wire \out_stream_V_din[24]_INST_0_n_1 ;
  wire \out_stream_V_din[24]_INST_0_n_2 ;
  wire \out_stream_V_din[24]_INST_0_n_3 ;
  wire \out_stream_V_din[28]_INST_0_i_4_n_0 ;
  wire \out_stream_V_din[28]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[28]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[28]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[28]_INST_0_n_1 ;
  wire \out_stream_V_din[28]_INST_0_n_2 ;
  wire \out_stream_V_din[28]_INST_0_n_3 ;
  wire \out_stream_V_din[4]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[4]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[4]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[4]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[4]_INST_0_n_0 ;
  wire \out_stream_V_din[4]_INST_0_n_1 ;
  wire \out_stream_V_din[4]_INST_0_n_2 ;
  wire \out_stream_V_din[4]_INST_0_n_3 ;
  wire \out_stream_V_din[8]_INST_0_i_5_n_0 ;
  wire \out_stream_V_din[8]_INST_0_i_6_n_0 ;
  wire \out_stream_V_din[8]_INST_0_i_7_n_0 ;
  wire \out_stream_V_din[8]_INST_0_i_8_n_0 ;
  wire \out_stream_V_din[8]_INST_0_n_0 ;
  wire \out_stream_V_din[8]_INST_0_n_1 ;
  wire \out_stream_V_din[8]_INST_0_n_2 ;
  wire \out_stream_V_din[8]_INST_0_n_3 ;
  wire out_stream_V_full_n;
  wire out_stream_V_write;
  wire p_0_in19_out;
  wire p_0_in45_out;
  wire [0:0]p_read_i_fu_736_p3;
  wire read_count_1_fu_120;
  wire read_count_1_fu_1200;
  wire \read_count_1_fu_120[0]_i_4_n_0 ;
  wire [31:0]read_count_1_fu_120_reg;
  wire \read_count_1_fu_120_reg[0]_i_3_n_0 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_1 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_2 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_3 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_4 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_5 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_6 ;
  wire \read_count_1_fu_120_reg[0]_i_3_n_7 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[12]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[16]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[20]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[24]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[28]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[4]_i_1_n_7 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_0 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_1 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_2 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_3 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_4 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_5 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_6 ;
  wire \read_count_1_fu_120_reg[8]_i_1_n_7 ;
  wire [30:0]result_2_0_1_i_fu_756_p3;
  wire [31:0]result_2_0_2_i_fu_779_p3;
  wire [31:0]result_2_0_2_i_reg_1102;
  wire result_2_0_2_i_reg_11020;
  wire \result_2_0_2_i_reg_1102[11]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[11]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[15]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[19]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[23]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[27]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_5_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[31]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[3]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_12_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_13_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_14_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_6_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_7_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_8_n_0 ;
  wire \result_2_0_2_i_reg_1102[7]_i_9_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[11]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[15]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[19]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[23]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[27]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_9_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_9_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[31]_i_9_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_11_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_11_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_11_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_11_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[3]_i_1_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_10_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_10_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_10_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_10_n_3 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_1_n_0 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_1_n_1 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_1_n_2 ;
  wire \result_2_0_2_i_reg_1102_reg[7]_i_1_n_3 ;
  wire [31:0]result_2_1_2_i_fu_854_p3;
  wire [31:0]result_2_1_2_i_reg_1129;
  wire result_2_1_2_i_reg_11290;
  wire \result_2_1_2_i_reg_1129[11]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[11]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[11]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[11]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[15]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[15]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[15]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[15]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[19]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[19]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[19]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[19]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[23]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[23]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[23]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[23]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[27]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[27]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[27]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[27]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[31]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[31]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[31]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[31]_i_6_n_0 ;
  wire \result_2_1_2_i_reg_1129[3]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[3]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[3]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[3]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129[7]_i_2_n_0 ;
  wire \result_2_1_2_i_reg_1129[7]_i_3_n_0 ;
  wire \result_2_1_2_i_reg_1129[7]_i_4_n_0 ;
  wire \result_2_1_2_i_reg_1129[7]_i_5_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[11]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[11]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[11]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[11]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[15]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[15]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[15]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[15]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[19]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[19]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[19]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[19]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[23]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[23]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[23]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[23]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[27]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[27]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[27]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[27]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[31]_i_2_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[31]_i_2_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[31]_i_2_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[3]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[3]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[3]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[3]_i_1_n_3 ;
  wire \result_2_1_2_i_reg_1129_reg[7]_i_1_n_0 ;
  wire \result_2_1_2_i_reg_1129_reg[7]_i_1_n_1 ;
  wire \result_2_1_2_i_reg_1129_reg[7]_i_1_n_2 ;
  wire \result_2_1_2_i_reg_1129_reg[7]_i_1_n_3 ;
  wire [30:0]result_2_2_1_i_fu_889_p3;
  wire [31:0]result_3_0_1_i_fu_750_p2;
  wire [31:0]result_3_1_1_i_fu_837_p2;
  wire [31:0]result_3_1_1_i_reg_1118;
  wire result_3_1_1_i_reg_11180;
  wire \result_3_1_1_i_reg_1118[11]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[11]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[15]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[19]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[23]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[27]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_18_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_19_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_20_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[31]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[3]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_10_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_11_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_12_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_13_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_14_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_15_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_16_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_17_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_18_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_2_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_3_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_4_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_5_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_6_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_7_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_8_n_0 ;
  wire \result_3_1_1_i_reg_1118[7]_i_9_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[11]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[11]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[11]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[11]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[15]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[15]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[15]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[15]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[19]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[19]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[19]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[19]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[23]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[23]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[23]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[23]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[27]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[27]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[27]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[27]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[31]_i_2_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[31]_i_2_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[31]_i_2_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[3]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[3]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[3]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[3]_i_1_n_3 ;
  wire \result_3_1_1_i_reg_1118_reg[7]_i_1_n_0 ;
  wire \result_3_1_1_i_reg_1118_reg[7]_i_1_n_1 ;
  wire \result_3_1_1_i_reg_1118_reg[7]_i_1_n_2 ;
  wire \result_3_1_1_i_reg_1118_reg[7]_i_1_n_3 ;
  wire [31:0]result_3_2_1_i_fu_883_p2;
  wire [31:0]result_3_2_1_i_reg_1134;
  wire result_3_2_1_i_reg_11340;
  wire \result_3_2_1_i_reg_1134[11]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[11]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[15]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[19]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[23]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[27]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_10_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_11_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[31]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[3]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_2_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_3_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_4_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_5_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_6_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_7_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_8_n_0 ;
  wire \result_3_2_1_i_reg_1134[7]_i_9_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[11]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[11]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[11]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[11]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[15]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[15]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[15]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[15]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[19]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[19]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[19]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[19]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[23]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[23]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[23]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[23]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[27]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[27]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[27]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[27]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[31]_i_2_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[31]_i_2_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[31]_i_2_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[3]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[3]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[3]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[3]_i_1_n_3 ;
  wire \result_3_2_1_i_reg_1134_reg[7]_i_1_n_0 ;
  wire \result_3_2_1_i_reg_1134_reg[7]_i_1_n_1 ;
  wire \result_3_2_1_i_reg_1134_reg[7]_i_1_n_2 ;
  wire \result_3_2_1_i_reg_1134_reg[7]_i_1_n_3 ;
  wire tmp_10_reg_945;
  wire \tmp_10_reg_945[0]_i_1_n_0 ;
  wire tmp_13_fu_693_p2;
  wire tmp_13_reg_1092;
  wire \tmp_13_reg_1092[0]_i_10_n_0 ;
  wire \tmp_13_reg_1092[0]_i_11_n_0 ;
  wire \tmp_13_reg_1092[0]_i_12_n_0 ;
  wire \tmp_13_reg_1092[0]_i_13_n_0 ;
  wire \tmp_13_reg_1092[0]_i_15_n_0 ;
  wire \tmp_13_reg_1092[0]_i_16_n_0 ;
  wire \tmp_13_reg_1092[0]_i_17_n_0 ;
  wire \tmp_13_reg_1092[0]_i_18_n_0 ;
  wire \tmp_13_reg_1092[0]_i_19_n_0 ;
  wire \tmp_13_reg_1092[0]_i_20_n_0 ;
  wire \tmp_13_reg_1092[0]_i_21_n_0 ;
  wire \tmp_13_reg_1092[0]_i_22_n_0 ;
  wire \tmp_13_reg_1092[0]_i_23_n_0 ;
  wire \tmp_13_reg_1092[0]_i_24_n_0 ;
  wire \tmp_13_reg_1092[0]_i_25_n_0 ;
  wire \tmp_13_reg_1092[0]_i_3_n_0 ;
  wire \tmp_13_reg_1092[0]_i_5_n_0 ;
  wire \tmp_13_reg_1092[0]_i_6_n_0 ;
  wire \tmp_13_reg_1092[0]_i_7_n_0 ;
  wire \tmp_13_reg_1092[0]_i_8_n_0 ;
  wire \tmp_13_reg_1092_reg[0]_i_14_n_0 ;
  wire \tmp_13_reg_1092_reg[0]_i_14_n_1 ;
  wire \tmp_13_reg_1092_reg[0]_i_14_n_2 ;
  wire \tmp_13_reg_1092_reg[0]_i_14_n_3 ;
  wire \tmp_13_reg_1092_reg[0]_i_2_n_1 ;
  wire \tmp_13_reg_1092_reg[0]_i_2_n_2 ;
  wire \tmp_13_reg_1092_reg[0]_i_2_n_3 ;
  wire \tmp_13_reg_1092_reg[0]_i_4_n_0 ;
  wire \tmp_13_reg_1092_reg[0]_i_4_n_1 ;
  wire \tmp_13_reg_1092_reg[0]_i_4_n_2 ;
  wire \tmp_13_reg_1092_reg[0]_i_4_n_3 ;
  wire \tmp_13_reg_1092_reg[0]_i_9_n_0 ;
  wire \tmp_13_reg_1092_reg[0]_i_9_n_1 ;
  wire \tmp_13_reg_1092_reg[0]_i_9_n_2 ;
  wire \tmp_13_reg_1092_reg[0]_i_9_n_3 ;
  wire \tmp_14_i_i_reg_1067[0]_i_1_n_0 ;
  wire tmp_14_i_i_reg_1067_pp3_iter1_reg;
  wire tmp_14_i_i_reg_1067_pp3_iter2_reg;
  wire \tmp_14_i_i_reg_1067_reg_n_0_[0] ;
  wire tmp_15_i2_i_fu_763_p2;
  wire tmp_15_i2_i_reg_1096;
  wire tmp_15_i2_i_reg_1096_pp3_iter2_reg;
  wire tmp_15_i2_i_reg_1096_pp3_iter3_reg;
  wire [1:0]tmp_9_mid2_v_reg_940;
  wire \tmp_9_mid2_v_reg_940[0]_i_1_n_0 ;
  wire \tmp_9_mid2_v_reg_940[0]_i_2_n_0 ;
  wire \tmp_9_mid2_v_reg_940[1]_i_1_n_0 ;
  wire \tmp_9_mid2_v_reg_940[1]_i_2_n_0 ;
  wire \tmp_9_mid2_v_reg_940[1]_i_3_n_0 ;
  wire tmp_i2_i_mid2_fu_659_p3;
  wire tmp_i2_i_mid2_reg_1055;
  wire tmp_i2_i_mid2_reg_1055_pp3_iter1_reg;
  wire tmp_i2_i_mid2_reg_1055_pp3_iter2_reg;
  wire tmp_i2_i_mid2_reg_1055_pp3_iter3_reg;
  wire \tmp_i_i_mid2_reg_1048[0]_i_1_n_0 ;
  wire \tmp_i_i_mid2_reg_1048_reg_n_0_[0] ;
  wire we0;
  wire we040_out;
  wire we1;
  wire [31:0]window_0_0_fu_104;
  wire [31:0]window_0_0_read_as_fu_100;
  wire [31:0]window_0_1_fu_108;
  wire [30:0]window_1_0_read_as_fu_112;
  wire [31:0]window_1_0_reg_367;
  wire \window_1_0_reg_367[0]_i_1_n_0 ;
  wire \window_1_0_reg_367[10]_i_1_n_0 ;
  wire \window_1_0_reg_367[11]_i_1_n_0 ;
  wire \window_1_0_reg_367[12]_i_1_n_0 ;
  wire \window_1_0_reg_367[13]_i_1_n_0 ;
  wire \window_1_0_reg_367[14]_i_1_n_0 ;
  wire \window_1_0_reg_367[15]_i_1_n_0 ;
  wire \window_1_0_reg_367[16]_i_1_n_0 ;
  wire \window_1_0_reg_367[17]_i_1_n_0 ;
  wire \window_1_0_reg_367[18]_i_1_n_0 ;
  wire \window_1_0_reg_367[19]_i_1_n_0 ;
  wire \window_1_0_reg_367[1]_i_1_n_0 ;
  wire \window_1_0_reg_367[20]_i_1_n_0 ;
  wire \window_1_0_reg_367[21]_i_1_n_0 ;
  wire \window_1_0_reg_367[22]_i_1_n_0 ;
  wire \window_1_0_reg_367[23]_i_1_n_0 ;
  wire \window_1_0_reg_367[24]_i_1_n_0 ;
  wire \window_1_0_reg_367[25]_i_1_n_0 ;
  wire \window_1_0_reg_367[26]_i_1_n_0 ;
  wire \window_1_0_reg_367[27]_i_1_n_0 ;
  wire \window_1_0_reg_367[28]_i_1_n_0 ;
  wire \window_1_0_reg_367[29]_i_1_n_0 ;
  wire \window_1_0_reg_367[2]_i_1_n_0 ;
  wire \window_1_0_reg_367[30]_i_1_n_0 ;
  wire \window_1_0_reg_367[31]_i_1_n_0 ;
  wire \window_1_0_reg_367[3]_i_1_n_0 ;
  wire \window_1_0_reg_367[4]_i_1_n_0 ;
  wire \window_1_0_reg_367[5]_i_1_n_0 ;
  wire \window_1_0_reg_367[6]_i_1_n_0 ;
  wire \window_1_0_reg_367[7]_i_1_n_0 ;
  wire \window_1_0_reg_367[8]_i_1_n_0 ;
  wire \window_1_0_reg_367[9]_i_1_n_0 ;
  wire window_1_1_1_reg_277;
  wire \window_1_1_1_reg_277_reg_n_0_[0] ;
  wire \window_1_1_1_reg_277_reg_n_0_[10] ;
  wire \window_1_1_1_reg_277_reg_n_0_[11] ;
  wire \window_1_1_1_reg_277_reg_n_0_[12] ;
  wire \window_1_1_1_reg_277_reg_n_0_[13] ;
  wire \window_1_1_1_reg_277_reg_n_0_[14] ;
  wire \window_1_1_1_reg_277_reg_n_0_[15] ;
  wire \window_1_1_1_reg_277_reg_n_0_[16] ;
  wire \window_1_1_1_reg_277_reg_n_0_[17] ;
  wire \window_1_1_1_reg_277_reg_n_0_[18] ;
  wire \window_1_1_1_reg_277_reg_n_0_[19] ;
  wire \window_1_1_1_reg_277_reg_n_0_[1] ;
  wire \window_1_1_1_reg_277_reg_n_0_[20] ;
  wire \window_1_1_1_reg_277_reg_n_0_[21] ;
  wire \window_1_1_1_reg_277_reg_n_0_[22] ;
  wire \window_1_1_1_reg_277_reg_n_0_[23] ;
  wire \window_1_1_1_reg_277_reg_n_0_[24] ;
  wire \window_1_1_1_reg_277_reg_n_0_[25] ;
  wire \window_1_1_1_reg_277_reg_n_0_[26] ;
  wire \window_1_1_1_reg_277_reg_n_0_[27] ;
  wire \window_1_1_1_reg_277_reg_n_0_[28] ;
  wire \window_1_1_1_reg_277_reg_n_0_[29] ;
  wire \window_1_1_1_reg_277_reg_n_0_[2] ;
  wire \window_1_1_1_reg_277_reg_n_0_[30] ;
  wire \window_1_1_1_reg_277_reg_n_0_[31] ;
  wire \window_1_1_1_reg_277_reg_n_0_[3] ;
  wire \window_1_1_1_reg_277_reg_n_0_[4] ;
  wire \window_1_1_1_reg_277_reg_n_0_[5] ;
  wire \window_1_1_1_reg_277_reg_n_0_[6] ;
  wire \window_1_1_1_reg_277_reg_n_0_[7] ;
  wire \window_1_1_1_reg_277_reg_n_0_[8] ;
  wire \window_1_1_1_reg_277_reg_n_0_[9] ;
  wire [31:0]window_1_1_2_fu_518_p3;
  wire [31:0]window_1_1_reg_356;
  wire \window_1_1_reg_356[0]_i_1_n_0 ;
  wire \window_1_1_reg_356[10]_i_1_n_0 ;
  wire \window_1_1_reg_356[11]_i_1_n_0 ;
  wire \window_1_1_reg_356[12]_i_1_n_0 ;
  wire \window_1_1_reg_356[13]_i_1_n_0 ;
  wire \window_1_1_reg_356[14]_i_1_n_0 ;
  wire \window_1_1_reg_356[15]_i_1_n_0 ;
  wire \window_1_1_reg_356[16]_i_1_n_0 ;
  wire \window_1_1_reg_356[17]_i_1_n_0 ;
  wire \window_1_1_reg_356[18]_i_1_n_0 ;
  wire \window_1_1_reg_356[19]_i_1_n_0 ;
  wire \window_1_1_reg_356[1]_i_1_n_0 ;
  wire \window_1_1_reg_356[20]_i_1_n_0 ;
  wire \window_1_1_reg_356[21]_i_1_n_0 ;
  wire \window_1_1_reg_356[22]_i_1_n_0 ;
  wire \window_1_1_reg_356[23]_i_1_n_0 ;
  wire \window_1_1_reg_356[24]_i_1_n_0 ;
  wire \window_1_1_reg_356[25]_i_1_n_0 ;
  wire \window_1_1_reg_356[26]_i_1_n_0 ;
  wire \window_1_1_reg_356[27]_i_1_n_0 ;
  wire \window_1_1_reg_356[28]_i_1_n_0 ;
  wire \window_1_1_reg_356[29]_i_1_n_0 ;
  wire \window_1_1_reg_356[2]_i_1_n_0 ;
  wire \window_1_1_reg_356[30]_i_1_n_0 ;
  wire \window_1_1_reg_356[31]_i_1_n_0 ;
  wire \window_1_1_reg_356[3]_i_1_n_0 ;
  wire \window_1_1_reg_356[4]_i_1_n_0 ;
  wire \window_1_1_reg_356[5]_i_1_n_0 ;
  wire \window_1_1_reg_356[6]_i_1_n_0 ;
  wire \window_1_1_reg_356[7]_i_1_n_0 ;
  wire \window_1_1_reg_356[8]_i_1_n_0 ;
  wire \window_1_1_reg_356[9]_i_1_n_0 ;
  wire \window_1_2_1_reg_265[31]_i_1_n_0 ;
  wire \window_1_2_1_reg_265_reg_n_0_[0] ;
  wire \window_1_2_1_reg_265_reg_n_0_[10] ;
  wire \window_1_2_1_reg_265_reg_n_0_[11] ;
  wire \window_1_2_1_reg_265_reg_n_0_[12] ;
  wire \window_1_2_1_reg_265_reg_n_0_[13] ;
  wire \window_1_2_1_reg_265_reg_n_0_[14] ;
  wire \window_1_2_1_reg_265_reg_n_0_[15] ;
  wire \window_1_2_1_reg_265_reg_n_0_[16] ;
  wire \window_1_2_1_reg_265_reg_n_0_[17] ;
  wire \window_1_2_1_reg_265_reg_n_0_[18] ;
  wire \window_1_2_1_reg_265_reg_n_0_[19] ;
  wire \window_1_2_1_reg_265_reg_n_0_[1] ;
  wire \window_1_2_1_reg_265_reg_n_0_[20] ;
  wire \window_1_2_1_reg_265_reg_n_0_[21] ;
  wire \window_1_2_1_reg_265_reg_n_0_[22] ;
  wire \window_1_2_1_reg_265_reg_n_0_[23] ;
  wire \window_1_2_1_reg_265_reg_n_0_[24] ;
  wire \window_1_2_1_reg_265_reg_n_0_[25] ;
  wire \window_1_2_1_reg_265_reg_n_0_[26] ;
  wire \window_1_2_1_reg_265_reg_n_0_[27] ;
  wire \window_1_2_1_reg_265_reg_n_0_[28] ;
  wire \window_1_2_1_reg_265_reg_n_0_[29] ;
  wire \window_1_2_1_reg_265_reg_n_0_[2] ;
  wire \window_1_2_1_reg_265_reg_n_0_[30] ;
  wire \window_1_2_1_reg_265_reg_n_0_[31] ;
  wire \window_1_2_1_reg_265_reg_n_0_[3] ;
  wire \window_1_2_1_reg_265_reg_n_0_[4] ;
  wire \window_1_2_1_reg_265_reg_n_0_[5] ;
  wire \window_1_2_1_reg_265_reg_n_0_[6] ;
  wire \window_1_2_1_reg_265_reg_n_0_[7] ;
  wire \window_1_2_1_reg_265_reg_n_0_[8] ;
  wire \window_1_2_1_reg_265_reg_n_0_[9] ;
  wire [31:0]window_1_2_reg_1124;
  wire [31:0]window_2_0_read_as_1_reg_1113;
  wire window_2_0_read_as_1_reg_11130;
  wire [31:0]window_2_0_read_as_fu_116;
  wire [31:0]window_2_0_reg_344;
  wire \window_2_0_reg_344[0]_i_1_n_0 ;
  wire \window_2_0_reg_344[10]_i_1_n_0 ;
  wire \window_2_0_reg_344[11]_i_1_n_0 ;
  wire \window_2_0_reg_344[12]_i_1_n_0 ;
  wire \window_2_0_reg_344[13]_i_1_n_0 ;
  wire \window_2_0_reg_344[14]_i_1_n_0 ;
  wire \window_2_0_reg_344[15]_i_1_n_0 ;
  wire \window_2_0_reg_344[16]_i_1_n_0 ;
  wire \window_2_0_reg_344[17]_i_1_n_0 ;
  wire \window_2_0_reg_344[18]_i_1_n_0 ;
  wire \window_2_0_reg_344[19]_i_1_n_0 ;
  wire \window_2_0_reg_344[1]_i_1_n_0 ;
  wire \window_2_0_reg_344[20]_i_1_n_0 ;
  wire \window_2_0_reg_344[21]_i_1_n_0 ;
  wire \window_2_0_reg_344[22]_i_1_n_0 ;
  wire \window_2_0_reg_344[23]_i_1_n_0 ;
  wire \window_2_0_reg_344[24]_i_1_n_0 ;
  wire \window_2_0_reg_344[25]_i_1_n_0 ;
  wire \window_2_0_reg_344[26]_i_1_n_0 ;
  wire \window_2_0_reg_344[27]_i_1_n_0 ;
  wire \window_2_0_reg_344[28]_i_1_n_0 ;
  wire \window_2_0_reg_344[29]_i_1_n_0 ;
  wire \window_2_0_reg_344[2]_i_1_n_0 ;
  wire \window_2_0_reg_344[30]_i_1_n_0 ;
  wire \window_2_0_reg_344[31]_i_1_n_0 ;
  wire \window_2_0_reg_344[3]_i_1_n_0 ;
  wire \window_2_0_reg_344[4]_i_1_n_0 ;
  wire \window_2_0_reg_344[5]_i_1_n_0 ;
  wire \window_2_0_reg_344[6]_i_1_n_0 ;
  wire \window_2_0_reg_344[7]_i_1_n_0 ;
  wire \window_2_0_reg_344[8]_i_1_n_0 ;
  wire \window_2_0_reg_344[9]_i_1_n_0 ;
  wire window_2_1_1_reg_253;
  wire \window_2_1_1_reg_253_reg_n_0_[0] ;
  wire \window_2_1_1_reg_253_reg_n_0_[10] ;
  wire \window_2_1_1_reg_253_reg_n_0_[11] ;
  wire \window_2_1_1_reg_253_reg_n_0_[12] ;
  wire \window_2_1_1_reg_253_reg_n_0_[13] ;
  wire \window_2_1_1_reg_253_reg_n_0_[14] ;
  wire \window_2_1_1_reg_253_reg_n_0_[15] ;
  wire \window_2_1_1_reg_253_reg_n_0_[16] ;
  wire \window_2_1_1_reg_253_reg_n_0_[17] ;
  wire \window_2_1_1_reg_253_reg_n_0_[18] ;
  wire \window_2_1_1_reg_253_reg_n_0_[19] ;
  wire \window_2_1_1_reg_253_reg_n_0_[1] ;
  wire \window_2_1_1_reg_253_reg_n_0_[20] ;
  wire \window_2_1_1_reg_253_reg_n_0_[21] ;
  wire \window_2_1_1_reg_253_reg_n_0_[22] ;
  wire \window_2_1_1_reg_253_reg_n_0_[23] ;
  wire \window_2_1_1_reg_253_reg_n_0_[24] ;
  wire \window_2_1_1_reg_253_reg_n_0_[25] ;
  wire \window_2_1_1_reg_253_reg_n_0_[26] ;
  wire \window_2_1_1_reg_253_reg_n_0_[27] ;
  wire \window_2_1_1_reg_253_reg_n_0_[28] ;
  wire \window_2_1_1_reg_253_reg_n_0_[29] ;
  wire \window_2_1_1_reg_253_reg_n_0_[2] ;
  wire \window_2_1_1_reg_253_reg_n_0_[30] ;
  wire \window_2_1_1_reg_253_reg_n_0_[31] ;
  wire \window_2_1_1_reg_253_reg_n_0_[3] ;
  wire \window_2_1_1_reg_253_reg_n_0_[4] ;
  wire \window_2_1_1_reg_253_reg_n_0_[5] ;
  wire \window_2_1_1_reg_253_reg_n_0_[6] ;
  wire \window_2_1_1_reg_253_reg_n_0_[7] ;
  wire \window_2_1_1_reg_253_reg_n_0_[8] ;
  wire \window_2_1_1_reg_253_reg_n_0_[9] ;
  wire window_2_1_reg_333;
  wire \window_2_1_reg_333[0]_i_1_n_0 ;
  wire \window_2_1_reg_333[10]_i_1_n_0 ;
  wire \window_2_1_reg_333[11]_i_1_n_0 ;
  wire \window_2_1_reg_333[12]_i_1_n_0 ;
  wire \window_2_1_reg_333[13]_i_1_n_0 ;
  wire \window_2_1_reg_333[14]_i_1_n_0 ;
  wire \window_2_1_reg_333[15]_i_1_n_0 ;
  wire \window_2_1_reg_333[16]_i_1_n_0 ;
  wire \window_2_1_reg_333[17]_i_1_n_0 ;
  wire \window_2_1_reg_333[18]_i_1_n_0 ;
  wire \window_2_1_reg_333[19]_i_1_n_0 ;
  wire \window_2_1_reg_333[1]_i_1_n_0 ;
  wire \window_2_1_reg_333[20]_i_1_n_0 ;
  wire \window_2_1_reg_333[21]_i_1_n_0 ;
  wire \window_2_1_reg_333[22]_i_1_n_0 ;
  wire \window_2_1_reg_333[23]_i_1_n_0 ;
  wire \window_2_1_reg_333[24]_i_1_n_0 ;
  wire \window_2_1_reg_333[25]_i_1_n_0 ;
  wire \window_2_1_reg_333[26]_i_1_n_0 ;
  wire \window_2_1_reg_333[27]_i_1_n_0 ;
  wire \window_2_1_reg_333[28]_i_1_n_0 ;
  wire \window_2_1_reg_333[29]_i_1_n_0 ;
  wire \window_2_1_reg_333[2]_i_1_n_0 ;
  wire \window_2_1_reg_333[30]_i_1_n_0 ;
  wire \window_2_1_reg_333[31]_i_2_n_0 ;
  wire \window_2_1_reg_333[3]_i_1_n_0 ;
  wire \window_2_1_reg_333[4]_i_1_n_0 ;
  wire \window_2_1_reg_333[5]_i_1_n_0 ;
  wire \window_2_1_reg_333[6]_i_1_n_0 ;
  wire \window_2_1_reg_333[7]_i_1_n_0 ;
  wire \window_2_1_reg_333[8]_i_1_n_0 ;
  wire \window_2_1_reg_333[9]_i_1_n_0 ;
  wire [31:0]window_2_1_reg_333_pp3_iter3_reg;
  wire \window_2_1_reg_333_reg_n_0_[0] ;
  wire \window_2_1_reg_333_reg_n_0_[10] ;
  wire \window_2_1_reg_333_reg_n_0_[11] ;
  wire \window_2_1_reg_333_reg_n_0_[12] ;
  wire \window_2_1_reg_333_reg_n_0_[13] ;
  wire \window_2_1_reg_333_reg_n_0_[14] ;
  wire \window_2_1_reg_333_reg_n_0_[15] ;
  wire \window_2_1_reg_333_reg_n_0_[16] ;
  wire \window_2_1_reg_333_reg_n_0_[17] ;
  wire \window_2_1_reg_333_reg_n_0_[18] ;
  wire \window_2_1_reg_333_reg_n_0_[19] ;
  wire \window_2_1_reg_333_reg_n_0_[1] ;
  wire \window_2_1_reg_333_reg_n_0_[20] ;
  wire \window_2_1_reg_333_reg_n_0_[21] ;
  wire \window_2_1_reg_333_reg_n_0_[22] ;
  wire \window_2_1_reg_333_reg_n_0_[23] ;
  wire \window_2_1_reg_333_reg_n_0_[24] ;
  wire \window_2_1_reg_333_reg_n_0_[25] ;
  wire \window_2_1_reg_333_reg_n_0_[26] ;
  wire \window_2_1_reg_333_reg_n_0_[27] ;
  wire \window_2_1_reg_333_reg_n_0_[28] ;
  wire \window_2_1_reg_333_reg_n_0_[29] ;
  wire \window_2_1_reg_333_reg_n_0_[2] ;
  wire \window_2_1_reg_333_reg_n_0_[30] ;
  wire \window_2_1_reg_333_reg_n_0_[31] ;
  wire \window_2_1_reg_333_reg_n_0_[3] ;
  wire \window_2_1_reg_333_reg_n_0_[4] ;
  wire \window_2_1_reg_333_reg_n_0_[5] ;
  wire \window_2_1_reg_333_reg_n_0_[6] ;
  wire \window_2_1_reg_333_reg_n_0_[7] ;
  wire \window_2_1_reg_333_reg_n_0_[8] ;
  wire \window_2_1_reg_333_reg_n_0_[9] ;
  wire \window_2_2_1_reg_241[31]_i_1_n_0 ;
  wire \window_2_2_1_reg_241_reg_n_0_[0] ;
  wire \window_2_2_1_reg_241_reg_n_0_[10] ;
  wire \window_2_2_1_reg_241_reg_n_0_[11] ;
  wire \window_2_2_1_reg_241_reg_n_0_[12] ;
  wire \window_2_2_1_reg_241_reg_n_0_[13] ;
  wire \window_2_2_1_reg_241_reg_n_0_[14] ;
  wire \window_2_2_1_reg_241_reg_n_0_[15] ;
  wire \window_2_2_1_reg_241_reg_n_0_[16] ;
  wire \window_2_2_1_reg_241_reg_n_0_[17] ;
  wire \window_2_2_1_reg_241_reg_n_0_[18] ;
  wire \window_2_2_1_reg_241_reg_n_0_[19] ;
  wire \window_2_2_1_reg_241_reg_n_0_[1] ;
  wire \window_2_2_1_reg_241_reg_n_0_[20] ;
  wire \window_2_2_1_reg_241_reg_n_0_[21] ;
  wire \window_2_2_1_reg_241_reg_n_0_[22] ;
  wire \window_2_2_1_reg_241_reg_n_0_[23] ;
  wire \window_2_2_1_reg_241_reg_n_0_[24] ;
  wire \window_2_2_1_reg_241_reg_n_0_[25] ;
  wire \window_2_2_1_reg_241_reg_n_0_[26] ;
  wire \window_2_2_1_reg_241_reg_n_0_[27] ;
  wire \window_2_2_1_reg_241_reg_n_0_[28] ;
  wire \window_2_2_1_reg_241_reg_n_0_[29] ;
  wire \window_2_2_1_reg_241_reg_n_0_[2] ;
  wire \window_2_2_1_reg_241_reg_n_0_[30] ;
  wire \window_2_2_1_reg_241_reg_n_0_[31] ;
  wire \window_2_2_1_reg_241_reg_n_0_[3] ;
  wire \window_2_2_1_reg_241_reg_n_0_[4] ;
  wire \window_2_2_1_reg_241_reg_n_0_[5] ;
  wire \window_2_2_1_reg_241_reg_n_0_[6] ;
  wire \window_2_2_1_reg_241_reg_n_0_[7] ;
  wire \window_2_2_1_reg_241_reg_n_0_[8] ;
  wire \window_2_2_1_reg_241_reg_n_0_[9] ;
  wire [31:0]window_2_2_reg_378;
  wire \x1_reg_207[0]_i_1_n_0 ;
  wire \x1_reg_207[1]_i_1_n_0 ;
  wire \x1_reg_207[2]_i_1_n_0 ;
  wire \x1_reg_207_reg_n_0_[0] ;
  wire \x1_reg_207_reg_n_0_[1] ;
  wire \x1_reg_207_reg_n_0_[2] ;
  wire [1:0]x3_reg_289;
  wire [0:0]x_1_fu_398_p2;
  wire [2:0]x_1_reg_917;
  wire \x_1_reg_917[0]_i_1_n_0 ;
  wire \x_1_reg_917[1]_i_1_n_0 ;
  wire \x_1_reg_917[1]_i_2_n_0 ;
  wire \x_1_reg_917[2]_i_1_n_0 ;
  wire \x_1_reg_917[2]_i_2_n_0 ;
  wire \x_1_reg_917[2]_i_3_n_0 ;
  wire \x_1_reg_917[2]_i_5_n_0 ;
  wire [0:0]x_2_fu_415_p2;
  wire [2:0]x_2_reg_926;
  wire x_2_reg_9260;
  wire \x_2_reg_926[0]_i_1_n_0 ;
  wire \x_2_reg_926[1]_i_1_n_0 ;
  wire \x_2_reg_926[2]_i_1_n_0 ;
  wire \x_2_reg_926[2]_i_2_n_0 ;
  wire \x_2_reg_926[2]_i_3_n_0 ;
  wire [1:0]x_3_fu_512_p2;
  wire [0:0]x_4_fu_681_p2;
  wire [2:0]x_4_reg_1074;
  wire \x_4_reg_1074[0]_i_1_n_0 ;
  wire \x_4_reg_1074[1]_i_1_n_0 ;
  wire \x_4_reg_1074[2]_i_1_n_0 ;
  wire \x_4_reg_1074[2]_i_3_n_0 ;
  wire [2:0]x_assign_mid2_fu_625_p3;
  wire [2:0]x_assign_reg_322;
  wire x_assign_reg_3220;
  wire \x_assign_reg_322[0]_i_1_n_0 ;
  wire \x_assign_reg_322[1]_i_1_n_0 ;
  wire \x_assign_reg_322[2]_i_1_n_0 ;
  wire \x_reg_195[0]_i_1_n_0 ;
  wire \x_reg_195[1]_i_1_n_0 ;
  wire \x_reg_195[2]_i_1_n_0 ;
  wire \x_reg_195_reg_n_0_[0] ;
  wire \x_reg_195_reg_n_0_[1] ;
  wire \x_reg_195_reg_n_0_[2] ;
  wire \y2_reg_230[0]_i_1_n_0 ;
  wire \y2_reg_230[1]_i_1_n_0 ;
  wire \y2_reg_230_reg_n_0_[0] ;
  wire \y2_reg_230_reg_n_0_[1] ;
  wire \y_assign_reg_311[0]_i_1_n_0 ;
  wire \y_assign_reg_311[1]_i_1_n_0 ;
  wire \y_assign_reg_311[2]_i_1_n_0 ;
  wire \y_assign_reg_311[2]_i_2_n_0 ;
  wire \y_assign_reg_311_reg_n_0_[0] ;
  wire \y_assign_reg_311_reg_n_0_[1] ;
  wire \y_assign_reg_311_reg_n_0_[2] ;
  wire [3:3]\NLW_out_stream_V_din[28]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_read_count_1_fu_120_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_2_0_2_i_reg_1102_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_2_0_2_i_reg_1102_reg[31]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_2_1_2_i_reg_1129_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_3_1_1_i_reg_1118_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_3_2_1_i_reg_1134_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tmp_13_reg_1092_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_13_reg_1092_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_13_reg_1092_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_tmp_13_reg_1092_reg[0]_i_9_O_UNCONNECTED ;

  assign ap_ready = ap_done;
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hFFFFFF8F88888888)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\x_1_reg_917[1]_i_2_n_0 ),
        .I4(\ap_CS_fsm[1]_i_2_n_0 ),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(in_stream_V_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond1_reg_913_reg_n_0_[0] ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444404400000000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\x_1_reg_917[1]_i_2_n_0 ),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\exitcond1_reg_913_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_0),
        .I4(in_stream_V_empty_n),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(ap_condition_pp1_exit_iter0_state5),
        .I3(\ap_CS_fsm[3]_i_2_n_0 ),
        .I4(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(in_stream_V_empty_n),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond4_reg_922_reg_n_0_[0] ),
        .O(\ap_CS_fsm[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB00000000000000)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\exitcond4_reg_922_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(in_stream_V_empty_n),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_condition_pp1_exit_iter0_state5),
        .O(ap_NS_fsm[4]));
  LUT6 #(
    .INIT(64'h1015000510100000)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(x_2_fu_415_p2),
        .I1(\x1_reg_207_reg_n_0_[1] ),
        .I2(\x_2_reg_926[2]_i_2_n_0 ),
        .I3(x_2_reg_926[1]),
        .I4(\x1_reg_207_reg_n_0_[2] ),
        .I5(x_2_reg_926[2]),
        .O(ap_condition_pp1_exit_iter0_state5));
  LUT6 #(
    .INIT(64'hFFFDFFFFFF00FF00)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state7),
        .I4(ap_enable_reg_pp2_iter0),
        .I5(ap_CS_fsm_pp2_stage0),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I3(ap_enable_reg_pp2_iter0),
        .I4(ap_CS_fsm_pp2_stage0),
        .O(\ap_CS_fsm[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEAA)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(line_buf_1_U_n_35),
        .I2(\ap_CS_fsm[7]_i_2_n_0 ),
        .I3(ap_CS_fsm_pp3_stage0),
        .O(ap_NS_fsm[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hBABB)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(ap_enable_reg_pp3_iter3),
        .I1(ap_enable_reg_pp3_iter4_reg_n_0),
        .I2(ap_enable_reg_pp3_iter1),
        .I3(ap_enable_reg_pp3_iter2),
        .O(\ap_CS_fsm[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020222020)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(ap_enable_reg_pp3_iter4_reg_n_0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(ap_enable_reg_pp3_iter2),
        .I5(line_buf_1_U_n_35),
        .O(ap_NS_fsm[8]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_pp2_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[6]_i_1_n_0 ),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_pp3_stage0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_done),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h00000000EEEEE000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(\x_1_reg_917[1]_i_2_n_0 ),
        .I1(line_buf_0_U_n_33),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst),
        .O(ap_enable_reg_pp0_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020002033200020)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(\x_1_reg_917[1]_i_2_n_0 ),
        .I1(ap_rst),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\ap_CS_fsm[1]_i_2_n_0 ),
        .I4(ap_enable_reg_pp0_iter1_reg_n_0),
        .I5(ap_NS_fsm137_out),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm137_out));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000DDD0)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(line_buf_1_U_n_37),
        .I2(ap_CS_fsm_state4),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(ap_rst),
        .O(ap_enable_reg_pp1_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0010001033100010)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(ap_condition_pp1_exit_iter0_state5),
        .I1(ap_rst),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\ap_CS_fsm[3]_i_2_n_0 ),
        .I4(ap_enable_reg_pp1_iter1_reg_n_0),
        .I5(ap_CS_fsm_state4),
        .O(ap_enable_reg_pp1_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp1_iter1_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00007770)) 
    ap_enable_reg_pp2_iter0_i_1
       (.I0(ap_condition_pp2_exit_iter0_state8),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(ap_CS_fsm_state7),
        .I3(ap_enable_reg_pp2_iter0),
        .I4(ap_rst),
        .O(ap_enable_reg_pp2_iter0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ap_enable_reg_pp2_iter0_i_2
       (.I0(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .O(ap_condition_pp2_exit_iter0_state8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44404444)) 
    ap_enable_reg_pp2_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp2_iter0),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I3(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I4(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .O(ap_enable_reg_pp2_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp2_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp2_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp2_iter1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000DFDFDF00)) 
    ap_enable_reg_pp3_iter0_i_1
       (.I0(exitcond_flatten9_fu_604_p227_in),
        .I1(line_buf_1_U_n_35),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_CS_fsm_state10),
        .I4(ap_enable_reg_pp3_iter0),
        .I5(ap_rst),
        .O(ap_enable_reg_pp3_iter0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter0_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp3_iter1_i_1
       (.I0(ap_enable_reg_pp3_iter0),
        .I1(line_buf_1_U_n_35),
        .I2(ap_enable_reg_pp3_iter1),
        .O(ap_enable_reg_pp3_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter1),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp3_iter2_i_1
       (.I0(ap_enable_reg_pp3_iter1),
        .I1(line_buf_1_U_n_35),
        .I2(ap_enable_reg_pp3_iter2),
        .O(ap_enable_reg_pp3_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter2),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    ap_enable_reg_pp3_iter3_i_1
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ap_enable_reg_pp3_iter1),
        .I2(line_buf_1_U_n_35),
        .I3(ap_enable_reg_pp3_iter3),
        .O(ap_enable_reg_pp3_iter3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter3_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter3),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'h00004F40)) 
    ap_enable_reg_pp3_iter4_i_1
       (.I0(ap_CS_fsm_state10),
        .I1(ap_enable_reg_pp3_iter4_reg_n_0),
        .I2(line_buf_1_U_n_35),
        .I3(ap_enable_reg_pp3_iter3),
        .I4(ap_rst),
        .O(ap_enable_reg_pp3_iter4_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp3_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp3_iter4_i_1_n_0),
        .Q(ap_enable_reg_pp3_iter4_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT5 #(
    .INIT(32'h40004040)) 
    \ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1 
       (.I0(line_buf_1_U_n_35),
        .I1(ap_enable_reg_pp3_iter1),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I4(tmp_13_reg_1092),
        .O(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(ap_enable_reg_pp3_iter1),
        .I2(line_buf_1_U_n_35),
        .O(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[0] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[0]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[0]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[10] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[10]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[10]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[11] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[11]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[11]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[12] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[12]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[12]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[13] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[13]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[13]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[14] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[14]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[14]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[15] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[15]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[15]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[16] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[16]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[16]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[17] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[17]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[17]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[18] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[18]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[18]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[19] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[19]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[19]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[1] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[1]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[1]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[20] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[20]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[20]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[21] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[21]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[21]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[22] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[22]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[22]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[23] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[23]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[23]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[24] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[24]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[24]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[25] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[25]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[25]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[26] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[26]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[26]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[27] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[27]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[27]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[28] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[28]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[28]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[29] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[29]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[29]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[2] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[2]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[2]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[30] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[30]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[30]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[31]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[3] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[3]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[3]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[4] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[4]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[4]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[5] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[5]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[5]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[6] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[6]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[6]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[7] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[7]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[7]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[8] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[8]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[8]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  FDRE \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[9] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(in_stream_V_dout[9]),
        .Q(ap_phi_reg_pp3_iter2_window_2_2_reg_378[9]),
        .R(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFAAAA0200AAAA)) 
    \cond1_reg_968[0]_i_1 
       (.I0(\cond1_reg_968_reg_n_0_[0] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I3(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I4(ap_CS_fsm_pp2_stage0),
        .I5(x3_reg_289[0]),
        .O(\cond1_reg_968[0]_i_1_n_0 ));
  FDRE \cond1_reg_968_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cond1_reg_968[0]_i_1_n_0 ),
        .Q(\cond1_reg_968_reg_n_0_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h888B8B8B8B888888)) 
    \cond_mid2_reg_950[0]_i_1 
       (.I0(\cond_mid2_reg_950_reg_n_0_[0] ),
        .I1(\cond_mid2_reg_950[0]_i_2_n_0 ),
        .I2(\tmp_9_mid2_v_reg_940[1]_i_2_n_0 ),
        .I3(x3_reg_289[0]),
        .I4(x3_reg_289[1]),
        .I5(\tmp_9_mid2_v_reg_940[1]_i_3_n_0 ),
        .O(\cond_mid2_reg_950[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h10FF)) 
    \cond_mid2_reg_950[0]_i_2 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .O(\cond_mid2_reg_950[0]_i_2_n_0 ));
  FDRE \cond_mid2_reg_950_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\cond_mid2_reg_950[0]_i_1_n_0 ),
        .Q(\cond_mid2_reg_950_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00AAFBAA)) 
    \exitcond1_reg_913[0]_i_1 
       (.I0(\exitcond1_reg_913_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(in_stream_V_empty_n),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\x_1_reg_917[1]_i_2_n_0 ),
        .O(\exitcond1_reg_913[0]_i_1_n_0 ));
  FDRE \exitcond1_reg_913_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond1_reg_913[0]_i_1_n_0 ),
        .Q(\exitcond1_reg_913_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFBAA00AA)) 
    \exitcond4_reg_922[0]_i_1 
       (.I0(\exitcond4_reg_922_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(in_stream_V_empty_n),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(ap_condition_pp1_exit_iter0_state5),
        .O(\exitcond4_reg_922[0]_i_1_n_0 ));
  FDRE \exitcond4_reg_922_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond4_reg_922[0]_i_1_n_0 ),
        .Q(\exitcond4_reg_922_reg_n_0_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \exitcond_flatten9_reg_1039[0]_i_1 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(line_buf_1_U_n_35),
        .O(exitcond_flatten9_reg_10390));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \exitcond_flatten9_reg_1039[0]_i_2 
       (.I0(indvar_flatten7_reg_300_reg__0[1]),
        .I1(indvar_flatten7_reg_300_reg__0[0]),
        .I2(indvar_flatten7_reg_300_reg__0[3]),
        .I3(indvar_flatten7_reg_300_reg__0[2]),
        .I4(indvar_flatten7_reg_300_reg__0[4]),
        .O(exitcond_flatten9_fu_604_p227_in));
  FDRE \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .Q(\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg_n_0_[0] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \exitcond_flatten9_reg_1039_pp3_iter2_reg[0]_i_1 
       (.I0(line_buf_1_U_n_35),
        .O(ap_block_pp3_stage0_subdone11_in));
  FDRE \exitcond_flatten9_reg_1039_pp3_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg_n_0_[0] ),
        .Q(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .Q(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .R(1'b0));
  FDRE \exitcond_flatten9_reg_1039_reg[0] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(exitcond_flatten9_fu_604_p227_in),
        .Q(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \exitcond_flatten_reg_931[0]_i_1 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(exitcond_flatten_reg_931),
        .O(\exitcond_flatten_reg_931[0]_i_1_n_0 ));
  FDRE \exitcond_flatten_reg_931_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\exitcond_flatten_reg_931[0]_i_1_n_0 ),
        .Q(exitcond_flatten_reg_931),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    in_stream_V_read_INST_0
       (.I0(line_buf_1_U_n_35),
        .I1(line_buf_1_U_n_38),
        .I2(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I3(tmp_13_reg_1092),
        .I4(we040_out),
        .I5(we0),
        .O(in_stream_V_read));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten7_reg_300[0]_i_1 
       (.I0(indvar_flatten7_reg_300_reg__0[0]),
        .O(indvar_flatten_next8_fu_610_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten7_reg_300[1]_i_1 
       (.I0(indvar_flatten7_reg_300_reg__0[0]),
        .I1(indvar_flatten7_reg_300_reg__0[1]),
        .O(indvar_flatten_next8_fu_610_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten7_reg_300[2]_i_1 
       (.I0(indvar_flatten7_reg_300_reg__0[2]),
        .I1(indvar_flatten7_reg_300_reg__0[1]),
        .I2(indvar_flatten7_reg_300_reg__0[0]),
        .O(indvar_flatten_next8_fu_610_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten7_reg_300[3]_i_1 
       (.I0(indvar_flatten7_reg_300_reg__0[3]),
        .I1(indvar_flatten7_reg_300_reg__0[0]),
        .I2(indvar_flatten7_reg_300_reg__0[1]),
        .I3(indvar_flatten7_reg_300_reg__0[2]),
        .O(indvar_flatten_next8_fu_610_p2[3]));
  LUT6 #(
    .INIT(64'h0202020000000000)) 
    \indvar_flatten7_reg_300[4]_i_1 
       (.I0(ap_enable_reg_pp3_iter0),
        .I1(exitcond_flatten9_fu_604_p227_in),
        .I2(\indvar_flatten7_reg_300[4]_i_3_n_0 ),
        .I3(out_stream_V_full_n),
        .I4(\indvar_flatten7_reg_300[4]_i_4_n_0 ),
        .I5(ap_CS_fsm_pp3_stage0),
        .O(indvar_flatten7_reg_3000));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \indvar_flatten7_reg_300[4]_i_2 
       (.I0(indvar_flatten7_reg_300_reg__0[4]),
        .I1(indvar_flatten7_reg_300_reg__0[2]),
        .I2(indvar_flatten7_reg_300_reg__0[1]),
        .I3(indvar_flatten7_reg_300_reg__0[0]),
        .I4(indvar_flatten7_reg_300_reg__0[3]),
        .O(indvar_flatten_next8_fu_610_p2[4]));
  LUT4 #(
    .INIT(16'h0040)) 
    \indvar_flatten7_reg_300[4]_i_3 
       (.I0(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I1(tmp_13_reg_1092),
        .I2(ap_enable_reg_pp3_iter1),
        .I3(in_stream_V_empty_n),
        .O(\indvar_flatten7_reg_300[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten7_reg_300[4]_i_4 
       (.I0(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .I1(ap_enable_reg_pp3_iter4_reg_n_0),
        .O(\indvar_flatten7_reg_300[4]_i_4_n_0 ));
  FDRE \indvar_flatten7_reg_300_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten7_reg_3000),
        .D(indvar_flatten_next8_fu_610_p2[0]),
        .Q(indvar_flatten7_reg_300_reg__0[0]),
        .R(ap_CS_fsm_state10));
  FDRE \indvar_flatten7_reg_300_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten7_reg_3000),
        .D(indvar_flatten_next8_fu_610_p2[1]),
        .Q(indvar_flatten7_reg_300_reg__0[1]),
        .R(ap_CS_fsm_state10));
  FDRE \indvar_flatten7_reg_300_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten7_reg_3000),
        .D(indvar_flatten_next8_fu_610_p2[2]),
        .Q(indvar_flatten7_reg_300_reg__0[2]),
        .R(ap_CS_fsm_state10));
  FDRE \indvar_flatten7_reg_300_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten7_reg_3000),
        .D(indvar_flatten_next8_fu_610_p2[3]),
        .Q(indvar_flatten7_reg_300_reg__0[3]),
        .R(ap_CS_fsm_state10));
  FDRE \indvar_flatten7_reg_300_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten7_reg_3000),
        .D(indvar_flatten_next8_fu_610_p2[4]),
        .Q(indvar_flatten7_reg_300_reg__0[4]),
        .R(ap_CS_fsm_state10));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_reg_219[0]_i_1 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .O(indvar_flatten_next_fu_432_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten_reg_219[1]_i_1 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .O(indvar_flatten_next_fu_432_p2[1]));
  LUT6 #(
    .INIT(64'h0008AAAAAAAAAAAA)) 
    \indvar_flatten_reg_219[2]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I3(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I4(ap_CS_fsm_pp2_stage0),
        .I5(ap_enable_reg_pp2_iter0),
        .O(indvar_flatten_reg_219));
  LUT5 #(
    .INIT(32'h88808888)) 
    \indvar_flatten_reg_219[2]_i_2 
       (.I0(ap_enable_reg_pp2_iter0),
        .I1(ap_CS_fsm_pp2_stage0),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .I3(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I4(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .O(indvar_flatten_reg_2190));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten_reg_219[2]_i_3 
       (.I0(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .I1(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .I2(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .O(indvar_flatten_next_fu_432_p2[2]));
  FDRE \indvar_flatten_reg_219_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2190),
        .D(indvar_flatten_next_fu_432_p2[0]),
        .Q(\indvar_flatten_reg_219_reg_n_0_[0] ),
        .R(indvar_flatten_reg_219));
  FDRE \indvar_flatten_reg_219_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2190),
        .D(indvar_flatten_next_fu_432_p2[1]),
        .Q(\indvar_flatten_reg_219_reg_n_0_[1] ),
        .R(indvar_flatten_reg_219));
  FDRE \indvar_flatten_reg_219_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2190),
        .D(indvar_flatten_next_fu_432_p2[2]),
        .Q(\indvar_flatten_reg_219_reg_n_0_[2] ),
        .R(indvar_flatten_reg_219));
  design_1_do_convolution_0_0_do_convolution_libkb line_buf_0_U
       (.D(line_buf_0_q0),
        .E(we1),
        .Q(line_buf_0_addr_2_reg_1080_pp3_iter1_reg),
        .WEBWE(ce1),
        .\ap_CS_fsm_reg[5] (line_buf_1_U_n_36),
        .\ap_CS_fsm_reg[7] ({ap_CS_fsm_pp3_stage0,ap_CS_fsm_pp0_stage0}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1(ap_enable_reg_pp3_iter1),
        .\exitcond1_reg_913_reg[0] (\exitcond1_reg_913_reg_n_0_[0] ),
        .\exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] (line_buf_1_U_n_35),
        .\exitcond_flatten9_reg_1039_reg[0] (\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .in_stream_V_dout(in_stream_V_dout),
        .in_stream_V_empty_n(in_stream_V_empty_n),
        .\line_buf_1_addr_2_reg_1086_reg[2] (line_buf_0_U_n_37),
        .ram_reg(line_buf_0_U_n_33),
        .ram_reg_0(line_buf_1_q0),
        .tmp_10_reg_945(tmp_10_reg_945),
        .we0(we0),
        .\window_2_1_1_reg_253_reg[31] (window_1_1_2_fu_518_p3),
        .\x3_reg_289_reg[1] (x3_reg_289),
        .x_4_fu_681_p2(x_4_fu_681_p2),
        .x_4_reg_1074(x_4_reg_1074),
        .x_assign_mid2_fu_625_p3(x_assign_mid2_fu_625_p3[2:1]),
        .x_assign_reg_322(x_assign_reg_322),
        .\x_reg_195_reg[0] (\x_reg_195_reg_n_0_[0] ),
        .\x_reg_195_reg[1] (\x_reg_195_reg_n_0_[1] ),
        .\x_reg_195_reg[2] (\x_reg_195_reg_n_0_[2] ));
  design_1_do_convolution_0_0_do_convolution_libkb_0 line_buf_1_U
       (.D(line_buf_1_q0),
        .E(we1),
        .Q(line_buf_0_addr_2_reg_1080_pp3_iter1_reg),
        .WEBWE(ce1),
        .\ap_CS_fsm_reg[7] ({ap_CS_fsm_pp3_stage0,ap_CS_fsm_pp2_stage0,ap_CS_fsm_pp1_stage0}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter1_reg(ap_enable_reg_pp1_iter1_reg_n_0),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter1(ap_enable_reg_pp3_iter1),
        .ap_enable_reg_pp3_iter2(ap_enable_reg_pp3_iter2),
        .ap_enable_reg_pp3_iter4_reg(ap_enable_reg_pp3_iter4_reg_n_0),
        .\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] (ap_phi_reg_pp3_iter2_window_2_2_reg_378),
        .\exitcond4_reg_922_reg[0] (\exitcond4_reg_922_reg_n_0_[0] ),
        .\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] (\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg_n_0_[0] ),
        .exitcond_flatten9_reg_1039_pp3_iter3_reg(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .\exitcond_flatten9_reg_1039_reg[0] (\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .in_stream_V_dout(in_stream_V_dout),
        .in_stream_V_empty_n(in_stream_V_empty_n),
        .\line_buf_1_addr_2_reg_1086_reg[2] (line_buf_0_addr_2_reg_1080),
        .out_stream_V_full_n(out_stream_V_full_n),
        .ram_reg(line_buf_1_U_n_35),
        .ram_reg_0(line_buf_1_U_n_36),
        .ram_reg_1(line_buf_1_U_n_37),
        .ram_reg_2(line_buf_1_U_n_38),
        .tmp_13_reg_1092(tmp_13_reg_1092),
        .we040_out(we040_out),
        .\x1_reg_207_reg[0] (\x1_reg_207_reg_n_0_[0] ),
        .\x1_reg_207_reg[1] (\x1_reg_207_reg_n_0_[1] ),
        .\x1_reg_207_reg[2] (\x1_reg_207_reg_n_0_[2] ),
        .\x3_reg_289_reg[1] (x3_reg_289));
  LUT6 #(
    .INIT(64'h00000000BAAA8AAA)) 
    \line_buf_1_addr_2_reg_1086[0]_i_1 
       (.I0(x_assign_reg_322[0]),
        .I1(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(x_4_reg_1074[0]),
        .I5(\y_assign_reg_311[2]_i_2_n_0 ),
        .O(x_assign_mid2_fu_625_p3[0]));
  FDRE \line_buf_1_addr_2_reg_1086_pp3_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(line_buf_0_addr_2_reg_1080[0]),
        .Q(line_buf_0_addr_2_reg_1080_pp3_iter1_reg[0]),
        .R(1'b0));
  FDRE \line_buf_1_addr_2_reg_1086_pp3_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(line_buf_0_addr_2_reg_1080[1]),
        .Q(line_buf_0_addr_2_reg_1080_pp3_iter1_reg[1]),
        .R(1'b0));
  FDRE \line_buf_1_addr_2_reg_1086_pp3_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(line_buf_0_addr_2_reg_1080[2]),
        .Q(line_buf_0_addr_2_reg_1080_pp3_iter1_reg[2]),
        .R(1'b0));
  FDRE \line_buf_1_addr_2_reg_1086_reg[0] 
       (.C(ap_clk),
        .CE(line_buf_0_addr_2_reg_10800),
        .D(x_assign_mid2_fu_625_p3[0]),
        .Q(line_buf_0_addr_2_reg_1080[0]),
        .R(1'b0));
  FDRE \line_buf_1_addr_2_reg_1086_reg[1] 
       (.C(ap_clk),
        .CE(line_buf_0_addr_2_reg_10800),
        .D(x_assign_mid2_fu_625_p3[1]),
        .Q(line_buf_0_addr_2_reg_1080[1]),
        .R(1'b0));
  FDRE \line_buf_1_addr_2_reg_1086_reg[2] 
       (.C(ap_clk),
        .CE(line_buf_0_addr_2_reg_10800),
        .D(x_assign_mid2_fu_625_p3[2]),
        .Q(line_buf_0_addr_2_reg_1080[2]),
        .R(1'b0));
  CARRY4 \out_stream_V_din[0]_INST_0 
       (.CI(1'b0),
        .CO({\out_stream_V_din[0]_INST_0_n_0 ,\out_stream_V_din[0]_INST_0_n_1 ,\out_stream_V_din[0]_INST_0_n_2 ,\out_stream_V_din[0]_INST_0_n_3 }),
        .CYINIT(p_0_in45_out),
        .DI(result_2_2_1_i_fu_889_p3[3:0]),
        .O(out_stream_V_din[3:0]),
        .S({\out_stream_V_din[0]_INST_0_i_6_n_0 ,\out_stream_V_din[0]_INST_0_i_7_n_0 ,\out_stream_V_din[0]_INST_0_i_8_n_0 ,\out_stream_V_din[0]_INST_0_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \out_stream_V_din[0]_INST_0_i_1 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I1(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(p_0_in45_out));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[0]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[3]),
        .I1(result_2_1_2_i_reg_1129[3]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[0]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[2]),
        .I1(result_2_1_2_i_reg_1129[2]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[0]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[1]),
        .I1(result_2_1_2_i_reg_1129[1]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[0]_INST_0_i_5 
       (.I0(result_3_2_1_i_reg_1134[0]),
        .I1(result_2_1_2_i_reg_1129[0]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[0]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[0]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[3]),
        .I1(result_3_2_1_i_reg_1134[3]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[3]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[0]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[0]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[2]),
        .I1(result_3_2_1_i_reg_1134[2]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[2]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[0]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[1]),
        .I1(result_3_2_1_i_reg_1134[1]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[1]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[0]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[0]_INST_0_i_9 
       (.I0(result_2_1_2_i_reg_1129[0]),
        .I1(result_3_2_1_i_reg_1134[0]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[0]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[0]_INST_0_i_9_n_0 ));
  CARRY4 \out_stream_V_din[12]_INST_0 
       (.CI(\out_stream_V_din[8]_INST_0_n_0 ),
        .CO({\out_stream_V_din[12]_INST_0_n_0 ,\out_stream_V_din[12]_INST_0_n_1 ,\out_stream_V_din[12]_INST_0_n_2 ,\out_stream_V_din[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[15:12]),
        .O(out_stream_V_din[15:12]),
        .S({\out_stream_V_din[12]_INST_0_i_5_n_0 ,\out_stream_V_din[12]_INST_0_i_6_n_0 ,\out_stream_V_din[12]_INST_0_i_7_n_0 ,\out_stream_V_din[12]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[12]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[15]),
        .I1(result_2_1_2_i_reg_1129[15]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[12]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[14]),
        .I1(result_2_1_2_i_reg_1129[14]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[12]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[13]),
        .I1(result_2_1_2_i_reg_1129[13]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[12]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[12]),
        .I1(result_2_1_2_i_reg_1129[12]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[12]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[12]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[15]),
        .I1(result_3_2_1_i_reg_1134[15]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[15]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[12]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[14]),
        .I1(result_3_2_1_i_reg_1134[14]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[14]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[12]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[12]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[13]),
        .I1(result_3_2_1_i_reg_1134[13]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[13]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[12]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[12]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[12]),
        .I1(result_3_2_1_i_reg_1134[12]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[12]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[12]_INST_0_i_8_n_0 ));
  CARRY4 \out_stream_V_din[16]_INST_0 
       (.CI(\out_stream_V_din[12]_INST_0_n_0 ),
        .CO({\out_stream_V_din[16]_INST_0_n_0 ,\out_stream_V_din[16]_INST_0_n_1 ,\out_stream_V_din[16]_INST_0_n_2 ,\out_stream_V_din[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[19:16]),
        .O(out_stream_V_din[19:16]),
        .S({\out_stream_V_din[16]_INST_0_i_5_n_0 ,\out_stream_V_din[16]_INST_0_i_6_n_0 ,\out_stream_V_din[16]_INST_0_i_7_n_0 ,\out_stream_V_din[16]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[16]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[19]),
        .I1(result_2_1_2_i_reg_1129[19]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[16]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[18]),
        .I1(result_2_1_2_i_reg_1129[18]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[16]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[17]),
        .I1(result_2_1_2_i_reg_1129[17]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[16]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[16]),
        .I1(result_2_1_2_i_reg_1129[16]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[16]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[16]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[19]),
        .I1(result_3_2_1_i_reg_1134[19]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[19]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[16]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[16]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[18]),
        .I1(result_3_2_1_i_reg_1134[18]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[18]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[16]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[16]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[17]),
        .I1(result_3_2_1_i_reg_1134[17]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[17]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[16]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[16]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[16]),
        .I1(result_3_2_1_i_reg_1134[16]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[16]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[16]_INST_0_i_8_n_0 ));
  CARRY4 \out_stream_V_din[20]_INST_0 
       (.CI(\out_stream_V_din[16]_INST_0_n_0 ),
        .CO({\out_stream_V_din[20]_INST_0_n_0 ,\out_stream_V_din[20]_INST_0_n_1 ,\out_stream_V_din[20]_INST_0_n_2 ,\out_stream_V_din[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[23:20]),
        .O(out_stream_V_din[23:20]),
        .S({\out_stream_V_din[20]_INST_0_i_5_n_0 ,\out_stream_V_din[20]_INST_0_i_6_n_0 ,\out_stream_V_din[20]_INST_0_i_7_n_0 ,\out_stream_V_din[20]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[20]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[23]),
        .I1(result_2_1_2_i_reg_1129[23]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[20]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[22]),
        .I1(result_2_1_2_i_reg_1129[22]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[20]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[21]),
        .I1(result_2_1_2_i_reg_1129[21]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[20]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[20]),
        .I1(result_2_1_2_i_reg_1129[20]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[20]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[20]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[23]),
        .I1(result_3_2_1_i_reg_1134[23]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[23]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[20]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[20]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[22]),
        .I1(result_3_2_1_i_reg_1134[22]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[22]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[20]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[20]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[21]),
        .I1(result_3_2_1_i_reg_1134[21]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[21]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[20]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[20]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[20]),
        .I1(result_3_2_1_i_reg_1134[20]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[20]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[20]_INST_0_i_8_n_0 ));
  CARRY4 \out_stream_V_din[24]_INST_0 
       (.CI(\out_stream_V_din[20]_INST_0_n_0 ),
        .CO({\out_stream_V_din[24]_INST_0_n_0 ,\out_stream_V_din[24]_INST_0_n_1 ,\out_stream_V_din[24]_INST_0_n_2 ,\out_stream_V_din[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[27:24]),
        .O(out_stream_V_din[27:24]),
        .S({\out_stream_V_din[24]_INST_0_i_5_n_0 ,\out_stream_V_din[24]_INST_0_i_6_n_0 ,\out_stream_V_din[24]_INST_0_i_7_n_0 ,\out_stream_V_din[24]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[24]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[27]),
        .I1(result_2_1_2_i_reg_1129[27]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[24]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[26]),
        .I1(result_2_1_2_i_reg_1129[26]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[24]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[25]),
        .I1(result_2_1_2_i_reg_1129[25]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[24]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[24]),
        .I1(result_2_1_2_i_reg_1129[24]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[24]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[24]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[27]),
        .I1(result_3_2_1_i_reg_1134[27]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[27]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[24]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[24]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[26]),
        .I1(result_3_2_1_i_reg_1134[26]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[26]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[24]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[24]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[25]),
        .I1(result_3_2_1_i_reg_1134[25]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[25]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[24]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[24]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[24]),
        .I1(result_3_2_1_i_reg_1134[24]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[24]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[24]_INST_0_i_8_n_0 ));
  CARRY4 \out_stream_V_din[28]_INST_0 
       (.CI(\out_stream_V_din[24]_INST_0_n_0 ),
        .CO({\NLW_out_stream_V_din[28]_INST_0_CO_UNCONNECTED [3],\out_stream_V_din[28]_INST_0_n_1 ,\out_stream_V_din[28]_INST_0_n_2 ,\out_stream_V_din[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,result_2_2_1_i_fu_889_p3[30:28]}),
        .O(out_stream_V_din[31:28]),
        .S({\out_stream_V_din[28]_INST_0_i_4_n_0 ,\out_stream_V_din[28]_INST_0_i_5_n_0 ,\out_stream_V_din[28]_INST_0_i_6_n_0 ,\out_stream_V_din[28]_INST_0_i_7_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[28]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[30]),
        .I1(result_2_1_2_i_reg_1129[30]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[28]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[29]),
        .I1(result_2_1_2_i_reg_1129[29]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[28]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[28]),
        .I1(result_2_1_2_i_reg_1129[28]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[28]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[28]_INST_0_i_4 
       (.I0(result_2_1_2_i_reg_1129[31]),
        .I1(result_3_2_1_i_reg_1134[31]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[31]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[28]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[28]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[30]),
        .I1(result_3_2_1_i_reg_1134[30]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[30]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[28]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[28]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[29]),
        .I1(result_3_2_1_i_reg_1134[29]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[29]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[28]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[28]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[28]),
        .I1(result_3_2_1_i_reg_1134[28]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[28]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[28]_INST_0_i_7_n_0 ));
  CARRY4 \out_stream_V_din[4]_INST_0 
       (.CI(\out_stream_V_din[0]_INST_0_n_0 ),
        .CO({\out_stream_V_din[4]_INST_0_n_0 ,\out_stream_V_din[4]_INST_0_n_1 ,\out_stream_V_din[4]_INST_0_n_2 ,\out_stream_V_din[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[7:4]),
        .O(out_stream_V_din[7:4]),
        .S({\out_stream_V_din[4]_INST_0_i_5_n_0 ,\out_stream_V_din[4]_INST_0_i_6_n_0 ,\out_stream_V_din[4]_INST_0_i_7_n_0 ,\out_stream_V_din[4]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[4]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[7]),
        .I1(result_2_1_2_i_reg_1129[7]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[4]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[6]),
        .I1(result_2_1_2_i_reg_1129[6]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[4]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[5]),
        .I1(result_2_1_2_i_reg_1129[5]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[4]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[4]),
        .I1(result_2_1_2_i_reg_1129[4]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[4]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[4]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[7]),
        .I1(result_3_2_1_i_reg_1134[7]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[7]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[4]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[6]),
        .I1(result_3_2_1_i_reg_1134[6]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[6]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[4]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[5]),
        .I1(result_3_2_1_i_reg_1134[5]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[5]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[4]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[4]),
        .I1(result_3_2_1_i_reg_1134[4]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[4]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[4]_INST_0_i_8_n_0 ));
  CARRY4 \out_stream_V_din[8]_INST_0 
       (.CI(\out_stream_V_din[4]_INST_0_n_0 ),
        .CO({\out_stream_V_din[8]_INST_0_n_0 ,\out_stream_V_din[8]_INST_0_n_1 ,\out_stream_V_din[8]_INST_0_n_2 ,\out_stream_V_din[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_2_1_i_fu_889_p3[11:8]),
        .O(out_stream_V_din[11:8]),
        .S({\out_stream_V_din[8]_INST_0_i_5_n_0 ,\out_stream_V_din[8]_INST_0_i_6_n_0 ,\out_stream_V_din[8]_INST_0_i_7_n_0 ,\out_stream_V_din[8]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[8]_INST_0_i_1 
       (.I0(result_3_2_1_i_reg_1134[11]),
        .I1(result_2_1_2_i_reg_1129[11]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[8]_INST_0_i_2 
       (.I0(result_3_2_1_i_reg_1134[10]),
        .I1(result_2_1_2_i_reg_1129[10]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[8]_INST_0_i_3 
       (.I0(result_3_2_1_i_reg_1134[9]),
        .I1(result_2_1_2_i_reg_1129[9]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_stream_V_din[8]_INST_0_i_4 
       (.I0(result_3_2_1_i_reg_1134[8]),
        .I1(result_2_1_2_i_reg_1129[8]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .O(result_2_2_1_i_fu_889_p3[8]));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[8]_INST_0_i_5 
       (.I0(result_2_1_2_i_reg_1129[11]),
        .I1(result_3_2_1_i_reg_1134[11]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[11]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[8]_INST_0_i_6 
       (.I0(result_2_1_2_i_reg_1129[10]),
        .I1(result_3_2_1_i_reg_1134[10]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[10]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[8]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[8]_INST_0_i_7 
       (.I0(result_2_1_2_i_reg_1129[9]),
        .I1(result_3_2_1_i_reg_1134[9]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[9]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[8]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hC3AACCAA)) 
    \out_stream_V_din[8]_INST_0_i_8 
       (.I0(result_2_1_2_i_reg_1129[8]),
        .I1(result_3_2_1_i_reg_1134[8]),
        .I2(window_2_1_reg_333_pp3_iter3_reg[8]),
        .I3(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .I4(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .O(\out_stream_V_din[8]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h02)) 
    out_stream_V_write_INST_0
       (.I0(ap_enable_reg_pp3_iter4_reg_n_0),
        .I1(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .I2(line_buf_1_U_n_35),
        .O(out_stream_V_write));
  LUT3 #(
    .INIT(8'h2A)) 
    \read_count_1_fu_120[0]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(indvar_flatten7_reg_3000),
        .I2(tmp_13_fu_693_p2),
        .O(read_count_1_fu_120));
  LUT2 #(
    .INIT(4'h8)) 
    \read_count_1_fu_120[0]_i_2 
       (.I0(tmp_13_fu_693_p2),
        .I1(indvar_flatten7_reg_3000),
        .O(read_count_1_fu_1200));
  LUT1 #(
    .INIT(2'h1)) 
    \read_count_1_fu_120[0]_i_4 
       (.I0(read_count_1_fu_120_reg[0]),
        .O(\read_count_1_fu_120[0]_i_4_n_0 ));
  FDSE \read_count_1_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[0]_i_3_n_7 ),
        .Q(read_count_1_fu_120_reg[0]),
        .S(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\read_count_1_fu_120_reg[0]_i_3_n_0 ,\read_count_1_fu_120_reg[0]_i_3_n_1 ,\read_count_1_fu_120_reg[0]_i_3_n_2 ,\read_count_1_fu_120_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_count_1_fu_120_reg[0]_i_3_n_4 ,\read_count_1_fu_120_reg[0]_i_3_n_5 ,\read_count_1_fu_120_reg[0]_i_3_n_6 ,\read_count_1_fu_120_reg[0]_i_3_n_7 }),
        .S({read_count_1_fu_120_reg[3:1],\read_count_1_fu_120[0]_i_4_n_0 }));
  FDRE \read_count_1_fu_120_reg[10] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[8]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[10]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[11] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[8]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[11]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[12] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[12]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[12]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[12]_i_1 
       (.CI(\read_count_1_fu_120_reg[8]_i_1_n_0 ),
        .CO({\read_count_1_fu_120_reg[12]_i_1_n_0 ,\read_count_1_fu_120_reg[12]_i_1_n_1 ,\read_count_1_fu_120_reg[12]_i_1_n_2 ,\read_count_1_fu_120_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[12]_i_1_n_4 ,\read_count_1_fu_120_reg[12]_i_1_n_5 ,\read_count_1_fu_120_reg[12]_i_1_n_6 ,\read_count_1_fu_120_reg[12]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[15:12]));
  FDRE \read_count_1_fu_120_reg[13] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[12]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[13]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[14] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[12]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[14]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[15] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[12]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[15]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[16] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[16]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[16]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[16]_i_1 
       (.CI(\read_count_1_fu_120_reg[12]_i_1_n_0 ),
        .CO({\read_count_1_fu_120_reg[16]_i_1_n_0 ,\read_count_1_fu_120_reg[16]_i_1_n_1 ,\read_count_1_fu_120_reg[16]_i_1_n_2 ,\read_count_1_fu_120_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[16]_i_1_n_4 ,\read_count_1_fu_120_reg[16]_i_1_n_5 ,\read_count_1_fu_120_reg[16]_i_1_n_6 ,\read_count_1_fu_120_reg[16]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[19:16]));
  FDRE \read_count_1_fu_120_reg[17] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[16]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[17]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[18] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[16]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[18]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[19] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[16]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[19]),
        .R(read_count_1_fu_120));
  FDSE \read_count_1_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[0]_i_3_n_6 ),
        .Q(read_count_1_fu_120_reg[1]),
        .S(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[20] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[20]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[20]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[20]_i_1 
       (.CI(\read_count_1_fu_120_reg[16]_i_1_n_0 ),
        .CO({\read_count_1_fu_120_reg[20]_i_1_n_0 ,\read_count_1_fu_120_reg[20]_i_1_n_1 ,\read_count_1_fu_120_reg[20]_i_1_n_2 ,\read_count_1_fu_120_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[20]_i_1_n_4 ,\read_count_1_fu_120_reg[20]_i_1_n_5 ,\read_count_1_fu_120_reg[20]_i_1_n_6 ,\read_count_1_fu_120_reg[20]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[23:20]));
  FDRE \read_count_1_fu_120_reg[21] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[20]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[21]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[22] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[20]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[22]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[23] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[20]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[23]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[24] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[24]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[24]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[24]_i_1 
       (.CI(\read_count_1_fu_120_reg[20]_i_1_n_0 ),
        .CO({\read_count_1_fu_120_reg[24]_i_1_n_0 ,\read_count_1_fu_120_reg[24]_i_1_n_1 ,\read_count_1_fu_120_reg[24]_i_1_n_2 ,\read_count_1_fu_120_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[24]_i_1_n_4 ,\read_count_1_fu_120_reg[24]_i_1_n_5 ,\read_count_1_fu_120_reg[24]_i_1_n_6 ,\read_count_1_fu_120_reg[24]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[27:24]));
  FDRE \read_count_1_fu_120_reg[25] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[24]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[25]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[26] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[24]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[26]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[27] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[24]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[27]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[28] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[28]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[28]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[28]_i_1 
       (.CI(\read_count_1_fu_120_reg[24]_i_1_n_0 ),
        .CO({\NLW_read_count_1_fu_120_reg[28]_i_1_CO_UNCONNECTED [3],\read_count_1_fu_120_reg[28]_i_1_n_1 ,\read_count_1_fu_120_reg[28]_i_1_n_2 ,\read_count_1_fu_120_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[28]_i_1_n_4 ,\read_count_1_fu_120_reg[28]_i_1_n_5 ,\read_count_1_fu_120_reg[28]_i_1_n_6 ,\read_count_1_fu_120_reg[28]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[31:28]));
  FDRE \read_count_1_fu_120_reg[29] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[28]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[29]),
        .R(read_count_1_fu_120));
  FDSE \read_count_1_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[0]_i_3_n_5 ),
        .Q(read_count_1_fu_120_reg[2]),
        .S(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[30] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[28]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[30]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[31] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[28]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[31]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[3] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[0]_i_3_n_4 ),
        .Q(read_count_1_fu_120_reg[3]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[4] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[4]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[4]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[4]_i_1 
       (.CI(\read_count_1_fu_120_reg[0]_i_3_n_0 ),
        .CO({\read_count_1_fu_120_reg[4]_i_1_n_0 ,\read_count_1_fu_120_reg[4]_i_1_n_1 ,\read_count_1_fu_120_reg[4]_i_1_n_2 ,\read_count_1_fu_120_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[4]_i_1_n_4 ,\read_count_1_fu_120_reg[4]_i_1_n_5 ,\read_count_1_fu_120_reg[4]_i_1_n_6 ,\read_count_1_fu_120_reg[4]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[7:4]));
  FDRE \read_count_1_fu_120_reg[5] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[4]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[5]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[6] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[4]_i_1_n_5 ),
        .Q(read_count_1_fu_120_reg[6]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[7] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[4]_i_1_n_4 ),
        .Q(read_count_1_fu_120_reg[7]),
        .R(read_count_1_fu_120));
  FDRE \read_count_1_fu_120_reg[8] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[8]_i_1_n_7 ),
        .Q(read_count_1_fu_120_reg[8]),
        .R(read_count_1_fu_120));
  CARRY4 \read_count_1_fu_120_reg[8]_i_1 
       (.CI(\read_count_1_fu_120_reg[4]_i_1_n_0 ),
        .CO({\read_count_1_fu_120_reg[8]_i_1_n_0 ,\read_count_1_fu_120_reg[8]_i_1_n_1 ,\read_count_1_fu_120_reg[8]_i_1_n_2 ,\read_count_1_fu_120_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_count_1_fu_120_reg[8]_i_1_n_4 ,\read_count_1_fu_120_reg[8]_i_1_n_5 ,\read_count_1_fu_120_reg[8]_i_1_n_6 ,\read_count_1_fu_120_reg[8]_i_1_n_7 }),
        .S(read_count_1_fu_120_reg[11:8]));
  FDRE \read_count_1_fu_120_reg[9] 
       (.C(ap_clk),
        .CE(read_count_1_fu_1200),
        .D(\read_count_1_fu_120_reg[8]_i_1_n_6 ),
        .Q(read_count_1_fu_120_reg[9]),
        .R(read_count_1_fu_120));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[11]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[11]),
        .I3(window_0_0_fu_104[10]),
        .O(\result_2_0_2_i_reg_1102[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[11]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[10]),
        .I3(window_0_0_fu_104[9]),
        .O(\result_2_0_2_i_reg_1102[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[11]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[9]),
        .I3(window_0_0_fu_104[8]),
        .O(\result_2_0_2_i_reg_1102[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[11]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[8]),
        .I3(window_0_0_fu_104[7]),
        .O(\result_2_0_2_i_reg_1102[11]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[11]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[11]),
        .O(result_2_0_1_i_fu_756_p3[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[11]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[10]),
        .O(result_2_0_1_i_fu_756_p3[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[11]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[9]),
        .O(result_2_0_1_i_fu_756_p3[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[11]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[8]),
        .O(result_2_0_1_i_fu_756_p3[8]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[11]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[11]),
        .I1(window_0_1_fu_108[11]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[11]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[10]),
        .I1(window_0_1_fu_108[10]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[11]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[9]),
        .I1(window_0_1_fu_108[9]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[11]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[8]),
        .I1(window_0_1_fu_108[8]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[11]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[15]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[15]),
        .I3(window_0_0_fu_104[14]),
        .O(\result_2_0_2_i_reg_1102[15]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[15]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[14]),
        .I3(window_0_0_fu_104[13]),
        .O(\result_2_0_2_i_reg_1102[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[15]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[13]),
        .I3(window_0_0_fu_104[12]),
        .O(\result_2_0_2_i_reg_1102[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[15]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[12]),
        .I3(window_0_0_fu_104[11]),
        .O(\result_2_0_2_i_reg_1102[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[15]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[15]),
        .O(result_2_0_1_i_fu_756_p3[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[15]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[14]),
        .O(result_2_0_1_i_fu_756_p3[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[15]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[13]),
        .O(result_2_0_1_i_fu_756_p3[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[15]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[12]),
        .O(result_2_0_1_i_fu_756_p3[12]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[15]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[15]),
        .I1(window_0_1_fu_108[15]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[15]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[14]),
        .I1(window_0_1_fu_108[14]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[15]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[13]),
        .I1(window_0_1_fu_108[13]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[15]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[12]),
        .I1(window_0_1_fu_108[12]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[19]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[19]),
        .I3(window_0_0_fu_104[18]),
        .O(\result_2_0_2_i_reg_1102[19]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[19]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[18]),
        .I3(window_0_0_fu_104[17]),
        .O(\result_2_0_2_i_reg_1102[19]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[19]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[17]),
        .I3(window_0_0_fu_104[16]),
        .O(\result_2_0_2_i_reg_1102[19]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[19]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[16]),
        .I3(window_0_0_fu_104[15]),
        .O(\result_2_0_2_i_reg_1102[19]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[19]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[19]),
        .O(result_2_0_1_i_fu_756_p3[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[19]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[18]),
        .O(result_2_0_1_i_fu_756_p3[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[19]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[17]),
        .O(result_2_0_1_i_fu_756_p3[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[19]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[16]),
        .O(result_2_0_1_i_fu_756_p3[16]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[19]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[19]),
        .I1(window_0_1_fu_108[19]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[19]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[18]),
        .I1(window_0_1_fu_108[18]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[19]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[17]),
        .I1(window_0_1_fu_108[17]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[19]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[16]),
        .I1(window_0_1_fu_108[16]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[19]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[23]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[23]),
        .I3(window_0_0_fu_104[22]),
        .O(\result_2_0_2_i_reg_1102[23]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[23]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[22]),
        .I3(window_0_0_fu_104[21]),
        .O(\result_2_0_2_i_reg_1102[23]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[23]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[21]),
        .I3(window_0_0_fu_104[20]),
        .O(\result_2_0_2_i_reg_1102[23]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[23]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[20]),
        .I3(window_0_0_fu_104[19]),
        .O(\result_2_0_2_i_reg_1102[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[23]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[23]),
        .O(result_2_0_1_i_fu_756_p3[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[23]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[22]),
        .O(result_2_0_1_i_fu_756_p3[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[23]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[21]),
        .O(result_2_0_1_i_fu_756_p3[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[23]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[20]),
        .O(result_2_0_1_i_fu_756_p3[20]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[23]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[23]),
        .I1(window_0_1_fu_108[23]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[23]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[22]),
        .I1(window_0_1_fu_108[22]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[23]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[21]),
        .I1(window_0_1_fu_108[21]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[23]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[20]),
        .I1(window_0_1_fu_108[20]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[23]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[27]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[27]),
        .I3(window_0_0_fu_104[26]),
        .O(\result_2_0_2_i_reg_1102[27]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[27]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[26]),
        .I3(window_0_0_fu_104[25]),
        .O(\result_2_0_2_i_reg_1102[27]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[27]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[25]),
        .I3(window_0_0_fu_104[24]),
        .O(\result_2_0_2_i_reg_1102[27]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[27]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[24]),
        .I3(window_0_0_fu_104[23]),
        .O(\result_2_0_2_i_reg_1102[27]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[27]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[27]),
        .O(result_2_0_1_i_fu_756_p3[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[27]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[26]),
        .O(result_2_0_1_i_fu_756_p3[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[27]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[25]),
        .O(result_2_0_1_i_fu_756_p3[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[27]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[24]),
        .O(result_2_0_1_i_fu_756_p3[24]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[27]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[27]),
        .I1(window_0_1_fu_108[27]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[27]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[26]),
        .I1(window_0_1_fu_108[26]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[27]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[25]),
        .I1(window_0_1_fu_108[25]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[27]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[24]),
        .I1(window_0_1_fu_108[24]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[27]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[31]_i_10 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[31]),
        .I3(window_0_0_fu_104[30]),
        .O(\result_2_0_2_i_reg_1102[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[31]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[30]),
        .I3(window_0_0_fu_104[29]),
        .O(\result_2_0_2_i_reg_1102[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[31]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[29]),
        .I3(window_0_0_fu_104[28]),
        .O(\result_2_0_2_i_reg_1102[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[31]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[28]),
        .I3(window_0_0_fu_104[27]),
        .O(\result_2_0_2_i_reg_1102[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[31]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[30]),
        .O(result_2_0_1_i_fu_756_p3[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[31]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[29]),
        .O(result_2_0_1_i_fu_756_p3[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[31]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[28]),
        .O(result_2_0_1_i_fu_756_p3[28]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[31]_i_5 
       (.I0(result_3_0_1_i_fu_750_p2[31]),
        .I1(window_0_1_fu_108[31]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[31]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[30]),
        .I1(window_0_1_fu_108[30]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[31]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[29]),
        .I1(window_0_1_fu_108[29]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[31]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[28]),
        .I1(window_0_1_fu_108[28]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[3]_i_10 
       (.I0(result_3_0_1_i_fu_750_p2[0]),
        .I1(window_0_1_fu_108[0]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[3]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[3]),
        .I3(window_0_0_fu_104[2]),
        .O(\result_2_0_2_i_reg_1102[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[3]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[2]),
        .I3(window_0_0_fu_104[1]),
        .O(\result_2_0_2_i_reg_1102[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[3]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[1]),
        .I3(window_0_0_fu_104[0]),
        .O(\result_2_0_2_i_reg_1102[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_2_0_2_i_reg_1102[3]_i_15 
       (.I0(window_0_0_read_as_fu_100[0]),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .O(p_read_i_fu_736_p3));
  LUT4 #(
    .INIT(16'h02AA)) 
    \result_2_0_2_i_reg_1102[3]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(x_4_reg_1074[0]),
        .I2(x_4_reg_1074[1]),
        .I3(x_4_reg_1074[2]),
        .O(p_0_in19_out));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[3]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[3]),
        .O(result_2_0_1_i_fu_756_p3[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[3]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[2]),
        .O(result_2_0_1_i_fu_756_p3[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[3]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[1]),
        .O(result_2_0_1_i_fu_756_p3[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[3]_i_6 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[0]),
        .O(result_2_0_1_i_fu_756_p3[0]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[3]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[3]),
        .I1(window_0_1_fu_108[3]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[3]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[2]),
        .I1(window_0_1_fu_108[2]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[3]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[1]),
        .I1(window_0_1_fu_108[1]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[7]_i_11 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[7]),
        .I3(window_0_0_fu_104[6]),
        .O(\result_2_0_2_i_reg_1102[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[7]_i_12 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[6]),
        .I3(window_0_0_fu_104[5]),
        .O(\result_2_0_2_i_reg_1102[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[7]_i_13 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[5]),
        .I3(window_0_0_fu_104[4]),
        .O(\result_2_0_2_i_reg_1102[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_2_0_2_i_reg_1102[7]_i_14 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I2(window_0_0_read_as_fu_100[4]),
        .I3(window_0_0_fu_104[3]),
        .O(\result_2_0_2_i_reg_1102[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[7]_i_2 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[7]),
        .O(result_2_0_1_i_fu_756_p3[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[7]_i_3 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[6]),
        .O(result_2_0_1_i_fu_756_p3[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[7]_i_4 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[5]),
        .O(result_2_0_1_i_fu_756_p3[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \result_2_0_2_i_reg_1102[7]_i_5 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(result_3_0_1_i_fu_750_p2[4]),
        .O(result_2_0_1_i_fu_756_p3[4]));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[7]_i_6 
       (.I0(result_3_0_1_i_fu_750_p2[7]),
        .I1(window_0_1_fu_108[7]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[7]_i_7 
       (.I0(result_3_0_1_i_fu_750_p2[6]),
        .I1(window_0_1_fu_108[6]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[7]_i_8 
       (.I0(result_3_0_1_i_fu_750_p2[5]),
        .I1(window_0_1_fu_108[5]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A09090909090)) 
    \result_2_0_2_i_reg_1102[7]_i_9 
       (.I0(result_3_0_1_i_fu_750_p2[4]),
        .I1(window_0_1_fu_108[4]),
        .I2(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I3(x_4_reg_1074[0]),
        .I4(x_4_reg_1074[1]),
        .I5(x_4_reg_1074[2]),
        .O(\result_2_0_2_i_reg_1102[7]_i_9_n_0 ));
  FDRE \result_2_0_2_i_reg_1102_reg[0] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[0]),
        .Q(result_2_0_2_i_reg_1102[0]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[10] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[10]),
        .Q(result_2_0_2_i_reg_1102[10]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[11] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[11]),
        .Q(result_2_0_2_i_reg_1102[11]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[11]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[7]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[11]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[11]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[11]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[11:8]),
        .O(result_2_0_2_i_fu_779_p3[11:8]),
        .S({\result_2_0_2_i_reg_1102[11]_i_6_n_0 ,\result_2_0_2_i_reg_1102[11]_i_7_n_0 ,\result_2_0_2_i_reg_1102[11]_i_8_n_0 ,\result_2_0_2_i_reg_1102[11]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[11]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[7]_i_10_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[11]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[11]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[11]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[11]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[10:7]),
        .O(result_3_0_1_i_fu_750_p2[11:8]),
        .S({\result_2_0_2_i_reg_1102[11]_i_11_n_0 ,\result_2_0_2_i_reg_1102[11]_i_12_n_0 ,\result_2_0_2_i_reg_1102[11]_i_13_n_0 ,\result_2_0_2_i_reg_1102[11]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[12] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[12]),
        .Q(result_2_0_2_i_reg_1102[12]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[13] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[13]),
        .Q(result_2_0_2_i_reg_1102[13]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[14] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[14]),
        .Q(result_2_0_2_i_reg_1102[14]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[15] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[15]),
        .Q(result_2_0_2_i_reg_1102[15]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[15]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[11]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[15]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[15]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[15]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[15:12]),
        .O(result_2_0_2_i_fu_779_p3[15:12]),
        .S({\result_2_0_2_i_reg_1102[15]_i_6_n_0 ,\result_2_0_2_i_reg_1102[15]_i_7_n_0 ,\result_2_0_2_i_reg_1102[15]_i_8_n_0 ,\result_2_0_2_i_reg_1102[15]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[15]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[11]_i_10_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[15]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[15]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[15]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[15]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[14:11]),
        .O(result_3_0_1_i_fu_750_p2[15:12]),
        .S({\result_2_0_2_i_reg_1102[15]_i_11_n_0 ,\result_2_0_2_i_reg_1102[15]_i_12_n_0 ,\result_2_0_2_i_reg_1102[15]_i_13_n_0 ,\result_2_0_2_i_reg_1102[15]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[16] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[16]),
        .Q(result_2_0_2_i_reg_1102[16]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[17] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[17]),
        .Q(result_2_0_2_i_reg_1102[17]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[18] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[18]),
        .Q(result_2_0_2_i_reg_1102[18]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[19] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[19]),
        .Q(result_2_0_2_i_reg_1102[19]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[19]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[15]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[19]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[19]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[19]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[19:16]),
        .O(result_2_0_2_i_fu_779_p3[19:16]),
        .S({\result_2_0_2_i_reg_1102[19]_i_6_n_0 ,\result_2_0_2_i_reg_1102[19]_i_7_n_0 ,\result_2_0_2_i_reg_1102[19]_i_8_n_0 ,\result_2_0_2_i_reg_1102[19]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[19]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[15]_i_10_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[19]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[19]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[19]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[19]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[18:15]),
        .O(result_3_0_1_i_fu_750_p2[19:16]),
        .S({\result_2_0_2_i_reg_1102[19]_i_11_n_0 ,\result_2_0_2_i_reg_1102[19]_i_12_n_0 ,\result_2_0_2_i_reg_1102[19]_i_13_n_0 ,\result_2_0_2_i_reg_1102[19]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[1] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[1]),
        .Q(result_2_0_2_i_reg_1102[1]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[20] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[20]),
        .Q(result_2_0_2_i_reg_1102[20]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[21] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[21]),
        .Q(result_2_0_2_i_reg_1102[21]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[22] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[22]),
        .Q(result_2_0_2_i_reg_1102[22]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[23] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[23]),
        .Q(result_2_0_2_i_reg_1102[23]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[23]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[19]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[23]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[23]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[23]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[23:20]),
        .O(result_2_0_2_i_fu_779_p3[23:20]),
        .S({\result_2_0_2_i_reg_1102[23]_i_6_n_0 ,\result_2_0_2_i_reg_1102[23]_i_7_n_0 ,\result_2_0_2_i_reg_1102[23]_i_8_n_0 ,\result_2_0_2_i_reg_1102[23]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[23]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[19]_i_10_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[23]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[23]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[23]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[23]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[22:19]),
        .O(result_3_0_1_i_fu_750_p2[23:20]),
        .S({\result_2_0_2_i_reg_1102[23]_i_11_n_0 ,\result_2_0_2_i_reg_1102[23]_i_12_n_0 ,\result_2_0_2_i_reg_1102[23]_i_13_n_0 ,\result_2_0_2_i_reg_1102[23]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[24] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[24]),
        .Q(result_2_0_2_i_reg_1102[24]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[25] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[25]),
        .Q(result_2_0_2_i_reg_1102[25]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[26] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[26]),
        .Q(result_2_0_2_i_reg_1102[26]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[27] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[27]),
        .Q(result_2_0_2_i_reg_1102[27]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[27]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[23]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[27]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[27]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[27]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[27:24]),
        .O(result_2_0_2_i_fu_779_p3[27:24]),
        .S({\result_2_0_2_i_reg_1102[27]_i_6_n_0 ,\result_2_0_2_i_reg_1102[27]_i_7_n_0 ,\result_2_0_2_i_reg_1102[27]_i_8_n_0 ,\result_2_0_2_i_reg_1102[27]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[27]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[23]_i_10_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[27]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[27]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[27]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[27]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[26:23]),
        .O(result_3_0_1_i_fu_750_p2[27:24]),
        .S({\result_2_0_2_i_reg_1102[27]_i_11_n_0 ,\result_2_0_2_i_reg_1102[27]_i_12_n_0 ,\result_2_0_2_i_reg_1102[27]_i_13_n_0 ,\result_2_0_2_i_reg_1102[27]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[28] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[28]),
        .Q(result_2_0_2_i_reg_1102[28]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[29] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[29]),
        .Q(result_2_0_2_i_reg_1102[29]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[2] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[2]),
        .Q(result_2_0_2_i_reg_1102[2]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[30] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[30]),
        .Q(result_2_0_2_i_reg_1102[30]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[31] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[31]),
        .Q(result_2_0_2_i_reg_1102[31]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[31]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[27]_i_1_n_0 ),
        .CO({\NLW_result_2_0_2_i_reg_1102_reg[31]_i_1_CO_UNCONNECTED [3],\result_2_0_2_i_reg_1102_reg[31]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[31]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,result_2_0_1_i_fu_756_p3[30:28]}),
        .O(result_2_0_2_i_fu_779_p3[31:28]),
        .S({\result_2_0_2_i_reg_1102[31]_i_5_n_0 ,\result_2_0_2_i_reg_1102[31]_i_6_n_0 ,\result_2_0_2_i_reg_1102[31]_i_7_n_0 ,\result_2_0_2_i_reg_1102[31]_i_8_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[31]_i_9 
       (.CI(\result_2_0_2_i_reg_1102_reg[27]_i_10_n_0 ),
        .CO({\NLW_result_2_0_2_i_reg_1102_reg[31]_i_9_CO_UNCONNECTED [3],\result_2_0_2_i_reg_1102_reg[31]_i_9_n_1 ,\result_2_0_2_i_reg_1102_reg[31]_i_9_n_2 ,\result_2_0_2_i_reg_1102_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,window_0_0_fu_104[29:27]}),
        .O(result_3_0_1_i_fu_750_p2[31:28]),
        .S({\result_2_0_2_i_reg_1102[31]_i_10_n_0 ,\result_2_0_2_i_reg_1102[31]_i_11_n_0 ,\result_2_0_2_i_reg_1102[31]_i_12_n_0 ,\result_2_0_2_i_reg_1102[31]_i_13_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[3] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[3]),
        .Q(result_2_0_2_i_reg_1102[3]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_2_0_2_i_reg_1102_reg[3]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[3]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[3]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[3]_i_1_n_3 }),
        .CYINIT(p_0_in19_out),
        .DI(result_2_0_1_i_fu_756_p3[3:0]),
        .O(result_2_0_2_i_fu_779_p3[3:0]),
        .S({\result_2_0_2_i_reg_1102[3]_i_7_n_0 ,\result_2_0_2_i_reg_1102[3]_i_8_n_0 ,\result_2_0_2_i_reg_1102[3]_i_9_n_0 ,\result_2_0_2_i_reg_1102[3]_i_10_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\result_2_0_2_i_reg_1102_reg[3]_i_11_n_0 ,\result_2_0_2_i_reg_1102_reg[3]_i_11_n_1 ,\result_2_0_2_i_reg_1102_reg[3]_i_11_n_2 ,\result_2_0_2_i_reg_1102_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({window_0_0_fu_104[2:0],1'b0}),
        .O(result_3_0_1_i_fu_750_p2[3:0]),
        .S({\result_2_0_2_i_reg_1102[3]_i_12_n_0 ,\result_2_0_2_i_reg_1102[3]_i_13_n_0 ,\result_2_0_2_i_reg_1102[3]_i_14_n_0 ,p_read_i_fu_736_p3}));
  FDRE \result_2_0_2_i_reg_1102_reg[4] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[4]),
        .Q(result_2_0_2_i_reg_1102[4]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[5] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[5]),
        .Q(result_2_0_2_i_reg_1102[5]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[6] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[6]),
        .Q(result_2_0_2_i_reg_1102[6]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[7] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[7]),
        .Q(result_2_0_2_i_reg_1102[7]),
        .R(1'b0));
  CARRY4 \result_2_0_2_i_reg_1102_reg[7]_i_1 
       (.CI(\result_2_0_2_i_reg_1102_reg[3]_i_1_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[7]_i_1_n_0 ,\result_2_0_2_i_reg_1102_reg[7]_i_1_n_1 ,\result_2_0_2_i_reg_1102_reg[7]_i_1_n_2 ,\result_2_0_2_i_reg_1102_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_2_0_1_i_fu_756_p3[7:4]),
        .O(result_2_0_2_i_fu_779_p3[7:4]),
        .S({\result_2_0_2_i_reg_1102[7]_i_6_n_0 ,\result_2_0_2_i_reg_1102[7]_i_7_n_0 ,\result_2_0_2_i_reg_1102[7]_i_8_n_0 ,\result_2_0_2_i_reg_1102[7]_i_9_n_0 }));
  CARRY4 \result_2_0_2_i_reg_1102_reg[7]_i_10 
       (.CI(\result_2_0_2_i_reg_1102_reg[3]_i_11_n_0 ),
        .CO({\result_2_0_2_i_reg_1102_reg[7]_i_10_n_0 ,\result_2_0_2_i_reg_1102_reg[7]_i_10_n_1 ,\result_2_0_2_i_reg_1102_reg[7]_i_10_n_2 ,\result_2_0_2_i_reg_1102_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI(window_0_0_fu_104[6:3]),
        .O(result_3_0_1_i_fu_750_p2[7:4]),
        .S({\result_2_0_2_i_reg_1102[7]_i_11_n_0 ,\result_2_0_2_i_reg_1102[7]_i_12_n_0 ,\result_2_0_2_i_reg_1102[7]_i_13_n_0 ,\result_2_0_2_i_reg_1102[7]_i_14_n_0 }));
  FDRE \result_2_0_2_i_reg_1102_reg[8] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[8]),
        .Q(result_2_0_2_i_reg_1102[8]),
        .R(1'b0));
  FDRE \result_2_0_2_i_reg_1102_reg[9] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(result_2_0_2_i_fu_779_p3[9]),
        .Q(result_2_0_2_i_reg_1102[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[11]_i_2 
       (.I0(result_3_1_1_i_reg_1118[11]),
        .I1(window_1_1_reg_356[10]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[11]_i_3 
       (.I0(result_3_1_1_i_reg_1118[10]),
        .I1(window_1_1_reg_356[9]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[11]_i_4 
       (.I0(result_3_1_1_i_reg_1118[9]),
        .I1(window_1_1_reg_356[8]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[11]_i_5 
       (.I0(result_3_1_1_i_reg_1118[8]),
        .I1(window_1_1_reg_356[7]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[15]_i_2 
       (.I0(result_3_1_1_i_reg_1118[15]),
        .I1(window_1_1_reg_356[14]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[15]_i_3 
       (.I0(result_3_1_1_i_reg_1118[14]),
        .I1(window_1_1_reg_356[13]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[15]_i_4 
       (.I0(result_3_1_1_i_reg_1118[13]),
        .I1(window_1_1_reg_356[12]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[15]_i_5 
       (.I0(result_3_1_1_i_reg_1118[12]),
        .I1(window_1_1_reg_356[11]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[19]_i_2 
       (.I0(result_3_1_1_i_reg_1118[19]),
        .I1(window_1_1_reg_356[18]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[19]_i_3 
       (.I0(result_3_1_1_i_reg_1118[18]),
        .I1(window_1_1_reg_356[17]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[19]_i_4 
       (.I0(result_3_1_1_i_reg_1118[17]),
        .I1(window_1_1_reg_356[16]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[19]_i_5 
       (.I0(result_3_1_1_i_reg_1118[16]),
        .I1(window_1_1_reg_356[15]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[23]_i_2 
       (.I0(result_3_1_1_i_reg_1118[23]),
        .I1(window_1_1_reg_356[22]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[23]_i_3 
       (.I0(result_3_1_1_i_reg_1118[22]),
        .I1(window_1_1_reg_356[21]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[23]_i_4 
       (.I0(result_3_1_1_i_reg_1118[21]),
        .I1(window_1_1_reg_356[20]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[23]_i_5 
       (.I0(result_3_1_1_i_reg_1118[20]),
        .I1(window_1_1_reg_356[19]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[27]_i_2 
       (.I0(result_3_1_1_i_reg_1118[27]),
        .I1(window_1_1_reg_356[26]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[27]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[27]_i_3 
       (.I0(result_3_1_1_i_reg_1118[26]),
        .I1(window_1_1_reg_356[25]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[27]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[27]_i_4 
       (.I0(result_3_1_1_i_reg_1118[25]),
        .I1(window_1_1_reg_356[24]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[27]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[27]_i_5 
       (.I0(result_3_1_1_i_reg_1118[24]),
        .I1(window_1_1_reg_356[23]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_2_1_2_i_reg_1129[31]_i_1 
       (.I0(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I1(line_buf_1_U_n_35),
        .O(result_2_1_2_i_reg_11290));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[31]_i_3 
       (.I0(result_3_1_1_i_reg_1118[31]),
        .I1(window_1_1_reg_356[30]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[31]_i_4 
       (.I0(result_3_1_1_i_reg_1118[30]),
        .I1(window_1_1_reg_356[29]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[31]_i_5 
       (.I0(result_3_1_1_i_reg_1118[29]),
        .I1(window_1_1_reg_356[28]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[31]_i_6 
       (.I0(result_3_1_1_i_reg_1118[28]),
        .I1(window_1_1_reg_356[27]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[3]_i_2 
       (.I0(result_3_1_1_i_reg_1118[3]),
        .I1(window_1_1_reg_356[2]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[3]_i_3 
       (.I0(result_3_1_1_i_reg_1118[2]),
        .I1(window_1_1_reg_356[1]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[3]_i_4 
       (.I0(result_3_1_1_i_reg_1118[1]),
        .I1(window_1_1_reg_356[0]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_2_1_2_i_reg_1129[3]_i_5 
       (.I0(result_3_1_1_i_reg_1118[0]),
        .I1(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[7]_i_2 
       (.I0(result_3_1_1_i_reg_1118[7]),
        .I1(window_1_1_reg_356[6]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[7]_i_3 
       (.I0(result_3_1_1_i_reg_1118[6]),
        .I1(window_1_1_reg_356[5]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[7]_i_4 
       (.I0(result_3_1_1_i_reg_1118[5]),
        .I1(window_1_1_reg_356[4]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \result_2_1_2_i_reg_1129[7]_i_5 
       (.I0(result_3_1_1_i_reg_1118[4]),
        .I1(window_1_1_reg_356[3]),
        .I2(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .O(\result_2_1_2_i_reg_1129[7]_i_5_n_0 ));
  FDRE \result_2_1_2_i_reg_1129_reg[0] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[0]),
        .Q(result_2_1_2_i_reg_1129[0]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[10] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[10]),
        .Q(result_2_1_2_i_reg_1129[10]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[11] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[11]),
        .Q(result_2_1_2_i_reg_1129[11]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[11]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[7]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[11]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[11]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[11]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[11:8]),
        .O(result_2_1_2_i_fu_854_p3[11:8]),
        .S({\result_2_1_2_i_reg_1129[11]_i_2_n_0 ,\result_2_1_2_i_reg_1129[11]_i_3_n_0 ,\result_2_1_2_i_reg_1129[11]_i_4_n_0 ,\result_2_1_2_i_reg_1129[11]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[12] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[12]),
        .Q(result_2_1_2_i_reg_1129[12]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[13] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[13]),
        .Q(result_2_1_2_i_reg_1129[13]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[14] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[14]),
        .Q(result_2_1_2_i_reg_1129[14]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[15] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[15]),
        .Q(result_2_1_2_i_reg_1129[15]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[15]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[11]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[15]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[15]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[15]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[15:12]),
        .O(result_2_1_2_i_fu_854_p3[15:12]),
        .S({\result_2_1_2_i_reg_1129[15]_i_2_n_0 ,\result_2_1_2_i_reg_1129[15]_i_3_n_0 ,\result_2_1_2_i_reg_1129[15]_i_4_n_0 ,\result_2_1_2_i_reg_1129[15]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[16] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[16]),
        .Q(result_2_1_2_i_reg_1129[16]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[17] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[17]),
        .Q(result_2_1_2_i_reg_1129[17]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[18] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[18]),
        .Q(result_2_1_2_i_reg_1129[18]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[19] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[19]),
        .Q(result_2_1_2_i_reg_1129[19]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[19]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[15]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[19]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[19]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[19]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[19:16]),
        .O(result_2_1_2_i_fu_854_p3[19:16]),
        .S({\result_2_1_2_i_reg_1129[19]_i_2_n_0 ,\result_2_1_2_i_reg_1129[19]_i_3_n_0 ,\result_2_1_2_i_reg_1129[19]_i_4_n_0 ,\result_2_1_2_i_reg_1129[19]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[1] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[1]),
        .Q(result_2_1_2_i_reg_1129[1]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[20] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[20]),
        .Q(result_2_1_2_i_reg_1129[20]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[21] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[21]),
        .Q(result_2_1_2_i_reg_1129[21]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[22] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[22]),
        .Q(result_2_1_2_i_reg_1129[22]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[23] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[23]),
        .Q(result_2_1_2_i_reg_1129[23]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[23]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[19]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[23]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[23]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[23]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[23:20]),
        .O(result_2_1_2_i_fu_854_p3[23:20]),
        .S({\result_2_1_2_i_reg_1129[23]_i_2_n_0 ,\result_2_1_2_i_reg_1129[23]_i_3_n_0 ,\result_2_1_2_i_reg_1129[23]_i_4_n_0 ,\result_2_1_2_i_reg_1129[23]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[24] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[24]),
        .Q(result_2_1_2_i_reg_1129[24]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[25] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[25]),
        .Q(result_2_1_2_i_reg_1129[25]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[26] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[26]),
        .Q(result_2_1_2_i_reg_1129[26]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[27] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[27]),
        .Q(result_2_1_2_i_reg_1129[27]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[27]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[23]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[27]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[27]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[27]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[27:24]),
        .O(result_2_1_2_i_fu_854_p3[27:24]),
        .S({\result_2_1_2_i_reg_1129[27]_i_2_n_0 ,\result_2_1_2_i_reg_1129[27]_i_3_n_0 ,\result_2_1_2_i_reg_1129[27]_i_4_n_0 ,\result_2_1_2_i_reg_1129[27]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[28] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[28]),
        .Q(result_2_1_2_i_reg_1129[28]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[29] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[29]),
        .Q(result_2_1_2_i_reg_1129[29]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[2] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[2]),
        .Q(result_2_1_2_i_reg_1129[2]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[30] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[30]),
        .Q(result_2_1_2_i_reg_1129[30]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[31] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[31]),
        .Q(result_2_1_2_i_reg_1129[31]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[31]_i_2 
       (.CI(\result_2_1_2_i_reg_1129_reg[27]_i_1_n_0 ),
        .CO({\NLW_result_2_1_2_i_reg_1129_reg[31]_i_2_CO_UNCONNECTED [3],\result_2_1_2_i_reg_1129_reg[31]_i_2_n_1 ,\result_2_1_2_i_reg_1129_reg[31]_i_2_n_2 ,\result_2_1_2_i_reg_1129_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,result_3_1_1_i_reg_1118[30:28]}),
        .O(result_2_1_2_i_fu_854_p3[31:28]),
        .S({\result_2_1_2_i_reg_1129[31]_i_3_n_0 ,\result_2_1_2_i_reg_1129[31]_i_4_n_0 ,\result_2_1_2_i_reg_1129[31]_i_5_n_0 ,\result_2_1_2_i_reg_1129[31]_i_6_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[3] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[3]),
        .Q(result_2_1_2_i_reg_1129[3]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_2_1_2_i_reg_1129_reg[3]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[3]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[3]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[3]_i_1_n_3 }),
        .CYINIT(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .DI(result_3_1_1_i_reg_1118[3:0]),
        .O(result_2_1_2_i_fu_854_p3[3:0]),
        .S({\result_2_1_2_i_reg_1129[3]_i_2_n_0 ,\result_2_1_2_i_reg_1129[3]_i_3_n_0 ,\result_2_1_2_i_reg_1129[3]_i_4_n_0 ,\result_2_1_2_i_reg_1129[3]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[4] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[4]),
        .Q(result_2_1_2_i_reg_1129[4]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[5] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[5]),
        .Q(result_2_1_2_i_reg_1129[5]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[6] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[6]),
        .Q(result_2_1_2_i_reg_1129[6]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[7] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[7]),
        .Q(result_2_1_2_i_reg_1129[7]),
        .R(1'b0));
  CARRY4 \result_2_1_2_i_reg_1129_reg[7]_i_1 
       (.CI(\result_2_1_2_i_reg_1129_reg[3]_i_1_n_0 ),
        .CO({\result_2_1_2_i_reg_1129_reg[7]_i_1_n_0 ,\result_2_1_2_i_reg_1129_reg[7]_i_1_n_1 ,\result_2_1_2_i_reg_1129_reg[7]_i_1_n_2 ,\result_2_1_2_i_reg_1129_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(result_3_1_1_i_reg_1118[7:4]),
        .O(result_2_1_2_i_fu_854_p3[7:4]),
        .S({\result_2_1_2_i_reg_1129[7]_i_2_n_0 ,\result_2_1_2_i_reg_1129[7]_i_3_n_0 ,\result_2_1_2_i_reg_1129[7]_i_4_n_0 ,\result_2_1_2_i_reg_1129[7]_i_5_n_0 }));
  FDRE \result_2_1_2_i_reg_1129_reg[8] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[8]),
        .Q(result_2_1_2_i_reg_1129[8]),
        .R(1'b0));
  FDRE \result_2_1_2_i_reg_1129_reg[9] 
       (.C(ap_clk),
        .CE(result_2_1_2_i_reg_11290),
        .D(result_2_1_2_i_fu_854_p3[9]),
        .Q(result_2_1_2_i_reg_1129[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[11]_i_10 
       (.I0(window_1_0_read_as_fu_112[9]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[10]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[10]),
        .I5(result_2_0_2_i_reg_1102[10]),
        .O(\result_3_1_1_i_reg_1118[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[11]_i_11 
       (.I0(window_1_0_read_as_fu_112[8]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[9]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[9]),
        .I5(result_2_0_2_i_reg_1102[9]),
        .O(\result_3_1_1_i_reg_1118[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[11]_i_12 
       (.I0(window_1_0_read_as_fu_112[7]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[8]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[8]),
        .I5(result_2_0_2_i_reg_1102[8]),
        .O(\result_3_1_1_i_reg_1118[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[11]_i_13 
       (.I0(window_1_0_read_as_fu_112[6]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[7]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[7]),
        .I5(result_2_0_2_i_reg_1102[7]),
        .O(\result_3_1_1_i_reg_1118[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[11]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[9]),
        .I2(result_2_0_2_i_reg_1102[10]),
        .I3(window_1_1_reg_356[10]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[10]),
        .O(\result_3_1_1_i_reg_1118[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[11]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[8]),
        .I2(result_2_0_2_i_reg_1102[9]),
        .I3(window_1_1_reg_356[9]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[9]),
        .O(\result_3_1_1_i_reg_1118[11]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[11]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[7]),
        .I2(result_2_0_2_i_reg_1102[8]),
        .I3(window_1_1_reg_356[8]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[8]),
        .O(\result_3_1_1_i_reg_1118[11]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[11]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[6]),
        .I2(result_2_0_2_i_reg_1102[7]),
        .I3(window_1_1_reg_356[7]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[7]),
        .O(\result_3_1_1_i_reg_1118[11]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[11]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[8]),
        .I2(result_2_0_2_i_reg_1102[9]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[9]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[8]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[11]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[7]),
        .I2(result_2_0_2_i_reg_1102[8]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[8]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[7]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[11]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[6]),
        .I2(result_2_0_2_i_reg_1102[7]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[7]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[6]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[11]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[5]),
        .I2(result_2_0_2_i_reg_1102[6]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[6]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[5]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[11]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[11]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[11]_i_14_n_0 ),
        .I2(window_1_0_reg_367[9]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[9]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[11]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[11]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[11]_i_15_n_0 ),
        .I2(window_1_0_reg_367[8]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[8]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[11]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[11]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[11]_i_16_n_0 ),
        .I2(window_1_0_reg_367[7]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[7]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[11]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[11]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[11]_i_17_n_0 ),
        .I2(window_1_0_reg_367[6]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[6]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[15]_i_10 
       (.I0(window_1_0_read_as_fu_112[13]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[14]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[14]),
        .I5(result_2_0_2_i_reg_1102[14]),
        .O(\result_3_1_1_i_reg_1118[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[15]_i_11 
       (.I0(window_1_0_read_as_fu_112[12]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[13]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[13]),
        .I5(result_2_0_2_i_reg_1102[13]),
        .O(\result_3_1_1_i_reg_1118[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[15]_i_12 
       (.I0(window_1_0_read_as_fu_112[11]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[12]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[12]),
        .I5(result_2_0_2_i_reg_1102[12]),
        .O(\result_3_1_1_i_reg_1118[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[15]_i_13 
       (.I0(window_1_0_read_as_fu_112[10]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[11]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[11]),
        .I5(result_2_0_2_i_reg_1102[11]),
        .O(\result_3_1_1_i_reg_1118[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[15]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[13]),
        .I2(result_2_0_2_i_reg_1102[14]),
        .I3(window_1_1_reg_356[14]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[14]),
        .O(\result_3_1_1_i_reg_1118[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[15]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[12]),
        .I2(result_2_0_2_i_reg_1102[13]),
        .I3(window_1_1_reg_356[13]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[13]),
        .O(\result_3_1_1_i_reg_1118[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[15]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[11]),
        .I2(result_2_0_2_i_reg_1102[12]),
        .I3(window_1_1_reg_356[12]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[12]),
        .O(\result_3_1_1_i_reg_1118[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[15]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[10]),
        .I2(result_2_0_2_i_reg_1102[11]),
        .I3(window_1_1_reg_356[11]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[11]),
        .O(\result_3_1_1_i_reg_1118[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[15]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[12]),
        .I2(result_2_0_2_i_reg_1102[13]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[13]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[12]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[15]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[11]),
        .I2(result_2_0_2_i_reg_1102[12]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[12]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[11]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[15]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[10]),
        .I2(result_2_0_2_i_reg_1102[11]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[11]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[10]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[15]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[9]),
        .I2(result_2_0_2_i_reg_1102[10]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[10]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[9]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[15]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[15]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[15]_i_14_n_0 ),
        .I2(window_1_0_reg_367[13]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[13]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[15]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[15]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[15]_i_15_n_0 ),
        .I2(window_1_0_reg_367[12]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[12]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[15]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[15]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[15]_i_16_n_0 ),
        .I2(window_1_0_reg_367[11]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[11]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[15]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[15]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[15]_i_17_n_0 ),
        .I2(window_1_0_reg_367[10]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[10]),
        .I5(\result_3_1_1_i_reg_1118[15]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[19]_i_10 
       (.I0(window_1_0_read_as_fu_112[17]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[18]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[18]),
        .I5(result_2_0_2_i_reg_1102[18]),
        .O(\result_3_1_1_i_reg_1118[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[19]_i_11 
       (.I0(window_1_0_read_as_fu_112[16]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[17]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[17]),
        .I5(result_2_0_2_i_reg_1102[17]),
        .O(\result_3_1_1_i_reg_1118[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[19]_i_12 
       (.I0(window_1_0_read_as_fu_112[15]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[16]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[16]),
        .I5(result_2_0_2_i_reg_1102[16]),
        .O(\result_3_1_1_i_reg_1118[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[19]_i_13 
       (.I0(window_1_0_read_as_fu_112[14]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[15]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[15]),
        .I5(result_2_0_2_i_reg_1102[15]),
        .O(\result_3_1_1_i_reg_1118[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[19]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[17]),
        .I2(result_2_0_2_i_reg_1102[18]),
        .I3(window_1_1_reg_356[18]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[18]),
        .O(\result_3_1_1_i_reg_1118[19]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[19]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[16]),
        .I2(result_2_0_2_i_reg_1102[17]),
        .I3(window_1_1_reg_356[17]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[17]),
        .O(\result_3_1_1_i_reg_1118[19]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[19]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[15]),
        .I2(result_2_0_2_i_reg_1102[16]),
        .I3(window_1_1_reg_356[16]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[16]),
        .O(\result_3_1_1_i_reg_1118[19]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[19]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[14]),
        .I2(result_2_0_2_i_reg_1102[15]),
        .I3(window_1_1_reg_356[15]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[15]),
        .O(\result_3_1_1_i_reg_1118[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[19]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[16]),
        .I2(result_2_0_2_i_reg_1102[17]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[17]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[16]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[19]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[15]),
        .I2(result_2_0_2_i_reg_1102[16]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[16]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[15]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[19]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[14]),
        .I2(result_2_0_2_i_reg_1102[15]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[15]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[14]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[19]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[13]),
        .I2(result_2_0_2_i_reg_1102[14]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[14]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[13]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[19]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[19]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[19]_i_14_n_0 ),
        .I2(window_1_0_reg_367[17]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[17]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[19]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[19]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[19]_i_15_n_0 ),
        .I2(window_1_0_reg_367[16]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[16]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[19]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[19]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[19]_i_16_n_0 ),
        .I2(window_1_0_reg_367[15]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[15]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[19]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[19]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[19]_i_17_n_0 ),
        .I2(window_1_0_reg_367[14]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[14]),
        .I5(\result_3_1_1_i_reg_1118[19]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[23]_i_10 
       (.I0(window_1_0_read_as_fu_112[21]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[22]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[22]),
        .I5(result_2_0_2_i_reg_1102[22]),
        .O(\result_3_1_1_i_reg_1118[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[23]_i_11 
       (.I0(window_1_0_read_as_fu_112[20]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[21]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[21]),
        .I5(result_2_0_2_i_reg_1102[21]),
        .O(\result_3_1_1_i_reg_1118[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[23]_i_12 
       (.I0(window_1_0_read_as_fu_112[19]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[20]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[20]),
        .I5(result_2_0_2_i_reg_1102[20]),
        .O(\result_3_1_1_i_reg_1118[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[23]_i_13 
       (.I0(window_1_0_read_as_fu_112[18]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[19]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[19]),
        .I5(result_2_0_2_i_reg_1102[19]),
        .O(\result_3_1_1_i_reg_1118[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[23]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[21]),
        .I2(result_2_0_2_i_reg_1102[22]),
        .I3(window_1_1_reg_356[22]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[22]),
        .O(\result_3_1_1_i_reg_1118[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[23]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[20]),
        .I2(result_2_0_2_i_reg_1102[21]),
        .I3(window_1_1_reg_356[21]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[21]),
        .O(\result_3_1_1_i_reg_1118[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[23]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[19]),
        .I2(result_2_0_2_i_reg_1102[20]),
        .I3(window_1_1_reg_356[20]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[20]),
        .O(\result_3_1_1_i_reg_1118[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[23]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[18]),
        .I2(result_2_0_2_i_reg_1102[19]),
        .I3(window_1_1_reg_356[19]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[19]),
        .O(\result_3_1_1_i_reg_1118[23]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[23]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[20]),
        .I2(result_2_0_2_i_reg_1102[21]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[21]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[20]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[23]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[19]),
        .I2(result_2_0_2_i_reg_1102[20]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[20]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[19]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[23]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[18]),
        .I2(result_2_0_2_i_reg_1102[19]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[19]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[18]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[23]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[17]),
        .I2(result_2_0_2_i_reg_1102[18]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[18]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[17]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[23]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[23]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[23]_i_14_n_0 ),
        .I2(window_1_0_reg_367[21]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[21]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[23]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[23]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[23]_i_15_n_0 ),
        .I2(window_1_0_reg_367[20]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[20]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[23]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[23]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[23]_i_16_n_0 ),
        .I2(window_1_0_reg_367[19]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[19]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[23]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[23]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[23]_i_17_n_0 ),
        .I2(window_1_0_reg_367[18]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[18]),
        .I5(\result_3_1_1_i_reg_1118[23]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[27]_i_10 
       (.I0(window_1_0_read_as_fu_112[25]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[26]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[26]),
        .I5(result_2_0_2_i_reg_1102[26]),
        .O(\result_3_1_1_i_reg_1118[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[27]_i_11 
       (.I0(window_1_0_read_as_fu_112[24]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[25]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[25]),
        .I5(result_2_0_2_i_reg_1102[25]),
        .O(\result_3_1_1_i_reg_1118[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[27]_i_12 
       (.I0(window_1_0_read_as_fu_112[23]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[24]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[24]),
        .I5(result_2_0_2_i_reg_1102[24]),
        .O(\result_3_1_1_i_reg_1118[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[27]_i_13 
       (.I0(window_1_0_read_as_fu_112[22]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[23]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[23]),
        .I5(result_2_0_2_i_reg_1102[23]),
        .O(\result_3_1_1_i_reg_1118[27]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[27]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[25]),
        .I2(result_2_0_2_i_reg_1102[26]),
        .I3(window_1_1_reg_356[26]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[26]),
        .O(\result_3_1_1_i_reg_1118[27]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[27]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[24]),
        .I2(result_2_0_2_i_reg_1102[25]),
        .I3(window_1_1_reg_356[25]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[25]),
        .O(\result_3_1_1_i_reg_1118[27]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[27]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[23]),
        .I2(result_2_0_2_i_reg_1102[24]),
        .I3(window_1_1_reg_356[24]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[24]),
        .O(\result_3_1_1_i_reg_1118[27]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[27]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[22]),
        .I2(result_2_0_2_i_reg_1102[23]),
        .I3(window_1_1_reg_356[23]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[23]),
        .O(\result_3_1_1_i_reg_1118[27]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[27]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[24]),
        .I2(result_2_0_2_i_reg_1102[25]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[25]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[24]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[27]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[23]),
        .I2(result_2_0_2_i_reg_1102[24]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[24]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[23]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[27]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[22]),
        .I2(result_2_0_2_i_reg_1102[23]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[23]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[22]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[27]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[21]),
        .I2(result_2_0_2_i_reg_1102[22]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[22]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[21]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[27]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[27]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[27]_i_14_n_0 ),
        .I2(window_1_0_reg_367[25]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[25]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[27]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[27]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[27]_i_15_n_0 ),
        .I2(window_1_0_reg_367[24]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[24]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[27]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[27]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[27]_i_16_n_0 ),
        .I2(window_1_0_reg_367[23]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[23]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[27]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[27]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[27]_i_17_n_0 ),
        .I2(window_1_0_reg_367[22]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[22]),
        .I5(\result_3_1_1_i_reg_1118[27]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[27]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_3_1_1_i_reg_1118[31]_i_1 
       (.I0(\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg_n_0_[0] ),
        .I1(line_buf_1_U_n_35),
        .O(result_3_1_1_i_reg_11180));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[31]_i_10 
       (.I0(window_1_0_read_as_fu_112[28]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[29]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[29]),
        .I5(result_2_0_2_i_reg_1102[29]),
        .O(\result_3_1_1_i_reg_1118[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[31]_i_11 
       (.I0(window_1_0_read_as_fu_112[27]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[28]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[28]),
        .I5(result_2_0_2_i_reg_1102[28]),
        .O(\result_3_1_1_i_reg_1118[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[31]_i_12 
       (.I0(window_1_0_read_as_fu_112[26]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[27]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[27]),
        .I5(result_2_0_2_i_reg_1102[27]),
        .O(\result_3_1_1_i_reg_1118[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[31]_i_13 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[28]),
        .I2(result_2_0_2_i_reg_1102[29]),
        .I3(window_1_1_reg_356[29]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[29]),
        .O(\result_3_1_1_i_reg_1118[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \result_3_1_1_i_reg_1118[31]_i_14 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[30]),
        .I2(result_2_0_2_i_reg_1102[31]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_20_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_3_1_1_i_reg_1118[31]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[29]),
        .O(\result_3_1_1_i_reg_1118[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_3_1_1_i_reg_1118[31]_i_16 
       (.I0(ap_enable_reg_pp3_iter3),
        .I1(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .O(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[31]_i_17 
       (.I0(window_1_0_read_as_fu_112[29]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[30]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[30]),
        .I5(result_2_0_2_i_reg_1102[30]),
        .O(\result_3_1_1_i_reg_1118[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[31]_i_18 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[27]),
        .I2(result_2_0_2_i_reg_1102[28]),
        .I3(window_1_1_reg_356[28]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[28]),
        .O(\result_3_1_1_i_reg_1118[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[31]_i_19 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[26]),
        .I2(result_2_0_2_i_reg_1102[27]),
        .I3(window_1_1_reg_356[27]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[27]),
        .O(\result_3_1_1_i_reg_1118[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h5A335A5A5ACC5A5A)) 
    \result_3_1_1_i_reg_1118[31]_i_20 
       (.I0(window_1_0_reg_367[29]),
        .I1(window_1_1_reg_356[29]),
        .I2(window_1_0_reg_367[31]),
        .I3(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp3_iter3),
        .I5(window_1_1_reg_356[31]),
        .O(\result_3_1_1_i_reg_1118[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[31]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[27]),
        .I2(result_2_0_2_i_reg_1102[28]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[28]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[27]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[31]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[26]),
        .I2(result_2_0_2_i_reg_1102[27]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[27]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[26]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[31]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[25]),
        .I2(result_2_0_2_i_reg_1102[26]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[26]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[25]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h781EE178E17887E1)) 
    \result_3_1_1_i_reg_1118[31]_i_6 
       (.I0(ap_phi_mux_window_1_0_phi_fu_370_p4[28]),
        .I1(\result_3_1_1_i_reg_1118[31]_i_13_n_0 ),
        .I2(\result_3_1_1_i_reg_1118[31]_i_14_n_0 ),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[30]),
        .I4(result_2_0_2_i_reg_1102[30]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_15_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[31]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[31]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[31]_i_13_n_0 ),
        .I2(window_1_0_reg_367[28]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[28]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_17_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[31]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[31]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[31]_i_18_n_0 ),
        .I2(window_1_0_reg_367[27]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[27]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[31]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[31]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[31]_i_19_n_0 ),
        .I2(window_1_0_reg_367[26]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[26]),
        .I5(\result_3_1_1_i_reg_1118[31]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hD4442BBB2BBBD444)) 
    \result_3_1_1_i_reg_1118[3]_i_2 
       (.I0(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .I1(result_2_0_2_i_reg_1102[2]),
        .I2(window_1_0_read_as_fu_112[1]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I4(\result_3_1_1_i_reg_1118[7]_i_14_n_0 ),
        .I5(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96666999)) 
    \result_3_1_1_i_reg_1118[3]_i_3 
       (.I0(result_2_0_2_i_reg_1102[2]),
        .I1(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .I2(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I3(window_1_0_read_as_fu_112[1]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[0]),
        .O(\result_3_1_1_i_reg_1118[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hBABBBFBB)) 
    \result_3_1_1_i_reg_1118[3]_i_4 
       (.I0(result_2_0_2_i_reg_1102[0]),
        .I1(window_1_0_reg_367[0]),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter3),
        .I4(window_1_1_reg_356[0]),
        .O(\result_3_1_1_i_reg_1118[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9969969996996696)) 
    \result_3_1_1_i_reg_1118[3]_i_5 
       (.I0(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[7]_i_14_n_0 ),
        .I2(\result_3_1_1_i_reg_1118[3]_i_9_n_0 ),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .I4(result_2_0_2_i_reg_1102[2]),
        .I5(ap_phi_mux_window_1_0_phi_fu_370_p4[0]),
        .O(\result_3_1_1_i_reg_1118[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h556A6AAA)) 
    \result_3_1_1_i_reg_1118[3]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[3]_i_3_n_0 ),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_0_read_as_fu_112[0]),
        .I3(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ),
        .I4(result_2_0_2_i_reg_1102[1]),
        .O(\result_3_1_1_i_reg_1118[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h69969696)) 
    \result_3_1_1_i_reg_1118[3]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[3]_i_4_n_0 ),
        .I1(result_2_0_2_i_reg_1102[1]),
        .I2(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ),
        .I3(window_1_0_read_as_fu_112[0]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .O(\result_3_1_1_i_reg_1118[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h65666A66)) 
    \result_3_1_1_i_reg_1118[3]_i_8 
       (.I0(result_2_0_2_i_reg_1102[0]),
        .I1(window_1_0_reg_367[0]),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp3_iter3),
        .I4(window_1_1_reg_356[0]),
        .O(\result_3_1_1_i_reg_1118[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_3_1_1_i_reg_1118[3]_i_9 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[1]),
        .O(\result_3_1_1_i_reg_1118[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[7]_i_10 
       (.I0(window_1_0_read_as_fu_112[5]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[6]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[6]),
        .I5(result_2_0_2_i_reg_1102[6]),
        .O(\result_3_1_1_i_reg_1118[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[7]_i_11 
       (.I0(window_1_0_read_as_fu_112[4]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[5]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[5]),
        .I5(result_2_0_2_i_reg_1102[5]),
        .O(\result_3_1_1_i_reg_1118[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7877788887888777)) 
    \result_3_1_1_i_reg_1118[7]_i_12 
       (.I0(window_1_0_read_as_fu_112[3]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[4]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[4]),
        .I5(result_2_0_2_i_reg_1102[4]),
        .O(\result_3_1_1_i_reg_1118[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h04F7)) 
    \result_3_1_1_i_reg_1118[7]_i_13 
       (.I0(window_1_1_reg_356[1]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[1]),
        .O(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8788877778777888)) 
    \result_3_1_1_i_reg_1118[7]_i_14 
       (.I0(window_1_0_read_as_fu_112[2]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I2(window_1_1_reg_356[3]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_0_reg_367[3]),
        .I5(result_2_0_2_i_reg_1102[3]),
        .O(\result_3_1_1_i_reg_1118[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[7]_i_15 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[5]),
        .I2(result_2_0_2_i_reg_1102[6]),
        .I3(window_1_1_reg_356[6]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[6]),
        .O(\result_3_1_1_i_reg_1118[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[7]_i_16 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[4]),
        .I2(result_2_0_2_i_reg_1102[5]),
        .I3(window_1_1_reg_356[5]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[5]),
        .O(\result_3_1_1_i_reg_1118[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[7]_i_17 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[3]),
        .I2(result_2_0_2_i_reg_1102[4]),
        .I3(window_1_1_reg_356[4]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[4]),
        .O(\result_3_1_1_i_reg_1118[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h80F8808080F8F8F8)) 
    \result_3_1_1_i_reg_1118[7]_i_18 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[2]),
        .I2(result_2_0_2_i_reg_1102[3]),
        .I3(window_1_1_reg_356[3]),
        .I4(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I5(window_1_0_reg_367[3]),
        .O(\result_3_1_1_i_reg_1118[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[7]_i_2 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[4]),
        .I2(result_2_0_2_i_reg_1102[5]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[5]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[4]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[7]_i_3 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[3]),
        .I2(result_2_0_2_i_reg_1102[4]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[4]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[3]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF80F880F80000)) 
    \result_3_1_1_i_reg_1118[7]_i_4 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[2]),
        .I2(result_2_0_2_i_reg_1102[3]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[3]),
        .I4(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000080F880F8FFFF)) 
    \result_3_1_1_i_reg_1118[7]_i_5 
       (.I0(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .I1(window_1_0_read_as_fu_112[1]),
        .I2(result_2_0_2_i_reg_1102[2]),
        .I3(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .I4(\result_3_1_1_i_reg_1118[7]_i_13_n_0 ),
        .I5(\result_3_1_1_i_reg_1118[7]_i_14_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[7]_i_6 
       (.I0(\result_3_1_1_i_reg_1118[7]_i_2_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[7]_i_15_n_0 ),
        .I2(window_1_0_reg_367[5]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[5]),
        .I5(\result_3_1_1_i_reg_1118[11]_i_13_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[7]_i_7 
       (.I0(\result_3_1_1_i_reg_1118[7]_i_3_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[7]_i_16_n_0 ),
        .I2(window_1_0_reg_367[4]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[4]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_10_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[7]_i_8 
       (.I0(\result_3_1_1_i_reg_1118[7]_i_4_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[7]_i_17_n_0 ),
        .I2(window_1_0_reg_367[3]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[3]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_11_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999966696)) 
    \result_3_1_1_i_reg_1118[7]_i_9 
       (.I0(\result_3_1_1_i_reg_1118[7]_i_5_n_0 ),
        .I1(\result_3_1_1_i_reg_1118[7]_i_18_n_0 ),
        .I2(window_1_0_reg_367[2]),
        .I3(\result_3_1_1_i_reg_1118[31]_i_16_n_0 ),
        .I4(window_1_1_reg_356[2]),
        .I5(\result_3_1_1_i_reg_1118[7]_i_12_n_0 ),
        .O(\result_3_1_1_i_reg_1118[7]_i_9_n_0 ));
  FDRE \result_3_1_1_i_reg_1118_reg[0] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[0]),
        .Q(result_3_1_1_i_reg_1118[0]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[10] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[10]),
        .Q(result_3_1_1_i_reg_1118[10]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[11] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[11]),
        .Q(result_3_1_1_i_reg_1118[11]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[11]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[7]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[11]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[11]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[11]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[11]_i_2_n_0 ,\result_3_1_1_i_reg_1118[11]_i_3_n_0 ,\result_3_1_1_i_reg_1118[11]_i_4_n_0 ,\result_3_1_1_i_reg_1118[11]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[11:8]),
        .S({\result_3_1_1_i_reg_1118[11]_i_6_n_0 ,\result_3_1_1_i_reg_1118[11]_i_7_n_0 ,\result_3_1_1_i_reg_1118[11]_i_8_n_0 ,\result_3_1_1_i_reg_1118[11]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[12] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[12]),
        .Q(result_3_1_1_i_reg_1118[12]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[13] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[13]),
        .Q(result_3_1_1_i_reg_1118[13]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[14] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[14]),
        .Q(result_3_1_1_i_reg_1118[14]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[15] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[15]),
        .Q(result_3_1_1_i_reg_1118[15]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[15]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[11]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[15]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[15]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[15]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[15]_i_2_n_0 ,\result_3_1_1_i_reg_1118[15]_i_3_n_0 ,\result_3_1_1_i_reg_1118[15]_i_4_n_0 ,\result_3_1_1_i_reg_1118[15]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[15:12]),
        .S({\result_3_1_1_i_reg_1118[15]_i_6_n_0 ,\result_3_1_1_i_reg_1118[15]_i_7_n_0 ,\result_3_1_1_i_reg_1118[15]_i_8_n_0 ,\result_3_1_1_i_reg_1118[15]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[16] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[16]),
        .Q(result_3_1_1_i_reg_1118[16]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[17] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[17]),
        .Q(result_3_1_1_i_reg_1118[17]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[18] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[18]),
        .Q(result_3_1_1_i_reg_1118[18]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[19] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[19]),
        .Q(result_3_1_1_i_reg_1118[19]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[19]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[15]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[19]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[19]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[19]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[19]_i_2_n_0 ,\result_3_1_1_i_reg_1118[19]_i_3_n_0 ,\result_3_1_1_i_reg_1118[19]_i_4_n_0 ,\result_3_1_1_i_reg_1118[19]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[19:16]),
        .S({\result_3_1_1_i_reg_1118[19]_i_6_n_0 ,\result_3_1_1_i_reg_1118[19]_i_7_n_0 ,\result_3_1_1_i_reg_1118[19]_i_8_n_0 ,\result_3_1_1_i_reg_1118[19]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[1] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[1]),
        .Q(result_3_1_1_i_reg_1118[1]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[20] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[20]),
        .Q(result_3_1_1_i_reg_1118[20]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[21] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[21]),
        .Q(result_3_1_1_i_reg_1118[21]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[22] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[22]),
        .Q(result_3_1_1_i_reg_1118[22]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[23] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[23]),
        .Q(result_3_1_1_i_reg_1118[23]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[23]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[19]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[23]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[23]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[23]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[23]_i_2_n_0 ,\result_3_1_1_i_reg_1118[23]_i_3_n_0 ,\result_3_1_1_i_reg_1118[23]_i_4_n_0 ,\result_3_1_1_i_reg_1118[23]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[23:20]),
        .S({\result_3_1_1_i_reg_1118[23]_i_6_n_0 ,\result_3_1_1_i_reg_1118[23]_i_7_n_0 ,\result_3_1_1_i_reg_1118[23]_i_8_n_0 ,\result_3_1_1_i_reg_1118[23]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[24] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[24]),
        .Q(result_3_1_1_i_reg_1118[24]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[25] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[25]),
        .Q(result_3_1_1_i_reg_1118[25]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[26] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[26]),
        .Q(result_3_1_1_i_reg_1118[26]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[27] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[27]),
        .Q(result_3_1_1_i_reg_1118[27]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[27]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[23]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[27]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[27]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[27]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[27]_i_2_n_0 ,\result_3_1_1_i_reg_1118[27]_i_3_n_0 ,\result_3_1_1_i_reg_1118[27]_i_4_n_0 ,\result_3_1_1_i_reg_1118[27]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[27:24]),
        .S({\result_3_1_1_i_reg_1118[27]_i_6_n_0 ,\result_3_1_1_i_reg_1118[27]_i_7_n_0 ,\result_3_1_1_i_reg_1118[27]_i_8_n_0 ,\result_3_1_1_i_reg_1118[27]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[28] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[28]),
        .Q(result_3_1_1_i_reg_1118[28]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[29] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[29]),
        .Q(result_3_1_1_i_reg_1118[29]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[2] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[2]),
        .Q(result_3_1_1_i_reg_1118[2]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[30] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[30]),
        .Q(result_3_1_1_i_reg_1118[30]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[31] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[31]),
        .Q(result_3_1_1_i_reg_1118[31]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[31]_i_2 
       (.CI(\result_3_1_1_i_reg_1118_reg[27]_i_1_n_0 ),
        .CO({\NLW_result_3_1_1_i_reg_1118_reg[31]_i_2_CO_UNCONNECTED [3],\result_3_1_1_i_reg_1118_reg[31]_i_2_n_1 ,\result_3_1_1_i_reg_1118_reg[31]_i_2_n_2 ,\result_3_1_1_i_reg_1118_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\result_3_1_1_i_reg_1118[31]_i_3_n_0 ,\result_3_1_1_i_reg_1118[31]_i_4_n_0 ,\result_3_1_1_i_reg_1118[31]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[31:28]),
        .S({\result_3_1_1_i_reg_1118[31]_i_6_n_0 ,\result_3_1_1_i_reg_1118[31]_i_7_n_0 ,\result_3_1_1_i_reg_1118[31]_i_8_n_0 ,\result_3_1_1_i_reg_1118[31]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[3] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[3]),
        .Q(result_3_1_1_i_reg_1118[3]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_3_1_1_i_reg_1118_reg[3]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[3]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[3]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[3]_i_2_n_0 ,\result_3_1_1_i_reg_1118[3]_i_3_n_0 ,\result_3_1_1_i_reg_1118[3]_i_4_n_0 ,1'b0}),
        .O(result_3_1_1_i_fu_837_p2[3:0]),
        .S({\result_3_1_1_i_reg_1118[3]_i_5_n_0 ,\result_3_1_1_i_reg_1118[3]_i_6_n_0 ,\result_3_1_1_i_reg_1118[3]_i_7_n_0 ,\result_3_1_1_i_reg_1118[3]_i_8_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[4] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[4]),
        .Q(result_3_1_1_i_reg_1118[4]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[5] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[5]),
        .Q(result_3_1_1_i_reg_1118[5]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[6] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[6]),
        .Q(result_3_1_1_i_reg_1118[6]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[7] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[7]),
        .Q(result_3_1_1_i_reg_1118[7]),
        .R(1'b0));
  CARRY4 \result_3_1_1_i_reg_1118_reg[7]_i_1 
       (.CI(\result_3_1_1_i_reg_1118_reg[3]_i_1_n_0 ),
        .CO({\result_3_1_1_i_reg_1118_reg[7]_i_1_n_0 ,\result_3_1_1_i_reg_1118_reg[7]_i_1_n_1 ,\result_3_1_1_i_reg_1118_reg[7]_i_1_n_2 ,\result_3_1_1_i_reg_1118_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_1_i_reg_1118[7]_i_2_n_0 ,\result_3_1_1_i_reg_1118[7]_i_3_n_0 ,\result_3_1_1_i_reg_1118[7]_i_4_n_0 ,\result_3_1_1_i_reg_1118[7]_i_5_n_0 }),
        .O(result_3_1_1_i_fu_837_p2[7:4]),
        .S({\result_3_1_1_i_reg_1118[7]_i_6_n_0 ,\result_3_1_1_i_reg_1118[7]_i_7_n_0 ,\result_3_1_1_i_reg_1118[7]_i_8_n_0 ,\result_3_1_1_i_reg_1118[7]_i_9_n_0 }));
  FDRE \result_3_1_1_i_reg_1118_reg[8] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[8]),
        .Q(result_3_1_1_i_reg_1118[8]),
        .R(1'b0));
  FDRE \result_3_1_1_i_reg_1118_reg[9] 
       (.C(ap_clk),
        .CE(result_3_1_1_i_reg_11180),
        .D(result_3_1_1_i_fu_837_p2[9]),
        .Q(result_3_1_1_i_reg_1118[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[11]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[10]),
        .I1(window_2_0_reg_344[8]),
        .I2(window_2_0_read_as_1_reg_1113[10]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[11]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[9]),
        .I1(window_2_0_reg_344[7]),
        .I2(window_2_0_read_as_1_reg_1113[9]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[11]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[8]),
        .I1(window_2_0_reg_344[6]),
        .I2(window_2_0_read_as_1_reg_1113[8]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[11]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[7]),
        .I1(window_2_0_reg_344[5]),
        .I2(window_2_0_read_as_1_reg_1113[7]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[11]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[11]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[11]),
        .I2(window_2_0_reg_344[9]),
        .I3(window_2_0_read_as_1_reg_1113[11]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[11]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[11]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[10]),
        .I2(window_2_0_reg_344[8]),
        .I3(window_2_0_read_as_1_reg_1113[10]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[11]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[11]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[9]),
        .I2(window_2_0_reg_344[7]),
        .I3(window_2_0_read_as_1_reg_1113[9]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[11]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[11]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[8]),
        .I2(window_2_0_reg_344[6]),
        .I3(window_2_0_read_as_1_reg_1113[8]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[15]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[14]),
        .I1(window_2_0_reg_344[12]),
        .I2(window_2_0_read_as_1_reg_1113[14]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[15]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[13]),
        .I1(window_2_0_reg_344[11]),
        .I2(window_2_0_read_as_1_reg_1113[13]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[15]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[12]),
        .I1(window_2_0_reg_344[10]),
        .I2(window_2_0_read_as_1_reg_1113[12]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[15]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[11]),
        .I1(window_2_0_reg_344[9]),
        .I2(window_2_0_read_as_1_reg_1113[11]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[15]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[15]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[15]),
        .I2(window_2_0_reg_344[13]),
        .I3(window_2_0_read_as_1_reg_1113[15]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[15]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[15]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[14]),
        .I2(window_2_0_reg_344[12]),
        .I3(window_2_0_read_as_1_reg_1113[14]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[15]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[15]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[13]),
        .I2(window_2_0_reg_344[11]),
        .I3(window_2_0_read_as_1_reg_1113[13]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[15]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[15]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[12]),
        .I2(window_2_0_reg_344[10]),
        .I3(window_2_0_read_as_1_reg_1113[12]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[19]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[18]),
        .I1(window_2_0_reg_344[16]),
        .I2(window_2_0_read_as_1_reg_1113[18]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[19]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[17]),
        .I1(window_2_0_reg_344[15]),
        .I2(window_2_0_read_as_1_reg_1113[17]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[19]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[16]),
        .I1(window_2_0_reg_344[14]),
        .I2(window_2_0_read_as_1_reg_1113[16]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[19]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[15]),
        .I1(window_2_0_reg_344[13]),
        .I2(window_2_0_read_as_1_reg_1113[15]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[19]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[19]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[19]),
        .I2(window_2_0_reg_344[17]),
        .I3(window_2_0_read_as_1_reg_1113[19]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[19]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[19]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[18]),
        .I2(window_2_0_reg_344[16]),
        .I3(window_2_0_read_as_1_reg_1113[18]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[19]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[19]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[17]),
        .I2(window_2_0_reg_344[15]),
        .I3(window_2_0_read_as_1_reg_1113[17]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[19]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[19]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[16]),
        .I2(window_2_0_reg_344[14]),
        .I3(window_2_0_read_as_1_reg_1113[16]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[23]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[22]),
        .I1(window_2_0_reg_344[20]),
        .I2(window_2_0_read_as_1_reg_1113[22]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[23]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[21]),
        .I1(window_2_0_reg_344[19]),
        .I2(window_2_0_read_as_1_reg_1113[21]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[23]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[20]),
        .I1(window_2_0_reg_344[18]),
        .I2(window_2_0_read_as_1_reg_1113[20]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[23]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[19]),
        .I1(window_2_0_reg_344[17]),
        .I2(window_2_0_read_as_1_reg_1113[19]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[23]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[23]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[23]),
        .I2(window_2_0_reg_344[21]),
        .I3(window_2_0_read_as_1_reg_1113[23]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[23]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[23]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[22]),
        .I2(window_2_0_reg_344[20]),
        .I3(window_2_0_read_as_1_reg_1113[22]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[23]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[23]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[21]),
        .I2(window_2_0_reg_344[19]),
        .I3(window_2_0_read_as_1_reg_1113[21]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[23]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[23]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[20]),
        .I2(window_2_0_reg_344[18]),
        .I3(window_2_0_read_as_1_reg_1113[20]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[27]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[26]),
        .I1(window_2_0_reg_344[24]),
        .I2(window_2_0_read_as_1_reg_1113[26]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[27]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[25]),
        .I1(window_2_0_reg_344[23]),
        .I2(window_2_0_read_as_1_reg_1113[25]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[27]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[24]),
        .I1(window_2_0_reg_344[22]),
        .I2(window_2_0_read_as_1_reg_1113[24]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[27]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[23]),
        .I1(window_2_0_reg_344[21]),
        .I2(window_2_0_read_as_1_reg_1113[23]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[27]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[27]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[27]),
        .I2(window_2_0_reg_344[25]),
        .I3(window_2_0_read_as_1_reg_1113[27]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[27]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[27]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[26]),
        .I2(window_2_0_reg_344[24]),
        .I3(window_2_0_read_as_1_reg_1113[26]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[27]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[27]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[25]),
        .I2(window_2_0_reg_344[23]),
        .I3(window_2_0_read_as_1_reg_1113[25]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[27]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[27]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[24]),
        .I2(window_2_0_reg_344[22]),
        .I3(window_2_0_read_as_1_reg_1113[24]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[27]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \result_3_2_1_i_reg_1134[31]_i_1 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I1(line_buf_1_U_n_35),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .O(result_3_2_1_i_reg_11340));
  LUT3 #(
    .INIT(8'h80)) 
    \result_3_2_1_i_reg_1134[31]_i_10 
       (.I0(window_2_0_read_as_1_reg_1113[30]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \result_3_2_1_i_reg_1134[31]_i_11 
       (.I0(window_2_0_read_as_1_reg_1113[31]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[31]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[29]),
        .I1(window_2_0_reg_344[27]),
        .I2(window_2_0_read_as_1_reg_1113[29]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[31]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[28]),
        .I1(window_2_0_reg_344[26]),
        .I2(window_2_0_read_as_1_reg_1113[28]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[31]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[27]),
        .I1(window_2_0_reg_344[25]),
        .I2(window_2_0_read_as_1_reg_1113[27]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \result_3_2_1_i_reg_1134[31]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[31]_i_10_n_0 ),
        .I1(window_2_0_reg_344[28]),
        .I2(result_2_1_2_i_fu_854_p3[30]),
        .I3(result_2_1_2_i_fu_854_p3[31]),
        .I4(window_2_0_reg_344[29]),
        .I5(\result_3_2_1_i_reg_1134[31]_i_11_n_0 ),
        .O(\result_3_2_1_i_reg_1134[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[31]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[31]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[30]),
        .I2(window_2_0_reg_344[28]),
        .I3(window_2_0_read_as_1_reg_1113[30]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[31]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[31]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[29]),
        .I2(window_2_0_reg_344[27]),
        .I3(window_2_0_read_as_1_reg_1113[29]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[31]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[31]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[28]),
        .I2(window_2_0_reg_344[26]),
        .I3(window_2_0_read_as_1_reg_1113[28]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h807F7F80)) 
    \result_3_2_1_i_reg_1134[3]_i_2 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(window_2_0_read_as_1_reg_1113[3]),
        .I3(window_2_0_reg_344[1]),
        .I4(result_2_1_2_i_fu_854_p3[3]),
        .O(\result_3_2_1_i_reg_1134[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_3_2_1_i_reg_1134[3]_i_3 
       (.I0(window_2_0_reg_344[0]),
        .I1(result_2_1_2_i_fu_854_p3[2]),
        .O(\result_3_2_1_i_reg_1134[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9969669666966696)) 
    \result_3_2_1_i_reg_1134[3]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[3]),
        .I1(window_2_0_reg_344[1]),
        .I2(window_2_0_read_as_1_reg_1113[3]),
        .I3(\result_3_2_1_i_reg_1134[3]_i_8_n_0 ),
        .I4(result_2_1_2_i_fu_854_p3[2]),
        .I5(window_2_0_reg_344[0]),
        .O(\result_3_2_1_i_reg_1134[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96666666)) 
    \result_3_2_1_i_reg_1134[3]_i_5 
       (.I0(result_2_1_2_i_fu_854_p3[2]),
        .I1(window_2_0_reg_344[0]),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(window_2_0_read_as_1_reg_1113[2]),
        .O(\result_3_2_1_i_reg_1134[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_3_2_1_i_reg_1134[3]_i_6 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(window_2_0_read_as_1_reg_1113[1]),
        .I3(result_2_1_2_i_fu_854_p3[1]),
        .O(\result_3_2_1_i_reg_1134[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \result_3_2_1_i_reg_1134[3]_i_7 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(window_2_0_read_as_1_reg_1113[0]),
        .I3(result_2_1_2_i_fu_854_p3[0]),
        .O(\result_3_2_1_i_reg_1134[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \result_3_2_1_i_reg_1134[3]_i_8 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[7]_i_2 
       (.I0(result_2_1_2_i_fu_854_p3[6]),
        .I1(window_2_0_reg_344[4]),
        .I2(window_2_0_read_as_1_reg_1113[6]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[7]_i_3 
       (.I0(result_2_1_2_i_fu_854_p3[5]),
        .I1(window_2_0_reg_344[3]),
        .I2(window_2_0_read_as_1_reg_1113[5]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE8888888)) 
    \result_3_2_1_i_reg_1134[7]_i_4 
       (.I0(result_2_1_2_i_fu_854_p3[4]),
        .I1(window_2_0_reg_344[2]),
        .I2(window_2_0_read_as_1_reg_1113[4]),
        .I3(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I4(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF808000)) 
    \result_3_2_1_i_reg_1134[7]_i_5 
       (.I0(window_2_0_read_as_1_reg_1113[3]),
        .I1(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I2(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .I3(result_2_1_2_i_fu_854_p3[3]),
        .I4(window_2_0_reg_344[1]),
        .O(\result_3_2_1_i_reg_1134[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[7]_i_6 
       (.I0(\result_3_2_1_i_reg_1134[7]_i_2_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[7]),
        .I2(window_2_0_reg_344[5]),
        .I3(window_2_0_read_as_1_reg_1113[7]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[7]_i_7 
       (.I0(\result_3_2_1_i_reg_1134[7]_i_3_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[6]),
        .I2(window_2_0_reg_344[4]),
        .I3(window_2_0_read_as_1_reg_1113[6]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[7]_i_8 
       (.I0(\result_3_2_1_i_reg_1134[7]_i_4_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[5]),
        .I2(window_2_0_reg_344[3]),
        .I3(window_2_0_read_as_1_reg_1113[5]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696969696)) 
    \result_3_2_1_i_reg_1134[7]_i_9 
       (.I0(\result_3_2_1_i_reg_1134[7]_i_5_n_0 ),
        .I1(result_2_1_2_i_fu_854_p3[4]),
        .I2(window_2_0_reg_344[2]),
        .I3(window_2_0_read_as_1_reg_1113[4]),
        .I4(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .I5(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .O(\result_3_2_1_i_reg_1134[7]_i_9_n_0 ));
  FDRE \result_3_2_1_i_reg_1134_reg[0] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[0]),
        .Q(result_3_2_1_i_reg_1134[0]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[10] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[10]),
        .Q(result_3_2_1_i_reg_1134[10]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[11] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[11]),
        .Q(result_3_2_1_i_reg_1134[11]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[11]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[7]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[11]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[11]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[11]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[11]_i_2_n_0 ,\result_3_2_1_i_reg_1134[11]_i_3_n_0 ,\result_3_2_1_i_reg_1134[11]_i_4_n_0 ,\result_3_2_1_i_reg_1134[11]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[11:8]),
        .S({\result_3_2_1_i_reg_1134[11]_i_6_n_0 ,\result_3_2_1_i_reg_1134[11]_i_7_n_0 ,\result_3_2_1_i_reg_1134[11]_i_8_n_0 ,\result_3_2_1_i_reg_1134[11]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[12] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[12]),
        .Q(result_3_2_1_i_reg_1134[12]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[13] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[13]),
        .Q(result_3_2_1_i_reg_1134[13]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[14] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[14]),
        .Q(result_3_2_1_i_reg_1134[14]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[15] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[15]),
        .Q(result_3_2_1_i_reg_1134[15]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[15]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[11]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[15]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[15]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[15]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[15]_i_2_n_0 ,\result_3_2_1_i_reg_1134[15]_i_3_n_0 ,\result_3_2_1_i_reg_1134[15]_i_4_n_0 ,\result_3_2_1_i_reg_1134[15]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[15:12]),
        .S({\result_3_2_1_i_reg_1134[15]_i_6_n_0 ,\result_3_2_1_i_reg_1134[15]_i_7_n_0 ,\result_3_2_1_i_reg_1134[15]_i_8_n_0 ,\result_3_2_1_i_reg_1134[15]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[16] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[16]),
        .Q(result_3_2_1_i_reg_1134[16]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[17] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[17]),
        .Q(result_3_2_1_i_reg_1134[17]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[18] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[18]),
        .Q(result_3_2_1_i_reg_1134[18]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[19] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[19]),
        .Q(result_3_2_1_i_reg_1134[19]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[19]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[15]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[19]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[19]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[19]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[19]_i_2_n_0 ,\result_3_2_1_i_reg_1134[19]_i_3_n_0 ,\result_3_2_1_i_reg_1134[19]_i_4_n_0 ,\result_3_2_1_i_reg_1134[19]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[19:16]),
        .S({\result_3_2_1_i_reg_1134[19]_i_6_n_0 ,\result_3_2_1_i_reg_1134[19]_i_7_n_0 ,\result_3_2_1_i_reg_1134[19]_i_8_n_0 ,\result_3_2_1_i_reg_1134[19]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[1] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[1]),
        .Q(result_3_2_1_i_reg_1134[1]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[20] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[20]),
        .Q(result_3_2_1_i_reg_1134[20]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[21] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[21]),
        .Q(result_3_2_1_i_reg_1134[21]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[22] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[22]),
        .Q(result_3_2_1_i_reg_1134[22]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[23] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[23]),
        .Q(result_3_2_1_i_reg_1134[23]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[23]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[19]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[23]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[23]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[23]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[23]_i_2_n_0 ,\result_3_2_1_i_reg_1134[23]_i_3_n_0 ,\result_3_2_1_i_reg_1134[23]_i_4_n_0 ,\result_3_2_1_i_reg_1134[23]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[23:20]),
        .S({\result_3_2_1_i_reg_1134[23]_i_6_n_0 ,\result_3_2_1_i_reg_1134[23]_i_7_n_0 ,\result_3_2_1_i_reg_1134[23]_i_8_n_0 ,\result_3_2_1_i_reg_1134[23]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[24] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[24]),
        .Q(result_3_2_1_i_reg_1134[24]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[25] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[25]),
        .Q(result_3_2_1_i_reg_1134[25]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[26] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[26]),
        .Q(result_3_2_1_i_reg_1134[26]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[27] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[27]),
        .Q(result_3_2_1_i_reg_1134[27]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[27]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[23]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[27]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[27]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[27]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[27]_i_2_n_0 ,\result_3_2_1_i_reg_1134[27]_i_3_n_0 ,\result_3_2_1_i_reg_1134[27]_i_4_n_0 ,\result_3_2_1_i_reg_1134[27]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[27:24]),
        .S({\result_3_2_1_i_reg_1134[27]_i_6_n_0 ,\result_3_2_1_i_reg_1134[27]_i_7_n_0 ,\result_3_2_1_i_reg_1134[27]_i_8_n_0 ,\result_3_2_1_i_reg_1134[27]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[28] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[28]),
        .Q(result_3_2_1_i_reg_1134[28]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[29] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[29]),
        .Q(result_3_2_1_i_reg_1134[29]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[2] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[2]),
        .Q(result_3_2_1_i_reg_1134[2]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[30] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[30]),
        .Q(result_3_2_1_i_reg_1134[30]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[31] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[31]),
        .Q(result_3_2_1_i_reg_1134[31]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[31]_i_2 
       (.CI(\result_3_2_1_i_reg_1134_reg[27]_i_1_n_0 ),
        .CO({\NLW_result_3_2_1_i_reg_1134_reg[31]_i_2_CO_UNCONNECTED [3],\result_3_2_1_i_reg_1134_reg[31]_i_2_n_1 ,\result_3_2_1_i_reg_1134_reg[31]_i_2_n_2 ,\result_3_2_1_i_reg_1134_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\result_3_2_1_i_reg_1134[31]_i_3_n_0 ,\result_3_2_1_i_reg_1134[31]_i_4_n_0 ,\result_3_2_1_i_reg_1134[31]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[31:28]),
        .S({\result_3_2_1_i_reg_1134[31]_i_6_n_0 ,\result_3_2_1_i_reg_1134[31]_i_7_n_0 ,\result_3_2_1_i_reg_1134[31]_i_8_n_0 ,\result_3_2_1_i_reg_1134[31]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[3] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[3]),
        .Q(result_3_2_1_i_reg_1134[3]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_3_2_1_i_reg_1134_reg[3]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[3]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[3]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[3]_i_2_n_0 ,\result_3_2_1_i_reg_1134[3]_i_3_n_0 ,result_2_1_2_i_fu_854_p3[1:0]}),
        .O(result_3_2_1_i_fu_883_p2[3:0]),
        .S({\result_3_2_1_i_reg_1134[3]_i_4_n_0 ,\result_3_2_1_i_reg_1134[3]_i_5_n_0 ,\result_3_2_1_i_reg_1134[3]_i_6_n_0 ,\result_3_2_1_i_reg_1134[3]_i_7_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[4] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[4]),
        .Q(result_3_2_1_i_reg_1134[4]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[5] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[5]),
        .Q(result_3_2_1_i_reg_1134[5]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[6] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[6]),
        .Q(result_3_2_1_i_reg_1134[6]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[7] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[7]),
        .Q(result_3_2_1_i_reg_1134[7]),
        .R(1'b0));
  CARRY4 \result_3_2_1_i_reg_1134_reg[7]_i_1 
       (.CI(\result_3_2_1_i_reg_1134_reg[3]_i_1_n_0 ),
        .CO({\result_3_2_1_i_reg_1134_reg[7]_i_1_n_0 ,\result_3_2_1_i_reg_1134_reg[7]_i_1_n_1 ,\result_3_2_1_i_reg_1134_reg[7]_i_1_n_2 ,\result_3_2_1_i_reg_1134_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_3_2_1_i_reg_1134[7]_i_2_n_0 ,\result_3_2_1_i_reg_1134[7]_i_3_n_0 ,\result_3_2_1_i_reg_1134[7]_i_4_n_0 ,\result_3_2_1_i_reg_1134[7]_i_5_n_0 }),
        .O(result_3_2_1_i_fu_883_p2[7:4]),
        .S({\result_3_2_1_i_reg_1134[7]_i_6_n_0 ,\result_3_2_1_i_reg_1134[7]_i_7_n_0 ,\result_3_2_1_i_reg_1134[7]_i_8_n_0 ,\result_3_2_1_i_reg_1134[7]_i_9_n_0 }));
  FDRE \result_3_2_1_i_reg_1134_reg[8] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[8]),
        .Q(result_3_2_1_i_reg_1134[8]),
        .R(1'b0));
  FDRE \result_3_2_1_i_reg_1134_reg[9] 
       (.C(ap_clk),
        .CE(result_3_2_1_i_reg_11340),
        .D(result_3_2_1_i_fu_883_p2[9]),
        .Q(result_3_2_1_i_reg_1134[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF780078)) 
    \tmp_10_reg_945[0]_i_1 
       (.I0(x3_reg_289[0]),
        .I1(x3_reg_289[1]),
        .I2(\tmp_9_mid2_v_reg_940[1]_i_3_n_0 ),
        .I3(\cond_mid2_reg_950[0]_i_2_n_0 ),
        .I4(tmp_10_reg_945),
        .O(\tmp_10_reg_945[0]_i_1_n_0 ));
  FDRE \tmp_10_reg_945_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_10_reg_945[0]_i_1_n_0 ),
        .Q(tmp_10_reg_945),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_13_reg_1092[0]_i_1 
       (.I0(\tmp_13_reg_1092[0]_i_3_n_0 ),
        .O(line_buf_0_addr_2_reg_10800));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_10 
       (.I0(read_count_1_fu_120_reg[23]),
        .I1(read_count_1_fu_120_reg[22]),
        .O(\tmp_13_reg_1092[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_11 
       (.I0(read_count_1_fu_120_reg[21]),
        .I1(read_count_1_fu_120_reg[20]),
        .O(\tmp_13_reg_1092[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_12 
       (.I0(read_count_1_fu_120_reg[19]),
        .I1(read_count_1_fu_120_reg[18]),
        .O(\tmp_13_reg_1092[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_13 
       (.I0(read_count_1_fu_120_reg[17]),
        .I1(read_count_1_fu_120_reg[16]),
        .O(\tmp_13_reg_1092[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_15 
       (.I0(read_count_1_fu_120_reg[15]),
        .I1(read_count_1_fu_120_reg[14]),
        .O(\tmp_13_reg_1092[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_16 
       (.I0(read_count_1_fu_120_reg[13]),
        .I1(read_count_1_fu_120_reg[12]),
        .O(\tmp_13_reg_1092[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_17 
       (.I0(read_count_1_fu_120_reg[11]),
        .I1(read_count_1_fu_120_reg[10]),
        .O(\tmp_13_reg_1092[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_18 
       (.I0(read_count_1_fu_120_reg[9]),
        .I1(read_count_1_fu_120_reg[8]),
        .O(\tmp_13_reg_1092[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_19 
       (.I0(read_count_1_fu_120_reg[4]),
        .I1(read_count_1_fu_120_reg[5]),
        .O(\tmp_13_reg_1092[0]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_13_reg_1092[0]_i_20 
       (.I0(read_count_1_fu_120_reg[3]),
        .O(\tmp_13_reg_1092[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_21 
       (.I0(read_count_1_fu_120_reg[0]),
        .I1(read_count_1_fu_120_reg[1]),
        .O(\tmp_13_reg_1092[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_22 
       (.I0(read_count_1_fu_120_reg[7]),
        .I1(read_count_1_fu_120_reg[6]),
        .O(\tmp_13_reg_1092[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_13_reg_1092[0]_i_23 
       (.I0(read_count_1_fu_120_reg[4]),
        .I1(read_count_1_fu_120_reg[5]),
        .O(\tmp_13_reg_1092[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_13_reg_1092[0]_i_24 
       (.I0(read_count_1_fu_120_reg[3]),
        .I1(read_count_1_fu_120_reg[2]),
        .O(\tmp_13_reg_1092[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_13_reg_1092[0]_i_25 
       (.I0(read_count_1_fu_120_reg[0]),
        .I1(read_count_1_fu_120_reg[1]),
        .O(\tmp_13_reg_1092[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5575)) 
    \tmp_13_reg_1092[0]_i_3 
       (.I0(ap_CS_fsm_pp3_stage0),
        .I1(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .I2(ap_enable_reg_pp3_iter4_reg_n_0),
        .I3(out_stream_V_full_n),
        .I4(\indvar_flatten7_reg_300[4]_i_3_n_0 ),
        .I5(exitcond_flatten9_fu_604_p227_in),
        .O(\tmp_13_reg_1092[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_5 
       (.I0(read_count_1_fu_120_reg[31]),
        .I1(read_count_1_fu_120_reg[30]),
        .O(\tmp_13_reg_1092[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_6 
       (.I0(read_count_1_fu_120_reg[29]),
        .I1(read_count_1_fu_120_reg[28]),
        .O(\tmp_13_reg_1092[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_7 
       (.I0(read_count_1_fu_120_reg[27]),
        .I1(read_count_1_fu_120_reg[26]),
        .O(\tmp_13_reg_1092[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tmp_13_reg_1092[0]_i_8 
       (.I0(read_count_1_fu_120_reg[25]),
        .I1(read_count_1_fu_120_reg[24]),
        .O(\tmp_13_reg_1092[0]_i_8_n_0 ));
  FDRE \tmp_13_reg_1092_reg[0] 
       (.C(ap_clk),
        .CE(line_buf_0_addr_2_reg_10800),
        .D(tmp_13_fu_693_p2),
        .Q(tmp_13_reg_1092),
        .R(1'b0));
  CARRY4 \tmp_13_reg_1092_reg[0]_i_14 
       (.CI(1'b0),
        .CO({\tmp_13_reg_1092_reg[0]_i_14_n_0 ,\tmp_13_reg_1092_reg[0]_i_14_n_1 ,\tmp_13_reg_1092_reg[0]_i_14_n_2 ,\tmp_13_reg_1092_reg[0]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\tmp_13_reg_1092[0]_i_19_n_0 ,\tmp_13_reg_1092[0]_i_20_n_0 ,\tmp_13_reg_1092[0]_i_21_n_0 }),
        .O(\NLW_tmp_13_reg_1092_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({\tmp_13_reg_1092[0]_i_22_n_0 ,\tmp_13_reg_1092[0]_i_23_n_0 ,\tmp_13_reg_1092[0]_i_24_n_0 ,\tmp_13_reg_1092[0]_i_25_n_0 }));
  CARRY4 \tmp_13_reg_1092_reg[0]_i_2 
       (.CI(\tmp_13_reg_1092_reg[0]_i_4_n_0 ),
        .CO({tmp_13_fu_693_p2,\tmp_13_reg_1092_reg[0]_i_2_n_1 ,\tmp_13_reg_1092_reg[0]_i_2_n_2 ,\tmp_13_reg_1092_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({read_count_1_fu_120_reg[31],1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_13_reg_1092_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\tmp_13_reg_1092[0]_i_5_n_0 ,\tmp_13_reg_1092[0]_i_6_n_0 ,\tmp_13_reg_1092[0]_i_7_n_0 ,\tmp_13_reg_1092[0]_i_8_n_0 }));
  CARRY4 \tmp_13_reg_1092_reg[0]_i_4 
       (.CI(\tmp_13_reg_1092_reg[0]_i_9_n_0 ),
        .CO({\tmp_13_reg_1092_reg[0]_i_4_n_0 ,\tmp_13_reg_1092_reg[0]_i_4_n_1 ,\tmp_13_reg_1092_reg[0]_i_4_n_2 ,\tmp_13_reg_1092_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_13_reg_1092_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\tmp_13_reg_1092[0]_i_10_n_0 ,\tmp_13_reg_1092[0]_i_11_n_0 ,\tmp_13_reg_1092[0]_i_12_n_0 ,\tmp_13_reg_1092[0]_i_13_n_0 }));
  CARRY4 \tmp_13_reg_1092_reg[0]_i_9 
       (.CI(\tmp_13_reg_1092_reg[0]_i_14_n_0 ),
        .CO({\tmp_13_reg_1092_reg[0]_i_9_n_0 ,\tmp_13_reg_1092_reg[0]_i_9_n_1 ,\tmp_13_reg_1092_reg[0]_i_9_n_2 ,\tmp_13_reg_1092_reg[0]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tmp_13_reg_1092_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S({\tmp_13_reg_1092[0]_i_15_n_0 ,\tmp_13_reg_1092[0]_i_16_n_0 ,\tmp_13_reg_1092[0]_i_17_n_0 ,\tmp_13_reg_1092[0]_i_18_n_0 }));
  LUT5 #(
    .INIT(32'hBBBBB8BB)) 
    \tmp_14_i_i_reg_1067[0]_i_1 
       (.I0(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .I1(\tmp_13_reg_1092[0]_i_3_n_0 ),
        .I2(x_assign_mid2_fu_625_p3[2]),
        .I3(x_4_fu_681_p2),
        .I4(x_assign_mid2_fu_625_p3[1]),
        .O(\tmp_14_i_i_reg_1067[0]_i_1_n_0 ));
  FDRE \tmp_14_i_i_reg_1067_pp3_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .Q(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .R(1'b0));
  FDRE \tmp_14_i_i_reg_1067_pp3_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(tmp_14_i_i_reg_1067_pp3_iter1_reg),
        .Q(tmp_14_i_i_reg_1067_pp3_iter2_reg),
        .R(1'b0));
  FDRE \tmp_14_i_i_reg_1067_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_14_i_i_reg_1067[0]_i_1_n_0 ),
        .Q(\tmp_14_i_i_reg_1067_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_15_i2_i_reg_1096[0]_i_1 
       (.I0(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(line_buf_1_U_n_35),
        .O(result_2_0_2_i_reg_11020));
  LUT3 #(
    .INIT(8'h1F)) 
    \tmp_15_i2_i_reg_1096[0]_i_2 
       (.I0(x_4_reg_1074[0]),
        .I1(x_4_reg_1074[1]),
        .I2(x_4_reg_1074[2]),
        .O(tmp_15_i2_i_fu_763_p2));
  FDRE \tmp_15_i2_i_reg_1096_pp3_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(tmp_15_i2_i_reg_1096),
        .Q(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .R(1'b0));
  FDRE \tmp_15_i2_i_reg_1096_pp3_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(tmp_15_i2_i_reg_1096_pp3_iter2_reg),
        .Q(tmp_15_i2_i_reg_1096_pp3_iter3_reg),
        .R(1'b0));
  FDRE \tmp_15_i2_i_reg_1096_reg[0] 
       (.C(ap_clk),
        .CE(result_2_0_2_i_reg_11020),
        .D(tmp_15_i2_i_fu_763_p2),
        .Q(tmp_15_i2_i_reg_1096),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7787FFFF78880000)) 
    \tmp_9_mid2_v_reg_940[0]_i_1 
       (.I0(x3_reg_289[0]),
        .I1(x3_reg_289[1]),
        .I2(\tmp_9_mid2_v_reg_940[0]_i_2_n_0 ),
        .I3(\y2_reg_230_reg_n_0_[0] ),
        .I4(indvar_flatten_reg_2190),
        .I5(tmp_9_mid2_v_reg_940[0]),
        .O(\tmp_9_mid2_v_reg_940[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \tmp_9_mid2_v_reg_940[0]_i_2 
       (.I0(exitcond_flatten_reg_931),
        .I1(ap_enable_reg_pp2_iter1),
        .I2(ap_CS_fsm_pp2_stage0),
        .O(\tmp_9_mid2_v_reg_940[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \tmp_9_mid2_v_reg_940[1]_i_1 
       (.I0(\tmp_9_mid2_v_reg_940[1]_i_2_n_0 ),
        .I1(\tmp_9_mid2_v_reg_940[1]_i_3_n_0 ),
        .I2(x3_reg_289[1]),
        .I3(x3_reg_289[0]),
        .I4(indvar_flatten_reg_2190),
        .I5(tmp_9_mid2_v_reg_940[1]),
        .O(\tmp_9_mid2_v_reg_940[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hBAAA8AAA)) 
    \tmp_9_mid2_v_reg_940[1]_i_2 
       (.I0(\y2_reg_230_reg_n_0_[1] ),
        .I1(exitcond_flatten_reg_931),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(tmp_9_mid2_v_reg_940[1]),
        .O(\tmp_9_mid2_v_reg_940[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBAAA8AAA)) 
    \tmp_9_mid2_v_reg_940[1]_i_3 
       (.I0(\y2_reg_230_reg_n_0_[0] ),
        .I1(exitcond_flatten_reg_931),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(tmp_9_mid2_v_reg_940[0]),
        .O(\tmp_9_mid2_v_reg_940[1]_i_3_n_0 ));
  FDRE \tmp_9_mid2_v_reg_940_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_9_mid2_v_reg_940[0]_i_1_n_0 ),
        .Q(tmp_9_mid2_v_reg_940[0]),
        .R(1'b0));
  FDRE \tmp_9_mid2_v_reg_940_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_9_mid2_v_reg_940[1]_i_1_n_0 ),
        .Q(tmp_9_mid2_v_reg_940[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC87F)) 
    \tmp_i2_i_mid2_reg_1055[0]_i_1 
       (.I0(\y_assign_reg_311[2]_i_2_n_0 ),
        .I1(\y_assign_reg_311_reg_n_0_[1] ),
        .I2(\y_assign_reg_311_reg_n_0_[0] ),
        .I3(\y_assign_reg_311_reg_n_0_[2] ),
        .O(tmp_i2_i_mid2_fu_659_p3));
  FDRE \tmp_i2_i_mid2_reg_1055_pp3_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond_flatten9_reg_10390),
        .D(tmp_i2_i_mid2_reg_1055),
        .Q(tmp_i2_i_mid2_reg_1055_pp3_iter1_reg),
        .R(1'b0));
  FDRE \tmp_i2_i_mid2_reg_1055_pp3_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(tmp_i2_i_mid2_reg_1055_pp3_iter1_reg),
        .Q(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .R(1'b0));
  FDRE \tmp_i2_i_mid2_reg_1055_pp3_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(tmp_i2_i_mid2_reg_1055_pp3_iter2_reg),
        .Q(tmp_i2_i_mid2_reg_1055_pp3_iter3_reg),
        .R(1'b0));
  FDRE \tmp_i2_i_mid2_reg_1055_reg[0] 
       (.C(ap_clk),
        .CE(line_buf_0_addr_2_reg_10800),
        .D(tmp_i2_i_mid2_fu_659_p3),
        .Q(tmp_i2_i_mid2_reg_1055),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BBBBBBBBBBBBBB8)) 
    \tmp_i_i_mid2_reg_1048[0]_i_1 
       (.I0(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .I1(\tmp_13_reg_1092[0]_i_3_n_0 ),
        .I2(\y_assign_reg_311_reg_n_0_[0] ),
        .I3(\y_assign_reg_311_reg_n_0_[2] ),
        .I4(\y_assign_reg_311_reg_n_0_[1] ),
        .I5(\y_assign_reg_311[2]_i_2_n_0 ),
        .O(\tmp_i_i_mid2_reg_1048[0]_i_1_n_0 ));
  FDRE \tmp_i_i_mid2_reg_1048_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_i_i_mid2_reg_1048[0]_i_1_n_0 ),
        .Q(\tmp_i_i_mid2_reg_1048_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[0] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[0]),
        .Q(window_0_0_fu_104[0]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[10] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[10]),
        .Q(window_0_0_fu_104[10]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[11] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[11]),
        .Q(window_0_0_fu_104[11]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[12] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[12]),
        .Q(window_0_0_fu_104[12]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[13] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[13]),
        .Q(window_0_0_fu_104[13]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[14] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[14]),
        .Q(window_0_0_fu_104[14]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[15] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[15]),
        .Q(window_0_0_fu_104[15]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[16] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[16]),
        .Q(window_0_0_fu_104[16]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[17] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[17]),
        .Q(window_0_0_fu_104[17]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[18] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[18]),
        .Q(window_0_0_fu_104[18]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[19] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[19]),
        .Q(window_0_0_fu_104[19]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[1] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[1]),
        .Q(window_0_0_fu_104[1]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[20] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[20]),
        .Q(window_0_0_fu_104[20]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[21] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[21]),
        .Q(window_0_0_fu_104[21]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[22] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[22]),
        .Q(window_0_0_fu_104[22]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[23] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[23]),
        .Q(window_0_0_fu_104[23]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[24] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[24]),
        .Q(window_0_0_fu_104[24]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[25] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[25]),
        .Q(window_0_0_fu_104[25]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[26] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[26]),
        .Q(window_0_0_fu_104[26]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[27] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[27]),
        .Q(window_0_0_fu_104[27]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[28] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[28]),
        .Q(window_0_0_fu_104[28]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[29] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[29]),
        .Q(window_0_0_fu_104[29]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[2] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[2]),
        .Q(window_0_0_fu_104[2]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[30] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[30]),
        .Q(window_0_0_fu_104[30]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[31] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[31]),
        .Q(window_0_0_fu_104[31]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[3] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[3]),
        .Q(window_0_0_fu_104[3]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[4] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[4]),
        .Q(window_0_0_fu_104[4]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[5] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[5]),
        .Q(window_0_0_fu_104[5]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[6] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[6]),
        .Q(window_0_0_fu_104[6]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[7] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[7]),
        .Q(window_0_0_fu_104[7]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[8] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[8]),
        .Q(window_0_0_fu_104[8]),
        .R(1'b0));
  FDRE \window_0_0_fu_104_reg[9] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_1_fu_108[9]),
        .Q(window_0_0_fu_104[9]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[0]),
        .Q(window_0_0_read_as_fu_100[0]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[10] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[10]),
        .Q(window_0_0_read_as_fu_100[10]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[11] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[11]),
        .Q(window_0_0_read_as_fu_100[11]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[12] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[12]),
        .Q(window_0_0_read_as_fu_100[12]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[13] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[13]),
        .Q(window_0_0_read_as_fu_100[13]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[14] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[14]),
        .Q(window_0_0_read_as_fu_100[14]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[15] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[15]),
        .Q(window_0_0_read_as_fu_100[15]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[16] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[16]),
        .Q(window_0_0_read_as_fu_100[16]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[17] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[17]),
        .Q(window_0_0_read_as_fu_100[17]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[18] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[18]),
        .Q(window_0_0_read_as_fu_100[18]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[19] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[19]),
        .Q(window_0_0_read_as_fu_100[19]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[1]),
        .Q(window_0_0_read_as_fu_100[1]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[20] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[20]),
        .Q(window_0_0_read_as_fu_100[20]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[21] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[21]),
        .Q(window_0_0_read_as_fu_100[21]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[22] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[22]),
        .Q(window_0_0_read_as_fu_100[22]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[23] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[23]),
        .Q(window_0_0_read_as_fu_100[23]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[24] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[24]),
        .Q(window_0_0_read_as_fu_100[24]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[25] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[25]),
        .Q(window_0_0_read_as_fu_100[25]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[26] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[26]),
        .Q(window_0_0_read_as_fu_100[26]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[27] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[27]),
        .Q(window_0_0_read_as_fu_100[27]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[28] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[28]),
        .Q(window_0_0_read_as_fu_100[28]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[29] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[29]),
        .Q(window_0_0_read_as_fu_100[29]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[2]),
        .Q(window_0_0_read_as_fu_100[2]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[30] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[30]),
        .Q(window_0_0_read_as_fu_100[30]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[31] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[31]),
        .Q(window_0_0_read_as_fu_100[31]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[3]),
        .Q(window_0_0_read_as_fu_100[3]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[4] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[4]),
        .Q(window_0_0_read_as_fu_100[4]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[5] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[5]),
        .Q(window_0_0_read_as_fu_100[5]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[6] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[6]),
        .Q(window_0_0_read_as_fu_100[6]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[7] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[7]),
        .Q(window_0_0_read_as_fu_100[7]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[8] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[8]),
        .Q(window_0_0_read_as_fu_100[8]),
        .R(1'b0));
  FDRE \window_0_0_read_as_fu_100_reg[9] 
       (.C(ap_clk),
        .CE(\ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]_i_2_n_0 ),
        .D(window_0_0_fu_104[9]),
        .Q(window_0_0_read_as_fu_100[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \window_0_1_fu_108[31]_i_1 
       (.I0(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp3_stage0),
        .I2(ap_enable_reg_pp3_iter1),
        .I3(line_buf_1_U_n_35),
        .O(x_assign_reg_3220));
  FDRE \window_0_1_fu_108_reg[0] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[0]),
        .Q(window_0_1_fu_108[0]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[10] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[10]),
        .Q(window_0_1_fu_108[10]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[11] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[11]),
        .Q(window_0_1_fu_108[11]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[12] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[12]),
        .Q(window_0_1_fu_108[12]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[13] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[13]),
        .Q(window_0_1_fu_108[13]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[14] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[14]),
        .Q(window_0_1_fu_108[14]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[15] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[15]),
        .Q(window_0_1_fu_108[15]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[16] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[16]),
        .Q(window_0_1_fu_108[16]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[17] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[17]),
        .Q(window_0_1_fu_108[17]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[18] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[18]),
        .Q(window_0_1_fu_108[18]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[19] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[19]),
        .Q(window_0_1_fu_108[19]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[1] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[1]),
        .Q(window_0_1_fu_108[1]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[20] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[20]),
        .Q(window_0_1_fu_108[20]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[21] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[21]),
        .Q(window_0_1_fu_108[21]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[22] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[22]),
        .Q(window_0_1_fu_108[22]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[23] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[23]),
        .Q(window_0_1_fu_108[23]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[24] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[24]),
        .Q(window_0_1_fu_108[24]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[25] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[25]),
        .Q(window_0_1_fu_108[25]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[26] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[26]),
        .Q(window_0_1_fu_108[26]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[27] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[27]),
        .Q(window_0_1_fu_108[27]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[28] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[28]),
        .Q(window_0_1_fu_108[28]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[29] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[29]),
        .Q(window_0_1_fu_108[29]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[2] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[2]),
        .Q(window_0_1_fu_108[2]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[30] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[30]),
        .Q(window_0_1_fu_108[30]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[31] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[31]),
        .Q(window_0_1_fu_108[31]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[3] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[3]),
        .Q(window_0_1_fu_108[3]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[4] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[4]),
        .Q(window_0_1_fu_108[4]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[5] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[5]),
        .Q(window_0_1_fu_108[5]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[6] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[6]),
        .Q(window_0_1_fu_108[6]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[7] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[7]),
        .Q(window_0_1_fu_108[7]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[8] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[8]),
        .Q(window_0_1_fu_108[8]),
        .R(1'b0));
  FDRE \window_0_1_fu_108_reg[9] 
       (.C(ap_clk),
        .CE(x_assign_reg_3220),
        .D(line_buf_0_q0[9]),
        .Q(window_0_1_fu_108[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[0]_i_1 
       (.I0(window_1_1_reg_356[0]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[0]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[10]_i_1 
       (.I0(window_1_1_reg_356[10]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[10]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[11]_i_1 
       (.I0(window_1_1_reg_356[11]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[11]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[12]_i_1 
       (.I0(window_1_1_reg_356[12]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[12]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[13]_i_1 
       (.I0(window_1_1_reg_356[13]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[13]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[14]_i_1 
       (.I0(window_1_1_reg_356[14]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[14]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[15]_i_1 
       (.I0(window_1_1_reg_356[15]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[15]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[16]_i_1 
       (.I0(window_1_1_reg_356[16]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[16]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[17]_i_1 
       (.I0(window_1_1_reg_356[17]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[17]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[18]_i_1 
       (.I0(window_1_1_reg_356[18]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[18]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[19]_i_1 
       (.I0(window_1_1_reg_356[19]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[19]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \window_1_0_read_as_fu_112[1]_i_1 
       (.I0(window_1_0_reg_367[1]),
        .I1(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp3_iter3),
        .I3(window_1_1_reg_356[1]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[20]_i_1 
       (.I0(window_1_1_reg_356[20]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[20]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[21]_i_1 
       (.I0(window_1_1_reg_356[21]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[21]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[22]_i_1 
       (.I0(window_1_1_reg_356[22]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[22]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[23]_i_1 
       (.I0(window_1_1_reg_356[23]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[23]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[24]_i_1 
       (.I0(window_1_1_reg_356[24]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[24]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[25]_i_1 
       (.I0(window_1_1_reg_356[25]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[25]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[26]_i_1 
       (.I0(window_1_1_reg_356[26]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[26]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[27]_i_1 
       (.I0(window_1_1_reg_356[27]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[27]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[28]_i_1 
       (.I0(window_1_1_reg_356[28]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[28]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[29]_i_1 
       (.I0(window_1_1_reg_356[29]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[29]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[2]_i_1 
       (.I0(window_1_1_reg_356[2]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[2]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[30]_i_1 
       (.I0(window_1_1_reg_356[30]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[30]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[3]_i_1 
       (.I0(window_1_1_reg_356[3]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[3]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[4]_i_1 
       (.I0(window_1_1_reg_356[4]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[4]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[5]_i_1 
       (.I0(window_1_1_reg_356[5]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[5]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[6]_i_1 
       (.I0(window_1_1_reg_356[6]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[6]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[7]_i_1 
       (.I0(window_1_1_reg_356[7]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[7]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[8]_i_1 
       (.I0(window_1_1_reg_356[8]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[8]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_1_0_read_as_fu_112[9]_i_1 
       (.I0(window_1_1_reg_356[9]),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_1_0_reg_367[9]),
        .O(ap_phi_mux_window_1_0_phi_fu_370_p4[9]));
  FDRE \window_1_0_read_as_fu_112_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[0]),
        .Q(window_1_0_read_as_fu_112[0]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[10] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[10]),
        .Q(window_1_0_read_as_fu_112[10]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[11] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[11]),
        .Q(window_1_0_read_as_fu_112[11]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[12] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[12]),
        .Q(window_1_0_read_as_fu_112[12]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[13] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[13]),
        .Q(window_1_0_read_as_fu_112[13]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[14] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[14]),
        .Q(window_1_0_read_as_fu_112[14]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[15] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[15]),
        .Q(window_1_0_read_as_fu_112[15]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[16] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[16]),
        .Q(window_1_0_read_as_fu_112[16]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[17] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[17]),
        .Q(window_1_0_read_as_fu_112[17]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[18] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[18]),
        .Q(window_1_0_read_as_fu_112[18]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[19] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[19]),
        .Q(window_1_0_read_as_fu_112[19]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[1]),
        .Q(window_1_0_read_as_fu_112[1]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[20] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[20]),
        .Q(window_1_0_read_as_fu_112[20]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[21] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[21]),
        .Q(window_1_0_read_as_fu_112[21]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[22] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[22]),
        .Q(window_1_0_read_as_fu_112[22]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[23] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[23]),
        .Q(window_1_0_read_as_fu_112[23]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[24] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[24]),
        .Q(window_1_0_read_as_fu_112[24]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[25] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[25]),
        .Q(window_1_0_read_as_fu_112[25]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[26] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[26]),
        .Q(window_1_0_read_as_fu_112[26]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[27] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[27]),
        .Q(window_1_0_read_as_fu_112[27]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[28] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[28]),
        .Q(window_1_0_read_as_fu_112[28]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[29] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[29]),
        .Q(window_1_0_read_as_fu_112[29]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[2]),
        .Q(window_1_0_read_as_fu_112[2]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[30] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[30]),
        .Q(window_1_0_read_as_fu_112[30]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[3]),
        .Q(window_1_0_read_as_fu_112[3]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[4]),
        .Q(window_1_0_read_as_fu_112[4]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[5]),
        .Q(window_1_0_read_as_fu_112[5]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[6]),
        .Q(window_1_0_read_as_fu_112[6]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[7]),
        .Q(window_1_0_read_as_fu_112[7]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[8] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[8]),
        .Q(window_1_0_read_as_fu_112[8]),
        .R(1'b0));
  FDRE \window_1_0_read_as_fu_112_reg[9] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_1_0_phi_fu_370_p4[9]),
        .Q(window_1_0_read_as_fu_112[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[0]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[0]),
        .O(\window_1_0_reg_367[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[10]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[10] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[10]),
        .O(\window_1_0_reg_367[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[11]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[11] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[11]),
        .O(\window_1_0_reg_367[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[12]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[12]),
        .O(\window_1_0_reg_367[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[13]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[13] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[13]),
        .O(\window_1_0_reg_367[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[14]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[14] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[14]),
        .O(\window_1_0_reg_367[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[15]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[15] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[15]),
        .O(\window_1_0_reg_367[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[16]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[16] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[16]),
        .O(\window_1_0_reg_367[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[17]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[17] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[17]),
        .O(\window_1_0_reg_367[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[18]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[18] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[18]),
        .O(\window_1_0_reg_367[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[19]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[19] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[19]),
        .O(\window_1_0_reg_367[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[1]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[1] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[1]),
        .O(\window_1_0_reg_367[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[20]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[20] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[20]),
        .O(\window_1_0_reg_367[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[21]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[21] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[21]),
        .O(\window_1_0_reg_367[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[22]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[22] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[22]),
        .O(\window_1_0_reg_367[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[23]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[23] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[23]),
        .O(\window_1_0_reg_367[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[24]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[24] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[24]),
        .O(\window_1_0_reg_367[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[25]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[25] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[25]),
        .O(\window_1_0_reg_367[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[26]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[26] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[26]),
        .O(\window_1_0_reg_367[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[27]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[27] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[27]),
        .O(\window_1_0_reg_367[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[28]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[28] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[28]),
        .O(\window_1_0_reg_367[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[29]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[29] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[29]),
        .O(\window_1_0_reg_367[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[2]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[2] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[2]),
        .O(\window_1_0_reg_367[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[30]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[30] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[30]),
        .O(\window_1_0_reg_367[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[31]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[31] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[31]),
        .O(\window_1_0_reg_367[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[3]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[3] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[3]),
        .O(\window_1_0_reg_367[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[4]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[4] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[4]),
        .O(\window_1_0_reg_367[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[5]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[5] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[5]),
        .O(\window_1_0_reg_367[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[6]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[6] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[6]),
        .O(\window_1_0_reg_367[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[7]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[7] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[7]),
        .O(\window_1_0_reg_367[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[8]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[8] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[8]),
        .O(\window_1_0_reg_367[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_0_reg_367[9]_i_1 
       (.I0(\window_1_1_1_reg_277_reg_n_0_[9] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_1_reg_356[9]),
        .O(\window_1_0_reg_367[9]_i_1_n_0 ));
  FDRE \window_1_0_reg_367_reg[0] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[0]_i_1_n_0 ),
        .Q(window_1_0_reg_367[0]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[10] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[10]_i_1_n_0 ),
        .Q(window_1_0_reg_367[10]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[11] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[11]_i_1_n_0 ),
        .Q(window_1_0_reg_367[11]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[12] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[12]_i_1_n_0 ),
        .Q(window_1_0_reg_367[12]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[13] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[13]_i_1_n_0 ),
        .Q(window_1_0_reg_367[13]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[14] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[14]_i_1_n_0 ),
        .Q(window_1_0_reg_367[14]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[15] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[15]_i_1_n_0 ),
        .Q(window_1_0_reg_367[15]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[16] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[16]_i_1_n_0 ),
        .Q(window_1_0_reg_367[16]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[17] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[17]_i_1_n_0 ),
        .Q(window_1_0_reg_367[17]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[18] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[18]_i_1_n_0 ),
        .Q(window_1_0_reg_367[18]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[19] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[19]_i_1_n_0 ),
        .Q(window_1_0_reg_367[19]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[1] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[1]_i_1_n_0 ),
        .Q(window_1_0_reg_367[1]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[20] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[20]_i_1_n_0 ),
        .Q(window_1_0_reg_367[20]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[21] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[21]_i_1_n_0 ),
        .Q(window_1_0_reg_367[21]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[22] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[22]_i_1_n_0 ),
        .Q(window_1_0_reg_367[22]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[23] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[23]_i_1_n_0 ),
        .Q(window_1_0_reg_367[23]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[24] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[24]_i_1_n_0 ),
        .Q(window_1_0_reg_367[24]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[25] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[25]_i_1_n_0 ),
        .Q(window_1_0_reg_367[25]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[26] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[26]_i_1_n_0 ),
        .Q(window_1_0_reg_367[26]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[27] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[27]_i_1_n_0 ),
        .Q(window_1_0_reg_367[27]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[28] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[28]_i_1_n_0 ),
        .Q(window_1_0_reg_367[28]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[29] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[29]_i_1_n_0 ),
        .Q(window_1_0_reg_367[29]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[2] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[2]_i_1_n_0 ),
        .Q(window_1_0_reg_367[2]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[30] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[30]_i_1_n_0 ),
        .Q(window_1_0_reg_367[30]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[31] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[31]_i_1_n_0 ),
        .Q(window_1_0_reg_367[31]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[3] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[3]_i_1_n_0 ),
        .Q(window_1_0_reg_367[3]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[4] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[4]_i_1_n_0 ),
        .Q(window_1_0_reg_367[4]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[5] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[5]_i_1_n_0 ),
        .Q(window_1_0_reg_367[5]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[6] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[6]_i_1_n_0 ),
        .Q(window_1_0_reg_367[6]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[7] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[7]_i_1_n_0 ),
        .Q(window_1_0_reg_367[7]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[8] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[8]_i_1_n_0 ),
        .Q(window_1_0_reg_367[8]),
        .R(1'b0));
  FDRE \window_1_0_reg_367_reg[9] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_0_reg_367[9]_i_1_n_0 ),
        .Q(window_1_0_reg_367[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08000000)) 
    \window_1_1_1_reg_277[31]_i_1 
       (.I0(\cond1_reg_968_reg_n_0_[0] ),
        .I1(\cond_mid2_reg_950_reg_n_0_[0] ),
        .I2(exitcond_flatten_reg_931),
        .I3(ap_enable_reg_pp2_iter1),
        .I4(ap_CS_fsm_pp2_stage0),
        .O(window_1_1_1_reg_277));
  FDRE \window_1_1_1_reg_277_reg[0] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[0]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[10] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[10]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[11] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[11]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[12] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[12]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[13] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[13]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[14] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[14]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[15] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[15]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[16] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[16]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[17] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[17]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[18] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[18]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[19] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[19]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[1] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[1]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[20] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[20]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[21] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[21]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[22] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[22]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[23] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[23]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[24] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[24]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[25] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[25]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[26] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[26]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[27] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[27]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[28] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[28]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[29] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[29]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[2] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[2]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[30] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[30]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[31] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[31]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[3] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[3]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[4] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[4]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[5] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[5]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[6] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[6]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[7] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[7]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[8] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[8]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_1_1_1_reg_277_reg[9] 
       (.C(ap_clk),
        .CE(window_1_1_1_reg_277),
        .D(window_1_1_2_fu_518_p3[9]),
        .Q(\window_1_1_1_reg_277_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[0]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[0]),
        .O(\window_1_1_reg_356[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[10]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[10] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[10]),
        .O(\window_1_1_reg_356[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[11]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[11] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[11]),
        .O(\window_1_1_reg_356[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[12]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[12]),
        .O(\window_1_1_reg_356[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[13]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[13] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[13]),
        .O(\window_1_1_reg_356[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[14]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[14] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[14]),
        .O(\window_1_1_reg_356[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[15]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[15] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[15]),
        .O(\window_1_1_reg_356[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[16]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[16] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[16]),
        .O(\window_1_1_reg_356[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[17]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[17] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[17]),
        .O(\window_1_1_reg_356[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[18]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[18] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[18]),
        .O(\window_1_1_reg_356[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[19]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[19] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[19]),
        .O(\window_1_1_reg_356[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[1]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[1] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[1]),
        .O(\window_1_1_reg_356[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[20]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[20] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[20]),
        .O(\window_1_1_reg_356[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[21]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[21] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[21]),
        .O(\window_1_1_reg_356[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[22]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[22] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[22]),
        .O(\window_1_1_reg_356[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[23]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[23] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[23]),
        .O(\window_1_1_reg_356[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[24]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[24] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[24]),
        .O(\window_1_1_reg_356[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[25]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[25] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[25]),
        .O(\window_1_1_reg_356[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[26]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[26] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[26]),
        .O(\window_1_1_reg_356[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[27]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[27] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[27]),
        .O(\window_1_1_reg_356[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[28]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[28] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[28]),
        .O(\window_1_1_reg_356[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[29]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[29] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[29]),
        .O(\window_1_1_reg_356[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[2]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[2] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[2]),
        .O(\window_1_1_reg_356[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[30]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[30] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[30]),
        .O(\window_1_1_reg_356[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[31]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[31] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[31]),
        .O(\window_1_1_reg_356[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[3]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[3] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[3]),
        .O(\window_1_1_reg_356[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[4]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[4] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[4]),
        .O(\window_1_1_reg_356[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[5]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[5] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[5]),
        .O(\window_1_1_reg_356[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[6]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[6] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[6]),
        .O(\window_1_1_reg_356[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[7]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[7] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[7]),
        .O(\window_1_1_reg_356[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[8]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[8] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[8]),
        .O(\window_1_1_reg_356[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_1_1_reg_356[9]_i_1 
       (.I0(\window_1_2_1_reg_265_reg_n_0_[9] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_1_2_reg_1124[9]),
        .O(\window_1_1_reg_356[9]_i_1_n_0 ));
  FDRE \window_1_1_reg_356_reg[0] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[0]_i_1_n_0 ),
        .Q(window_1_1_reg_356[0]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[10] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[10]_i_1_n_0 ),
        .Q(window_1_1_reg_356[10]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[11] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[11]_i_1_n_0 ),
        .Q(window_1_1_reg_356[11]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[12] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[12]_i_1_n_0 ),
        .Q(window_1_1_reg_356[12]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[13] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[13]_i_1_n_0 ),
        .Q(window_1_1_reg_356[13]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[14] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[14]_i_1_n_0 ),
        .Q(window_1_1_reg_356[14]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[15] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[15]_i_1_n_0 ),
        .Q(window_1_1_reg_356[15]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[16] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[16]_i_1_n_0 ),
        .Q(window_1_1_reg_356[16]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[17] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[17]_i_1_n_0 ),
        .Q(window_1_1_reg_356[17]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[18] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[18]_i_1_n_0 ),
        .Q(window_1_1_reg_356[18]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[19] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[19]_i_1_n_0 ),
        .Q(window_1_1_reg_356[19]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[1] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[1]_i_1_n_0 ),
        .Q(window_1_1_reg_356[1]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[20] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[20]_i_1_n_0 ),
        .Q(window_1_1_reg_356[20]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[21] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[21]_i_1_n_0 ),
        .Q(window_1_1_reg_356[21]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[22] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[22]_i_1_n_0 ),
        .Q(window_1_1_reg_356[22]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[23] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[23]_i_1_n_0 ),
        .Q(window_1_1_reg_356[23]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[24] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[24]_i_1_n_0 ),
        .Q(window_1_1_reg_356[24]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[25] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[25]_i_1_n_0 ),
        .Q(window_1_1_reg_356[25]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[26] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[26]_i_1_n_0 ),
        .Q(window_1_1_reg_356[26]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[27] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[27]_i_1_n_0 ),
        .Q(window_1_1_reg_356[27]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[28] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[28]_i_1_n_0 ),
        .Q(window_1_1_reg_356[28]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[29] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[29]_i_1_n_0 ),
        .Q(window_1_1_reg_356[29]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[2] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[2]_i_1_n_0 ),
        .Q(window_1_1_reg_356[2]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[30] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[30]_i_1_n_0 ),
        .Q(window_1_1_reg_356[30]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[31] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[31]_i_1_n_0 ),
        .Q(window_1_1_reg_356[31]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[3] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[3]_i_1_n_0 ),
        .Q(window_1_1_reg_356[3]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[4] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[4]_i_1_n_0 ),
        .Q(window_1_1_reg_356[4]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[5] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[5]_i_1_n_0 ),
        .Q(window_1_1_reg_356[5]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[6] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[6]_i_1_n_0 ),
        .Q(window_1_1_reg_356[6]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[7] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[7]_i_1_n_0 ),
        .Q(window_1_1_reg_356[7]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[8] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[8]_i_1_n_0 ),
        .Q(window_1_1_reg_356[8]),
        .R(1'b0));
  FDRE \window_1_1_reg_356_reg[9] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_1_1_reg_356[9]_i_1_n_0 ),
        .Q(window_1_1_reg_356[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04000000)) 
    \window_1_2_1_reg_265[31]_i_1 
       (.I0(\cond1_reg_968_reg_n_0_[0] ),
        .I1(\cond_mid2_reg_950_reg_n_0_[0] ),
        .I2(exitcond_flatten_reg_931),
        .I3(ap_enable_reg_pp2_iter1),
        .I4(ap_CS_fsm_pp2_stage0),
        .O(\window_1_2_1_reg_265[31]_i_1_n_0 ));
  FDRE \window_1_2_1_reg_265_reg[0] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[0]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[10] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[10]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[11] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[11]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[12] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[12]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[13] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[13]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[14] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[14]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[15] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[15]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[16] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[16]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[17] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[17]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[18] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[18]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[19] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[19]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[1] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[1]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[20] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[20]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[21] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[21]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[22] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[22]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[23] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[23]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[24] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[24]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[25] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[25]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[26] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[26]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[27] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[27]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[28] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[28]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[29] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[29]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[2] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[2]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[30] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[30]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[31] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[31]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[3] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[3]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[4] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[4]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[5] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[5]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[6] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[6]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[7] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[7]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[8] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[8]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_1_2_1_reg_265_reg[9] 
       (.C(ap_clk),
        .CE(\window_1_2_1_reg_265[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[9]),
        .Q(\window_1_2_1_reg_265_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[0] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[0]),
        .Q(window_1_2_reg_1124[0]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[10] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[10]),
        .Q(window_1_2_reg_1124[10]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[11] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[11]),
        .Q(window_1_2_reg_1124[11]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[12] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[12]),
        .Q(window_1_2_reg_1124[12]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[13] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[13]),
        .Q(window_1_2_reg_1124[13]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[14] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[14]),
        .Q(window_1_2_reg_1124[14]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[15] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[15]),
        .Q(window_1_2_reg_1124[15]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[16] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[16]),
        .Q(window_1_2_reg_1124[16]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[17] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[17]),
        .Q(window_1_2_reg_1124[17]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[18] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[18]),
        .Q(window_1_2_reg_1124[18]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[19] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[19]),
        .Q(window_1_2_reg_1124[19]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[1] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[1]),
        .Q(window_1_2_reg_1124[1]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[20] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[20]),
        .Q(window_1_2_reg_1124[20]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[21] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[21]),
        .Q(window_1_2_reg_1124[21]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[22] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[22]),
        .Q(window_1_2_reg_1124[22]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[23] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[23]),
        .Q(window_1_2_reg_1124[23]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[24] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[24]),
        .Q(window_1_2_reg_1124[24]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[25] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[25]),
        .Q(window_1_2_reg_1124[25]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[26] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[26]),
        .Q(window_1_2_reg_1124[26]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[27] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[27]),
        .Q(window_1_2_reg_1124[27]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[28] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[28]),
        .Q(window_1_2_reg_1124[28]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[29] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[29]),
        .Q(window_1_2_reg_1124[29]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[2] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[2]),
        .Q(window_1_2_reg_1124[2]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[30] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[30]),
        .Q(window_1_2_reg_1124[30]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[31] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[31]),
        .Q(window_1_2_reg_1124[31]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[3] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[3]),
        .Q(window_1_2_reg_1124[3]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[4] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[4]),
        .Q(window_1_2_reg_1124[4]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[5] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[5]),
        .Q(window_1_2_reg_1124[5]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[6] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[6]),
        .Q(window_1_2_reg_1124[6]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[7] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[7]),
        .Q(window_1_2_reg_1124[7]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[8] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[8]),
        .Q(window_1_2_reg_1124[8]),
        .R(1'b0));
  FDRE \window_1_2_reg_1124_reg[9] 
       (.C(ap_clk),
        .CE(we1),
        .D(line_buf_1_q0[9]),
        .Q(window_1_2_reg_1124[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \window_2_0_read_as_1_reg_1113[31]_i_1 
       (.I0(tmp_i2_i_mid2_reg_1055_pp3_iter1_reg),
        .I1(line_buf_1_U_n_35),
        .O(window_2_0_read_as_1_reg_11130));
  FDRE \window_2_0_read_as_1_reg_1113_reg[0] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[0]),
        .Q(window_2_0_read_as_1_reg_1113[0]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[10] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[10]),
        .Q(window_2_0_read_as_1_reg_1113[10]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[11] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[11]),
        .Q(window_2_0_read_as_1_reg_1113[11]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[12] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[12]),
        .Q(window_2_0_read_as_1_reg_1113[12]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[13] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[13]),
        .Q(window_2_0_read_as_1_reg_1113[13]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[14] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[14]),
        .Q(window_2_0_read_as_1_reg_1113[14]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[15] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[15]),
        .Q(window_2_0_read_as_1_reg_1113[15]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[16] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[16]),
        .Q(window_2_0_read_as_1_reg_1113[16]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[17] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[17]),
        .Q(window_2_0_read_as_1_reg_1113[17]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[18] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[18]),
        .Q(window_2_0_read_as_1_reg_1113[18]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[19] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[19]),
        .Q(window_2_0_read_as_1_reg_1113[19]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[1] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[1]),
        .Q(window_2_0_read_as_1_reg_1113[1]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[20] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[20]),
        .Q(window_2_0_read_as_1_reg_1113[20]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[21] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[21]),
        .Q(window_2_0_read_as_1_reg_1113[21]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[22] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[22]),
        .Q(window_2_0_read_as_1_reg_1113[22]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[23] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[23]),
        .Q(window_2_0_read_as_1_reg_1113[23]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[24] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[24]),
        .Q(window_2_0_read_as_1_reg_1113[24]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[25] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[25]),
        .Q(window_2_0_read_as_1_reg_1113[25]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[26] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[26]),
        .Q(window_2_0_read_as_1_reg_1113[26]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[27] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[27]),
        .Q(window_2_0_read_as_1_reg_1113[27]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[28] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[28]),
        .Q(window_2_0_read_as_1_reg_1113[28]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[29] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[29]),
        .Q(window_2_0_read_as_1_reg_1113[29]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[2] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[2]),
        .Q(window_2_0_read_as_1_reg_1113[2]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[30] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[30]),
        .Q(window_2_0_read_as_1_reg_1113[30]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[31] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[31]),
        .Q(window_2_0_read_as_1_reg_1113[31]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[3] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[3]),
        .Q(window_2_0_read_as_1_reg_1113[3]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[4] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[4]),
        .Q(window_2_0_read_as_1_reg_1113[4]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[5] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[5]),
        .Q(window_2_0_read_as_1_reg_1113[5]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[6] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[6]),
        .Q(window_2_0_read_as_1_reg_1113[6]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[7] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[7]),
        .Q(window_2_0_read_as_1_reg_1113[7]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[8] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[8]),
        .Q(window_2_0_read_as_1_reg_1113[8]),
        .R(1'b0));
  FDRE \window_2_0_read_as_1_reg_1113_reg[9] 
       (.C(ap_clk),
        .CE(window_2_0_read_as_1_reg_11130),
        .D(window_2_0_read_as_fu_116[9]),
        .Q(window_2_0_read_as_1_reg_1113[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[0]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[0]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[10]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[10] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[10]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[11]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[11] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[11]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[12]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[12] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[12]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[13]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[13] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[13]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[14]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[14] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[14]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[15]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[15] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[15]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[16]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[16] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[16]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[17]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[17] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[17]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[18]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[18] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[18]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[19]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[19] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[19]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[1]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[1] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[1]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[20]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[20] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[20]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[21]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[21] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[21]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[22]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[22] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[22]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[23]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[23] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[23]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[24]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[24] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[24]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[25]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[25] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[25]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[26]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[26] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[26]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[27]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[27] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[27]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[28]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[28] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[28]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[29]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[29] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[29]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[2]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[2] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[2]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[30]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[30] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[30]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[31]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[31] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[31]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[31]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[3]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[3] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[3]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[4]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[4] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[4]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[5]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[5] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[5]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[6]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[6] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[6]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[7]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[7] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[7]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[8]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[8] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[8]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \window_2_0_read_as_fu_116[9]_i_1 
       (.I0(\window_2_1_reg_333_reg_n_0_[9] ),
        .I1(ap_enable_reg_pp3_iter3),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .I3(window_2_0_reg_344[9]),
        .O(ap_phi_mux_window_2_0_phi_fu_347_p4[9]));
  FDRE \window_2_0_read_as_fu_116_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[0]),
        .Q(window_2_0_read_as_fu_116[0]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[10] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[10]),
        .Q(window_2_0_read_as_fu_116[10]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[11] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[11]),
        .Q(window_2_0_read_as_fu_116[11]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[12] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[12]),
        .Q(window_2_0_read_as_fu_116[12]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[13] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[13]),
        .Q(window_2_0_read_as_fu_116[13]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[14] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[14]),
        .Q(window_2_0_read_as_fu_116[14]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[15] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[15]),
        .Q(window_2_0_read_as_fu_116[15]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[16] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[16]),
        .Q(window_2_0_read_as_fu_116[16]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[17] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[17]),
        .Q(window_2_0_read_as_fu_116[17]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[18] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[18]),
        .Q(window_2_0_read_as_fu_116[18]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[19] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[19]),
        .Q(window_2_0_read_as_fu_116[19]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[1]),
        .Q(window_2_0_read_as_fu_116[1]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[20] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[20]),
        .Q(window_2_0_read_as_fu_116[20]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[21] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[21]),
        .Q(window_2_0_read_as_fu_116[21]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[22] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[22]),
        .Q(window_2_0_read_as_fu_116[22]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[23] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[23]),
        .Q(window_2_0_read_as_fu_116[23]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[24] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[24]),
        .Q(window_2_0_read_as_fu_116[24]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[25] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[25]),
        .Q(window_2_0_read_as_fu_116[25]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[26] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[26]),
        .Q(window_2_0_read_as_fu_116[26]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[27] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[27]),
        .Q(window_2_0_read_as_fu_116[27]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[28] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[28]),
        .Q(window_2_0_read_as_fu_116[28]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[29] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[29]),
        .Q(window_2_0_read_as_fu_116[29]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[2]),
        .Q(window_2_0_read_as_fu_116[2]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[30] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[30]),
        .Q(window_2_0_read_as_fu_116[30]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[31] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[31]),
        .Q(window_2_0_read_as_fu_116[31]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[3]),
        .Q(window_2_0_read_as_fu_116[3]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[4]),
        .Q(window_2_0_read_as_fu_116[4]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[5]),
        .Q(window_2_0_read_as_fu_116[5]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[6]),
        .Q(window_2_0_read_as_fu_116[6]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[7]),
        .Q(window_2_0_read_as_fu_116[7]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[8] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[8]),
        .Q(window_2_0_read_as_fu_116[8]),
        .R(1'b0));
  FDRE \window_2_0_read_as_fu_116_reg[9] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_mux_window_2_0_phi_fu_347_p4[9]),
        .Q(window_2_0_read_as_fu_116[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[0]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[0] ),
        .O(\window_2_0_reg_344[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[10]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[10] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[10] ),
        .O(\window_2_0_reg_344[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[11]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[11] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[11] ),
        .O(\window_2_0_reg_344[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[12]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[12] ),
        .O(\window_2_0_reg_344[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[13]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[13] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[13] ),
        .O(\window_2_0_reg_344[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[14]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[14] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[14] ),
        .O(\window_2_0_reg_344[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[15]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[15] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[15] ),
        .O(\window_2_0_reg_344[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[16]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[16] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[16] ),
        .O(\window_2_0_reg_344[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[17]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[17] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[17] ),
        .O(\window_2_0_reg_344[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[18]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[18] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[18] ),
        .O(\window_2_0_reg_344[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[19]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[19] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[19] ),
        .O(\window_2_0_reg_344[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[1]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[1] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[1] ),
        .O(\window_2_0_reg_344[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[20]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[20] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[20] ),
        .O(\window_2_0_reg_344[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[21]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[21] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[21] ),
        .O(\window_2_0_reg_344[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[22]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[22] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[22] ),
        .O(\window_2_0_reg_344[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[23]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[23] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[23] ),
        .O(\window_2_0_reg_344[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[24]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[24] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[24] ),
        .O(\window_2_0_reg_344[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[25]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[25] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[25] ),
        .O(\window_2_0_reg_344[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[26]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[26] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[26] ),
        .O(\window_2_0_reg_344[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[27]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[27] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[27] ),
        .O(\window_2_0_reg_344[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[28]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[28] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[28] ),
        .O(\window_2_0_reg_344[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[29]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[29] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[29] ),
        .O(\window_2_0_reg_344[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[2]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[2] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[2] ),
        .O(\window_2_0_reg_344[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[30]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[30] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[30] ),
        .O(\window_2_0_reg_344[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[31]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[31] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[31] ),
        .O(\window_2_0_reg_344[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[3]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[3] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[3] ),
        .O(\window_2_0_reg_344[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[4]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[4] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[4] ),
        .O(\window_2_0_reg_344[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[5]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[5] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[5] ),
        .O(\window_2_0_reg_344[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[6]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[6] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[6] ),
        .O(\window_2_0_reg_344[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[7]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[7] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[7] ),
        .O(\window_2_0_reg_344[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[8]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[8] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[8] ),
        .O(\window_2_0_reg_344[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_0_reg_344[9]_i_1 
       (.I0(\window_2_1_1_reg_253_reg_n_0_[9] ),
        .I1(ap_CS_fsm_state10),
        .I2(\window_2_1_reg_333_reg_n_0_[9] ),
        .O(\window_2_0_reg_344[9]_i_1_n_0 ));
  FDRE \window_2_0_reg_344_reg[0] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[0]_i_1_n_0 ),
        .Q(window_2_0_reg_344[0]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[10] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[10]_i_1_n_0 ),
        .Q(window_2_0_reg_344[10]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[11] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[11]_i_1_n_0 ),
        .Q(window_2_0_reg_344[11]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[12] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[12]_i_1_n_0 ),
        .Q(window_2_0_reg_344[12]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[13] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[13]_i_1_n_0 ),
        .Q(window_2_0_reg_344[13]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[14] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[14]_i_1_n_0 ),
        .Q(window_2_0_reg_344[14]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[15] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[15]_i_1_n_0 ),
        .Q(window_2_0_reg_344[15]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[16] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[16]_i_1_n_0 ),
        .Q(window_2_0_reg_344[16]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[17] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[17]_i_1_n_0 ),
        .Q(window_2_0_reg_344[17]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[18] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[18]_i_1_n_0 ),
        .Q(window_2_0_reg_344[18]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[19] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[19]_i_1_n_0 ),
        .Q(window_2_0_reg_344[19]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[1] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[1]_i_1_n_0 ),
        .Q(window_2_0_reg_344[1]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[20] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[20]_i_1_n_0 ),
        .Q(window_2_0_reg_344[20]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[21] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[21]_i_1_n_0 ),
        .Q(window_2_0_reg_344[21]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[22] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[22]_i_1_n_0 ),
        .Q(window_2_0_reg_344[22]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[23] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[23]_i_1_n_0 ),
        .Q(window_2_0_reg_344[23]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[24] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[24]_i_1_n_0 ),
        .Q(window_2_0_reg_344[24]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[25] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[25]_i_1_n_0 ),
        .Q(window_2_0_reg_344[25]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[26] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[26]_i_1_n_0 ),
        .Q(window_2_0_reg_344[26]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[27] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[27]_i_1_n_0 ),
        .Q(window_2_0_reg_344[27]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[28] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[28]_i_1_n_0 ),
        .Q(window_2_0_reg_344[28]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[29] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[29]_i_1_n_0 ),
        .Q(window_2_0_reg_344[29]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[2] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[2]_i_1_n_0 ),
        .Q(window_2_0_reg_344[2]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[30] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[30]_i_1_n_0 ),
        .Q(window_2_0_reg_344[30]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[31] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[31]_i_1_n_0 ),
        .Q(window_2_0_reg_344[31]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[3] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[3]_i_1_n_0 ),
        .Q(window_2_0_reg_344[3]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[4] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[4]_i_1_n_0 ),
        .Q(window_2_0_reg_344[4]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[5] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[5]_i_1_n_0 ),
        .Q(window_2_0_reg_344[5]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[6] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[6]_i_1_n_0 ),
        .Q(window_2_0_reg_344[6]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[7] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[7]_i_1_n_0 ),
        .Q(window_2_0_reg_344[7]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[8] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[8]_i_1_n_0 ),
        .Q(window_2_0_reg_344[8]),
        .R(1'b0));
  FDRE \window_2_0_reg_344_reg[9] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_0_reg_344[9]_i_1_n_0 ),
        .Q(window_2_0_reg_344[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00002000)) 
    \window_2_1_1_reg_253[31]_i_1 
       (.I0(\cond1_reg_968_reg_n_0_[0] ),
        .I1(exitcond_flatten_reg_931),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\cond_mid2_reg_950_reg_n_0_[0] ),
        .O(window_2_1_1_reg_253));
  FDRE \window_2_1_1_reg_253_reg[0] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[0]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[10] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[10]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[11] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[11]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[12] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[12]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[13] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[13]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[14] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[14]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[15] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[15]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[16] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[16]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[17] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[17]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[18] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[18]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[19] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[19]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[1] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[1]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[20] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[20]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[21] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[21]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[22] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[22]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[23] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[23]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[24] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[24]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[25] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[25]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[26] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[26]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[27] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[27]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[28] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[28]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[29] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[29]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[2] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[2]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[30] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[30]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[31] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[31]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[3] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[3]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[4] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[4]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[5] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[5]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[6] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[6]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[7] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[7]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[8] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[8]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_2_1_1_reg_253_reg[9] 
       (.C(ap_clk),
        .CE(window_2_1_1_reg_253),
        .D(window_1_1_2_fu_518_p3[9]),
        .Q(\window_2_1_1_reg_253_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[0]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[0]),
        .O(\window_2_1_reg_333[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[10]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[10] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[10]),
        .O(\window_2_1_reg_333[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[11]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[11] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[11]),
        .O(\window_2_1_reg_333[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[12]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[12] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[12]),
        .O(\window_2_1_reg_333[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[13]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[13] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[13]),
        .O(\window_2_1_reg_333[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[14]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[14] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[14]),
        .O(\window_2_1_reg_333[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[15]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[15] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[15]),
        .O(\window_2_1_reg_333[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[16]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[16] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[16]),
        .O(\window_2_1_reg_333[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[17]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[17] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[17]),
        .O(\window_2_1_reg_333[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[18]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[18] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[18]),
        .O(\window_2_1_reg_333[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[19]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[19] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[19]),
        .O(\window_2_1_reg_333[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[1]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[1] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[1]),
        .O(\window_2_1_reg_333[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[20]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[20] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[20]),
        .O(\window_2_1_reg_333[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[21]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[21] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[21]),
        .O(\window_2_1_reg_333[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[22]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[22] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[22]),
        .O(\window_2_1_reg_333[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[23]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[23] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[23]),
        .O(\window_2_1_reg_333[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[24]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[24] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[24]),
        .O(\window_2_1_reg_333[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[25]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[25] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[25]),
        .O(\window_2_1_reg_333[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[26]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[26] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[26]),
        .O(\window_2_1_reg_333[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[27]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[27] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[27]),
        .O(\window_2_1_reg_333[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[28]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[28] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[28]),
        .O(\window_2_1_reg_333[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[29]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[29] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[29]),
        .O(\window_2_1_reg_333[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[2]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[2] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[2]),
        .O(\window_2_1_reg_333[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[30]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[30] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[30]),
        .O(\window_2_1_reg_333[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAABA)) 
    \window_2_1_reg_333[31]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(line_buf_1_U_n_35),
        .I2(ap_enable_reg_pp3_iter3),
        .I3(\exitcond_flatten9_reg_1039_pp3_iter2_reg_reg_n_0_[0] ),
        .O(window_2_1_reg_333));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[31]_i_2 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[31] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[31]),
        .O(\window_2_1_reg_333[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[3]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[3] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[3]),
        .O(\window_2_1_reg_333[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[4]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[4] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[4]),
        .O(\window_2_1_reg_333[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[5]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[5] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[5]),
        .O(\window_2_1_reg_333[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[6]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[6] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[6]),
        .O(\window_2_1_reg_333[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[7]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[7] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[7]),
        .O(\window_2_1_reg_333[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[8]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[8] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[8]),
        .O(\window_2_1_reg_333[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \window_2_1_reg_333[9]_i_1 
       (.I0(\window_2_2_1_reg_241_reg_n_0_[9] ),
        .I1(ap_CS_fsm_state10),
        .I2(window_2_2_reg_378[9]),
        .O(\window_2_1_reg_333[9]_i_1_n_0 ));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[0] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[0]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[10] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[10] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[10]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[11] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[11] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[11]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[12] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[12] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[12]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[13] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[13] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[13]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[14] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[14] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[14]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[15] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[15] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[15]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[16] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[16] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[16]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[17] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[17] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[17]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[18] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[18] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[18]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[19] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[19] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[19]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[1] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[1]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[20] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[20] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[20]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[21] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[21] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[21]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[22] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[22] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[22]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[23] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[23] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[23]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[24] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[24] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[24]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[25] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[25] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[25]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[26] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[26] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[26]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[27] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[27] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[27]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[28] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[28] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[28]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[29] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[29] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[29]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[2] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[2]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[30] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[30] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[30]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[31] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[31] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[31]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[3] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[3]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[4] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[4]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[5] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[5]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[6] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[6]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[7] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[7]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[8] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[8]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_pp3_iter3_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_block_pp3_stage0_subdone11_in),
        .D(\window_2_1_reg_333_reg_n_0_[9] ),
        .Q(window_2_1_reg_333_pp3_iter3_reg[9]),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[0] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[0]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[10] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[10]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[11] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[11]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[12] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[12]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[13] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[13]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[14] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[14]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[15] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[15]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[16] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[16]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[17] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[17]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[18] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[18]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[19] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[19]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[1] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[1]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[20] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[20]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[21] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[21]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[22] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[22]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[23] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[23]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[24] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[24]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[25] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[25]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[26] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[26]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[27] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[27]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[28] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[28]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[29] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[29]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[2] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[2]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[30] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[30]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[31] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[31]_i_2_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[3] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[3]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[4] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[4]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[5] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[5]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[6] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[6]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[7] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[7]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[8] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[8]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_2_1_reg_333_reg[9] 
       (.C(ap_clk),
        .CE(window_2_1_reg_333),
        .D(\window_2_1_reg_333[9]_i_1_n_0 ),
        .Q(\window_2_1_reg_333_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001000)) 
    \window_2_2_1_reg_241[31]_i_1 
       (.I0(\cond1_reg_968_reg_n_0_[0] ),
        .I1(exitcond_flatten_reg_931),
        .I2(ap_enable_reg_pp2_iter1),
        .I3(ap_CS_fsm_pp2_stage0),
        .I4(\cond_mid2_reg_950_reg_n_0_[0] ),
        .O(\window_2_2_1_reg_241[31]_i_1_n_0 ));
  FDRE \window_2_2_1_reg_241_reg[0] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[0]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[10] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[10]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[11] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[11]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[12] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[12]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[13] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[13]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[14] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[14]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[15] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[15]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[16] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[16]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[17] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[17]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[18] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[18]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[19] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[19]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[1] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[1]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[20] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[20]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[21] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[21]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[22] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[22]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[23] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[23]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[24] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[24]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[25] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[25]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[26] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[26]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[27] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[27]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[28] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[28]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[29] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[29]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[2] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[2]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[30] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[30]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[31] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[31]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[3] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[3]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[4] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[4]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[5] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[5]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[6] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[6]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[7] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[7]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[8] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[8]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \window_2_2_1_reg_241_reg[9] 
       (.C(ap_clk),
        .CE(\window_2_2_1_reg_241[31]_i_1_n_0 ),
        .D(window_1_1_2_fu_518_p3[9]),
        .Q(\window_2_2_1_reg_241_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[0]),
        .Q(window_2_2_reg_378[0]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[10] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[10]),
        .Q(window_2_2_reg_378[10]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[11] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[11]),
        .Q(window_2_2_reg_378[11]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[12] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[12]),
        .Q(window_2_2_reg_378[12]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[13] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[13]),
        .Q(window_2_2_reg_378[13]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[14] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[14]),
        .Q(window_2_2_reg_378[14]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[15] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[15]),
        .Q(window_2_2_reg_378[15]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[16] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[16]),
        .Q(window_2_2_reg_378[16]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[17] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[17]),
        .Q(window_2_2_reg_378[17]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[18] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[18]),
        .Q(window_2_2_reg_378[18]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[19] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[19]),
        .Q(window_2_2_reg_378[19]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[1]),
        .Q(window_2_2_reg_378[1]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[20] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[20]),
        .Q(window_2_2_reg_378[20]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[21] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[21]),
        .Q(window_2_2_reg_378[21]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[22] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[22]),
        .Q(window_2_2_reg_378[22]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[23] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[23]),
        .Q(window_2_2_reg_378[23]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[24] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[24]),
        .Q(window_2_2_reg_378[24]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[25] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[25]),
        .Q(window_2_2_reg_378[25]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[26] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[26]),
        .Q(window_2_2_reg_378[26]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[27] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[27]),
        .Q(window_2_2_reg_378[27]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[28] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[28]),
        .Q(window_2_2_reg_378[28]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[29] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[29]),
        .Q(window_2_2_reg_378[29]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[2]),
        .Q(window_2_2_reg_378[2]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[30] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[30]),
        .Q(window_2_2_reg_378[30]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[31] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[31]),
        .Q(window_2_2_reg_378[31]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[3]),
        .Q(window_2_2_reg_378[3]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[4]),
        .Q(window_2_2_reg_378[4]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[5]),
        .Q(window_2_2_reg_378[5]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[6]),
        .Q(window_2_2_reg_378[6]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[7]),
        .Q(window_2_2_reg_378[7]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[8] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[8]),
        .Q(window_2_2_reg_378[8]),
        .R(1'b0));
  FDRE \window_2_2_reg_378_reg[9] 
       (.C(ap_clk),
        .CE(ce1),
        .D(ap_phi_reg_pp3_iter2_window_2_2_reg_378[9]),
        .Q(window_2_2_reg_378[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \x1_reg_207[0]_i_1 
       (.I0(\x1_reg_207_reg_n_0_[0] ),
        .I1(x_2_reg_926[0]),
        .I2(we040_out),
        .I3(ap_CS_fsm_state4),
        .O(\x1_reg_207[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \x1_reg_207[1]_i_1 
       (.I0(\x1_reg_207_reg_n_0_[1] ),
        .I1(x_2_reg_926[1]),
        .I2(we040_out),
        .I3(ap_CS_fsm_state4),
        .O(\x1_reg_207[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC0CA)) 
    \x1_reg_207[2]_i_1 
       (.I0(\x1_reg_207_reg_n_0_[2] ),
        .I1(x_2_reg_926[2]),
        .I2(we040_out),
        .I3(ap_CS_fsm_state4),
        .O(\x1_reg_207[2]_i_1_n_0 ));
  FDRE \x1_reg_207_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x1_reg_207[0]_i_1_n_0 ),
        .Q(\x1_reg_207_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \x1_reg_207_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x1_reg_207[1]_i_1_n_0 ),
        .Q(\x1_reg_207_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \x1_reg_207_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x1_reg_207[2]_i_1_n_0 ),
        .Q(\x1_reg_207_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \x3_reg_289[0]_i_1 
       (.I0(x3_reg_289[0]),
        .O(x_3_fu_512_p2[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \x3_reg_289[1]_i_1 
       (.I0(x3_reg_289[1]),
        .I1(x3_reg_289[0]),
        .O(x_3_fu_512_p2[1]));
  FDSE \x3_reg_289_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2190),
        .D(x_3_fu_512_p2[0]),
        .Q(x3_reg_289[0]),
        .S(indvar_flatten_reg_219));
  FDRE \x3_reg_289_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_reg_2190),
        .D(x_3_fu_512_p2[1]),
        .Q(x3_reg_289[1]),
        .R(indvar_flatten_reg_219));
  LUT6 #(
    .INIT(64'hFFFF4FFF00007000)) 
    \x_1_reg_917[0]_i_1 
       (.I0(\x_reg_195_reg_n_0_[0] ),
        .I1(\x_1_reg_917[2]_i_2_n_0 ),
        .I2(\x_1_reg_917[1]_i_2_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(line_buf_0_U_n_33),
        .I5(x_1_reg_917[0]),
        .O(\x_1_reg_917[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF9FFF00009000)) 
    \x_1_reg_917[1]_i_1 
       (.I0(\x_1_reg_917[2]_i_3_n_0 ),
        .I1(x_1_fu_398_p2),
        .I2(\x_1_reg_917[1]_i_2_n_0 ),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(line_buf_0_U_n_33),
        .I5(x_1_reg_917[1]),
        .O(\x_1_reg_917[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAFFFAEFEFFFFF)) 
    \x_1_reg_917[1]_i_2 
       (.I0(x_1_fu_398_p2),
        .I1(\x_reg_195_reg_n_0_[1] ),
        .I2(\x_1_reg_917[2]_i_2_n_0 ),
        .I3(x_1_reg_917[1]),
        .I4(\x_reg_195_reg_n_0_[2] ),
        .I5(x_1_reg_917[2]),
        .O(\x_1_reg_917[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAE2E21DA2)) 
    \x_1_reg_917[2]_i_1 
       (.I0(x_1_reg_917[2]),
        .I1(\x_1_reg_917[2]_i_2_n_0 ),
        .I2(\x_reg_195_reg_n_0_[2] ),
        .I3(\x_1_reg_917[2]_i_3_n_0 ),
        .I4(x_1_fu_398_p2),
        .I5(\x_1_reg_917[2]_i_5_n_0 ),
        .O(\x_1_reg_917[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \x_1_reg_917[2]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(\exitcond1_reg_913_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage0),
        .O(\x_1_reg_917[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \x_1_reg_917[2]_i_3 
       (.I0(\x_reg_195_reg_n_0_[1] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond1_reg_913_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_917[1]),
        .O(\x_1_reg_917[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \x_1_reg_917[2]_i_4 
       (.I0(\x_reg_195_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(\exitcond1_reg_913_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(x_1_reg_917[0]),
        .O(x_1_fu_398_p2));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h5575FFFF)) 
    \x_1_reg_917[2]_i_5 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(in_stream_V_empty_n),
        .I2(ap_enable_reg_pp0_iter1_reg_n_0),
        .I3(\exitcond1_reg_913_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .O(\x_1_reg_917[2]_i_5_n_0 ));
  FDRE \x_1_reg_917_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_1_reg_917[0]_i_1_n_0 ),
        .Q(x_1_reg_917[0]),
        .R(1'b0));
  FDRE \x_1_reg_917_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_1_reg_917[1]_i_1_n_0 ),
        .Q(x_1_reg_917[1]),
        .R(1'b0));
  FDRE \x_1_reg_917_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_1_reg_917[2]_i_1_n_0 ),
        .Q(x_1_reg_917[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5155FFFF5D550000)) 
    \x_2_reg_926[0]_i_1 
       (.I0(\x1_reg_207_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond4_reg_922_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_9260),
        .I5(x_2_reg_926[0]),
        .O(\x_2_reg_926[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h487BFFFF7B480000)) 
    \x_2_reg_926[1]_i_1 
       (.I0(\x1_reg_207_reg_n_0_[1] ),
        .I1(\x_2_reg_926[2]_i_2_n_0 ),
        .I2(\x1_reg_207_reg_n_0_[0] ),
        .I3(x_2_reg_926[0]),
        .I4(x_2_reg_9260),
        .I5(x_2_reg_926[1]),
        .O(\x_2_reg_926[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD2DFFFF88780000)) 
    \x_2_reg_926[2]_i_1 
       (.I0(\x_2_reg_926[2]_i_2_n_0 ),
        .I1(\x1_reg_207_reg_n_0_[2] ),
        .I2(\x_2_reg_926[2]_i_3_n_0 ),
        .I3(x_2_fu_415_p2),
        .I4(x_2_reg_9260),
        .I5(x_2_reg_926[2]),
        .O(\x_2_reg_926[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \x_2_reg_926[2]_i_2 
       (.I0(ap_enable_reg_pp1_iter1_reg_n_0),
        .I1(\exitcond4_reg_922_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp1_stage0),
        .O(\x_2_reg_926[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAA2AA)) 
    \x_2_reg_926[2]_i_3 
       (.I0(\x1_reg_207_reg_n_0_[1] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond4_reg_922_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_926[1]),
        .O(\x_2_reg_926[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h51555D55)) 
    \x_2_reg_926[2]_i_4 
       (.I0(\x1_reg_207_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg_n_0),
        .I2(\exitcond4_reg_922_reg_n_0_[0] ),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(x_2_reg_926[0]),
        .O(x_2_fu_415_p2));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h88888088)) 
    \x_2_reg_926[2]_i_5 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(in_stream_V_empty_n),
        .I3(ap_enable_reg_pp1_iter1_reg_n_0),
        .I4(\exitcond4_reg_922_reg_n_0_[0] ),
        .O(x_2_reg_9260));
  FDRE \x_2_reg_926_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_2_reg_926[0]_i_1_n_0 ),
        .Q(x_2_reg_926[0]),
        .R(1'b0));
  FDRE \x_2_reg_926_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_2_reg_926[1]_i_1_n_0 ),
        .Q(x_2_reg_926[1]),
        .R(1'b0));
  FDRE \x_2_reg_926_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_2_reg_926[2]_i_1_n_0 ),
        .Q(x_2_reg_926[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \x_4_reg_1074[0]_i_1 
       (.I0(x_4_fu_681_p2),
        .I1(indvar_flatten7_reg_3000),
        .I2(x_4_reg_1074[0]),
        .O(\x_4_reg_1074[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \x_4_reg_1074[1]_i_1 
       (.I0(x_assign_mid2_fu_625_p3[1]),
        .I1(x_4_fu_681_p2),
        .I2(indvar_flatten7_reg_3000),
        .I3(x_4_reg_1074[1]),
        .O(\x_4_reg_1074[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40BBFFFF70880000)) 
    \x_4_reg_1074[2]_i_1 
       (.I0(x_assign_reg_322[2]),
        .I1(line_buf_0_U_n_37),
        .I2(x_assign_mid2_fu_625_p3[1]),
        .I3(\x_4_reg_1074[2]_i_3_n_0 ),
        .I4(indvar_flatten7_reg_3000),
        .I5(x_4_reg_1074[2]),
        .O(\x_4_reg_1074[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAAA8AAA)) 
    \x_4_reg_1074[2]_i_3 
       (.I0(x_assign_reg_322[0]),
        .I1(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(x_4_reg_1074[0]),
        .O(\x_4_reg_1074[2]_i_3_n_0 ));
  FDRE \x_4_reg_1074_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_4_reg_1074[0]_i_1_n_0 ),
        .Q(x_4_reg_1074[0]),
        .R(1'b0));
  FDRE \x_4_reg_1074_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_4_reg_1074[1]_i_1_n_0 ),
        .Q(x_4_reg_1074[1]),
        .R(1'b0));
  FDRE \x_4_reg_1074_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_4_reg_1074[2]_i_1_n_0 ),
        .Q(x_4_reg_1074[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \x_assign_reg_322[0]_i_1 
       (.I0(x_4_reg_1074[0]),
        .I1(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(line_buf_1_U_n_35),
        .I5(x_assign_reg_322[0]),
        .O(\x_assign_reg_322[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \x_assign_reg_322[1]_i_1 
       (.I0(x_4_reg_1074[1]),
        .I1(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(line_buf_1_U_n_35),
        .I5(x_assign_reg_322[1]),
        .O(\x_assign_reg_322[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \x_assign_reg_322[2]_i_1 
       (.I0(x_4_reg_1074[2]),
        .I1(\exitcond_flatten9_reg_1039_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp3_stage0),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(line_buf_1_U_n_35),
        .I5(x_assign_reg_322[2]),
        .O(\x_assign_reg_322[2]_i_1_n_0 ));
  FDRE \x_assign_reg_322_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_assign_reg_322[0]_i_1_n_0 ),
        .Q(x_assign_reg_322[0]),
        .R(ap_CS_fsm_state10));
  FDRE \x_assign_reg_322_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_assign_reg_322[1]_i_1_n_0 ),
        .Q(x_assign_reg_322[1]),
        .R(ap_CS_fsm_state10));
  FDRE \x_assign_reg_322_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_assign_reg_322[2]_i_1_n_0 ),
        .Q(x_assign_reg_322[2]),
        .R(ap_CS_fsm_state10));
  LUT5 #(
    .INIT(32'hCFCACACA)) 
    \x_reg_195[0]_i_1 
       (.I0(\x_reg_195_reg_n_0_[0] ),
        .I1(x_1_reg_917[0]),
        .I2(we0),
        .I3(ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\x_reg_195[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hCFCACACA)) 
    \x_reg_195[1]_i_1 
       (.I0(\x_reg_195_reg_n_0_[1] ),
        .I1(x_1_reg_917[1]),
        .I2(we0),
        .I3(ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\x_reg_195[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hC0CACACA)) 
    \x_reg_195[2]_i_1 
       (.I0(\x_reg_195_reg_n_0_[2] ),
        .I1(x_1_reg_917[2]),
        .I2(we0),
        .I3(ap_start),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(\x_reg_195[2]_i_1_n_0 ));
  FDRE \x_reg_195_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_reg_195[0]_i_1_n_0 ),
        .Q(\x_reg_195_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \x_reg_195_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_reg_195[1]_i_1_n_0 ),
        .Q(\x_reg_195_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \x_reg_195_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\x_reg_195[2]_i_1_n_0 ),
        .Q(\x_reg_195_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFCFFFFFFACAAAAAA)) 
    \y2_reg_230[0]_i_1 
       (.I0(\y2_reg_230_reg_n_0_[0] ),
        .I1(tmp_9_mid2_v_reg_940[0]),
        .I2(exitcond_flatten_reg_931),
        .I3(ap_enable_reg_pp2_iter1),
        .I4(ap_CS_fsm_pp2_stage0),
        .I5(ap_CS_fsm_state7),
        .O(\y2_reg_230[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C000000ACAAAAAA)) 
    \y2_reg_230[1]_i_1 
       (.I0(\y2_reg_230_reg_n_0_[1] ),
        .I1(tmp_9_mid2_v_reg_940[1]),
        .I2(exitcond_flatten_reg_931),
        .I3(ap_enable_reg_pp2_iter1),
        .I4(ap_CS_fsm_pp2_stage0),
        .I5(ap_CS_fsm_state7),
        .O(\y2_reg_230[1]_i_1_n_0 ));
  FDRE \y2_reg_230_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y2_reg_230[0]_i_1_n_0 ),
        .Q(\y2_reg_230_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \y2_reg_230_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y2_reg_230[1]_i_1_n_0 ),
        .Q(\y2_reg_230_reg_n_0_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h78)) 
    \y_assign_reg_311[0]_i_1 
       (.I0(\y_assign_reg_311[2]_i_2_n_0 ),
        .I1(indvar_flatten7_reg_3000),
        .I2(\y_assign_reg_311_reg_n_0_[0] ),
        .O(\y_assign_reg_311[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_assign_reg_311[1]_i_1 
       (.I0(\y_assign_reg_311_reg_n_0_[0] ),
        .I1(indvar_flatten7_reg_3000),
        .I2(\y_assign_reg_311[2]_i_2_n_0 ),
        .I3(\y_assign_reg_311_reg_n_0_[1] ),
        .O(\y_assign_reg_311[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_assign_reg_311[2]_i_1 
       (.I0(\y_assign_reg_311_reg_n_0_[1] ),
        .I1(\y_assign_reg_311_reg_n_0_[0] ),
        .I2(indvar_flatten7_reg_3000),
        .I3(\y_assign_reg_311[2]_i_2_n_0 ),
        .I4(\y_assign_reg_311_reg_n_0_[2] ),
        .O(\y_assign_reg_311[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8308800)) 
    \y_assign_reg_311[2]_i_2 
       (.I0(x_assign_reg_322[2]),
        .I1(line_buf_0_U_n_37),
        .I2(x_4_reg_1074[2]),
        .I3(x_assign_reg_322[0]),
        .I4(x_4_reg_1074[0]),
        .I5(x_assign_mid2_fu_625_p3[1]),
        .O(\y_assign_reg_311[2]_i_2_n_0 ));
  FDRE \y_assign_reg_311_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y_assign_reg_311[0]_i_1_n_0 ),
        .Q(\y_assign_reg_311_reg_n_0_[0] ),
        .R(ap_CS_fsm_state10));
  FDRE \y_assign_reg_311_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y_assign_reg_311[1]_i_1_n_0 ),
        .Q(\y_assign_reg_311_reg_n_0_[1] ),
        .R(ap_CS_fsm_state10));
  FDRE \y_assign_reg_311_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\y_assign_reg_311[2]_i_1_n_0 ),
        .Q(\y_assign_reg_311_reg_n_0_[2] ),
        .R(ap_CS_fsm_state10));
endmodule

(* ORIG_REF_NAME = "do_convolution_libkb" *) 
module design_1_do_convolution_0_0_do_convolution_libkb
   (D,
    we0,
    ram_reg,
    x_assign_mid2_fu_625_p3,
    x_4_fu_681_p2,
    \line_buf_1_addr_2_reg_1086_reg[2] ,
    \window_2_1_1_reg_253_reg[31] ,
    ap_clk,
    E,
    Q,
    in_stream_V_dout,
    ram_reg_0,
    WEBWE,
    in_stream_V_empty_n,
    \ap_CS_fsm_reg[7] ,
    \exitcond1_reg_913_reg[0] ,
    ap_enable_reg_pp0_iter1_reg,
    \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ,
    ap_enable_reg_pp3_iter0,
    \ap_CS_fsm_reg[5] ,
    \x3_reg_289_reg[1] ,
    \x_reg_195_reg[1] ,
    \x_reg_195_reg[0] ,
    \x_reg_195_reg[2] ,
    x_4_reg_1074,
    x_assign_reg_322,
    \exitcond_flatten9_reg_1039_reg[0] ,
    ap_enable_reg_pp3_iter1,
    tmp_10_reg_945);
  output [31:0]D;
  output we0;
  output ram_reg;
  output [1:0]x_assign_mid2_fu_625_p3;
  output [0:0]x_4_fu_681_p2;
  output \line_buf_1_addr_2_reg_1086_reg[2] ;
  output [31:0]\window_2_1_1_reg_253_reg[31] ;
  input ap_clk;
  input [0:0]E;
  input [2:0]Q;
  input [31:0]in_stream_V_dout;
  input [31:0]ram_reg_0;
  input [0:0]WEBWE;
  input in_stream_V_empty_n;
  input [1:0]\ap_CS_fsm_reg[7] ;
  input \exitcond1_reg_913_reg[0] ;
  input ap_enable_reg_pp0_iter1_reg;
  input \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ;
  input ap_enable_reg_pp3_iter0;
  input \ap_CS_fsm_reg[5] ;
  input [1:0]\x3_reg_289_reg[1] ;
  input \x_reg_195_reg[1] ;
  input \x_reg_195_reg[0] ;
  input \x_reg_195_reg[2] ;
  input [2:0]x_4_reg_1074;
  input [2:0]x_assign_reg_322;
  input \exitcond_flatten9_reg_1039_reg[0] ;
  input ap_enable_reg_pp3_iter1;
  input tmp_10_reg_945;

  wire [31:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]WEBWE;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1;
  wire \exitcond1_reg_913_reg[0] ;
  wire \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ;
  wire \exitcond_flatten9_reg_1039_reg[0] ;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire \line_buf_1_addr_2_reg_1086_reg[2] ;
  wire ram_reg;
  wire [31:0]ram_reg_0;
  wire tmp_10_reg_945;
  wire we0;
  wire [31:0]\window_2_1_1_reg_253_reg[31] ;
  wire [1:0]\x3_reg_289_reg[1] ;
  wire [0:0]x_4_fu_681_p2;
  wire [2:0]x_4_reg_1074;
  wire [1:0]x_assign_mid2_fu_625_p3;
  wire [2:0]x_assign_reg_322;
  wire \x_reg_195_reg[0] ;
  wire \x_reg_195_reg[1] ;
  wire \x_reg_195_reg[2] ;

  design_1_do_convolution_0_0_do_convolution_libkb_ram_1 do_convolution_libkb_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(we0),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg),
        .ap_enable_reg_pp3_iter0(ap_enable_reg_pp3_iter0),
        .ap_enable_reg_pp3_iter1(ap_enable_reg_pp3_iter1),
        .\exitcond1_reg_913_reg[0] (\exitcond1_reg_913_reg[0] ),
        .\exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] (\exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ),
        .\exitcond_flatten9_reg_1039_reg[0] (\exitcond_flatten9_reg_1039_reg[0] ),
        .in_stream_V_dout(in_stream_V_dout),
        .in_stream_V_empty_n(in_stream_V_empty_n),
        .\line_buf_1_addr_2_reg_1086_reg[1] (x_assign_mid2_fu_625_p3[0]),
        .\line_buf_1_addr_2_reg_1086_reg[2] (\line_buf_1_addr_2_reg_1086_reg[2] ),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .tmp_10_reg_945(tmp_10_reg_945),
        .\window_2_1_1_reg_253_reg[31] (\window_2_1_1_reg_253_reg[31] ),
        .\x3_reg_289_reg[1] (\x3_reg_289_reg[1] ),
        .x_4_fu_681_p2(x_4_fu_681_p2),
        .x_4_reg_1074(x_4_reg_1074),
        .x_assign_mid2_fu_625_p3(x_assign_mid2_fu_625_p3[1]),
        .x_assign_reg_322(x_assign_reg_322),
        .\x_reg_195_reg[0] (\x_reg_195_reg[0] ),
        .\x_reg_195_reg[1] (\x_reg_195_reg[1] ),
        .\x_reg_195_reg[2] (\x_reg_195_reg[2] ));
endmodule

(* ORIG_REF_NAME = "do_convolution_libkb" *) 
module design_1_do_convolution_0_0_do_convolution_libkb_0
   (D,
    E,
    we040_out,
    WEBWE,
    ram_reg,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ap_clk,
    Q,
    in_stream_V_dout,
    \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ,
    in_stream_V_empty_n,
    \ap_CS_fsm_reg[7] ,
    \exitcond4_reg_922_reg[0] ,
    ap_enable_reg_pp1_iter1_reg,
    ap_enable_reg_pp3_iter1,
    \x3_reg_289_reg[1] ,
    \x1_reg_207_reg[1] ,
    \line_buf_1_addr_2_reg_1086_reg[2] ,
    \x1_reg_207_reg[0] ,
    \x1_reg_207_reg[2] ,
    ap_enable_reg_pp2_iter0,
    ap_enable_reg_pp3_iter2,
    \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ,
    exitcond_flatten9_reg_1039_pp3_iter3_reg,
    ap_enable_reg_pp3_iter4_reg,
    out_stream_V_full_n,
    tmp_13_reg_1092,
    \exitcond_flatten9_reg_1039_reg[0] );
  output [31:0]D;
  output [0:0]E;
  output we040_out;
  output [0:0]WEBWE;
  output ram_reg;
  output ram_reg_0;
  output ram_reg_1;
  output ram_reg_2;
  input ap_clk;
  input [2:0]Q;
  input [31:0]in_stream_V_dout;
  input [31:0]\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ;
  input in_stream_V_empty_n;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \exitcond4_reg_922_reg[0] ;
  input ap_enable_reg_pp1_iter1_reg;
  input ap_enable_reg_pp3_iter1;
  input [1:0]\x3_reg_289_reg[1] ;
  input \x1_reg_207_reg[1] ;
  input [2:0]\line_buf_1_addr_2_reg_1086_reg[2] ;
  input \x1_reg_207_reg[0] ;
  input \x1_reg_207_reg[2] ;
  input ap_enable_reg_pp2_iter0;
  input ap_enable_reg_pp3_iter2;
  input \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ;
  input exitcond_flatten9_reg_1039_pp3_iter3_reg;
  input ap_enable_reg_pp3_iter4_reg;
  input out_stream_V_full_n;
  input tmp_13_reg_1092;
  input \exitcond_flatten9_reg_1039_reg[0] ;

  wire [31:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]WEBWE;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter1_reg;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter1;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter4_reg;
  wire [31:0]\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ;
  wire \exitcond4_reg_922_reg[0] ;
  wire \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ;
  wire exitcond_flatten9_reg_1039_pp3_iter3_reg;
  wire \exitcond_flatten9_reg_1039_reg[0] ;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire [2:0]\line_buf_1_addr_2_reg_1086_reg[2] ;
  wire out_stream_V_full_n;
  wire ram_reg;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_2;
  wire tmp_13_reg_1092;
  wire we040_out;
  wire \x1_reg_207_reg[0] ;
  wire \x1_reg_207_reg[1] ;
  wire \x1_reg_207_reg[2] ;
  wire [1:0]\x3_reg_289_reg[1] ;

  design_1_do_convolution_0_0_do_convolution_libkb_ram do_convolution_libkb_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(we040_out),
        .WEBWE(WEBWE),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter1_reg(ap_enable_reg_pp1_iter1_reg),
        .ap_enable_reg_pp2_iter0(ap_enable_reg_pp2_iter0),
        .ap_enable_reg_pp3_iter1(ap_enable_reg_pp3_iter1),
        .ap_enable_reg_pp3_iter2(ap_enable_reg_pp3_iter2),
        .ap_enable_reg_pp3_iter4_reg(ap_enable_reg_pp3_iter4_reg),
        .\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] (\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ),
        .\exitcond4_reg_922_reg[0] (\exitcond4_reg_922_reg[0] ),
        .\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] (\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ),
        .exitcond_flatten9_reg_1039_pp3_iter3_reg(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .\exitcond_flatten9_reg_1039_reg[0] (\exitcond_flatten9_reg_1039_reg[0] ),
        .in_stream_V_dout(in_stream_V_dout),
        .in_stream_V_empty_n(in_stream_V_empty_n),
        .\line_buf_1_addr_2_reg_1086_reg[2] (\line_buf_1_addr_2_reg_1086_reg[2] ),
        .out_stream_V_full_n(out_stream_V_full_n),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .tmp_13_reg_1092(tmp_13_reg_1092),
        .\x1_reg_207_reg[0] (\x1_reg_207_reg[0] ),
        .\x1_reg_207_reg[1] (\x1_reg_207_reg[1] ),
        .\x1_reg_207_reg[2] (\x1_reg_207_reg[2] ),
        .\x3_reg_289_reg[1] (\x3_reg_289_reg[1] ));
endmodule

(* ORIG_REF_NAME = "do_convolution_libkb_ram" *) 
module design_1_do_convolution_0_0_do_convolution_libkb_ram
   (D,
    E,
    WEA,
    WEBWE,
    ram_reg_0,
    ram_reg_1,
    ram_reg_2,
    ram_reg_3,
    ap_clk,
    Q,
    in_stream_V_dout,
    \ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ,
    in_stream_V_empty_n,
    \ap_CS_fsm_reg[7] ,
    \exitcond4_reg_922_reg[0] ,
    ap_enable_reg_pp1_iter1_reg,
    ap_enable_reg_pp3_iter1,
    \x3_reg_289_reg[1] ,
    \x1_reg_207_reg[1] ,
    \line_buf_1_addr_2_reg_1086_reg[2] ,
    \x1_reg_207_reg[0] ,
    \x1_reg_207_reg[2] ,
    ap_enable_reg_pp2_iter0,
    ap_enable_reg_pp3_iter2,
    \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ,
    exitcond_flatten9_reg_1039_pp3_iter3_reg,
    ap_enable_reg_pp3_iter4_reg,
    out_stream_V_full_n,
    tmp_13_reg_1092,
    \exitcond_flatten9_reg_1039_reg[0] );
  output [31:0]D;
  output [0:0]E;
  output [0:0]WEA;
  output [0:0]WEBWE;
  output ram_reg_0;
  output ram_reg_1;
  output ram_reg_2;
  output ram_reg_3;
  input ap_clk;
  input [2:0]Q;
  input [31:0]in_stream_V_dout;
  input [31:0]\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ;
  input in_stream_V_empty_n;
  input [2:0]\ap_CS_fsm_reg[7] ;
  input \exitcond4_reg_922_reg[0] ;
  input ap_enable_reg_pp1_iter1_reg;
  input ap_enable_reg_pp3_iter1;
  input [1:0]\x3_reg_289_reg[1] ;
  input \x1_reg_207_reg[1] ;
  input [2:0]\line_buf_1_addr_2_reg_1086_reg[2] ;
  input \x1_reg_207_reg[0] ;
  input \x1_reg_207_reg[2] ;
  input ap_enable_reg_pp2_iter0;
  input ap_enable_reg_pp3_iter2;
  input \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ;
  input exitcond_flatten9_reg_1039_pp3_iter3_reg;
  input ap_enable_reg_pp3_iter4_reg;
  input out_stream_V_full_n;
  input tmp_13_reg_1092;
  input \exitcond_flatten9_reg_1039_reg[0] ;

  wire [31:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire [2:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter1_reg;
  wire ap_enable_reg_pp2_iter0;
  wire ap_enable_reg_pp3_iter1;
  wire ap_enable_reg_pp3_iter2;
  wire ap_enable_reg_pp3_iter4_reg;
  wire [31:0]\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ;
  wire ce0;
  wire \exitcond4_reg_922_reg[0] ;
  wire \exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ;
  wire exitcond_flatten9_reg_1039_pp3_iter3_reg;
  wire \exitcond_flatten9_reg_1039_reg[0] ;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire [2:0]\line_buf_1_addr_2_reg_1086_reg[2] ;
  wire out_stream_V_full_n;
  wire out_stream_V_write_INST_0_i_2_n_0;
  wire ram_reg_0;
  wire ram_reg_1;
  wire ram_reg_2;
  wire ram_reg_3;
  wire ram_reg_i_2_n_0;
  wire ram_reg_i_3_n_0;
  wire ram_reg_i_4__0_n_0;
  wire tmp_13_reg_1092;
  wire \x1_reg_207_reg[0] ;
  wire \x1_reg_207_reg[1] ;
  wire \x1_reg_207_reg[2] ;
  wire [1:0]\x3_reg_289_reg[1] ;
  wire NLW_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h7)) 
    in_stream_V_read_INST_0_i_1
       (.I0(ap_enable_reg_pp3_iter1),
        .I1(\ap_CS_fsm_reg[7] [2]),
        .O(ram_reg_3));
  LUT4 #(
    .INIT(16'h0800)) 
    in_stream_V_read_INST_0_i_2
       (.I0(in_stream_V_empty_n),
        .I1(\ap_CS_fsm_reg[7] [0]),
        .I2(\exitcond4_reg_922_reg[0] ),
        .I3(ap_enable_reg_pp1_iter1_reg),
        .O(WEA));
  LUT6 #(
    .INIT(64'h04FF040404040404)) 
    out_stream_V_write_INST_0_i_1
       (.I0(exitcond_flatten9_reg_1039_pp3_iter3_reg),
        .I1(ap_enable_reg_pp3_iter4_reg),
        .I2(out_stream_V_full_n),
        .I3(in_stream_V_empty_n),
        .I4(ap_enable_reg_pp3_iter1),
        .I5(out_stream_V_write_INST_0_i_2_n_0),
        .O(ram_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    out_stream_V_write_INST_0_i_2
       (.I0(tmp_13_reg_1092),
        .I1(\exitcond_flatten9_reg_1039_reg[0] ),
        .O(out_stream_V_write_INST_0_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "160" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,ram_reg_i_2_n_0,ram_reg_i_3_n_0,ram_reg_i_4__0_n_0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(in_stream_V_dout),
        .DIBDI(\ap_phi_reg_pp3_iter2_window_2_2_reg_378_reg[31] ),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(D),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce0),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT6 #(
    .INIT(64'hFF40FF40FFFFFF40)) 
    ram_reg_i_1__0
       (.I0(ram_reg_0),
        .I1(ap_enable_reg_pp3_iter1),
        .I2(\ap_CS_fsm_reg[7] [2]),
        .I3(ram_reg_1),
        .I4(ap_enable_reg_pp1_iter1_reg),
        .I5(ram_reg_2),
        .O(ce0));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    ram_reg_i_2
       (.I0(\x3_reg_289_reg[1] [1]),
        .I1(\x3_reg_289_reg[1] [0]),
        .I2(ram_reg_1),
        .I3(\x1_reg_207_reg[2] ),
        .I4(ram_reg_3),
        .I5(\line_buf_1_addr_2_reg_1086_reg[2] [2]),
        .O(ram_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ram_reg_i_2__0
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ram_reg_0),
        .I2(\exitcond_flatten9_reg_1039_pp3_iter1_reg_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hBFB0FFFFBFB00000)) 
    ram_reg_i_3
       (.I0(\x3_reg_289_reg[1] [0]),
        .I1(\x3_reg_289_reg[1] [1]),
        .I2(ram_reg_1),
        .I3(\x1_reg_207_reg[1] ),
        .I4(ram_reg_3),
        .I5(\line_buf_1_addr_2_reg_1086_reg[2] [1]),
        .O(ram_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFB8B8B800B8B8B8)) 
    ram_reg_i_4__0
       (.I0(\x3_reg_289_reg[1] [0]),
        .I1(ram_reg_1),
        .I2(\x1_reg_207_reg[0] ),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(\ap_CS_fsm_reg[7] [2]),
        .I5(\line_buf_1_addr_2_reg_1086_reg[2] [0]),
        .O(ram_reg_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    ram_reg_i_5__0
       (.I0(\exitcond4_reg_922_reg[0] ),
        .I1(ap_enable_reg_pp1_iter1_reg),
        .I2(in_stream_V_empty_n),
        .I3(\ap_CS_fsm_reg[7] [0]),
        .O(ram_reg_2));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_i_6
       (.I0(ap_enable_reg_pp3_iter2),
        .I1(ram_reg_0),
        .O(WEBWE));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_8
       (.I0(\ap_CS_fsm_reg[7] [1]),
        .I1(ap_enable_reg_pp2_iter0),
        .O(ram_reg_1));
endmodule

(* ORIG_REF_NAME = "do_convolution_libkb_ram" *) 
module design_1_do_convolution_0_0_do_convolution_libkb_ram_1
   (D,
    WEA,
    ram_reg_0,
    \line_buf_1_addr_2_reg_1086_reg[1] ,
    x_4_fu_681_p2,
    x_assign_mid2_fu_625_p3,
    \line_buf_1_addr_2_reg_1086_reg[2] ,
    \window_2_1_1_reg_253_reg[31] ,
    ap_clk,
    E,
    Q,
    in_stream_V_dout,
    ram_reg_1,
    WEBWE,
    in_stream_V_empty_n,
    \ap_CS_fsm_reg[7] ,
    \exitcond1_reg_913_reg[0] ,
    ap_enable_reg_pp0_iter1_reg,
    \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ,
    ap_enable_reg_pp3_iter0,
    \ap_CS_fsm_reg[5] ,
    \x3_reg_289_reg[1] ,
    \x_reg_195_reg[1] ,
    \x_reg_195_reg[0] ,
    \x_reg_195_reg[2] ,
    x_4_reg_1074,
    x_assign_reg_322,
    \exitcond_flatten9_reg_1039_reg[0] ,
    ap_enable_reg_pp3_iter1,
    tmp_10_reg_945);
  output [31:0]D;
  output [0:0]WEA;
  output ram_reg_0;
  output \line_buf_1_addr_2_reg_1086_reg[1] ;
  output [0:0]x_4_fu_681_p2;
  output [0:0]x_assign_mid2_fu_625_p3;
  output \line_buf_1_addr_2_reg_1086_reg[2] ;
  output [31:0]\window_2_1_1_reg_253_reg[31] ;
  input ap_clk;
  input [0:0]E;
  input [2:0]Q;
  input [31:0]in_stream_V_dout;
  input [31:0]ram_reg_1;
  input [0:0]WEBWE;
  input in_stream_V_empty_n;
  input [1:0]\ap_CS_fsm_reg[7] ;
  input \exitcond1_reg_913_reg[0] ;
  input ap_enable_reg_pp0_iter1_reg;
  input \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ;
  input ap_enable_reg_pp3_iter0;
  input \ap_CS_fsm_reg[5] ;
  input [1:0]\x3_reg_289_reg[1] ;
  input \x_reg_195_reg[1] ;
  input \x_reg_195_reg[0] ;
  input \x_reg_195_reg[2] ;
  input [2:0]x_4_reg_1074;
  input [2:0]x_assign_reg_322;
  input \exitcond_flatten9_reg_1039_reg[0] ;
  input ap_enable_reg_pp3_iter1;
  input tmp_10_reg_945;

  wire [31:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire [2:0]address0;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp3_iter0;
  wire ap_enable_reg_pp3_iter1;
  wire ce01_out;
  wire \exitcond1_reg_913_reg[0] ;
  wire \exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ;
  wire \exitcond_flatten9_reg_1039_reg[0] ;
  wire [31:0]in_stream_V_dout;
  wire in_stream_V_empty_n;
  wire \line_buf_1_addr_2_reg_1086_reg[1] ;
  wire \line_buf_1_addr_2_reg_1086_reg[2] ;
  wire ram_reg_0;
  wire [31:0]ram_reg_1;
  wire ram_reg_i_9_n_0;
  wire tmp_10_reg_945;
  wire [31:0]\window_2_1_1_reg_253_reg[31] ;
  wire [1:0]\x3_reg_289_reg[1] ;
  wire [0:0]x_4_fu_681_p2;
  wire [2:0]x_4_reg_1074;
  wire [0:0]x_assign_mid2_fu_625_p3;
  wire [2:0]x_assign_reg_322;
  wire \x_reg_195_reg[0] ;
  wire \x_reg_195_reg[1] ;
  wire \x_reg_195_reg[2] ;
  wire NLW_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_ram_reg_RDADDRECC_UNCONNECTED;

  LUT4 #(
    .INIT(16'h0800)) 
    in_stream_V_read_INST_0_i_3
       (.I0(in_stream_V_empty_n),
        .I1(\ap_CS_fsm_reg[7] [0]),
        .I2(\exitcond1_reg_913_reg[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .O(WEA));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBAAA8AAA)) 
    \line_buf_1_addr_2_reg_1086[1]_i_1 
       (.I0(x_assign_reg_322[1]),
        .I1(\exitcond_flatten9_reg_1039_reg[0] ),
        .I2(\ap_CS_fsm_reg[7] [1]),
        .I3(ap_enable_reg_pp3_iter1),
        .I4(x_4_reg_1074[1]),
        .O(\line_buf_1_addr_2_reg_1086_reg[1] ));
  LUT6 #(
    .INIT(64'hAFAFBB000000BB00)) 
    \line_buf_1_addr_2_reg_1086[2]_i_1 
       (.I0(\line_buf_1_addr_2_reg_1086_reg[1] ),
        .I1(x_4_reg_1074[0]),
        .I2(x_assign_reg_322[0]),
        .I3(x_4_reg_1074[2]),
        .I4(\line_buf_1_addr_2_reg_1086_reg[2] ),
        .I5(x_assign_reg_322[2]),
        .O(x_assign_mid2_fu_625_p3));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "160" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    ram_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,address0,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(in_stream_V_dout),
        .DIBDI(ram_reg_1),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(D),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(ce01_out),
        .ENBWREN(E),
        .INJECTDBITERR(NLW_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_ram_reg_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,WEBWE,WEBWE,WEBWE,WEBWE}));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF40)) 
    ram_reg_i_1
       (.I0(\exitcond_flatten9_reg_1039_pp3_iter3_reg_reg[0] ),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .I4(ram_reg_0),
        .I5(\ap_CS_fsm_reg[5] ),
        .O(ce01_out));
  LUT6 #(
    .INIT(64'h505044FFFFFF44FF)) 
    ram_reg_i_10
       (.I0(\line_buf_1_addr_2_reg_1086_reg[1] ),
        .I1(x_4_reg_1074[2]),
        .I2(x_assign_reg_322[2]),
        .I3(x_4_reg_1074[0]),
        .I4(\line_buf_1_addr_2_reg_1086_reg[2] ),
        .I5(x_assign_reg_322[0]),
        .O(x_4_fu_681_p2));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    ram_reg_i_3__0
       (.I0(x_assign_mid2_fu_625_p3),
        .I1(ram_reg_i_9_n_0),
        .I2(\x3_reg_289_reg[1] [1]),
        .I3(\x3_reg_289_reg[1] [0]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_195_reg[2] ),
        .O(address0[2]));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
    ram_reg_i_4
       (.I0(\line_buf_1_addr_2_reg_1086_reg[1] ),
        .I1(ram_reg_i_9_n_0),
        .I2(\x3_reg_289_reg[1] [0]),
        .I3(\x3_reg_289_reg[1] [1]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_195_reg[1] ),
        .O(address0[1]));
  LUT6 #(
    .INIT(64'h7F407F7F7F404040)) 
    ram_reg_i_5
       (.I0(x_4_fu_681_p2),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_enable_reg_pp3_iter0),
        .I3(\x3_reg_289_reg[1] [0]),
        .I4(\ap_CS_fsm_reg[5] ),
        .I5(\x_reg_195_reg[0] ),
        .O(address0[0]));
  LUT4 #(
    .INIT(16'h04FF)) 
    ram_reg_i_7
       (.I0(\exitcond1_reg_913_reg[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg),
        .I2(in_stream_V_empty_n),
        .I3(\ap_CS_fsm_reg[7] [0]),
        .O(ram_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_9
       (.I0(\ap_CS_fsm_reg[7] [1]),
        .I1(ap_enable_reg_pp3_iter0),
        .O(ram_reg_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[0]_i_1 
       (.I0(D[0]),
        .I1(ram_reg_1[0]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[10]_i_1 
       (.I0(D[10]),
        .I1(ram_reg_1[10]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[11]_i_1 
       (.I0(D[11]),
        .I1(ram_reg_1[11]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[12]_i_1 
       (.I0(D[12]),
        .I1(ram_reg_1[12]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[13]_i_1 
       (.I0(D[13]),
        .I1(ram_reg_1[13]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[14]_i_1 
       (.I0(D[14]),
        .I1(ram_reg_1[14]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[15]_i_1 
       (.I0(D[15]),
        .I1(ram_reg_1[15]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[16]_i_1 
       (.I0(D[16]),
        .I1(ram_reg_1[16]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[17]_i_1 
       (.I0(D[17]),
        .I1(ram_reg_1[17]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[18]_i_1 
       (.I0(D[18]),
        .I1(ram_reg_1[18]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[19]_i_1 
       (.I0(D[19]),
        .I1(ram_reg_1[19]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[1]_i_1 
       (.I0(D[1]),
        .I1(ram_reg_1[1]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[20]_i_1 
       (.I0(D[20]),
        .I1(ram_reg_1[20]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[21]_i_1 
       (.I0(D[21]),
        .I1(ram_reg_1[21]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[22]_i_1 
       (.I0(D[22]),
        .I1(ram_reg_1[22]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[23]_i_1 
       (.I0(D[23]),
        .I1(ram_reg_1[23]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[24]_i_1 
       (.I0(D[24]),
        .I1(ram_reg_1[24]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[25]_i_1 
       (.I0(D[25]),
        .I1(ram_reg_1[25]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[26]_i_1 
       (.I0(D[26]),
        .I1(ram_reg_1[26]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[27]_i_1 
       (.I0(D[27]),
        .I1(ram_reg_1[27]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[28]_i_1 
       (.I0(D[28]),
        .I1(ram_reg_1[28]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[29]_i_1 
       (.I0(D[29]),
        .I1(ram_reg_1[29]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[2]_i_1 
       (.I0(D[2]),
        .I1(ram_reg_1[2]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[30]_i_1 
       (.I0(D[30]),
        .I1(ram_reg_1[30]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[31]_i_2 
       (.I0(D[31]),
        .I1(ram_reg_1[31]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[3]_i_1 
       (.I0(D[3]),
        .I1(ram_reg_1[3]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[4]_i_1 
       (.I0(D[4]),
        .I1(ram_reg_1[4]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[5]_i_1 
       (.I0(D[5]),
        .I1(ram_reg_1[5]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[6]_i_1 
       (.I0(D[6]),
        .I1(ram_reg_1[6]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[7]_i_1 
       (.I0(D[7]),
        .I1(ram_reg_1[7]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[8]_i_1 
       (.I0(D[8]),
        .I1(ram_reg_1[8]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \window_2_2_1_reg_241[9]_i_1 
       (.I0(D[9]),
        .I1(ram_reg_1[9]),
        .I2(tmp_10_reg_945),
        .O(\window_2_1_1_reg_253_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \x_4_reg_1074[2]_i_2 
       (.I0(\exitcond_flatten9_reg_1039_reg[0] ),
        .I1(\ap_CS_fsm_reg[7] [1]),
        .I2(ap_enable_reg_pp3_iter1),
        .O(\line_buf_1_addr_2_reg_1086_reg[2] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
