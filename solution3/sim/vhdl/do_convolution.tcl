
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_stream_group [add_wave_group out_stream(fifo) -into $coutputgroup]
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/out_stream_V_write -into $out_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/out_stream_V_full_n -into $out_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/out_stream_V_din -into $out_stream_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set in_stream_group [add_wave_group in_stream(fifo) -into $cinputgroup]
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/in_stream_V_read -into $in_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/in_stream_V_empty_n -into $in_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/in_stream_V_dout -into $in_stream_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_start -into $blocksiggroup
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_done -into $blocksiggroup
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_idle -into $blocksiggroup
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_do_convolution_top/AESL_inst_do_convolution/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_do_convolution_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_do_convolution_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_do_convolution_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_do_convolution_top/LENGTH_out_stream_V -into $tb_portdepth_group -radix hex
add_wave /apatb_do_convolution_top/LENGTH_in_stream_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_stream_group [add_wave_group out_stream(fifo) -into $tbcoutputgroup]
add_wave /apatb_do_convolution_top/out_stream_V_write -into $tb_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/out_stream_V_full_n -into $tb_out_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/out_stream_V_din -into $tb_out_stream_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_in_stream_group [add_wave_group in_stream(fifo) -into $tbcinputgroup]
add_wave /apatb_do_convolution_top/in_stream_V_read -into $tb_in_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/in_stream_V_empty_n -into $tb_in_stream_group -color #ffff00 -radix hex
add_wave /apatb_do_convolution_top/in_stream_V_dout -into $tb_in_stream_group -radix hex
save_wave_config do_convolution.wcfg
run all
quit

