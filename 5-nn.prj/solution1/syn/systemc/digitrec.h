// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _digitrec_HH_
#define _digitrec_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "digitrec_knn_vote.h"
#include "digitrec_update_knn.h"
#include "digitrec_training_data_V.h"

namespace ap_rtl {

struct digitrec : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<49> > input_V;
    sc_out< sc_lv<4> > ap_return;


    // Module declarations
    digitrec(sc_module_name name);
    SC_HAS_PROCESS(digitrec);

    ~digitrec();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    digitrec_training_data_V* training_data_V_U;
    digitrec_knn_vote* grp_digitrec_knn_vote_fu_398;
    digitrec_update_knn* grp_digitrec_update_knn_fu_452;
    digitrec_update_knn* grp_digitrec_update_knn_fu_463;
    digitrec_update_knn* grp_digitrec_update_knn_fu_474;
    digitrec_update_knn* grp_digitrec_update_knn_fu_485;
    digitrec_update_knn* grp_digitrec_update_knn_fu_496;
    digitrec_update_knn* grp_digitrec_update_knn_fu_507;
    digitrec_update_knn* grp_digitrec_update_knn_fu_518;
    digitrec_update_knn* grp_digitrec_update_knn_fu_529;
    digitrec_update_knn* grp_digitrec_update_knn_fu_540;
    digitrec_update_knn* grp_digitrec_update_knn_fu_551;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_19;
    sc_signal< sc_lv<15> > training_data_V_address0;
    sc_signal< sc_logic > training_data_V_ce0;
    sc_signal< sc_lv<48> > training_data_V_q0;
    sc_signal< sc_lv<15> > training_data_V_address1;
    sc_signal< sc_logic > training_data_V_ce1;
    sc_signal< sc_lv<48> > training_data_V_q1;
    sc_signal< sc_lv<15> > training_data_V_address2;
    sc_signal< sc_logic > training_data_V_ce2;
    sc_signal< sc_lv<48> > training_data_V_q2;
    sc_signal< sc_lv<15> > training_data_V_address3;
    sc_signal< sc_logic > training_data_V_ce3;
    sc_signal< sc_lv<48> > training_data_V_q3;
    sc_signal< sc_lv<15> > training_data_V_address4;
    sc_signal< sc_logic > training_data_V_ce4;
    sc_signal< sc_lv<48> > training_data_V_q4;
    sc_signal< sc_lv<15> > training_data_V_address5;
    sc_signal< sc_logic > training_data_V_ce5;
    sc_signal< sc_lv<48> > training_data_V_q5;
    sc_signal< sc_lv<15> > training_data_V_address6;
    sc_signal< sc_logic > training_data_V_ce6;
    sc_signal< sc_lv<48> > training_data_V_q6;
    sc_signal< sc_lv<15> > training_data_V_address7;
    sc_signal< sc_logic > training_data_V_ce7;
    sc_signal< sc_lv<48> > training_data_V_q7;
    sc_signal< sc_lv<15> > training_data_V_address8;
    sc_signal< sc_logic > training_data_V_ce8;
    sc_signal< sc_lv<48> > training_data_V_q8;
    sc_signal< sc_lv<15> > training_data_V_address9;
    sc_signal< sc_logic > training_data_V_ce9;
    sc_signal< sc_lv<48> > training_data_V_q9;
    sc_signal< sc_lv<11> > i4_reg_387;
    sc_signal< sc_lv<1> > exitcond3_fu_812_p2;
    sc_signal< sc_lv<1> > exitcond3_reg_1516;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_1;
    sc_signal< bool > ap_sig_85;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond3_reg_1516_pp0_iter1;
    sc_signal< sc_lv<11> > i_fu_818_p2;
    sc_signal< sc_lv<48> > training_data_V_load_reg_1575;
    sc_signal< sc_lv<48> > training_data_V_load_1_reg_1580;
    sc_signal< sc_lv<48> > training_data_V_load_2_reg_1585;
    sc_signal< sc_lv<48> > training_data_V_load_3_reg_1590;
    sc_signal< sc_lv<48> > training_data_V_load_4_reg_1595;
    sc_signal< sc_lv<48> > training_data_V_load_5_reg_1600;
    sc_signal< sc_lv<48> > training_data_V_load_6_reg_1605;
    sc_signal< sc_lv<48> > training_data_V_load_7_reg_1610;
    sc_signal< sc_lv<48> > training_data_V_load_8_reg_1615;
    sc_signal< sc_lv<48> > training_data_V_load_9_reg_1620;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_2;
    sc_signal< bool > ap_sig_144;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_398_ap_start;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_398_ap_done;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_398_ap_idle;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_398_ap_ready;
    sc_signal< sc_lv<4> > grp_digitrec_knn_vote_fu_398_ap_return;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_452_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_452_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_452_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_452_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_452_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_452_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_463_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_463_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_463_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_463_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_463_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_463_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_474_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_474_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_474_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_474_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_474_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_474_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_485_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_485_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_485_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_485_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_485_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_485_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_496_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_496_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_496_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_496_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_496_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_496_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_507_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_507_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_507_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_507_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_507_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_507_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_518_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_518_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_518_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_518_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_518_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_518_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_529_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_529_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_529_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_529_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_529_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_529_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_540_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_540_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_540_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_540_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_540_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_540_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_551_min_distances_0_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_min_distances_0_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_551_min_distances_1_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_min_distances_1_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_551_min_distances_2_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_min_distances_2_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_551_min_distances_3_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_min_distances_3_V_o_ap_vld;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_551_min_distances_4_V_o;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_551_min_distances_4_V_o_ap_vld;
    sc_signal< sc_logic > ap_reg_grp_digitrec_knn_vote_fu_398_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_3;
    sc_signal< bool > ap_sig_535;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_452_ap_start;
    sc_signal< sc_lv<6> > knn_set_0_0_V_fu_70;
    sc_signal< sc_lv<6> > knn_set_0_1_V_fu_74;
    sc_signal< sc_lv<6> > knn_set_0_2_V_fu_78;
    sc_signal< sc_lv<6> > knn_set_0_3_V_fu_82;
    sc_signal< sc_lv<6> > knn_set_0_4_V_fu_86;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_463_ap_start;
    sc_signal< sc_lv<6> > knn_set_1_0_V_fu_90;
    sc_signal< sc_lv<6> > knn_set_1_1_V_fu_94;
    sc_signal< sc_lv<6> > knn_set_1_2_V_fu_98;
    sc_signal< sc_lv<6> > knn_set_1_3_V_fu_102;
    sc_signal< sc_lv<6> > knn_set_1_4_V_fu_106;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_474_ap_start;
    sc_signal< sc_lv<6> > knn_set_2_0_V_fu_110;
    sc_signal< sc_lv<6> > knn_set_2_1_V_fu_114;
    sc_signal< sc_lv<6> > knn_set_2_2_V_fu_118;
    sc_signal< sc_lv<6> > knn_set_2_3_V_fu_122;
    sc_signal< sc_lv<6> > knn_set_2_4_V_fu_126;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_485_ap_start;
    sc_signal< sc_lv<6> > knn_set_3_0_V_fu_130;
    sc_signal< sc_lv<6> > knn_set_3_1_V_fu_134;
    sc_signal< sc_lv<6> > knn_set_3_2_V_fu_138;
    sc_signal< sc_lv<6> > knn_set_3_3_V_fu_142;
    sc_signal< sc_lv<6> > knn_set_3_4_V_fu_146;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_496_ap_start;
    sc_signal< sc_lv<6> > knn_set_4_0_V_fu_150;
    sc_signal< sc_lv<6> > knn_set_4_1_V_fu_154;
    sc_signal< sc_lv<6> > knn_set_4_2_V_fu_158;
    sc_signal< sc_lv<6> > knn_set_4_3_V_fu_162;
    sc_signal< sc_lv<6> > knn_set_4_4_V_fu_166;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_507_ap_start;
    sc_signal< sc_lv<6> > knn_set_5_0_V_fu_170;
    sc_signal< sc_lv<6> > knn_set_5_1_V_fu_174;
    sc_signal< sc_lv<6> > knn_set_5_2_V_fu_178;
    sc_signal< sc_lv<6> > knn_set_5_3_V_fu_182;
    sc_signal< sc_lv<6> > knn_set_5_4_V_fu_186;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_518_ap_start;
    sc_signal< sc_lv<6> > knn_set_6_0_V_fu_190;
    sc_signal< sc_lv<6> > knn_set_6_1_V_fu_194;
    sc_signal< sc_lv<6> > knn_set_6_2_V_fu_198;
    sc_signal< sc_lv<6> > knn_set_6_3_V_fu_202;
    sc_signal< sc_lv<6> > knn_set_6_4_V_fu_206;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_529_ap_start;
    sc_signal< sc_lv<6> > knn_set_7_0_V_fu_210;
    sc_signal< sc_lv<6> > knn_set_7_1_V_fu_214;
    sc_signal< sc_lv<6> > knn_set_7_2_V_fu_218;
    sc_signal< sc_lv<6> > knn_set_7_3_V_fu_222;
    sc_signal< sc_lv<6> > knn_set_7_4_V_fu_226;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_540_ap_start;
    sc_signal< sc_lv<6> > knn_set_8_0_V_fu_230;
    sc_signal< sc_lv<6> > knn_set_8_1_V_fu_234;
    sc_signal< sc_lv<6> > knn_set_8_2_V_fu_238;
    sc_signal< sc_lv<6> > knn_set_8_3_V_fu_242;
    sc_signal< sc_lv<6> > knn_set_8_4_V_fu_246;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_551_ap_start;
    sc_signal< sc_lv<6> > knn_set_9_0_V_fu_250;
    sc_signal< sc_lv<6> > knn_set_9_1_V_fu_254;
    sc_signal< sc_lv<6> > knn_set_9_2_V_fu_258;
    sc_signal< sc_lv<6> > knn_set_9_3_V_fu_262;
    sc_signal< sc_lv<6> > knn_set_9_4_V_fu_266;
    sc_signal< sc_lv<64> > tmp_3_fu_840_p1;
    sc_signal< sc_lv<64> > tmp_3_1_fu_851_p1;
    sc_signal< sc_lv<64> > tmp_3_2_fu_862_p1;
    sc_signal< sc_lv<64> > tmp_3_3_fu_873_p1;
    sc_signal< sc_lv<64> > tmp_3_4_fu_884_p1;
    sc_signal< sc_lv<64> > tmp_3_5_fu_895_p1;
    sc_signal< sc_lv<64> > tmp_3_6_fu_906_p1;
    sc_signal< sc_lv<64> > tmp_3_7_fu_921_p1;
    sc_signal< sc_lv<64> > tmp_3_8_fu_936_p1;
    sc_signal< sc_lv<64> > tmp_3_9_fu_947_p1;
    sc_signal< sc_lv<12> > i4_cast3_cast7_fu_832_p1;
    sc_signal< sc_lv<12> > tmp_2_1_fu_845_p2;
    sc_signal< sc_lv<13> > i4_cast3_cast_fu_836_p1;
    sc_signal< sc_lv<13> > tmp_2_2_fu_856_p2;
    sc_signal< sc_lv<13> > tmp_2_3_fu_867_p2;
    sc_signal< sc_lv<14> > i4_cast3_fu_828_p1;
    sc_signal< sc_lv<14> > tmp_2_4_fu_878_p2;
    sc_signal< sc_lv<14> > tmp_2_5_fu_889_p2;
    sc_signal< sc_lv<14> > tmp_2_6_fu_900_p2;
    sc_signal< sc_lv<13> > tmp_2_7_fu_911_p2;
    sc_signal< sc_lv<14> > tmp_2_7_cast6_fu_917_p1;
    sc_signal< sc_lv<12> > tmp_2_8_fu_926_p2;
    sc_signal< sc_lv<14> > tmp_2_8_cast5_fu_932_p1;
    sc_signal< sc_lv<15> > i4_cast4_fu_824_p1;
    sc_signal< sc_lv<15> > tmp_2_9_fu_941_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_1;
    static const sc_lv<4> ap_ST_st6_fsm_2;
    static const sc_lv<4> ap_ST_st7_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_true;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<11> ap_const_lv11_708;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<12> ap_const_lv12_708;
    static const sc_lv<13> ap_const_lv13_E10;
    static const sc_lv<13> ap_const_lv13_1518;
    static const sc_lv<14> ap_const_lv14_1C20;
    static const sc_lv<14> ap_const_lv14_2328;
    static const sc_lv<14> ap_const_lv14_2A30;
    static const sc_lv<13> ap_const_lv13_1138;
    static const sc_lv<12> ap_const_lv12_840;
    static const sc_lv<15> ap_const_lv15_3F48;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_144();
    void thread_ap_sig_19();
    void thread_ap_sig_535();
    void thread_ap_sig_85();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_1();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st6_fsm_2();
    void thread_ap_sig_cseq_ST_st7_fsm_3();
    void thread_exitcond3_fu_812_p2();
    void thread_grp_digitrec_knn_vote_fu_398_ap_start();
    void thread_grp_digitrec_update_knn_fu_452_ap_start();
    void thread_grp_digitrec_update_knn_fu_463_ap_start();
    void thread_grp_digitrec_update_knn_fu_474_ap_start();
    void thread_grp_digitrec_update_knn_fu_485_ap_start();
    void thread_grp_digitrec_update_knn_fu_496_ap_start();
    void thread_grp_digitrec_update_knn_fu_507_ap_start();
    void thread_grp_digitrec_update_knn_fu_518_ap_start();
    void thread_grp_digitrec_update_knn_fu_529_ap_start();
    void thread_grp_digitrec_update_knn_fu_540_ap_start();
    void thread_grp_digitrec_update_knn_fu_551_ap_start();
    void thread_i4_cast3_cast7_fu_832_p1();
    void thread_i4_cast3_cast_fu_836_p1();
    void thread_i4_cast3_fu_828_p1();
    void thread_i4_cast4_fu_824_p1();
    void thread_i_fu_818_p2();
    void thread_tmp_2_1_fu_845_p2();
    void thread_tmp_2_2_fu_856_p2();
    void thread_tmp_2_3_fu_867_p2();
    void thread_tmp_2_4_fu_878_p2();
    void thread_tmp_2_5_fu_889_p2();
    void thread_tmp_2_6_fu_900_p2();
    void thread_tmp_2_7_cast6_fu_917_p1();
    void thread_tmp_2_7_fu_911_p2();
    void thread_tmp_2_8_cast5_fu_932_p1();
    void thread_tmp_2_8_fu_926_p2();
    void thread_tmp_2_9_fu_941_p2();
    void thread_tmp_3_1_fu_851_p1();
    void thread_tmp_3_2_fu_862_p1();
    void thread_tmp_3_3_fu_873_p1();
    void thread_tmp_3_4_fu_884_p1();
    void thread_tmp_3_5_fu_895_p1();
    void thread_tmp_3_6_fu_906_p1();
    void thread_tmp_3_7_fu_921_p1();
    void thread_tmp_3_8_fu_936_p1();
    void thread_tmp_3_9_fu_947_p1();
    void thread_tmp_3_fu_840_p1();
    void thread_training_data_V_address0();
    void thread_training_data_V_address1();
    void thread_training_data_V_address2();
    void thread_training_data_V_address3();
    void thread_training_data_V_address4();
    void thread_training_data_V_address5();
    void thread_training_data_V_address6();
    void thread_training_data_V_address7();
    void thread_training_data_V_address8();
    void thread_training_data_V_address9();
    void thread_training_data_V_ce0();
    void thread_training_data_V_ce1();
    void thread_training_data_V_ce2();
    void thread_training_data_V_ce3();
    void thread_training_data_V_ce4();
    void thread_training_data_V_ce5();
    void thread_training_data_V_ce6();
    void thread_training_data_V_ce7();
    void thread_training_data_V_ce8();
    void thread_training_data_V_ce9();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
