
call D:/Vivado/2018.1/bin/xelab xil_defaultlib.apatb_do_convolution_top glbl -prj do_convolution.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims --initfile "D:/Vivado/2018.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s do_convolution -debug wave
call D:/Vivado/2018.1/bin/xsim --noieeewarnings do_convolution -tclbatch do_convolution.tcl
