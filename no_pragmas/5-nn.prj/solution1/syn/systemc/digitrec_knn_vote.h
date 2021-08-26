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
    sc_out< sc_lv<6> > knn_set_V_address0;
    sc_out< sc_logic > knn_set_V_ce0;
    sc_in< sc_lv<6> > knn_set_V_q0;
    sc_out< sc_lv<4> > ap_return;


    // Module declarations
    digitrec_knn_vote(sc_module_name name);
    SC_HAS_PROCESS(digitrec_knn_vote);

    ~digitrec_knn_vote();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_21;
    sc_signal< sc_lv<4> > i_V_fu_119_p2;
    sc_signal< sc_lv<4> > i_V_reg_212;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_40;
    sc_signal< sc_lv<7> > tmp_1_fu_141_p2;
    sc_signal< sc_lv<7> > tmp_1_reg_217;
    sc_signal< sc_lv<1> > exitcond1_fu_113_p2;
    sc_signal< sc_lv<3> > j_V_fu_153_p2;
    sc_signal< sc_lv<3> > j_V_reg_225;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_55;
    sc_signal< sc_lv<1> > exitcond_fu_147_p2;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_s_fu_183_p3;
    sc_signal< sc_lv<32> > min_2_min_fu_191_p3;
    sc_signal< sc_lv<9> > sum_fu_203_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_75;
    sc_signal< sc_lv<4> > agg_result_V_s_reg_54;
    sc_signal< sc_lv<4> > i_val_V_reg_66;
    sc_signal< sc_lv<32> > min_reg_78;
    sc_signal< sc_lv<3> > p_1_reg_90;
    sc_signal< sc_lv<9> > min_1_reg_101;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_168_p1;
    sc_signal< sc_lv<6> > tmp_s_fu_129_p3;
    sc_signal< sc_lv<7> > tmp_cast_fu_125_p1;
    sc_signal< sc_lv<7> > p_shl_cast_fu_137_p1;
    sc_signal< sc_lv<7> > tmp_7_cast_fu_159_p1;
    sc_signal< sc_lv<7> > tmp_2_fu_163_p2;
    sc_signal< sc_lv<32> > min_1_cast_fu_173_p1;
    sc_signal< sc_lv<1> > tmp_6_fu_177_p2;
    sc_signal< sc_lv<9> > tmp_8_cast_fu_199_p1;
    sc_signal< sc_lv<4> > ap_return_preg;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_st3_fsm_2;
    static const sc_lv<4> ap_ST_st4_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7FFFFFFF;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_agg_result_V_0_agg_result_V_s_fu_183_p3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_21();
    void thread_ap_sig_40();
    void thread_ap_sig_55();
    void thread_ap_sig_75();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_exitcond1_fu_113_p2();
    void thread_exitcond_fu_147_p2();
    void thread_i_V_fu_119_p2();
    void thread_j_V_fu_153_p2();
    void thread_knn_set_V_address0();
    void thread_knn_set_V_ce0();
    void thread_min_1_cast_fu_173_p1();
    void thread_min_2_min_fu_191_p3();
    void thread_p_shl_cast_fu_137_p1();
    void thread_sum_fu_203_p2();
    void thread_tmp_12_cast_fu_168_p1();
    void thread_tmp_1_fu_141_p2();
    void thread_tmp_2_fu_163_p2();
    void thread_tmp_6_fu_177_p2();
    void thread_tmp_7_cast_fu_159_p1();
    void thread_tmp_8_cast_fu_199_p1();
    void thread_tmp_cast_fu_125_p1();
    void thread_tmp_s_fu_129_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif