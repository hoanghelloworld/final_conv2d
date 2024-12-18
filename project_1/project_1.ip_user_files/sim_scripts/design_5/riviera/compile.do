vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/lib_pkg_v1_0_2
vlib riviera/axi_timer_v2_0_18
vlib riviera/proc_sys_reset_v5_0_12

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap axi_timer_v2_0_18 riviera/axi_timer_v2_0_18
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/b193/hdl" "+incdir+D:/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/b193/hdl" "+incdir+D:/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_5/ipshared/b193/hdl" "+incdir+D:/Vivado/2018.1/data/xilinx_vip/include" \
"D:/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_5/ip/design_5_processing_system7_0_0/design_5_processing_system7_0_0_sim_netlist.vhdl" \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/2f15/hdl/vhdl/do_convolution_libkb.vhd" \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/2f15/hdl/vhdl/do_convolution.vhd" \
"../../../bd/design_5/ip/design_5_do_convolution_0_0/sim/design_5_do_convolution_0_0.vhd" \
"../../../bd/design_5/ip/design_5_axi_fifo_mm_s_0_0/design_5_axi_fifo_mm_s_0_0_sim_netlist.vhdl" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_18 -93 \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/cf75/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_5/ip/design_5_axi_timer_0_0/sim/design_5_axi_timer_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../project_1.srcs/sources_1/bd/design_5/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_5/ip/design_5_rst_ps7_0_100M_0/sim/design_5_rst_ps7_0_100M_0.vhd" \
"../../../bd/design_5/ip/design_5_xbar_0/design_5_xbar_0_sim_netlist.vhdl" \
"../../../bd/design_5/sim/design_5.vhd" \
"../../../bd/design_5/ip/design_5_auto_pc_0/design_5_auto_pc_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

