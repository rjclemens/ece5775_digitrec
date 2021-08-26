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
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<6> > knn_set_0_0_V_read;
    sc_in< sc_lv<6> > knn_set_0_1_V_read;
    sc_in< sc_lv<6> > knn_set_0_2_V_read;
    sc_in< sc_lv<6> > knn_set_1_0_V_read;
    sc_in< sc_lv<6> > knn_set_1_1_V_read;
    sc_in< sc_lv<6> > knn_set_1_2_V_read;
    sc_in< sc_lv<6> > knn_set_2_0_V_read;
    sc_in< sc_lv<6> > knn_set_2_1_V_read;
    sc_in< sc_lv<6> > knn_set_2_2_V_read;
    sc_in< sc_lv<6> > knn_set_3_0_V_read;
    sc_in< sc_lv<6> > knn_set_3_1_V_read;
    sc_in< sc_lv<6> > knn_set_3_2_V_read;
    sc_in< sc_lv<6> > knn_set_4_0_V_read;
    sc_in< sc_lv<6> > knn_set_4_1_V_read;
    sc_in< sc_lv<6> > knn_set_4_2_V_read;
    sc_in< sc_lv<6> > knn_set_5_0_V_read;
    sc_in< sc_lv<6> > knn_set_5_1_V_read;
    sc_in< sc_lv<6> > knn_set_5_2_V_read;
    sc_in< sc_lv<6> > knn_set_6_0_V_read;
    sc_in< sc_lv<6> > knn_set_6_1_V_read;
    sc_in< sc_lv<6> > knn_set_6_2_V_read;
    sc_in< sc_lv<6> > knn_set_7_0_V_read;
    sc_in< sc_lv<6> > knn_set_7_1_V_read;
    sc_in< sc_lv<6> > knn_set_7_2_V_read;
    sc_in< sc_lv<6> > knn_set_8_0_V_read;
    sc_in< sc_lv<6> > knn_set_8_1_V_read;
    sc_in< sc_lv<6> > knn_set_8_2_V_read;
    sc_in< sc_lv<6> > knn_set_9_0_V_read;
    sc_in< sc_lv<6> > knn_set_9_1_V_read;
    sc_in< sc_lv<6> > knn_set_9_2_V_read;
    sc_out< sc_lv<4> > ap_return;


    // Module declarations
    digitrec_knn_vote(sc_module_name name);
    SC_HAS_PROCESS(digitrec_knn_vote);

    ~digitrec_knn_vote();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_21;
    sc_signal< sc_lv<1> > tmp_6_1_fu_314_p2;
    sc_signal< sc_lv<1> > tmp_6_1_reg_735;
    sc_signal< sc_lv<8> > min_2_min_1_fu_320_p3;
    sc_signal< sc_lv<8> > min_2_min_1_reg_740;
    sc_signal< sc_lv<8> > sum_2_2_fu_350_p2;
    sc_signal< sc_lv<8> > sum_2_2_reg_746;
    sc_signal< sc_lv<7> > tmp3_fu_364_p2;
    sc_signal< sc_lv<7> > tmp3_reg_752;
    sc_signal< sc_lv<1> > tmp_6_2_fu_370_p2;
    sc_signal< sc_lv<1> > tmp_6_2_reg_757;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_75;
    sc_signal< sc_lv<1> > tmp_6_3_fu_393_p2;
    sc_signal< sc_lv<1> > tmp_6_3_reg_762;
    sc_signal< sc_lv<8> > min_2_min_3_fu_399_p3;
    sc_signal< sc_lv<8> > min_2_min_3_reg_768;
    sc_signal< sc_lv<8> > sum_4_2_fu_429_p2;
    sc_signal< sc_lv<8> > sum_4_2_reg_773;
    sc_signal< sc_lv<1> > tmp_6_4_fu_435_p2;
    sc_signal< sc_lv<1> > tmp_6_4_reg_778;
    sc_signal< sc_lv<7> > tmp5_fu_449_p2;
    sc_signal< sc_lv<7> > tmp5_reg_784;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_5_fu_518_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_5_reg_789;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_94;
    sc_signal< sc_lv<1> > tmp_6_6_fu_562_p2;
    sc_signal< sc_lv<1> > tmp_6_6_reg_794;
    sc_signal< sc_lv<8> > min_2_min_6_fu_568_p3;
    sc_signal< sc_lv<8> > min_2_min_6_reg_799;
    sc_signal< sc_lv<8> > sum_7_2_fu_598_p2;
    sc_signal< sc_lv<8> > sum_7_2_reg_805;
    sc_signal< sc_lv<7> > tmp8_fu_612_p2;
    sc_signal< sc_lv<7> > tmp8_reg_811;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_136;
    sc_signal< sc_lv<7> > tmp_8_0_2_cast_fu_266_p1;
    sc_signal< sc_lv<7> > tmp_8_0_1_cast_fu_262_p1;
    sc_signal< sc_lv<7> > tmp_fu_270_p2;
    sc_signal< sc_lv<8> > tmp_8_cast_fu_258_p1;
    sc_signal< sc_lv<8> > tmp_cast_fu_276_p1;
    sc_signal< sc_lv<7> > tmp_8_1_2_cast_fu_294_p1;
    sc_signal< sc_lv<7> > tmp_8_1_1_cast_fu_290_p1;
    sc_signal< sc_lv<7> > tmp1_fu_298_p2;
    sc_signal< sc_lv<8> > tmp_8_1_cast_fu_286_p1;
    sc_signal< sc_lv<8> > tmp1_cast_fu_304_p1;
    sc_signal< sc_lv<8> > sum_1_2_fu_308_p2;
    sc_signal< sc_lv<8> > sum_0_2_fu_280_p2;
    sc_signal< sc_lv<7> > tmp_8_2_2_cast_fu_336_p1;
    sc_signal< sc_lv<7> > tmp_8_2_1_cast_fu_332_p1;
    sc_signal< sc_lv<7> > tmp2_fu_340_p2;
    sc_signal< sc_lv<8> > tmp_8_2_cast_fu_328_p1;
    sc_signal< sc_lv<8> > tmp2_cast_fu_346_p1;
    sc_signal< sc_lv<7> > tmp_8_3_2_cast_fu_360_p1;
    sc_signal< sc_lv<7> > tmp_8_3_1_cast_fu_356_p1;
    sc_signal< sc_lv<8> > tmp_8_3_cast_fu_380_p1;
    sc_signal< sc_lv<8> > tmp3_cast_fu_384_p1;
    sc_signal< sc_lv<8> > sum_3_2_fu_387_p2;
    sc_signal< sc_lv<8> > min_2_min_2_fu_374_p3;
    sc_signal< sc_lv<7> > tmp_8_4_2_cast_fu_415_p1;
    sc_signal< sc_lv<7> > tmp_8_4_1_cast_fu_411_p1;
    sc_signal< sc_lv<7> > tmp4_fu_419_p2;
    sc_signal< sc_lv<8> > tmp_8_4_cast_fu_407_p1;
    sc_signal< sc_lv<8> > tmp4_cast_fu_425_p1;
    sc_signal< sc_lv<7> > tmp_8_5_2_cast_fu_445_p1;
    sc_signal< sc_lv<7> > tmp_8_5_1_cast_fu_441_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_465_p2;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_02_2_fu_458_p3;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_s_fu_455_p1;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_02_3_fu_469_p3;
    sc_signal< sc_lv<8> > tmp_8_5_cast_fu_486_p1;
    sc_signal< sc_lv<8> > tmp5_cast_fu_490_p1;
    sc_signal< sc_lv<8> > sum_5_2_fu_493_p2;
    sc_signal< sc_lv<8> > min_2_min_4_fu_481_p3;
    sc_signal< sc_lv<1> > tmp_6_5_fu_499_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_513_p2;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_4_fu_505_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_1_fu_477_p1;
    sc_signal< sc_lv<7> > tmp_8_6_2_cast_fu_542_p1;
    sc_signal< sc_lv<7> > tmp_8_6_1_cast_fu_538_p1;
    sc_signal< sc_lv<7> > tmp6_fu_546_p2;
    sc_signal< sc_lv<8> > tmp_8_6_cast_fu_534_p1;
    sc_signal< sc_lv<8> > tmp6_cast_fu_552_p1;
    sc_signal< sc_lv<8> > sum_6_2_fu_556_p2;
    sc_signal< sc_lv<8> > min_2_min_5_fu_526_p3;
    sc_signal< sc_lv<7> > tmp_8_7_2_cast_fu_584_p1;
    sc_signal< sc_lv<7> > tmp_8_7_1_cast_fu_580_p1;
    sc_signal< sc_lv<7> > tmp7_fu_588_p2;
    sc_signal< sc_lv<8> > tmp_8_7_cast_fu_576_p1;
    sc_signal< sc_lv<8> > tmp7_cast_fu_594_p1;
    sc_signal< sc_lv<7> > tmp_8_8_2_cast_fu_608_p1;
    sc_signal< sc_lv<7> > tmp_8_8_1_cast_fu_604_p1;
    sc_signal< sc_lv<1> > tmp_6_7_fu_618_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_630_p2;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_fu_622_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_7_fu_635_p3;
    sc_signal< sc_lv<8> > tmp_8_8_cast_fu_652_p1;
    sc_signal< sc_lv<8> > tmp8_cast_fu_656_p1;
    sc_signal< sc_lv<8> > sum_8_2_fu_659_p2;
    sc_signal< sc_lv<8> > min_2_min_7_fu_646_p3;
    sc_signal< sc_lv<1> > tmp_6_8_fu_665_p2;
    sc_signal< sc_lv<7> > tmp_8_9_2_cast_fu_687_p1;
    sc_signal< sc_lv<7> > tmp_8_9_1_cast_fu_683_p1;
    sc_signal< sc_lv<7> > tmp9_fu_691_p2;
    sc_signal< sc_lv<8> > tmp_8_9_cast_fu_679_p1;
    sc_signal< sc_lv<8> > tmp9_cast_fu_697_p1;
    sc_signal< sc_lv<8> > sum_9_2_fu_701_p2;
    sc_signal< sc_lv<8> > min_2_min_8_fu_671_p3;
    sc_signal< sc_lv<1> > tmp_6_9_fu_707_p2;
    sc_signal< sc_lv<1> > tmp_3_fu_721_p2;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_8_fu_713_p3;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_6_fu_642_p1;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_9_fu_727_p3;
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
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_agg_result_V_0_agg_result_V_02_1_fu_477_p1();
    void thread_agg_result_V_0_agg_result_V_02_2_fu_458_p3();
    void thread_agg_result_V_0_agg_result_V_02_3_fu_469_p3();
    void thread_agg_result_V_0_agg_result_V_02_4_fu_505_p3();
    void thread_agg_result_V_0_agg_result_V_02_5_fu_518_p3();
    void thread_agg_result_V_0_agg_result_V_02_6_fu_642_p1();
    void thread_agg_result_V_0_agg_result_V_02_7_fu_635_p3();
    void thread_agg_result_V_0_agg_result_V_02_8_fu_713_p3();
    void thread_agg_result_V_0_agg_result_V_02_9_fu_727_p3();
    void thread_agg_result_V_0_agg_result_V_02_fu_622_p3();
    void thread_agg_result_V_0_agg_result_V_s_fu_455_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_136();
    void thread_ap_sig_21();
    void thread_ap_sig_75();
    void thread_ap_sig_94();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_min_2_min_1_fu_320_p3();
    void thread_min_2_min_2_fu_374_p3();
    void thread_min_2_min_3_fu_399_p3();
    void thread_min_2_min_4_fu_481_p3();
    void thread_min_2_min_5_fu_526_p3();
    void thread_min_2_min_6_fu_568_p3();
    void thread_min_2_min_7_fu_646_p3();
    void thread_min_2_min_8_fu_671_p3();
    void thread_sum_0_2_fu_280_p2();
    void thread_sum_1_2_fu_308_p2();
    void thread_sum_2_2_fu_350_p2();
    void thread_sum_3_2_fu_387_p2();
    void thread_sum_4_2_fu_429_p2();
    void thread_sum_5_2_fu_493_p2();
    void thread_sum_6_2_fu_556_p2();
    void thread_sum_7_2_fu_598_p2();
    void thread_sum_8_2_fu_659_p2();
    void thread_sum_9_2_fu_701_p2();
    void thread_tmp1_cast_fu_304_p1();
    void thread_tmp1_fu_298_p2();
    void thread_tmp2_cast_fu_346_p1();
    void thread_tmp2_fu_340_p2();
    void thread_tmp3_cast_fu_384_p1();
    void thread_tmp3_fu_364_p2();
    void thread_tmp4_cast_fu_425_p1();
    void thread_tmp4_fu_419_p2();
    void thread_tmp5_cast_fu_490_p1();
    void thread_tmp5_fu_449_p2();
    void thread_tmp6_cast_fu_552_p1();
    void thread_tmp6_fu_546_p2();
    void thread_tmp7_cast_fu_594_p1();
    void thread_tmp7_fu_588_p2();
    void thread_tmp8_cast_fu_656_p1();
    void thread_tmp8_fu_612_p2();
    void thread_tmp9_cast_fu_697_p1();
    void thread_tmp9_fu_691_p2();
    void thread_tmp_1_fu_513_p2();
    void thread_tmp_2_fu_630_p2();
    void thread_tmp_3_fu_721_p2();
    void thread_tmp_6_1_fu_314_p2();
    void thread_tmp_6_2_fu_370_p2();
    void thread_tmp_6_3_fu_393_p2();
    void thread_tmp_6_4_fu_435_p2();
    void thread_tmp_6_5_fu_499_p2();
    void thread_tmp_6_6_fu_562_p2();
    void thread_tmp_6_7_fu_618_p2();
    void thread_tmp_6_8_fu_665_p2();
    void thread_tmp_6_9_fu_707_p2();
    void thread_tmp_8_0_1_cast_fu_262_p1();
    void thread_tmp_8_0_2_cast_fu_266_p1();
    void thread_tmp_8_1_1_cast_fu_290_p1();
    void thread_tmp_8_1_2_cast_fu_294_p1();
    void thread_tmp_8_1_cast_fu_286_p1();
    void thread_tmp_8_2_1_cast_fu_332_p1();
    void thread_tmp_8_2_2_cast_fu_336_p1();
    void thread_tmp_8_2_cast_fu_328_p1();
    void thread_tmp_8_3_1_cast_fu_356_p1();
    void thread_tmp_8_3_2_cast_fu_360_p1();
    void thread_tmp_8_3_cast_fu_380_p1();
    void thread_tmp_8_4_1_cast_fu_411_p1();
    void thread_tmp_8_4_2_cast_fu_415_p1();
    void thread_tmp_8_4_cast_fu_407_p1();
    void thread_tmp_8_5_1_cast_fu_441_p1();
    void thread_tmp_8_5_2_cast_fu_445_p1();
    void thread_tmp_8_5_cast_fu_486_p1();
    void thread_tmp_8_6_1_cast_fu_538_p1();
    void thread_tmp_8_6_2_cast_fu_542_p1();
    void thread_tmp_8_6_cast_fu_534_p1();
    void thread_tmp_8_7_1_cast_fu_580_p1();
    void thread_tmp_8_7_2_cast_fu_584_p1();
    void thread_tmp_8_7_cast_fu_576_p1();
    void thread_tmp_8_8_1_cast_fu_604_p1();
    void thread_tmp_8_8_2_cast_fu_608_p1();
    void thread_tmp_8_8_cast_fu_652_p1();
    void thread_tmp_8_9_1_cast_fu_683_p1();
    void thread_tmp_8_9_2_cast_fu_687_p1();
    void thread_tmp_8_9_cast_fu_679_p1();
    void thread_tmp_8_cast_fu_258_p1();
    void thread_tmp_cast_fu_276_p1();
    void thread_tmp_fu_270_p2();
    void thread_tmp_s_fu_465_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif