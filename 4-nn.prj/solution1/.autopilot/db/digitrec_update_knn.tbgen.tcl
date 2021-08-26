set moduleName digitrec_update_knn
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {digitrec_update_knn}
set C_modelType { void 0 }
set C_modelArgList {
	{ test_inst_V int 49 regular  }
	{ train_inst_V int 48 regular  }
	{ min_distances_0_V int 6 regular {pointer 2}  }
	{ min_distances_1_V int 6 regular {pointer 2}  }
	{ min_distances_2_V int 6 regular {pointer 2}  }
	{ min_distances_3_V int 6 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "test_inst_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "train_inst_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "min_distances_0_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "min_distances_1_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "min_distances_2_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "min_distances_3_V", "interface" : "wire", "bitwidth" : 6, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ test_inst_V sc_in sc_lv 49 signal 0 } 
	{ train_inst_V sc_in sc_lv 48 signal 1 } 
	{ min_distances_0_V_i sc_in sc_lv 6 signal 2 } 
	{ min_distances_0_V_o sc_out sc_lv 6 signal 2 } 
	{ min_distances_0_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ min_distances_1_V_i sc_in sc_lv 6 signal 3 } 
	{ min_distances_1_V_o sc_out sc_lv 6 signal 3 } 
	{ min_distances_1_V_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ min_distances_2_V_i sc_in sc_lv 6 signal 4 } 
	{ min_distances_2_V_o sc_out sc_lv 6 signal 4 } 
	{ min_distances_2_V_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ min_distances_3_V_i sc_in sc_lv 6 signal 5 } 
	{ min_distances_3_V_o sc_out sc_lv 6 signal 5 } 
	{ min_distances_3_V_o_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "test_inst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "test_inst_V", "role": "default" }} , 
 	{ "name": "train_inst_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "train_inst_V", "role": "default" }} , 
 	{ "name": "min_distances_0_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_0_V", "role": "i" }} , 
 	{ "name": "min_distances_0_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_0_V", "role": "o" }} , 
 	{ "name": "min_distances_0_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_distances_0_V", "role": "o_ap_vld" }} , 
 	{ "name": "min_distances_1_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_1_V", "role": "i" }} , 
 	{ "name": "min_distances_1_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_1_V", "role": "o" }} , 
 	{ "name": "min_distances_1_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_distances_1_V", "role": "o_ap_vld" }} , 
 	{ "name": "min_distances_2_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_2_V", "role": "i" }} , 
 	{ "name": "min_distances_2_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_2_V", "role": "o" }} , 
 	{ "name": "min_distances_2_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_distances_2_V", "role": "o_ap_vld" }} , 
 	{ "name": "min_distances_3_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_3_V", "role": "i" }} , 
 	{ "name": "min_distances_3_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "min_distances_3_V", "role": "o" }} , 
 	{ "name": "min_distances_3_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "min_distances_3_V", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.distance_V_digitrec_bitcount_fu_106", "Parent" : "0", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.digitrec_mux_4to1_sel2_6_1_U2", "Parent" : "0", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	test_inst_V { ap_none {  { test_inst_V in_data 0 49 } } }
	train_inst_V { ap_none {  { train_inst_V in_data 0 48 } } }
	min_distances_0_V { ap_ovld {  { min_distances_0_V_i in_data 0 6 }  { min_distances_0_V_o out_data 1 6 }  { min_distances_0_V_o_ap_vld out_vld 1 1 } } }
	min_distances_1_V { ap_ovld {  { min_distances_1_V_i in_data 0 6 }  { min_distances_1_V_o out_data 1 6 }  { min_distances_1_V_o_ap_vld out_vld 1 1 } } }
	min_distances_2_V { ap_ovld {  { min_distances_2_V_i in_data 0 6 }  { min_distances_2_V_o out_data 1 6 }  { min_distances_2_V_o_ap_vld out_vld 1 1 } } }
	min_distances_3_V { ap_ovld {  { min_distances_3_V_i in_data 0 6 }  { min_distances_3_V_o out_data 1 6 }  { min_distances_3_V_o_ap_vld out_vld 1 1 } } }
}
