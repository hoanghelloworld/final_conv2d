-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Dec 18 18:29:59 2024
-- Host        : maytinhcuahoang running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/final_conv2d/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_do_convolution_0_0/design_1_do_convolution_0_0_stub.vhdl
-- Design      : design_1_do_convolution_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_do_convolution_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    out_stream_V_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_stream_V_full_n : in STD_LOGIC;
    out_stream_V_write : out STD_LOGIC;
    in_stream_V_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in_stream_V_empty_n : in STD_LOGIC;
    in_stream_V_read : out STD_LOGIC
  );

end design_1_do_convolution_0_0;

architecture stub of design_1_do_convolution_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,out_stream_V_din[31:0],out_stream_V_full_n,out_stream_V_write,in_stream_V_dout[31:0],in_stream_V_empty_n,in_stream_V_read";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "do_convolution,Vivado 2018.1";
begin
end;
