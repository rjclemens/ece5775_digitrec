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
    // Port declarations 57
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<6> > knn_set_0_0_V_read;
    sc_in< sc_lv<6> > knn_set_0_1_V_read;
    sc_in< sc_lv<6> > knn_set_0_2_V_read;
    sc_in< sc_lv<6> > knn_set_0_3_V_read;
    sc_in< sc_lv<6> > knn_set_0_4_V_read;
    sc_in< sc_lv<6> > knn_set_1_0_V_read;
    sc_in< sc_lv<6> > knn_set_1_1_V_read;
    sc_in< sc_lv<6> > knn_set_1_2_V_read;
    sc_in< sc_lv<6> > knn_set_1_3_V_read;
    sc_in< sc_lv<6> > knn_set_1_4_V_read;
    sc_in< sc_lv<6> > knn_set_2_0_V_read;
    sc_in< sc_lv<6> > knn_set_2_1_V_read;
    sc_in< sc_lv<6> > knn_set_2_2_V_read;
    sc_in< sc_lv<6> > knn_set_2_3_V_read;
    sc_in< sc_lv<6> > knn_set_2_4_V_read;
    sc_in< sc_lv<6> > knn_set_3_0_V_read;
    sc_in< sc_lv<6> > knn_set_3_1_V_read;
    sc_in< sc_lv<6> > knn_set_3_2_V_read;
    sc_in< sc_lv<6> > knn_set_3_3_V_read;
    sc_in< sc_lv<6> > knn_set_3_4_V_read;
    sc_in< sc_lv<6> > knn_set_4_0_V_read;
    sc_in< sc_lv<6> > knn_set_4_1_V_read;
    sc_in< sc_lv<6> > knn_set_4_2_V_read;
    sc_in< sc_lv<6> > knn_set_4_3_V_read;
    sc_in< sc_lv<6> > knn_set_4_4_V_read;
    sc_in< sc_lv<6> > knn_set_5_0_V_read;
    sc_in< sc_lv<6> > knn_set_5_1_V_read;
    sc_in< sc_lv<6> > knn_set_5_2_V_read;
    sc_in< sc_lv<6> > knn_set_5_3_V_read;
    sc_in< sc_lv<6> > knn_set_5_4_V_read;
    sc_in< sc_lv<6> > knn_set_6_0_V_read;
    sc_in< sc_lv<6> > knn_set_6_1_V_read;
    sc_in< sc_lv<6> > knn_set_6_2_V_read;
    sc_in< sc_lv<6> > knn_set_6_3_V_read;
    sc_in< sc_lv<6> > knn_set_6_4_V_read;
    sc_in< sc_lv<6> > knn_set_7_0_V_read;
    sc_in< sc_lv<6> > knn_set_7_1_V_read;
    sc_in< sc_lv<6> > knn_set_7_2_V_read;
    sc_in< sc_lv<6> > knn_set_7_3_V_read;
    sc_in< sc_lv<6> > knn_set_7_4_V_read;
    sc_in< sc_lv<6> > knn_set_8_0_V_read;
    sc_in< sc_lv<6> > knn_set_8_1_V_read;
    sc_in< sc_lv<6> > knn_set_8_2_V_read;
    sc_in< sc_lv<6> > knn_set_8_3_V_read;
    sc_in< sc_lv<6> > knn_set_8_4_V_read;
    sc_in< sc_lv<6> > knn_set_9_0_V_read;
    sc_in< sc_lv<6> > knn_set_9_1_V_read;
    sc_in< sc_lv<6> > knn_set_9_2_V_read;
    sc_in< sc_lv<6> > knn_set_9_3_V_read;
    sc_in< sc_lv<6> > knn_set_9_4_V_read;
    sc_out< sc_lv<4> > ap_return;


    // Module declarations
    digitrec_knn_vote(sc_module_name name);
    SC_HAS_PROCESS(digitrec_knn_vote);

    ~digitrec_knn_vote();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_22;
    sc_signal< sc_lv<1> > tmp_6_1_fu_530_p2;
    sc_signal< sc_lv<1> > tmp_6_1_reg_1172;
    sc_signal< sc_lv<9> > min_2_min_1_fu_536_p3;
    sc_signal< sc_lv<9> > min_2_min_1_reg_1177;
    sc_signal< sc_lv<9> > sum_2_4_fu_594_p2;
    sc_signal< sc_lv<9> > sum_2_4_reg_1183;
    sc_signal< sc_lv<1> > tmp_6_2_fu_600_p2;
    sc_signal< sc_lv<1> > tmp_6_2_reg_1189;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_94;
    sc_signal< sc_lv<1> > tmp_6_3_fu_666_p2;
    sc_signal< sc_lv<1> > tmp_6_3_reg_1194;
    sc_signal< sc_lv<9> > min_2_min_3_fu_672_p3;
    sc_signal< sc_lv<9> > min_2_min_3_reg_1200;
    sc_signal< sc_lv<9> > sum_4_4_fu_730_p2;
    sc_signal< sc_lv<9> > sum_4_4_reg_1206;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_5_fu_848_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_5_reg_1212;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_109;
    sc_signal< sc_lv<9> > min_2_min_5_fu_856_p3;
    sc_signal< sc_lv<9> > min_2_min_5_reg_1217;
    sc_signal< sc_lv<9> > sum_6_4_fu_914_p2;
    sc_signal< sc_lv<9> > sum_6_4_reg_1223;
    sc_signal< sc_lv<1> > tmp_6_6_fu_920_p2;
    sc_signal< sc_lv<1> > tmp_6_6_reg_1229;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_122;
    sc_signal< sc_lv<1> > tmp_6_7_fu_986_p2;
    sc_signal< sc_lv<1> > tmp_6_7_reg_1234;
    sc_signal< sc_lv<9> > min_2_min_7_fu_992_p3;
    sc_signal< sc_lv<9> > min_2_min_7_reg_1240;
    sc_signal< sc_lv<9> > sum_8_4_fu_1050_p2;
    sc_signal< sc_lv<9> > sum_8_4_reg_1246;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_181;
    sc_signal< sc_lv<7> > tmp_8_0_3_cast_fu_430_p1;
    sc_signal< sc_lv<7> > tmp_8_0_2_cast_fu_426_p1;
    sc_signal< sc_lv<7> > tmp2_fu_438_p2;
    sc_signal< sc_lv<7> > tmp_8_0_4_cast_fu_434_p1;
    sc_signal< sc_lv<7> > tmp_8_cast_fu_418_p1;
    sc_signal< sc_lv<7> > tmp4_fu_448_p2;
    sc_signal< sc_lv<8> > tmp_8_0_1_cast_fu_422_p1;
    sc_signal< sc_lv<8> > tmp4_cast_fu_454_p1;
    sc_signal< sc_lv<8> > tmp3_fu_458_p2;
    sc_signal< sc_lv<9> > tmp2_cast_fu_444_p1;
    sc_signal< sc_lv<9> > tmp3_cast_fu_464_p1;
    sc_signal< sc_lv<7> > tmp_8_1_3_cast_fu_486_p1;
    sc_signal< sc_lv<7> > tmp_8_1_2_cast_fu_482_p1;
    sc_signal< sc_lv<7> > tmp7_fu_494_p2;
    sc_signal< sc_lv<7> > tmp_8_1_4_cast_fu_490_p1;
    sc_signal< sc_lv<7> > tmp_8_1_cast_fu_474_p1;
    sc_signal< sc_lv<7> > tmp9_fu_504_p2;
    sc_signal< sc_lv<8> > tmp_8_1_1_cast_fu_478_p1;
    sc_signal< sc_lv<8> > tmp9_cast_fu_510_p1;
    sc_signal< sc_lv<8> > tmp8_fu_514_p2;
    sc_signal< sc_lv<9> > tmp7_cast_fu_500_p1;
    sc_signal< sc_lv<9> > tmp8_cast_fu_520_p1;
    sc_signal< sc_lv<9> > sum_1_4_fu_524_p2;
    sc_signal< sc_lv<9> > sum_0_4_fu_468_p2;
    sc_signal< sc_lv<7> > tmp_8_2_3_cast_fu_556_p1;
    sc_signal< sc_lv<7> > tmp_8_2_2_cast_fu_552_p1;
    sc_signal< sc_lv<7> > tmp_fu_564_p2;
    sc_signal< sc_lv<7> > tmp_8_2_4_cast_fu_560_p1;
    sc_signal< sc_lv<7> > tmp_8_2_cast_fu_544_p1;
    sc_signal< sc_lv<7> > tmp1_fu_574_p2;
    sc_signal< sc_lv<8> > tmp_8_2_1_cast_fu_548_p1;
    sc_signal< sc_lv<8> > tmp14_cast_fu_580_p1;
    sc_signal< sc_lv<8> > tmp5_fu_584_p2;
    sc_signal< sc_lv<9> > tmp12_cast_fu_570_p1;
    sc_signal< sc_lv<9> > tmp13_cast_fu_590_p1;
    sc_signal< sc_lv<7> > tmp_8_3_3_cast_fu_622_p1;
    sc_signal< sc_lv<7> > tmp_8_3_2_cast_fu_618_p1;
    sc_signal< sc_lv<7> > tmp6_fu_630_p2;
    sc_signal< sc_lv<7> > tmp_8_3_4_cast_fu_626_p1;
    sc_signal< sc_lv<7> > tmp_8_3_cast_fu_610_p1;
    sc_signal< sc_lv<7> > tmp10_fu_640_p2;
    sc_signal< sc_lv<8> > tmp_8_3_1_cast_fu_614_p1;
    sc_signal< sc_lv<8> > tmp19_cast_fu_646_p1;
    sc_signal< sc_lv<8> > tmp11_fu_650_p2;
    sc_signal< sc_lv<9> > tmp17_cast_fu_636_p1;
    sc_signal< sc_lv<9> > tmp18_cast_fu_656_p1;
    sc_signal< sc_lv<9> > sum_3_4_fu_660_p2;
    sc_signal< sc_lv<9> > min_2_min_2_fu_604_p3;
    sc_signal< sc_lv<7> > tmp_8_4_3_cast_fu_692_p1;
    sc_signal< sc_lv<7> > tmp_8_4_2_cast_fu_688_p1;
    sc_signal< sc_lv<7> > tmp12_fu_700_p2;
    sc_signal< sc_lv<7> > tmp_8_4_4_cast_fu_696_p1;
    sc_signal< sc_lv<7> > tmp_8_4_cast_fu_680_p1;
    sc_signal< sc_lv<7> > tmp13_fu_710_p2;
    sc_signal< sc_lv<8> > tmp_8_4_1_cast_fu_684_p1;
    sc_signal< sc_lv<8> > tmp24_cast_fu_716_p1;
    sc_signal< sc_lv<8> > tmp14_fu_720_p2;
    sc_signal< sc_lv<9> > tmp22_cast_fu_706_p1;
    sc_signal< sc_lv<9> > tmp23_cast_fu_726_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_746_p2;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_02_2_fu_739_p3;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_s_fu_736_p1;
    sc_signal< sc_lv<2> > agg_result_V_0_agg_result_V_02_3_fu_750_p3;
    sc_signal< sc_lv<1> > tmp_6_4_fu_762_p2;
    sc_signal< sc_lv<7> > tmp_8_5_3_cast_fu_784_p1;
    sc_signal< sc_lv<7> > tmp_8_5_2_cast_fu_780_p1;
    sc_signal< sc_lv<7> > tmp15_fu_792_p2;
    sc_signal< sc_lv<7> > tmp_8_5_4_cast_fu_788_p1;
    sc_signal< sc_lv<7> > tmp_8_5_cast_fu_772_p1;
    sc_signal< sc_lv<7> > tmp16_fu_802_p2;
    sc_signal< sc_lv<8> > tmp_8_5_1_cast_fu_776_p1;
    sc_signal< sc_lv<8> > tmp29_cast_fu_808_p1;
    sc_signal< sc_lv<8> > tmp17_fu_812_p2;
    sc_signal< sc_lv<9> > tmp27_cast_fu_798_p1;
    sc_signal< sc_lv<9> > tmp28_cast_fu_818_p1;
    sc_signal< sc_lv<9> > sum_5_4_fu_822_p2;
    sc_signal< sc_lv<9> > min_2_min_4_fu_766_p3;
    sc_signal< sc_lv<1> > tmp_6_5_fu_828_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_842_p2;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_4_fu_834_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_1_fu_758_p1;
    sc_signal< sc_lv<7> > tmp_8_6_3_cast_fu_876_p1;
    sc_signal< sc_lv<7> > tmp_8_6_2_cast_fu_872_p1;
    sc_signal< sc_lv<7> > tmp18_fu_884_p2;
    sc_signal< sc_lv<7> > tmp_8_6_4_cast_fu_880_p1;
    sc_signal< sc_lv<7> > tmp_8_6_cast_fu_864_p1;
    sc_signal< sc_lv<7> > tmp19_fu_894_p2;
    sc_signal< sc_lv<8> > tmp_8_6_1_cast_fu_868_p1;
    sc_signal< sc_lv<8> > tmp34_cast_fu_900_p1;
    sc_signal< sc_lv<8> > tmp20_fu_904_p2;
    sc_signal< sc_lv<9> > tmp32_cast_fu_890_p1;
    sc_signal< sc_lv<9> > tmp33_cast_fu_910_p1;
    sc_signal< sc_lv<7> > tmp_8_7_3_cast_fu_942_p1;
    sc_signal< sc_lv<7> > tmp_8_7_2_cast_fu_938_p1;
    sc_signal< sc_lv<7> > tmp21_fu_950_p2;
    sc_signal< sc_lv<7> > tmp_8_7_4_cast_fu_946_p1;
    sc_signal< sc_lv<7> > tmp_8_7_cast_fu_930_p1;
    sc_signal< sc_lv<7> > tmp22_fu_960_p2;
    sc_signal< sc_lv<8> > tmp_8_7_1_cast_fu_934_p1;
    sc_signal< sc_lv<8> > tmp39_cast_fu_966_p1;
    sc_signal< sc_lv<8> > tmp23_fu_970_p2;
    sc_signal< sc_lv<9> > tmp37_cast_fu_956_p1;
    sc_signal< sc_lv<9> > tmp38_cast_fu_976_p1;
    sc_signal< sc_lv<9> > sum_7_4_fu_980_p2;
    sc_signal< sc_lv<9> > min_2_min_6_fu_924_p3;
    sc_signal< sc_lv<7> > tmp_8_8_3_cast_fu_1012_p1;
    sc_signal< sc_lv<7> > tmp_8_8_2_cast_fu_1008_p1;
    sc_signal< sc_lv<7> > tmp24_fu_1020_p2;
    sc_signal< sc_lv<7> > tmp_8_8_4_cast_fu_1016_p1;
    sc_signal< sc_lv<7> > tmp_8_8_cast_fu_1000_p1;
    sc_signal< sc_lv<7> > tmp25_fu_1030_p2;
    sc_signal< sc_lv<8> > tmp_8_8_1_cast_fu_1004_p1;
    sc_signal< sc_lv<8> > tmp44_cast_fu_1036_p1;
    sc_signal< sc_lv<8> > tmp26_fu_1040_p2;
    sc_signal< sc_lv<9> > tmp42_cast_fu_1026_p1;
    sc_signal< sc_lv<9> > tmp43_cast_fu_1046_p1;
    sc_signal< sc_lv<1> > tmp_7_fu_1063_p2;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_fu_1056_p3;
    sc_signal< sc_lv<3> > agg_result_V_0_agg_result_V_02_7_fu_1067_p3;
    sc_signal< sc_lv<1> > tmp_6_8_fu_1078_p2;
    sc_signal< sc_lv<7> > tmp_8_9_1_cast_fu_1092_p1;
    sc_signal< sc_lv<7> > tmp_8_9_cast_fu_1088_p1;
    sc_signal< sc_lv<7> > tmp27_fu_1108_p2;
    sc_signal< sc_lv<7> > tmp_8_9_4_cast_fu_1104_p1;
    sc_signal< sc_lv<7> > tmp_8_9_3_cast_fu_1100_p1;
    sc_signal< sc_lv<7> > tmp28_fu_1118_p2;
    sc_signal< sc_lv<8> > tmp_8_9_2_cast_fu_1096_p1;
    sc_signal< sc_lv<8> > tmp47_cast_fu_1124_p1;
    sc_signal< sc_lv<8> > tmp29_fu_1128_p2;
    sc_signal< sc_lv<9> > tmp45_cast_fu_1114_p1;
    sc_signal< sc_lv<9> > tmp46_cast_fu_1134_p1;
    sc_signal< sc_lv<9> > sum_9_4_fu_1138_p2;
    sc_signal< sc_lv<9> > min_2_min_8_fu_1082_p3;
    sc_signal< sc_lv<1> > tmp_6_9_fu_1144_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_1158_p2;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_8_fu_1150_p3;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_6_fu_1074_p1;
    sc_signal< sc_lv<4> > agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
    sc_signal< sc_lv<4> > ap_return_preg;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
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
    void thread_agg_result_V_0_agg_result_V_02_1_fu_758_p1();
    void thread_agg_result_V_0_agg_result_V_02_2_fu_739_p3();
    void thread_agg_result_V_0_agg_result_V_02_3_fu_750_p3();
    void thread_agg_result_V_0_agg_result_V_02_4_fu_834_p3();
    void thread_agg_result_V_0_agg_result_V_02_5_fu_848_p3();
    void thread_agg_result_V_0_agg_result_V_02_6_fu_1074_p1();
    void thread_agg_result_V_0_agg_result_V_02_7_fu_1067_p3();
    void thread_agg_result_V_0_agg_result_V_02_8_fu_1150_p3();
    void thread_agg_result_V_0_agg_result_V_02_9_fu_1164_p3();
    void thread_agg_result_V_0_agg_result_V_02_fu_1056_p3();
    void thread_agg_result_V_0_agg_result_V_s_fu_736_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_109();
    void thread_ap_sig_122();
    void thread_ap_sig_181();
    void thread_ap_sig_22();
    void thread_ap_sig_94();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_min_2_min_1_fu_536_p3();
    void thread_min_2_min_2_fu_604_p3();
    void thread_min_2_min_3_fu_672_p3();
    void thread_min_2_min_4_fu_766_p3();
    void thread_min_2_min_5_fu_856_p3();
    void thread_min_2_min_6_fu_924_p3();
    void thread_min_2_min_7_fu_992_p3();
    void thread_min_2_min_8_fu_1082_p3();
    void thread_sum_0_4_fu_468_p2();
    void thread_sum_1_4_fu_524_p2();
    void thread_sum_2_4_fu_594_p2();
    void thread_sum_3_4_fu_660_p2();
    void thread_sum_4_4_fu_730_p2();
    void thread_sum_5_4_fu_822_p2();
    void thread_sum_6_4_fu_914_p2();
    void thread_sum_7_4_fu_980_p2();
    void thread_sum_8_4_fu_1050_p2();
    void thread_sum_9_4_fu_1138_p2();
    void thread_tmp10_fu_640_p2();
    void thread_tmp11_fu_650_p2();
    void thread_tmp12_cast_fu_570_p1();
    void thread_tmp12_fu_700_p2();
    void thread_tmp13_cast_fu_590_p1();
    void thread_tmp13_fu_710_p2();
    void thread_tmp14_cast_fu_580_p1();
    void thread_tmp14_fu_720_p2();
    void thread_tmp15_fu_792_p2();
    void thread_tmp16_fu_802_p2();
    void thread_tmp17_cast_fu_636_p1();
    void thread_tmp17_fu_812_p2();
    void thread_tmp18_cast_fu_656_p1();
    void thread_tmp18_fu_884_p2();
    void thread_tmp19_cast_fu_646_p1();
    void thread_tmp19_fu_894_p2();
    void thread_tmp1_fu_574_p2();
    void thread_tmp20_fu_904_p2();
    void thread_tmp21_fu_950_p2();
    void thread_tmp22_cast_fu_706_p1();
    void thread_tmp22_fu_960_p2();
    void thread_tmp23_cast_fu_726_p1();
    void thread_tmp23_fu_970_p2();
    void thread_tmp24_cast_fu_716_p1();
    void thread_tmp24_fu_1020_p2();
    void thread_tmp25_fu_1030_p2();
    void thread_tmp26_fu_1040_p2();
    void thread_tmp27_cast_fu_798_p1();
    void thread_tmp27_fu_1108_p2();
    void thread_tmp28_cast_fu_818_p1();
    void thread_tmp28_fu_1118_p2();
    void thread_tmp29_cast_fu_808_p1();
    void thread_tmp29_fu_1128_p2();
    void thread_tmp2_cast_fu_444_p1();
    void thread_tmp2_fu_438_p2();
    void thread_tmp32_cast_fu_890_p1();
    void thread_tmp33_cast_fu_910_p1();
    void thread_tmp34_cast_fu_900_p1();
    void thread_tmp37_cast_fu_956_p1();
    void thread_tmp38_cast_fu_976_p1();
    void thread_tmp39_cast_fu_966_p1();
    void thread_tmp3_cast_fu_464_p1();
    void thread_tmp3_fu_458_p2();
    void thread_tmp42_cast_fu_1026_p1();
    void thread_tmp43_cast_fu_1046_p1();
    void thread_tmp44_cast_fu_1036_p1();
    void thread_tmp45_cast_fu_1114_p1();
    void thread_tmp46_cast_fu_1134_p1();
    void thread_tmp47_cast_fu_1124_p1();
    void thread_tmp4_cast_fu_454_p1();
    void thread_tmp4_fu_448_p2();
    void thread_tmp5_fu_584_p2();
    void thread_tmp6_fu_630_p2();
    void thread_tmp7_cast_fu_500_p1();
    void thread_tmp7_fu_494_p2();
    void thread_tmp8_cast_fu_520_p1();
    void thread_tmp8_fu_514_p2();
    void thread_tmp9_cast_fu_510_p1();
    void thread_tmp9_fu_504_p2();
    void thread_tmp_6_1_fu_530_p2();
    void thread_tmp_6_2_fu_600_p2();
    void thread_tmp_6_3_fu_666_p2();
    void thread_tmp_6_4_fu_762_p2();
    void thread_tmp_6_5_fu_828_p2();
    void thread_tmp_6_6_fu_920_p2();
    void thread_tmp_6_7_fu_986_p2();
    void thread_tmp_6_8_fu_1078_p2();
    void thread_tmp_6_9_fu_1144_p2();
    void thread_tmp_6_fu_842_p2();
    void thread_tmp_7_fu_1063_p2();
    void thread_tmp_8_0_1_cast_fu_422_p1();
    void thread_tmp_8_0_2_cast_fu_426_p1();
    void thread_tmp_8_0_3_cast_fu_430_p1();
    void thread_tmp_8_0_4_cast_fu_434_p1();
    void thread_tmp_8_1_1_cast_fu_478_p1();
    void thread_tmp_8_1_2_cast_fu_482_p1();
    void thread_tmp_8_1_3_cast_fu_486_p1();
    void thread_tmp_8_1_4_cast_fu_490_p1();
    void thread_tmp_8_1_cast_fu_474_p1();
    void thread_tmp_8_2_1_cast_fu_548_p1();
    void thread_tmp_8_2_2_cast_fu_552_p1();
    void thread_tmp_8_2_3_cast_fu_556_p1();
    void thread_tmp_8_2_4_cast_fu_560_p1();
    void thread_tmp_8_2_cast_fu_544_p1();
    void thread_tmp_8_3_1_cast_fu_614_p1();
    void thread_tmp_8_3_2_cast_fu_618_p1();
    void thread_tmp_8_3_3_cast_fu_622_p1();
    void thread_tmp_8_3_4_cast_fu_626_p1();
    void thread_tmp_8_3_cast_fu_610_p1();
    void thread_tmp_8_4_1_cast_fu_684_p1();
    void thread_tmp_8_4_2_cast_fu_688_p1();
    void thread_tmp_8_4_3_cast_fu_692_p1();
    void thread_tmp_8_4_4_cast_fu_696_p1();
    void thread_tmp_8_4_cast_fu_680_p1();
    void thread_tmp_8_5_1_cast_fu_776_p1();
    void thread_tmp_8_5_2_cast_fu_780_p1();
    void thread_tmp_8_5_3_cast_fu_784_p1();
    void thread_tmp_8_5_4_cast_fu_788_p1();
    void thread_tmp_8_5_cast_fu_772_p1();
    void thread_tmp_8_6_1_cast_fu_868_p1();
    void thread_tmp_8_6_2_cast_fu_872_p1();
    void thread_tmp_8_6_3_cast_fu_876_p1();
    void thread_tmp_8_6_4_cast_fu_880_p1();
    void thread_tmp_8_6_cast_fu_864_p1();
    void thread_tmp_8_7_1_cast_fu_934_p1();
    void thread_tmp_8_7_2_cast_fu_938_p1();
    void thread_tmp_8_7_3_cast_fu_942_p1();
    void thread_tmp_8_7_4_cast_fu_946_p1();
    void thread_tmp_8_7_cast_fu_930_p1();
    void thread_tmp_8_8_1_cast_fu_1004_p1();
    void thread_tmp_8_8_2_cast_fu_1008_p1();
    void thread_tmp_8_8_3_cast_fu_1012_p1();
    void thread_tmp_8_8_4_cast_fu_1016_p1();
    void thread_tmp_8_8_cast_fu_1000_p1();
    void thread_tmp_8_9_1_cast_fu_1092_p1();
    void thread_tmp_8_9_2_cast_fu_1096_p1();
    void thread_tmp_8_9_3_cast_fu_1100_p1();
    void thread_tmp_8_9_4_cast_fu_1104_p1();
    void thread_tmp_8_9_cast_fu_1088_p1();
    void thread_tmp_8_cast_fu_418_p1();
    void thread_tmp_9_fu_1158_p2();
    void thread_tmp_fu_564_p2();
    void thread_tmp_s_fu_746_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif