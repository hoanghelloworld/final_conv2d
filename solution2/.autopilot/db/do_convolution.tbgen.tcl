set C_TypeInfoList {{ 
"do_convolution" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_out": [[], {"array": [ {"array": [ {"scalar": "int"}, [5]]}, [5]]}] }, {"data_in": [[], {"array": [ {"array": [ {"scalar": "int"}, [5]]}, [5]]}] }, {"kernel": [[], {"array": [ {"array": [ {"scalar": "int"}, [3]]}, [3]]}] }],[],""]
}}
set moduleName do_convolution
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {do_convolution}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_out int 32 regular {array 25 { 0 3 } 0 1 }  }
	{ data_in int 32 regular {array 25 { 1 1 } 1 1 }  }
	{ kernel int 32 regular {array 9 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_out", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_in","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}]} , 
 	{ "Name" : "kernel", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out_address0 sc_out sc_lv 5 signal 0 } 
	{ data_out_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_out_we0 sc_out sc_logic 1 signal 0 } 
	{ data_out_d0 sc_out sc_lv 32 signal 0 } 
	{ data_in_address0 sc_out sc_lv 5 signal 1 } 
	{ data_in_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_in_q0 sc_in sc_lv 32 signal 1 } 
	{ data_in_address1 sc_out sc_lv 5 signal 1 } 
	{ data_in_ce1 sc_out sc_logic 1 signal 1 } 
	{ data_in_q1 sc_in sc_lv 32 signal 1 } 
	{ kernel_address0 sc_out sc_lv 4 signal 2 } 
	{ kernel_ce0 sc_out sc_logic 1 signal 2 } 
	{ kernel_q0 sc_in sc_lv 32 signal 2 } 
	{ kernel_address1 sc_out sc_lv 4 signal 2 } 
	{ kernel_ce1 sc_out sc_logic 1 signal 2 } 
	{ kernel_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out", "role": "address0" }} , 
 	{ "name": "data_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "ce0" }} , 
 	{ "name": "data_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "we0" }} , 
 	{ "name": "data_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "d0" }} , 
 	{ "name": "data_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in", "role": "address0" }} , 
 	{ "name": "data_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce0" }} , 
 	{ "name": "data_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q0" }} , 
 	{ "name": "data_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_in", "role": "address1" }} , 
 	{ "name": "data_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in", "role": "ce1" }} , 
 	{ "name": "data_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "q1" }} , 
 	{ "name": "kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address0" }} , 
 	{ "name": "kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce0" }} , 
 	{ "name": "kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "q0" }} , 
 	{ "name": "kernel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "kernel", "role": "address1" }} , 
 	{ "name": "kernel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kernel", "role": "ce1" }} , 
 	{ "name": "kernel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "do_convolution",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	do_convolution {
		data_out {Type O LastRead -1 FirstWrite 8}
		data_in {Type I LastRead 6 FirstWrite -1}
		kernel {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "129", "Max" : "129"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_out { ap_memory {  { data_out_address0 mem_address 1 5 }  { data_out_ce0 mem_ce 1 1 }  { data_out_we0 mem_we 1 1 }  { data_out_d0 mem_din 1 32 } } }
	data_in { ap_memory {  { data_in_address0 mem_address 1 5 }  { data_in_ce0 mem_ce 1 1 }  { data_in_q0 mem_dout 0 32 }  { data_in_address1 mem_address 1 5 }  { data_in_ce1 mem_ce 1 1 }  { data_in_q1 mem_dout 0 32 } } }
	kernel { ap_memory {  { kernel_address0 mem_address 1 4 }  { kernel_ce0 mem_ce 1 1 }  { kernel_q0 mem_dout 0 32 }  { kernel_address1 mem_address 1 4 }  { kernel_ce1 mem_ce 1 1 }  { kernel_q1 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
