onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_5 -L xilinx_vip -L xil_defaultlib -L xpm -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L axi_timer_v2_0_18 -L proc_sys_reset_v5_0_12 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_5 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_5.udo}

run -all

endsim

quit -force
