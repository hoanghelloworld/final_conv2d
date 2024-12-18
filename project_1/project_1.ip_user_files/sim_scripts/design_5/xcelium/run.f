-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_5/ip/design_5_processing_system7_0_0/design_5_processing_system7_0_0_sim_netlist.vhdl" \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/2f15/hdl/vhdl/do_convolution_libkb.vhd" \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/2f15/hdl/vhdl/do_convolution.vhd" \
  "../../../bd/design_5/ip/design_5_do_convolution_0_0/sim/design_5_do_convolution_0_0.vhd" \
  "../../../bd/design_5/ip/design_5_axi_fifo_mm_s_0_0/design_5_axi_fifo_mm_s_0_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_18 \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/cf75/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_5/ip/design_5_axi_timer_0_0/sim/design_5_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_1.srcs/sources_1/bd/design_5/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_5/ip/design_5_rst_ps7_0_100M_0/sim/design_5_rst_ps7_0_100M_0.vhd" \
  "../../../bd/design_5/ip/design_5_xbar_0/design_5_xbar_0_sim_netlist.vhdl" \
  "../../../bd/design_5/sim/design_5.vhd" \
  "../../../bd/design_5/ip/design_5_auto_pc_0/design_5_auto_pc_0_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

