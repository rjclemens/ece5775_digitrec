set C_TypeInfoList {{ 
"digitrec" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"input": [[],"1"] }],[],""], 
"0": [ "bit4", {"typedef": [[[],"2"],""]}], 
"2": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"1": [ "digit", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<49>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 49}}]],""]}}]
}}
set moduleName digitrec
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {digitrec}
set C_modelType { int 4 }
set C_modelArgList {
	{ input_V int 49 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY", "bitSlice":[{"low":0,"up":48,"cElement": [{"cName": "input.V","cData": "uint49","bit_use": { "low": 0,"up": 48},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 4,"bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "agg.result.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_V sc_in sc_lv 49 signal 0 } 
	{ ap_return sc_out sc_lv 4 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "input_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "9", "12", "15", "18", "21", "24", "27", "30"], "CDFG" : "digitrec", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "training_data_V", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st7_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_digitrec_knn_vote_fu_398"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.training_data_V_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_knn_vote_fu_398", "Parent" : "0", "Child" : [], "CDFG" : "digitrec_knn_vote", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "knn_set_0_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_0_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_0_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_0_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_0_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_1_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_2_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_3_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_4_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_5_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_6_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_7_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_8_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_0_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_1_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_2_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_3_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "knn_set_9_4_V_read", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_452", "Parent" : "0", "Child" : ["4", "5"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_452.distance_V_digitrec_bitcount_fu_125", "Parent" : "3", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_452.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "3", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_463", "Parent" : "0", "Child" : ["7", "8"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_463.distance_V_digitrec_bitcount_fu_125", "Parent" : "6", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_463.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "6", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_474", "Parent" : "0", "Child" : ["10", "11"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_474.distance_V_digitrec_bitcount_fu_125", "Parent" : "9", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_474.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "9", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_485", "Parent" : "0", "Child" : ["13", "14"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_485.distance_V_digitrec_bitcount_fu_125", "Parent" : "12", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_485.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "12", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_496", "Parent" : "0", "Child" : ["16", "17"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_496.distance_V_digitrec_bitcount_fu_125", "Parent" : "15", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_496.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "15", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_507", "Parent" : "0", "Child" : ["19", "20"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_507.distance_V_digitrec_bitcount_fu_125", "Parent" : "18", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_507.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "18", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_518", "Parent" : "0", "Child" : ["22", "23"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_518.distance_V_digitrec_bitcount_fu_125", "Parent" : "21", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_518.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "21", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_529", "Parent" : "0", "Child" : ["25", "26"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_529.distance_V_digitrec_bitcount_fu_125", "Parent" : "24", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_529.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "24", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_540", "Parent" : "0", "Child" : ["28", "29"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_540.distance_V_digitrec_bitcount_fu_125", "Parent" : "27", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_540.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "27", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_551", "Parent" : "0", "Child" : ["31", "32"], "CDFG" : "digitrec_update_knn", "VariableLatency" : "0", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "test_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "train_inst_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_0_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_1_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_2_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_3_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "min_distances_4_V", "Type" : "OVld", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_551.distance_V_digitrec_bitcount_fu_125", "Parent" : "30", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_digitrec_update_knn_fu_551.digitrec_mux_5to1_sel3_6_1_U2", "Parent" : "30", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1809", "Max" : "1809"}
	, {"Name" : "Interval", "Min" : "1810", "Max" : "1810"}
]}

set Spec2ImplPortList { 
	input_V { ap_none {  { input_V in_data 0 49 } } }
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
