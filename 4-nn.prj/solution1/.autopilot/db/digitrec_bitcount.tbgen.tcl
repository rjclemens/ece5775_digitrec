set moduleName digitrec_bitcount
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {digitrec_bitcount}
set C_modelType { int 6 }
set C_modelArgList {
	{ n_V int 49 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n_V", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 6} ]}
# RTL Port declarations: 
set portNum 2
set portList { 
	{ n_V sc_in sc_lv 49 signal 0 } 
	{ ap_return sc_out sc_lv 6 signal -1 } 
}
set NewPortList {[ 
	{ "name": "n_V", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "n_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : [], "CDFG" : "digitrec_bitcount", "VariableLatency" : "0", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "1", "ControlExist" : "0",
		"Port" : [
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set Spec2ImplPortList { 
	n_V { ap_none {  { n_V in_data 0 49 } } }
}
