// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _digitrec_update_knn_HH_
#define _digitrec_update_knn_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct digitrec_update_knn : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<49> > test_inst_V;
    sc_in< sc_lv<48> > train_inst_V;
    sc_out< sc_lv<4> > min_distances_0_V_address0;
    sc_out< sc_logic > min_distances_0_V_ce0;
    sc_out< sc_logic > min_distances_0_V_we0;
    sc_out< sc_lv<6> > min_distances_0_V_d0;
    sc_in< sc_lv<6> > min_distances_0_V_q0;
    sc_in< sc_lv<4> > tmp_4;


    // Module declarations
    digitrec_update_knn(sc_module_name name);
    SC_HAS_PROCESS(digitrec_update_knn);

    ~digitrec_update_knn();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_20;
    sc_signal< sc_lv<64> > tmp_4_cast_fu_80_p1;
    sc_signal< sc_lv<64> > tmp_4_cast_reg_124;
    sc_signal< sc_lv<49> > r_V_fu_88_p2;
    sc_signal< sc_lv<6> > count_V_fu_100_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_50;
    sc_signal< sc_lv<49> > tmp_6_i_fu_112_p2;
    sc_signal< sc_lv<1> > tmp_i_fu_94_p2;
    sc_signal< sc_lv<4> > min_distances_0_V_addr_reg_147;
    sc_signal< sc_lv<6> > distance_V_reg_58;
    sc_signal< sc_lv<49> > n_V_buf_i_reg_71;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_75;
    sc_signal< sc_lv<1> > tmp_1_fu_118_p2;
    sc_signal< sc_lv<49> > train_inst_V_cast_fu_84_p1;
    sc_signal< sc_lv<49> > tmp_5_i_fu_106_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_st3_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<49> ap_const_lv49_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<49> ap_const_lv49_1FFFFFFFFFFFF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_20();
    void thread_ap_sig_50();
    void thread_ap_sig_75();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_count_V_fu_100_p2();
    void thread_min_distances_0_V_address0();
    void thread_min_distances_0_V_ce0();
    void thread_min_distances_0_V_d0();
    void thread_min_distances_0_V_we0();
    void thread_r_V_fu_88_p2();
    void thread_tmp_1_fu_118_p2();
    void thread_tmp_4_cast_fu_80_p1();
    void thread_tmp_5_i_fu_106_p2();
    void thread_tmp_6_i_fu_112_p2();
    void thread_tmp_i_fu_94_p2();
    void thread_train_inst_V_cast_fu_84_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
