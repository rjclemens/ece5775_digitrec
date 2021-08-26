// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "digitrec.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic digitrec::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic digitrec::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> digitrec::ap_ST_st1_fsm_0 = "1";
const sc_lv<7> digitrec::ap_ST_st2_fsm_1 = "10";
const sc_lv<7> digitrec::ap_ST_st3_fsm_2 = "100";
const sc_lv<7> digitrec::ap_ST_st4_fsm_3 = "1000";
const sc_lv<7> digitrec::ap_ST_st5_fsm_4 = "10000";
const sc_lv<7> digitrec::ap_ST_st6_fsm_5 = "100000";
const sc_lv<7> digitrec::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<32> digitrec::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> digitrec::ap_const_lv1_1 = "1";
const sc_lv<32> digitrec::ap_const_lv32_1 = "1";
const sc_lv<32> digitrec::ap_const_lv32_2 = "10";
const sc_lv<32> digitrec::ap_const_lv32_3 = "11";
const sc_lv<1> digitrec::ap_const_lv1_0 = "0";
const sc_lv<32> digitrec::ap_const_lv32_4 = "100";
const sc_lv<4> digitrec::ap_const_lv4_0 = "0000";
const sc_lv<11> digitrec::ap_const_lv11_0 = "00000000000";
const sc_lv<32> digitrec::ap_const_lv32_5 = "101";
const sc_lv<15> digitrec::ap_const_lv15_0 = "000000000000000";
const sc_lv<32> digitrec::ap_const_lv32_6 = "110";
const sc_lv<6> digitrec::ap_const_lv6_32 = "110010";
const sc_lv<4> digitrec::ap_const_lv4_A = "1010";
const sc_lv<4> digitrec::ap_const_lv4_1 = "1";
const sc_lv<11> digitrec::ap_const_lv11_708 = "11100001000";
const sc_lv<11> digitrec::ap_const_lv11_1 = "1";
const sc_lv<15> digitrec::ap_const_lv15_708 = "11100001000";

digitrec::digitrec(sc_module_name name) : sc_module(name), mVcdFile(0) {
    training_data_V_U = new digitrec_training_data_V("training_data_V_U");
    training_data_V_U->clk(ap_clk);
    training_data_V_U->reset(ap_rst);
    training_data_V_U->address0(training_data_V_address0);
    training_data_V_U->ce0(training_data_V_ce0);
    training_data_V_U->q0(training_data_V_q0);
    knn_set_0_V_U = new digitrec_knn_set_0_V("knn_set_0_V_U");
    knn_set_0_V_U->clk(ap_clk);
    knn_set_0_V_U->reset(ap_rst);
    knn_set_0_V_U->address0(knn_set_0_V_address0);
    knn_set_0_V_U->ce0(knn_set_0_V_ce0);
    knn_set_0_V_U->we0(knn_set_0_V_we0);
    knn_set_0_V_U->d0(knn_set_0_V_d0);
    knn_set_0_V_U->q0(knn_set_0_V_q0);
    grp_digitrec_update_knn_fu_135 = new digitrec_update_knn("grp_digitrec_update_knn_fu_135");
    grp_digitrec_update_knn_fu_135->ap_clk(ap_clk);
    grp_digitrec_update_knn_fu_135->ap_rst(ap_rst);
    grp_digitrec_update_knn_fu_135->ap_start(grp_digitrec_update_knn_fu_135_ap_start);
    grp_digitrec_update_knn_fu_135->ap_done(grp_digitrec_update_knn_fu_135_ap_done);
    grp_digitrec_update_knn_fu_135->ap_idle(grp_digitrec_update_knn_fu_135_ap_idle);
    grp_digitrec_update_knn_fu_135->ap_ready(grp_digitrec_update_knn_fu_135_ap_ready);
    grp_digitrec_update_knn_fu_135->test_inst_V(input_V);
    grp_digitrec_update_knn_fu_135->train_inst_V(training_instance_V_reg_255);
    grp_digitrec_update_knn_fu_135->min_distances_0_V_address0(grp_digitrec_update_knn_fu_135_min_distances_0_V_address0);
    grp_digitrec_update_knn_fu_135->min_distances_0_V_ce0(grp_digitrec_update_knn_fu_135_min_distances_0_V_ce0);
    grp_digitrec_update_knn_fu_135->min_distances_0_V_we0(grp_digitrec_update_knn_fu_135_min_distances_0_V_we0);
    grp_digitrec_update_knn_fu_135->min_distances_0_V_d0(grp_digitrec_update_knn_fu_135_min_distances_0_V_d0);
    grp_digitrec_update_knn_fu_135->min_distances_0_V_q0(knn_set_0_V_q0);
    grp_digitrec_update_knn_fu_135->tmp_4(j_reg_112);
    grp_digitrec_knn_vote_fu_145 = new digitrec_knn_vote("grp_digitrec_knn_vote_fu_145");
    grp_digitrec_knn_vote_fu_145->ap_clk(ap_clk);
    grp_digitrec_knn_vote_fu_145->ap_rst(ap_rst);
    grp_digitrec_knn_vote_fu_145->ap_start(grp_digitrec_knn_vote_fu_145_ap_start);
    grp_digitrec_knn_vote_fu_145->ap_done(grp_digitrec_knn_vote_fu_145_ap_done);
    grp_digitrec_knn_vote_fu_145->ap_idle(grp_digitrec_knn_vote_fu_145_ap_idle);
    grp_digitrec_knn_vote_fu_145->ap_ready(grp_digitrec_knn_vote_fu_145_ap_ready);
    grp_digitrec_knn_vote_fu_145->knn_set_0_V_address0(grp_digitrec_knn_vote_fu_145_knn_set_0_V_address0);
    grp_digitrec_knn_vote_fu_145->knn_set_0_V_ce0(grp_digitrec_knn_vote_fu_145_knn_set_0_V_ce0);
    grp_digitrec_knn_vote_fu_145->knn_set_0_V_q0(knn_set_0_V_q0);
    grp_digitrec_knn_vote_fu_145->ap_return(grp_digitrec_knn_vote_fu_145_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_digitrec_knn_vote_fu_145_ap_done );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_digitrec_knn_vote_fu_145_ap_done );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_digitrec_knn_vote_fu_145_ap_done );
    sensitive << ( grp_digitrec_knn_vote_fu_145_ap_return );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_ap_sig_145);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_164);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_22);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_50);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_59);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_70);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_86);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_22 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_50 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_59 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_70 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_86 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_145 );

    SC_METHOD(thread_ap_sig_cseq_ST_st7_fsm_6);
    sensitive << ( ap_sig_164 );

    SC_METHOD(thread_exitcond1_fu_150_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_exitcond2_fu_171_p2);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( i4_reg_101 );

    SC_METHOD(thread_exitcond_fu_183_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( j_reg_112 );

    SC_METHOD(thread_grp_digitrec_knn_vote_fu_145_ap_start);
    sensitive << ( ap_reg_grp_digitrec_knn_vote_fu_145_ap_start );

    SC_METHOD(thread_grp_digitrec_update_knn_fu_135_ap_start);
    sensitive << ( ap_reg_grp_digitrec_update_knn_fu_135_ap_start );

    SC_METHOD(thread_i4_cast3_fu_167_p1);
    sensitive << ( i4_reg_101 );

    SC_METHOD(thread_i_1_fu_156_p2);
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_i_2_fu_177_p2);
    sensitive << ( i4_reg_101 );

    SC_METHOD(thread_j_1_fu_189_p2);
    sensitive << ( j_reg_112 );

    SC_METHOD(thread_knn_set_0_V_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_digitrec_update_knn_fu_135_min_distances_0_V_address0 );
    sensitive << ( grp_digitrec_knn_vote_fu_145_knn_set_0_V_address0 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );
    sensitive << ( tmp_fu_162_p1 );

    SC_METHOD(thread_knn_set_0_V_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_digitrec_update_knn_fu_135_min_distances_0_V_ce0 );
    sensitive << ( grp_digitrec_knn_vote_fu_145_knn_set_0_V_ce0 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( ap_sig_cseq_ST_st7_fsm_6 );

    SC_METHOD(thread_knn_set_0_V_d0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_digitrec_update_knn_fu_135_min_distances_0_V_d0 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_knn_set_0_V_we0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( grp_digitrec_update_knn_fu_135_min_distances_0_V_we0 );
    sensitive << ( exitcond1_fu_150_p2 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_next_mul_fu_195_p2);
    sensitive << ( phi_mul_reg_124 );

    SC_METHOD(thread_tmp_2_fu_201_p2);
    sensitive << ( i4_cast3_reg_224 );
    sensitive << ( phi_mul_reg_124 );

    SC_METHOD(thread_tmp_3_fu_206_p1);
    sensitive << ( tmp_2_fu_201_p2 );

    SC_METHOD(thread_tmp_fu_162_p1);
    sensitive << ( i_reg_90 );

    SC_METHOD(thread_training_data_V_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_3_fu_206_p1 );

    SC_METHOD(thread_training_data_V_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_183_p2 );
    sensitive << ( grp_digitrec_update_knn_fu_135_ap_done );
    sensitive << ( grp_digitrec_knn_vote_fu_145_ap_done );
    sensitive << ( exitcond1_fu_150_p2 );
    sensitive << ( exitcond2_fu_171_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "0000001";
    ap_reg_grp_digitrec_update_knn_fu_135_ap_start = SC_LOGIC_0;
    ap_reg_grp_digitrec_knn_vote_fu_145_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "digitrec_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, input_V, "(port)input_V");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_22, "ap_sig_22");
    sc_trace(mVcdFile, training_data_V_address0, "training_data_V_address0");
    sc_trace(mVcdFile, training_data_V_ce0, "training_data_V_ce0");
    sc_trace(mVcdFile, training_data_V_q0, "training_data_V_q0");
    sc_trace(mVcdFile, i_1_fu_156_p2, "i_1_fu_156_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_50, "ap_sig_50");
    sc_trace(mVcdFile, i4_cast3_fu_167_p1, "i4_cast3_fu_167_p1");
    sc_trace(mVcdFile, i4_cast3_reg_224, "i4_cast3_reg_224");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_59, "ap_sig_59");
    sc_trace(mVcdFile, i_2_fu_177_p2, "i_2_fu_177_p2");
    sc_trace(mVcdFile, i_2_reg_232, "i_2_reg_232");
    sc_trace(mVcdFile, j_1_fu_189_p2, "j_1_fu_189_p2");
    sc_trace(mVcdFile, j_1_reg_240, "j_1_reg_240");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_70, "ap_sig_70");
    sc_trace(mVcdFile, next_mul_fu_195_p2, "next_mul_fu_195_p2");
    sc_trace(mVcdFile, next_mul_reg_245, "next_mul_reg_245");
    sc_trace(mVcdFile, exitcond_fu_183_p2, "exitcond_fu_183_p2");
    sc_trace(mVcdFile, training_instance_V_reg_255, "training_instance_V_reg_255");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_86, "ap_sig_86");
    sc_trace(mVcdFile, knn_set_0_V_address0, "knn_set_0_V_address0");
    sc_trace(mVcdFile, knn_set_0_V_ce0, "knn_set_0_V_ce0");
    sc_trace(mVcdFile, knn_set_0_V_we0, "knn_set_0_V_we0");
    sc_trace(mVcdFile, knn_set_0_V_d0, "knn_set_0_V_d0");
    sc_trace(mVcdFile, knn_set_0_V_q0, "knn_set_0_V_q0");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_ap_start, "grp_digitrec_update_knn_fu_135_ap_start");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_ap_done, "grp_digitrec_update_knn_fu_135_ap_done");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_ap_idle, "grp_digitrec_update_knn_fu_135_ap_idle");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_ap_ready, "grp_digitrec_update_knn_fu_135_ap_ready");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_min_distances_0_V_address0, "grp_digitrec_update_knn_fu_135_min_distances_0_V_address0");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_min_distances_0_V_ce0, "grp_digitrec_update_knn_fu_135_min_distances_0_V_ce0");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_min_distances_0_V_we0, "grp_digitrec_update_knn_fu_135_min_distances_0_V_we0");
    sc_trace(mVcdFile, grp_digitrec_update_knn_fu_135_min_distances_0_V_d0, "grp_digitrec_update_knn_fu_135_min_distances_0_V_d0");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_ap_start, "grp_digitrec_knn_vote_fu_145_ap_start");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_ap_done, "grp_digitrec_knn_vote_fu_145_ap_done");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_ap_idle, "grp_digitrec_knn_vote_fu_145_ap_idle");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_ap_ready, "grp_digitrec_knn_vote_fu_145_ap_ready");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_knn_set_0_V_address0, "grp_digitrec_knn_vote_fu_145_knn_set_0_V_address0");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_knn_set_0_V_ce0, "grp_digitrec_knn_vote_fu_145_knn_set_0_V_ce0");
    sc_trace(mVcdFile, grp_digitrec_knn_vote_fu_145_ap_return, "grp_digitrec_knn_vote_fu_145_ap_return");
    sc_trace(mVcdFile, i_reg_90, "i_reg_90");
    sc_trace(mVcdFile, exitcond1_fu_150_p2, "exitcond1_fu_150_p2");
    sc_trace(mVcdFile, i4_reg_101, "i4_reg_101");
    sc_trace(mVcdFile, j_reg_112, "j_reg_112");
    sc_trace(mVcdFile, exitcond2_fu_171_p2, "exitcond2_fu_171_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_145, "ap_sig_145");
    sc_trace(mVcdFile, phi_mul_reg_124, "phi_mul_reg_124");
    sc_trace(mVcdFile, ap_reg_grp_digitrec_update_knn_fu_135_ap_start, "ap_reg_grp_digitrec_update_knn_fu_135_ap_start");
    sc_trace(mVcdFile, ap_reg_grp_digitrec_knn_vote_fu_145_ap_start, "ap_reg_grp_digitrec_knn_vote_fu_145_ap_start");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st7_fsm_6, "ap_sig_cseq_ST_st7_fsm_6");
    sc_trace(mVcdFile, ap_sig_164, "ap_sig_164");
    sc_trace(mVcdFile, tmp_fu_162_p1, "tmp_fu_162_p1");
    sc_trace(mVcdFile, tmp_3_fu_206_p1, "tmp_3_fu_206_p1");
    sc_trace(mVcdFile, tmp_2_fu_201_p2, "tmp_2_fu_201_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("digitrec.hdltvin.dat");
    mHdltvoutHandle.open("digitrec.hdltvout.dat");
}

digitrec::~digitrec() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete training_data_V_U;
    delete knn_set_0_V_U;
    delete grp_digitrec_update_knn_fu_135;
    delete grp_digitrec_knn_vote_fu_145;
}

void digitrec::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_digitrec_knn_vote_fu_145_ap_start = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_171_p2.read()))) {
            ap_reg_grp_digitrec_knn_vote_fu_145_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_digitrec_knn_vote_fu_145_ap_ready.read())) {
            ap_reg_grp_digitrec_knn_vote_fu_145_ap_start = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_digitrec_update_knn_fu_135_ap_start = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
            ap_reg_grp_digitrec_update_knn_fu_135_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_digitrec_update_knn_fu_135_ap_ready.read())) {
            ap_reg_grp_digitrec_update_knn_fu_135_ap_start = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_150_p2.read()))) {
        i4_reg_101 = ap_const_lv11_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                !esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_0))) {
        i4_reg_101 = i_2_reg_232.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_90 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_150_p2.read()))) {
        i_reg_90 = i_1_fu_156_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_update_knn_fu_135_ap_done.read()))) {
        j_reg_112 = j_1_reg_240.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_171_p2.read()))) {
        j_reg_112 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_update_knn_fu_135_ap_done.read()))) {
        phi_mul_reg_124 = next_mul_reg_245.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_171_p2.read()))) {
        phi_mul_reg_124 = ap_const_lv15_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        i4_cast3_reg_224 = i4_cast3_fu_167_p1.read();
        i_2_reg_232 = i_2_fu_177_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        j_1_reg_240 = j_1_fu_189_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_0))) {
        next_mul_reg_245 = next_mul_fu_195_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        training_instance_V_reg_255 = training_data_V_q0.read();
    }
}

void digitrec::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_knn_vote_fu_145_ap_done.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void digitrec::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void digitrec::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_knn_vote_fu_145_ap_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void digitrec::thread_ap_return() {
    ap_return = grp_digitrec_knn_vote_fu_145_ap_return.read();
}

void digitrec::thread_ap_sig_145() {
    ap_sig_145 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void digitrec::thread_ap_sig_164() {
    ap_sig_164 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(6, 6));
}

void digitrec::thread_ap_sig_22() {
    ap_sig_22 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void digitrec::thread_ap_sig_50() {
    ap_sig_50 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void digitrec::thread_ap_sig_59() {
    ap_sig_59 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void digitrec::thread_ap_sig_70() {
    ap_sig_70 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void digitrec::thread_ap_sig_86() {
    ap_sig_86 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void digitrec::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_22.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_50.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_59.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_70.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_86.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_145.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_sig_cseq_ST_st7_fsm_6() {
    if (ap_sig_164.read()) {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    }
}

void digitrec::thread_exitcond1_fu_150_p2() {
    exitcond1_fu_150_p2 = (!i_reg_90.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_90.read() == ap_const_lv4_A);
}

void digitrec::thread_exitcond2_fu_171_p2() {
    exitcond2_fu_171_p2 = (!i4_reg_101.read().is_01() || !ap_const_lv11_708.is_01())? sc_lv<1>(): sc_lv<1>(i4_reg_101.read() == ap_const_lv11_708);
}

void digitrec::thread_exitcond_fu_183_p2() {
    exitcond_fu_183_p2 = (!j_reg_112.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_112.read() == ap_const_lv4_A);
}

void digitrec::thread_grp_digitrec_knn_vote_fu_145_ap_start() {
    grp_digitrec_knn_vote_fu_145_ap_start = ap_reg_grp_digitrec_knn_vote_fu_145_ap_start.read();
}

void digitrec::thread_grp_digitrec_update_knn_fu_135_ap_start() {
    grp_digitrec_update_knn_fu_135_ap_start = ap_reg_grp_digitrec_update_knn_fu_135_ap_start.read();
}

void digitrec::thread_i4_cast3_fu_167_p1() {
    i4_cast3_fu_167_p1 = esl_zext<15,11>(i4_reg_101.read());
}

void digitrec::thread_i_1_fu_156_p2() {
    i_1_fu_156_p2 = (!i_reg_90.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_reg_90.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void digitrec::thread_i_2_fu_177_p2() {
    i_2_fu_177_p2 = (!i4_reg_101.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(i4_reg_101.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void digitrec::thread_j_1_fu_189_p2() {
    j_1_fu_189_p2 = (!j_reg_112.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_reg_112.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void digitrec::thread_knn_set_0_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        knn_set_0_V_address0 =  (sc_lv<4>) (tmp_fu_162_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        knn_set_0_V_address0 = grp_digitrec_knn_vote_fu_145_knn_set_0_V_address0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        knn_set_0_V_address0 = grp_digitrec_update_knn_fu_135_min_distances_0_V_address0.read();
    } else {
        knn_set_0_V_address0 = "XXXX";
    }
}

void digitrec::thread_knn_set_0_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        knn_set_0_V_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st7_fsm_6.read())) {
        knn_set_0_V_ce0 = grp_digitrec_knn_vote_fu_145_knn_set_0_V_ce0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        knn_set_0_V_ce0 = grp_digitrec_update_knn_fu_135_min_distances_0_V_ce0.read();
    } else {
        knn_set_0_V_ce0 = ap_const_logic_0;
    }
}

void digitrec::thread_knn_set_0_V_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        knn_set_0_V_d0 = ap_const_lv6_32;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        knn_set_0_V_d0 = grp_digitrec_update_knn_fu_135_min_distances_0_V_d0.read();
    } else {
        knn_set_0_V_d0 =  (sc_lv<6>) ("XXXXXX");
    }
}

void digitrec::thread_knn_set_0_V_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_150_p2.read())))) {
        knn_set_0_V_we0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read())) {
        knn_set_0_V_we0 = grp_digitrec_update_knn_fu_135_min_distances_0_V_we0.read();
    } else {
        knn_set_0_V_we0 = ap_const_logic_0;
    }
}

void digitrec::thread_next_mul_fu_195_p2() {
    next_mul_fu_195_p2 = (!phi_mul_reg_124.read().is_01() || !ap_const_lv15_708.is_01())? sc_lv<15>(): (sc_biguint<15>(phi_mul_reg_124.read()) + sc_biguint<15>(ap_const_lv15_708));
}

void digitrec::thread_tmp_2_fu_201_p2() {
    tmp_2_fu_201_p2 = (!i4_cast3_reg_224.read().is_01() || !phi_mul_reg_124.read().is_01())? sc_lv<15>(): (sc_biguint<15>(i4_cast3_reg_224.read()) + sc_biguint<15>(phi_mul_reg_124.read()));
}

void digitrec::thread_tmp_3_fu_206_p1() {
    tmp_3_fu_206_p1 = esl_zext<64,15>(tmp_2_fu_201_p2.read());
}

void digitrec::thread_tmp_fu_162_p1() {
    tmp_fu_162_p1 = esl_zext<64,4>(i_reg_90.read());
}

void digitrec::thread_training_data_V_address0() {
    training_data_V_address0 =  (sc_lv<15>) (tmp_3_fu_206_p1.read());
}

void digitrec::thread_training_data_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        training_data_V_ce0 = ap_const_logic_1;
    } else {
        training_data_V_ce0 = ap_const_logic_0;
    }
}

void digitrec::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond1_fu_150_p2.read())) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_171_p2.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        case 8 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_183_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_update_knn_fu_135_ap_done.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            }
            break;
        case 64 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_digitrec_knn_vote_fu_145_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st7_fsm_6;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<7>) ("XXXXXXX");
            break;
    }
}

void digitrec::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"input_V\" :  \"" << input_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

