############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final_conv2d
set_top do_convolution
add_files final_conv2d/conv_v2/conv_v2.h
add_files final_conv2d/conv_v2/conv_v2.cpp
add_files -tb final_conv2d/conv_v2/test_conv.cpp
open_solution "solution2"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./final_conv2d/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
