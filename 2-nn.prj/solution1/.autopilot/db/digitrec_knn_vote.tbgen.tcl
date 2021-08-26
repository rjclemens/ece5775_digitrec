set moduleName digitrec_knn_vote
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {digitrec_knn_vote}
set C_modelType { int 4 }
set C_modelArgList {
	{ knn_set_0_0_V_read int 6 regular  }
	{ knn_set_0_1_V_read int 6 regular  }
	{ knn_set_1_0_V_read int 6 regular  }
	{ knn_set_1_1_V_read int 6 regular  }
	{ knn_set_2_0_V_read int 6 regular  }
	{ knn_set_2_1_V_read int 6 regular  }
	{ knn_set_3_0_V_read int 6 regular  }
	{ knn_set_3_1_V_read int 6 regular  }
	{ knn_set_4_0_V_read int 6 regular  }
	{ knn_set_4_1_V_read int 6 regular  }
	{ knn_set_5_0_V_read int 6 regular  }
	{ knn_set_5_1_V_read int 6 regular  }
	{ knn_set_6_0_V_read int 6 regular  }
	{ knn_set_6_1_V_read int 6 regular  }
	{ knn_set_7_0_V_read int 6 regular  }
	{ knn_set_7_1_V_read int 6 regular  }
	{ knn_set_8_0_V_read int 6 regular  }
	{ knn_set_8_1_V_read int 6 regular  }
	{ knn_set_9_0_V_read int 6 regular  }
	{ knn_set_9_1_V_read int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "knn_set_0_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_0_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_1_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_2_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_3_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_3_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_4_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_4_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_5_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_5_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_6_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_6_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_7_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_7_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_8_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_8_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_9_0_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "knn_set_9_1_V_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ knn_set_0_0_V_read sc_in sc_lv 6 signal 0 } 
	{ knn_set_0_1_V_read sc_in sc_lv 6 signal 1 } 
	{ knn_set_1_0_V_read sc_in sc_lv 6 signal 2 } 
	{ knn_set_1_1_V_read sc_in sc_lv 6 signal 3 } 
	{ knn_set_2_0_V_read sc_in sc_lv 6 signal 4 } 
	{ knn_set_2_1_V_read sc_in sc_lv 6 signal 5 } 
	{ knn_set_3_0_V_read sc_in sc_lv 6 signal 6 } 
	{ knn_set_3_1_V_read sc_in sc_lv 6 signal 7 } 
	{ knn_set_4_0_V_read sc_in sc_lv 6 signal 8 } 
	{ knn_set_4_1_V_read sc_in sc_lv 6 signal 9 } 
	{ knn_set_5_0_V_read sc_in sc_lv 6 signal 10 } 
	{ knn_set_5_1_V_read sc_in sc_lv 6 signal 11 } 
	{ knn_set_6_0_V_read sc_in sc_lv 6 signal 12 } 
	{ knn_set_6_1_V_read sc_in sc_lv 6 signal 13 } 
	{ knn_set_7_0_V_read sc_in sc_lv 6 signal 14 } 
	{ knn_set_7_1_V_read sc_in sc_lv 6 signal 15 } 
	{ knn_set_8_0_V_read sc_in sc_lv 6 signal 16 } 
	{ knn_set_8_1_V_read sc_in sc_lv 6 signal 17 } 
	{ knn_set_9_0_V_read sc_in sc_lv 6 signal 18 } 
	{ knn_set_9_1_V_read sc_in sc_lv 6 signal 19 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "knn_set_0_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_0_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_0_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_1_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_1_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_1_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_2_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_2_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_2_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_3_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_3_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_3_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_3_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_4_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_4_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_4_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_4_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_5_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_5_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_5_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_5_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_6_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_6_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_6_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_6_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_7_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_7_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_7_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_7_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_8_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_8_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_8_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_8_1_V_read", "role": "default" }} , 
 	{ "name": "knn_set_9_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_9_0_V_read", "role": "default" }} , 
 	{ "name": "knn_set_9_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "knn_set_9_1_V_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "digitrec_knn_vote", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "knn_set_0_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_0_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set Spec2ImplPortList { 
	knn_set_0_0_V_read { ap_none {  { knn_set_0_0_V_read in_data 0 6 } } }
	knn_set_0_1_V_read { ap_none {  { knn_set_0_1_V_read in_data 0 6 } } }
	knn_set_1_0_V_read { ap_none {  { knn_set_1_0_V_read in_data 0 6 } } }
	knn_set_1_1_V_read { ap_none {  { knn_set_1_1_V_read in_data 0 6 } } }
	knn_set_2_0_V_read { ap_none {  { knn_set_2_0_V_read in_data 0 6 } } }
	knn_set_2_1_V_read { ap_none {  { knn_set_2_1_V_read in_data 0 6 } } }
	knn_set_3_0_V_read { ap_none {  { knn_set_3_0_V_read in_data 0 6 } } }
	knn_set_3_1_V_read { ap_none {  { knn_set_3_1_V_read in_data 0 6 } } }
	knn_set_4_0_V_read { ap_none {  { knn_set_4_0_V_read in_data 0 6 } } }
	knn_set_4_1_V_read { ap_none {  { knn_set_4_1_V_read in_data 0 6 } } }
	knn_set_5_0_V_read { ap_none {  { knn_set_5_0_V_read in_data 0 6 } } }
	knn_set_5_1_V_read { ap_none {  { knn_set_5_1_V_read in_data 0 6 } } }
	knn_set_6_0_V_read { ap_none {  { knn_set_6_0_V_read in_data 0 6 } } }
	knn_set_6_1_V_read { ap_none {  { knn_set_6_1_V_read in_data 0 6 } } }
	knn_set_7_0_V_read { ap_none {  { knn_set_7_0_V_read in_data 0 6 } } }
	knn_set_7_1_V_read { ap_none {  { knn_set_7_1_V_read in_data 0 6 } } }
	knn_set_8_0_V_read { ap_none {  { knn_set_8_0_V_read in_data 0 6 } } }
	knn_set_8_1_V_read { ap_none {  { knn_set_8_1_V_read in_data 0 6 } } }
	knn_set_9_0_V_read { ap_none {  { knn_set_9_0_V_read in_data 0 6 } } }
	knn_set_9_1_V_read { ap_none {  { knn_set_9_1_V_read in_data 0 6 } } }
}
