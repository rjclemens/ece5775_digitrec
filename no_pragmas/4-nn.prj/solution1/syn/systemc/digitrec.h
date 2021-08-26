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

#include "digitrec_update_knn.h"
#include "digitrec_knn_vote.h"
#include "digitrec_training_data_V.h"
#include "digitrec_knn_set_V.h"

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
    digitrec_knn_set_V* knn_set_V_U;
    digitrec_update_knn* grp_digitrec_update_knn_fu_160;
    digitrec_knn_vote* grp_digitrec_knn_vote_fu_170;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_23;
    sc_signal< sc_lv<15> > training_data_V_address0;
    sc_signal< sc_logic > training_data_V_ce0;
    sc_signal< sc_lv<48> > training_data_V_q0;
    sc_signal< sc_lv<4> > i_1_fu_181_p2;
    sc_signal< sc_lv<4> > i_1_reg_277;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_51;
    sc_signal< sc_lv<7> > tmp_12_cast_fu_195_p1;
    sc_signal< sc_lv<7> > tmp_12_cast_reg_282;
    sc_signal< sc_lv<1> > exitcond2_fu_175_p2;
    sc_signal< sc_lv<3> > k_1_fu_205_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_66;
    sc_signal< sc_lv<15> > i4_cast3_fu_225_p1;
    sc_signal< sc_lv<15> > i4_cast3_reg_295;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_75;
    sc_signal< sc_lv<11> > i_2_fu_235_p2;
    sc_signal< sc_lv<11> > i_2_reg_303;
    sc_signal< sc_lv<4> > j_1_fu_247_p2;
    sc_signal< sc_lv<4> > j_1_reg_311;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_86;
    sc_signal< sc_lv<15> > next_mul_fu_253_p2;
    sc_signal< sc_lv<15> > next_mul_reg_316;
    sc_signal< sc_lv<1> > exitcond_fu_241_p2;
    sc_signal< sc_lv<48> > training_instance_V_reg_326;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_101;
    sc_signal< sc_lv<6> > knn_set_V_address0;
    sc_signal< sc_logic > knn_set_V_ce0;
    sc_signal< sc_logic > knn_set_V_we0;
    sc_signal< sc_lv<6> > knn_set_V_d0;
    sc_signal< sc_lv<6> > knn_set_V_q0;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_ap_start;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_ap_done;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_ap_idle;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_160_min_distances_V_address0;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_min_distances_V_ce0;
    sc_signal< sc_logic > grp_digitrec_update_knn_fu_160_min_distances_V_we0;
    sc_signal< sc_lv<6> > grp_digitrec_update_knn_fu_160_min_distances_V_d0;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_170_ap_start;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_170_ap_done;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_170_ap_idle;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_170_ap_ready;
    sc_signal< sc_lv<6> > grp_digitrec_knn_vote_fu_170_knn_set_V_address0;
    sc_signal< sc_logic > grp_digitrec_knn_vote_fu_170_knn_set_V_ce0;
    sc_signal< sc_lv<4> > grp_digitrec_knn_vote_fu_170_ap_return;
    sc_signal< sc_lv<4> > i_reg_104;
    sc_signal< sc_lv<1> > exitcond4_fu_199_p2;
    sc_signal< sc_lv<3> > k_reg_115;
    sc_signal< sc_lv<11> > i4_reg_126;
    sc_signal< sc_lv<4> > j_reg_137;
    sc_signal< sc_lv<1> > exitcond3_fu_229_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_165;
    sc_signal< sc_lv<15> > phi_mul_reg_149;
    sc_signal< sc_logic > ap_reg_grp_digitrec_update_knn_fu_160_ap_start;
    sc_signal< sc_logic > ap_reg_grp_digitrec_knn_vote_fu_170_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_184;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_220_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_264_p1;
    sc_signal< sc_lv<6> > tmp_fu_187_p3;
    sc_signal< sc_lv<7> > tmp_cast_fu_211_p1;
    sc_signal< sc_lv<7> > tmp_s_fu_215_p2;
    sc_signal< sc_lv<15> > tmp_2_fu_259_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_st1_fsm_0;
    static const sc_lv<8> ap_ST_st2_fsm_1;
    static const sc_lv<8> ap_ST_st3_fsm_2;
    static const sc_lv<8> ap_ST_st4_fsm_3;
    static const sc_lv<8> ap_ST_st5_fsm_4;
    static const sc_lv<8> ap_ST_st6_fsm_5;
    static const sc_lv<8> ap_ST_st7_fsm_6;
    static const sc_lv<8> ap_ST_st8_fsm_7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<15> ap_const_lv15_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<11> ap_const_lv11_708;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<15> ap_const_lv15_708;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_101();
    void thread_ap_sig_165();
    void thread_ap_sig_184();
    void thread_ap_sig_23();
    void thread_ap_sig_51();
    void thread_ap_sig_66();
    void thread_ap_sig_75();
    void thread_ap_sig_86();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_exitcond2_fu_175_p2();
    void thread_exitcond3_fu_229_p2();
    void thread_exitcond4_fu_199_p2();
    void thread_exitcond_fu_241_p2();
    void thread_grp_digitrec_knn_vote_fu_170_ap_start();
    void thread_grp_digitrec_update_knn_fu_160_ap_start();
    void thread_i4_cast3_fu_225_p1();
    void thread_i_1_fu_181_p2();
    void thread_i_2_fu_235_p2();
    void thread_j_1_fu_247_p2();
    void thread_k_1_fu_205_p2();
    void thread_knn_set_V_address0();
    void thread_knn_set_V_ce0();
    void thread_knn_set_V_d0();
    void thread_knn_set_V_we0();
    void thread_next_mul_fu_253_p2();
    void thread_tmp_12_cast_fu_195_p1();
    void thread_tmp_13_cast_fu_220_p1();
    void thread_tmp_2_fu_259_p2();
    void thread_tmp_3_fu_264_p1();
    void thread_tmp_cast_fu_211_p1();
    void thread_tmp_fu_187_p3();
    void thread_tmp_s_fu_215_p2();
    void thread_training_data_V_address0();
    void thread_training_data_V_ce0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
