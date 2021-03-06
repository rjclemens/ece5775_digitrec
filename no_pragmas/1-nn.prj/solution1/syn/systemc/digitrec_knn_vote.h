// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _digitrec_knn_vote_HH_
#define _digitrec_knn_vote_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct digitrec_knn_vote : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > knn_set_0_V_address0;
    sc_out< sc_logic > knn_set_0_V_ce0;
    sc_in< sc_lv<6> > knn_set_0_V_q0;
    sc_out< sc_lv<4> > ap_return;


    // Module declarations
    digitrec_knn_vote(sc_module_name name);
    SC_HAS_PROCESS(digitrec_knn_vote);

    ~digitrec_knn_vote();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_20;
    sc_signal< sc_lv<4> > i_V_fu_76_p2;
    sc_signal< sc_lv<4> > i_V_reg_116;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_39;
    sc_signal< sc_lv<1> > exitcond_fu_70_p2;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_s_fu_97_p3;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_54;
    sc_signal< sc_lv<32> > min_2_min_fu_105_p3;
    sc_signal< sc_lv<4> > agg_result_V_s_reg_34;
    sc_signal< sc_lv<4> > i_val_V_reg_46;
    sc_signal< sc_lv<32> > min_reg_58;
    sc_signal< sc_lv<64> > tmp_fu_82_p1;
    sc_signal< sc_lv<32> > tmp_6_fu_87_p1;
    sc_signal< sc_lv<1> > tmp_8_fu_91_p2;
    sc_signal< sc_lv<4> > ap_return_preg;
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
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7FFFFFFF;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_agg_result_V_0_agg_result_V_s_fu_97_p3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_20();
    void thread_ap_sig_39();
    void thread_ap_sig_54();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_exitcond_fu_70_p2();
    void thread_i_V_fu_76_p2();
    void thread_knn_set_0_V_address0();
    void thread_knn_set_0_V_ce0();
    void thread_min_2_min_fu_105_p3();
    void thread_tmp_6_fu_87_p1();
    void thread_tmp_8_fu_91_p2();
    void thread_tmp_fu_82_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
