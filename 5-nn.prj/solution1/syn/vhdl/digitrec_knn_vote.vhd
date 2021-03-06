-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity digitrec_knn_vote is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    knn_set_0_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_0_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_0_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_0_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_0_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_4_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of digitrec_knn_vote is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_22 : BOOLEAN;
    signal tmp_6_1_fu_530_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_1_reg_1172 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_1_fu_536_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_1_reg_1177 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_2_4_fu_594_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_2_4_reg_1183 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_6_2_fu_600_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_2_reg_1189 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_94 : BOOLEAN;
    signal tmp_6_3_fu_666_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_3_reg_1194 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_3_fu_672_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_3_reg_1200 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_4_4_fu_730_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_4_4_reg_1206 : STD_LOGIC_VECTOR (8 downto 0);
    signal agg_result_V_0_agg_result_V_02_5_fu_848_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_5_reg_1212 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_109 : BOOLEAN;
    signal min_2_min_5_fu_856_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_5_reg_1217 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_6_4_fu_914_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_6_4_reg_1223 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_6_6_fu_920_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_6_reg_1229 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_122 : BOOLEAN;
    signal tmp_6_7_fu_986_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_7_reg_1234 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_7_fu_992_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_7_reg_1240 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_8_4_fu_1050_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_8_4_reg_1246 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_181 : BOOLEAN;
    signal tmp_8_0_3_cast_fu_430_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_0_2_cast_fu_426_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp2_fu_438_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_0_4_cast_fu_434_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_cast_fu_418_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_fu_448_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_0_1_cast_fu_422_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp4_cast_fu_454_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp3_fu_458_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp2_cast_fu_444_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp3_cast_fu_464_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_1_3_cast_fu_486_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_2_cast_fu_482_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp7_fu_494_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_4_cast_fu_490_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_cast_fu_474_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp9_fu_504_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_1_cast_fu_478_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp9_cast_fu_510_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp8_fu_514_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp7_cast_fu_500_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp8_cast_fu_520_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_1_4_fu_524_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_0_4_fu_468_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_2_3_cast_fu_556_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_2_cast_fu_552_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_564_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_4_cast_fu_560_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_cast_fu_544_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp1_fu_574_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_1_cast_fu_548_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp14_cast_fu_580_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp5_fu_584_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp12_cast_fu_570_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp13_cast_fu_590_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_3_3_cast_fu_622_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_2_cast_fu_618_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp6_fu_630_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_4_cast_fu_626_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_cast_fu_610_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp10_fu_640_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_1_cast_fu_614_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp19_cast_fu_646_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp11_fu_650_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp17_cast_fu_636_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp18_cast_fu_656_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_3_4_fu_660_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_2_fu_604_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_4_3_cast_fu_692_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_2_cast_fu_688_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp12_fu_700_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_4_cast_fu_696_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_cast_fu_680_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp13_fu_710_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_1_cast_fu_684_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp24_cast_fu_716_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp14_fu_720_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp22_cast_fu_706_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp23_cast_fu_726_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_s_fu_746_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_2_fu_739_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_V_0_agg_result_V_s_fu_736_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_V_0_agg_result_V_02_3_fu_750_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_4_fu_762_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_5_3_cast_fu_784_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_2_cast_fu_780_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp15_fu_792_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_4_cast_fu_788_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_cast_fu_772_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp16_fu_802_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_1_cast_fu_776_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp29_cast_fu_808_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp17_fu_812_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp27_cast_fu_798_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp28_cast_fu_818_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_5_4_fu_822_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_4_fu_766_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_6_5_fu_828_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_842_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_4_fu_834_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_1_fu_758_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_8_6_3_cast_fu_876_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_2_cast_fu_872_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp18_fu_884_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_4_cast_fu_880_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_cast_fu_864_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp19_fu_894_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_1_cast_fu_868_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp34_cast_fu_900_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp20_fu_904_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp32_cast_fu_890_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp33_cast_fu_910_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_7_3_cast_fu_942_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_2_cast_fu_938_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp21_fu_950_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_4_cast_fu_946_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_cast_fu_930_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp22_fu_960_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_1_cast_fu_934_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp39_cast_fu_966_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp23_fu_970_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp37_cast_fu_956_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp38_cast_fu_976_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_7_4_fu_980_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_6_fu_924_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_8_3_cast_fu_1012_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_2_cast_fu_1008_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp24_fu_1020_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_4_cast_fu_1016_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_cast_fu_1000_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp25_fu_1030_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_1_cast_fu_1004_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp44_cast_fu_1036_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp26_fu_1040_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp42_cast_fu_1026_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp43_cast_fu_1046_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_7_fu_1063_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_fu_1056_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_7_fu_1067_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_6_8_fu_1078_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_9_1_cast_fu_1092_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_cast_fu_1088_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp27_fu_1108_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_4_cast_fu_1104_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_3_cast_fu_1100_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp28_fu_1118_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_2_cast_fu_1096_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp47_cast_fu_1124_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp29_fu_1128_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp45_cast_fu_1114_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp46_cast_fu_1134_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal sum_9_4_fu_1138_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal min_2_min_8_fu_1082_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_6_9_fu_1144_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_1158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_8_fu_1150_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal agg_result_V_0_agg_result_V_02_6_fu_1074_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal agg_result_V_0_agg_result_V_02_9_fu_1164_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv4_0;
            else
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
                    ap_return_preg <= agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                agg_result_V_0_agg_result_V_02_5_reg_1212 <= agg_result_V_0_agg_result_V_02_5_fu_848_p3;
                min_2_min_5_reg_1217 <= min_2_min_5_fu_856_p3;
                sum_6_4_reg_1223 <= sum_6_4_fu_914_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                min_2_min_1_reg_1177 <= min_2_min_1_fu_536_p3;
                sum_2_4_reg_1183 <= sum_2_4_fu_594_p2;
                tmp_6_1_reg_1172 <= tmp_6_1_fu_530_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                min_2_min_3_reg_1200 <= min_2_min_3_fu_672_p3;
                sum_4_4_reg_1206 <= sum_4_4_fu_730_p2;
                tmp_6_2_reg_1189 <= tmp_6_2_fu_600_p2;
                tmp_6_3_reg_1194 <= tmp_6_3_fu_666_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                min_2_min_7_reg_1240 <= min_2_min_7_fu_992_p3;
                sum_8_4_reg_1246 <= sum_8_4_fu_1050_p2;
                tmp_6_6_reg_1229 <= tmp_6_6_fu_920_p2;
                tmp_6_7_reg_1234 <= tmp_6_7_fu_986_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    agg_result_V_0_agg_result_V_02_1_fu_758_p1 <= std_logic_vector(resize(unsigned(agg_result_V_0_agg_result_V_02_3_fu_750_p3),3));
    agg_result_V_0_agg_result_V_02_2_fu_739_p3 <= 
        ap_const_lv2_3 when (tmp_6_3_reg_1194(0) = '1') else 
        ap_const_lv2_2;
    agg_result_V_0_agg_result_V_02_3_fu_750_p3 <= 
        agg_result_V_0_agg_result_V_02_2_fu_739_p3 when (tmp_s_fu_746_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_s_fu_736_p1;
    agg_result_V_0_agg_result_V_02_4_fu_834_p3 <= 
        ap_const_lv3_5 when (tmp_6_5_fu_828_p2(0) = '1') else 
        ap_const_lv3_4;
    agg_result_V_0_agg_result_V_02_5_fu_848_p3 <= 
        agg_result_V_0_agg_result_V_02_4_fu_834_p3 when (tmp_6_fu_842_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_1_fu_758_p1;
    agg_result_V_0_agg_result_V_02_6_fu_1074_p1 <= std_logic_vector(resize(unsigned(agg_result_V_0_agg_result_V_02_7_fu_1067_p3),4));
    agg_result_V_0_agg_result_V_02_7_fu_1067_p3 <= 
        agg_result_V_0_agg_result_V_02_fu_1056_p3 when (tmp_7_fu_1063_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_5_reg_1212;
    agg_result_V_0_agg_result_V_02_8_fu_1150_p3 <= 
        ap_const_lv4_9 when (tmp_6_9_fu_1144_p2(0) = '1') else 
        ap_const_lv4_8;
    agg_result_V_0_agg_result_V_02_9_fu_1164_p3 <= 
        agg_result_V_0_agg_result_V_02_8_fu_1150_p3 when (tmp_9_fu_1158_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_6_fu_1074_p1;
    agg_result_V_0_agg_result_V_02_fu_1056_p3 <= 
        ap_const_lv3_7 when (tmp_6_7_reg_1234(0) = '1') else 
        ap_const_lv3_6;
    agg_result_V_0_agg_result_V_s_fu_736_p1 <= std_logic_vector(resize(unsigned(tmp_6_1_reg_1172),2));

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or (ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_sig_cseq_ST_st5_fsm_4, agg_result_V_0_agg_result_V_02_9_fu_1164_p3, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            ap_return <= agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_109_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_109 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_122_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_122 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_181_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_181 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_22_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_22 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_94_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_94 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_22)
    begin
        if (ap_sig_22) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_94)
    begin
        if (ap_sig_94) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_109)
    begin
        if (ap_sig_109) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_122)
    begin
        if (ap_sig_122) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_181)
    begin
        if (ap_sig_181) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;

    min_2_min_1_fu_536_p3 <= 
        sum_1_4_fu_524_p2 when (tmp_6_1_fu_530_p2(0) = '1') else 
        sum_0_4_fu_468_p2;
    min_2_min_2_fu_604_p3 <= 
        sum_2_4_reg_1183 when (tmp_6_2_fu_600_p2(0) = '1') else 
        min_2_min_1_reg_1177;
    min_2_min_3_fu_672_p3 <= 
        sum_3_4_fu_660_p2 when (tmp_6_3_fu_666_p2(0) = '1') else 
        min_2_min_2_fu_604_p3;
    min_2_min_4_fu_766_p3 <= 
        sum_4_4_reg_1206 when (tmp_6_4_fu_762_p2(0) = '1') else 
        min_2_min_3_reg_1200;
    min_2_min_5_fu_856_p3 <= 
        sum_5_4_fu_822_p2 when (tmp_6_5_fu_828_p2(0) = '1') else 
        min_2_min_4_fu_766_p3;
    min_2_min_6_fu_924_p3 <= 
        sum_6_4_reg_1223 when (tmp_6_6_fu_920_p2(0) = '1') else 
        min_2_min_5_reg_1217;
    min_2_min_7_fu_992_p3 <= 
        sum_7_4_fu_980_p2 when (tmp_6_7_fu_986_p2(0) = '1') else 
        min_2_min_6_fu_924_p3;
    min_2_min_8_fu_1082_p3 <= 
        sum_8_4_reg_1246 when (tmp_6_8_fu_1078_p2(0) = '1') else 
        min_2_min_7_reg_1240;
    sum_0_4_fu_468_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_444_p1) + unsigned(tmp3_cast_fu_464_p1));
    sum_1_4_fu_524_p2 <= std_logic_vector(unsigned(tmp7_cast_fu_500_p1) + unsigned(tmp8_cast_fu_520_p1));
    sum_2_4_fu_594_p2 <= std_logic_vector(unsigned(tmp12_cast_fu_570_p1) + unsigned(tmp13_cast_fu_590_p1));
    sum_3_4_fu_660_p2 <= std_logic_vector(unsigned(tmp17_cast_fu_636_p1) + unsigned(tmp18_cast_fu_656_p1));
    sum_4_4_fu_730_p2 <= std_logic_vector(unsigned(tmp22_cast_fu_706_p1) + unsigned(tmp23_cast_fu_726_p1));
    sum_5_4_fu_822_p2 <= std_logic_vector(unsigned(tmp27_cast_fu_798_p1) + unsigned(tmp28_cast_fu_818_p1));
    sum_6_4_fu_914_p2 <= std_logic_vector(unsigned(tmp32_cast_fu_890_p1) + unsigned(tmp33_cast_fu_910_p1));
    sum_7_4_fu_980_p2 <= std_logic_vector(unsigned(tmp37_cast_fu_956_p1) + unsigned(tmp38_cast_fu_976_p1));
    sum_8_4_fu_1050_p2 <= std_logic_vector(unsigned(tmp42_cast_fu_1026_p1) + unsigned(tmp43_cast_fu_1046_p1));
    sum_9_4_fu_1138_p2 <= std_logic_vector(unsigned(tmp45_cast_fu_1114_p1) + unsigned(tmp46_cast_fu_1134_p1));
    tmp10_fu_640_p2 <= std_logic_vector(unsigned(tmp_8_3_4_cast_fu_626_p1) + unsigned(tmp_8_3_cast_fu_610_p1));
    tmp11_fu_650_p2 <= std_logic_vector(unsigned(tmp_8_3_1_cast_fu_614_p1) + unsigned(tmp19_cast_fu_646_p1));
    tmp12_cast_fu_570_p1 <= std_logic_vector(resize(unsigned(tmp_fu_564_p2),9));
    tmp12_fu_700_p2 <= std_logic_vector(unsigned(tmp_8_4_3_cast_fu_692_p1) + unsigned(tmp_8_4_2_cast_fu_688_p1));
    tmp13_cast_fu_590_p1 <= std_logic_vector(resize(unsigned(tmp5_fu_584_p2),9));
    tmp13_fu_710_p2 <= std_logic_vector(unsigned(tmp_8_4_4_cast_fu_696_p1) + unsigned(tmp_8_4_cast_fu_680_p1));
    tmp14_cast_fu_580_p1 <= std_logic_vector(resize(unsigned(tmp1_fu_574_p2),8));
    tmp14_fu_720_p2 <= std_logic_vector(unsigned(tmp_8_4_1_cast_fu_684_p1) + unsigned(tmp24_cast_fu_716_p1));
    tmp15_fu_792_p2 <= std_logic_vector(unsigned(tmp_8_5_3_cast_fu_784_p1) + unsigned(tmp_8_5_2_cast_fu_780_p1));
    tmp16_fu_802_p2 <= std_logic_vector(unsigned(tmp_8_5_4_cast_fu_788_p1) + unsigned(tmp_8_5_cast_fu_772_p1));
    tmp17_cast_fu_636_p1 <= std_logic_vector(resize(unsigned(tmp6_fu_630_p2),9));
    tmp17_fu_812_p2 <= std_logic_vector(unsigned(tmp_8_5_1_cast_fu_776_p1) + unsigned(tmp29_cast_fu_808_p1));
    tmp18_cast_fu_656_p1 <= std_logic_vector(resize(unsigned(tmp11_fu_650_p2),9));
    tmp18_fu_884_p2 <= std_logic_vector(unsigned(tmp_8_6_3_cast_fu_876_p1) + unsigned(tmp_8_6_2_cast_fu_872_p1));
    tmp19_cast_fu_646_p1 <= std_logic_vector(resize(unsigned(tmp10_fu_640_p2),8));
    tmp19_fu_894_p2 <= std_logic_vector(unsigned(tmp_8_6_4_cast_fu_880_p1) + unsigned(tmp_8_6_cast_fu_864_p1));
    tmp1_fu_574_p2 <= std_logic_vector(unsigned(tmp_8_2_4_cast_fu_560_p1) + unsigned(tmp_8_2_cast_fu_544_p1));
    tmp20_fu_904_p2 <= std_logic_vector(unsigned(tmp_8_6_1_cast_fu_868_p1) + unsigned(tmp34_cast_fu_900_p1));
    tmp21_fu_950_p2 <= std_logic_vector(unsigned(tmp_8_7_3_cast_fu_942_p1) + unsigned(tmp_8_7_2_cast_fu_938_p1));
    tmp22_cast_fu_706_p1 <= std_logic_vector(resize(unsigned(tmp12_fu_700_p2),9));
    tmp22_fu_960_p2 <= std_logic_vector(unsigned(tmp_8_7_4_cast_fu_946_p1) + unsigned(tmp_8_7_cast_fu_930_p1));
    tmp23_cast_fu_726_p1 <= std_logic_vector(resize(unsigned(tmp14_fu_720_p2),9));
    tmp23_fu_970_p2 <= std_logic_vector(unsigned(tmp_8_7_1_cast_fu_934_p1) + unsigned(tmp39_cast_fu_966_p1));
    tmp24_cast_fu_716_p1 <= std_logic_vector(resize(unsigned(tmp13_fu_710_p2),8));
    tmp24_fu_1020_p2 <= std_logic_vector(unsigned(tmp_8_8_3_cast_fu_1012_p1) + unsigned(tmp_8_8_2_cast_fu_1008_p1));
    tmp25_fu_1030_p2 <= std_logic_vector(unsigned(tmp_8_8_4_cast_fu_1016_p1) + unsigned(tmp_8_8_cast_fu_1000_p1));
    tmp26_fu_1040_p2 <= std_logic_vector(unsigned(tmp_8_8_1_cast_fu_1004_p1) + unsigned(tmp44_cast_fu_1036_p1));
    tmp27_cast_fu_798_p1 <= std_logic_vector(resize(unsigned(tmp15_fu_792_p2),9));
    tmp27_fu_1108_p2 <= std_logic_vector(unsigned(tmp_8_9_1_cast_fu_1092_p1) + unsigned(tmp_8_9_cast_fu_1088_p1));
    tmp28_cast_fu_818_p1 <= std_logic_vector(resize(unsigned(tmp17_fu_812_p2),9));
    tmp28_fu_1118_p2 <= std_logic_vector(unsigned(tmp_8_9_4_cast_fu_1104_p1) + unsigned(tmp_8_9_3_cast_fu_1100_p1));
    tmp29_cast_fu_808_p1 <= std_logic_vector(resize(unsigned(tmp16_fu_802_p2),8));
    tmp29_fu_1128_p2 <= std_logic_vector(unsigned(tmp_8_9_2_cast_fu_1096_p1) + unsigned(tmp47_cast_fu_1124_p1));
    tmp2_cast_fu_444_p1 <= std_logic_vector(resize(unsigned(tmp2_fu_438_p2),9));
    tmp2_fu_438_p2 <= std_logic_vector(unsigned(tmp_8_0_3_cast_fu_430_p1) + unsigned(tmp_8_0_2_cast_fu_426_p1));
    tmp32_cast_fu_890_p1 <= std_logic_vector(resize(unsigned(tmp18_fu_884_p2),9));
    tmp33_cast_fu_910_p1 <= std_logic_vector(resize(unsigned(tmp20_fu_904_p2),9));
    tmp34_cast_fu_900_p1 <= std_logic_vector(resize(unsigned(tmp19_fu_894_p2),8));
    tmp37_cast_fu_956_p1 <= std_logic_vector(resize(unsigned(tmp21_fu_950_p2),9));
    tmp38_cast_fu_976_p1 <= std_logic_vector(resize(unsigned(tmp23_fu_970_p2),9));
    tmp39_cast_fu_966_p1 <= std_logic_vector(resize(unsigned(tmp22_fu_960_p2),8));
    tmp3_cast_fu_464_p1 <= std_logic_vector(resize(unsigned(tmp3_fu_458_p2),9));
    tmp3_fu_458_p2 <= std_logic_vector(unsigned(tmp_8_0_1_cast_fu_422_p1) + unsigned(tmp4_cast_fu_454_p1));
    tmp42_cast_fu_1026_p1 <= std_logic_vector(resize(unsigned(tmp24_fu_1020_p2),9));
    tmp43_cast_fu_1046_p1 <= std_logic_vector(resize(unsigned(tmp26_fu_1040_p2),9));
    tmp44_cast_fu_1036_p1 <= std_logic_vector(resize(unsigned(tmp25_fu_1030_p2),8));
    tmp45_cast_fu_1114_p1 <= std_logic_vector(resize(unsigned(tmp27_fu_1108_p2),9));
    tmp46_cast_fu_1134_p1 <= std_logic_vector(resize(unsigned(tmp29_fu_1128_p2),9));
    tmp47_cast_fu_1124_p1 <= std_logic_vector(resize(unsigned(tmp28_fu_1118_p2),8));
    tmp4_cast_fu_454_p1 <= std_logic_vector(resize(unsigned(tmp4_fu_448_p2),8));
    tmp4_fu_448_p2 <= std_logic_vector(unsigned(tmp_8_0_4_cast_fu_434_p1) + unsigned(tmp_8_cast_fu_418_p1));
    tmp5_fu_584_p2 <= std_logic_vector(unsigned(tmp_8_2_1_cast_fu_548_p1) + unsigned(tmp14_cast_fu_580_p1));
    tmp6_fu_630_p2 <= std_logic_vector(unsigned(tmp_8_3_3_cast_fu_622_p1) + unsigned(tmp_8_3_2_cast_fu_618_p1));
    tmp7_cast_fu_500_p1 <= std_logic_vector(resize(unsigned(tmp7_fu_494_p2),9));
    tmp7_fu_494_p2 <= std_logic_vector(unsigned(tmp_8_1_3_cast_fu_486_p1) + unsigned(tmp_8_1_2_cast_fu_482_p1));
    tmp8_cast_fu_520_p1 <= std_logic_vector(resize(unsigned(tmp8_fu_514_p2),9));
    tmp8_fu_514_p2 <= std_logic_vector(unsigned(tmp_8_1_1_cast_fu_478_p1) + unsigned(tmp9_cast_fu_510_p1));
    tmp9_cast_fu_510_p1 <= std_logic_vector(resize(unsigned(tmp9_fu_504_p2),8));
    tmp9_fu_504_p2 <= std_logic_vector(unsigned(tmp_8_1_4_cast_fu_490_p1) + unsigned(tmp_8_1_cast_fu_474_p1));
    tmp_6_1_fu_530_p2 <= "1" when (unsigned(sum_1_4_fu_524_p2) < unsigned(sum_0_4_fu_468_p2)) else "0";
    tmp_6_2_fu_600_p2 <= "1" when (unsigned(sum_2_4_reg_1183) < unsigned(min_2_min_1_reg_1177)) else "0";
    tmp_6_3_fu_666_p2 <= "1" when (unsigned(sum_3_4_fu_660_p2) < unsigned(min_2_min_2_fu_604_p3)) else "0";
    tmp_6_4_fu_762_p2 <= "1" when (unsigned(sum_4_4_reg_1206) < unsigned(min_2_min_3_reg_1200)) else "0";
    tmp_6_5_fu_828_p2 <= "1" when (unsigned(sum_5_4_fu_822_p2) < unsigned(min_2_min_4_fu_766_p3)) else "0";
    tmp_6_6_fu_920_p2 <= "1" when (unsigned(sum_6_4_reg_1223) < unsigned(min_2_min_5_reg_1217)) else "0";
    tmp_6_7_fu_986_p2 <= "1" when (unsigned(sum_7_4_fu_980_p2) < unsigned(min_2_min_6_fu_924_p3)) else "0";
    tmp_6_8_fu_1078_p2 <= "1" when (unsigned(sum_8_4_reg_1246) < unsigned(min_2_min_7_reg_1240)) else "0";
    tmp_6_9_fu_1144_p2 <= "1" when (unsigned(sum_9_4_fu_1138_p2) < unsigned(min_2_min_8_fu_1082_p3)) else "0";
    tmp_6_fu_842_p2 <= (tmp_6_5_fu_828_p2 or tmp_6_4_fu_762_p2);
    tmp_7_fu_1063_p2 <= (tmp_6_7_reg_1234 or tmp_6_6_reg_1229);
    tmp_8_0_1_cast_fu_422_p1 <= std_logic_vector(resize(unsigned(knn_set_0_1_V_read),8));
    tmp_8_0_2_cast_fu_426_p1 <= std_logic_vector(resize(unsigned(knn_set_0_2_V_read),7));
    tmp_8_0_3_cast_fu_430_p1 <= std_logic_vector(resize(unsigned(knn_set_0_3_V_read),7));
    tmp_8_0_4_cast_fu_434_p1 <= std_logic_vector(resize(unsigned(knn_set_0_4_V_read),7));
    tmp_8_1_1_cast_fu_478_p1 <= std_logic_vector(resize(unsigned(knn_set_1_1_V_read),8));
    tmp_8_1_2_cast_fu_482_p1 <= std_logic_vector(resize(unsigned(knn_set_1_2_V_read),7));
    tmp_8_1_3_cast_fu_486_p1 <= std_logic_vector(resize(unsigned(knn_set_1_3_V_read),7));
    tmp_8_1_4_cast_fu_490_p1 <= std_logic_vector(resize(unsigned(knn_set_1_4_V_read),7));
    tmp_8_1_cast_fu_474_p1 <= std_logic_vector(resize(unsigned(knn_set_1_0_V_read),7));
    tmp_8_2_1_cast_fu_548_p1 <= std_logic_vector(resize(unsigned(knn_set_2_1_V_read),8));
    tmp_8_2_2_cast_fu_552_p1 <= std_logic_vector(resize(unsigned(knn_set_2_2_V_read),7));
    tmp_8_2_3_cast_fu_556_p1 <= std_logic_vector(resize(unsigned(knn_set_2_3_V_read),7));
    tmp_8_2_4_cast_fu_560_p1 <= std_logic_vector(resize(unsigned(knn_set_2_4_V_read),7));
    tmp_8_2_cast_fu_544_p1 <= std_logic_vector(resize(unsigned(knn_set_2_0_V_read),7));
    tmp_8_3_1_cast_fu_614_p1 <= std_logic_vector(resize(unsigned(knn_set_3_1_V_read),8));
    tmp_8_3_2_cast_fu_618_p1 <= std_logic_vector(resize(unsigned(knn_set_3_2_V_read),7));
    tmp_8_3_3_cast_fu_622_p1 <= std_logic_vector(resize(unsigned(knn_set_3_3_V_read),7));
    tmp_8_3_4_cast_fu_626_p1 <= std_logic_vector(resize(unsigned(knn_set_3_4_V_read),7));
    tmp_8_3_cast_fu_610_p1 <= std_logic_vector(resize(unsigned(knn_set_3_0_V_read),7));
    tmp_8_4_1_cast_fu_684_p1 <= std_logic_vector(resize(unsigned(knn_set_4_1_V_read),8));
    tmp_8_4_2_cast_fu_688_p1 <= std_logic_vector(resize(unsigned(knn_set_4_2_V_read),7));
    tmp_8_4_3_cast_fu_692_p1 <= std_logic_vector(resize(unsigned(knn_set_4_3_V_read),7));
    tmp_8_4_4_cast_fu_696_p1 <= std_logic_vector(resize(unsigned(knn_set_4_4_V_read),7));
    tmp_8_4_cast_fu_680_p1 <= std_logic_vector(resize(unsigned(knn_set_4_0_V_read),7));
    tmp_8_5_1_cast_fu_776_p1 <= std_logic_vector(resize(unsigned(knn_set_5_1_V_read),8));
    tmp_8_5_2_cast_fu_780_p1 <= std_logic_vector(resize(unsigned(knn_set_5_2_V_read),7));
    tmp_8_5_3_cast_fu_784_p1 <= std_logic_vector(resize(unsigned(knn_set_5_3_V_read),7));
    tmp_8_5_4_cast_fu_788_p1 <= std_logic_vector(resize(unsigned(knn_set_5_4_V_read),7));
    tmp_8_5_cast_fu_772_p1 <= std_logic_vector(resize(unsigned(knn_set_5_0_V_read),7));
    tmp_8_6_1_cast_fu_868_p1 <= std_logic_vector(resize(unsigned(knn_set_6_1_V_read),8));
    tmp_8_6_2_cast_fu_872_p1 <= std_logic_vector(resize(unsigned(knn_set_6_2_V_read),7));
    tmp_8_6_3_cast_fu_876_p1 <= std_logic_vector(resize(unsigned(knn_set_6_3_V_read),7));
    tmp_8_6_4_cast_fu_880_p1 <= std_logic_vector(resize(unsigned(knn_set_6_4_V_read),7));
    tmp_8_6_cast_fu_864_p1 <= std_logic_vector(resize(unsigned(knn_set_6_0_V_read),7));
    tmp_8_7_1_cast_fu_934_p1 <= std_logic_vector(resize(unsigned(knn_set_7_1_V_read),8));
    tmp_8_7_2_cast_fu_938_p1 <= std_logic_vector(resize(unsigned(knn_set_7_2_V_read),7));
    tmp_8_7_3_cast_fu_942_p1 <= std_logic_vector(resize(unsigned(knn_set_7_3_V_read),7));
    tmp_8_7_4_cast_fu_946_p1 <= std_logic_vector(resize(unsigned(knn_set_7_4_V_read),7));
    tmp_8_7_cast_fu_930_p1 <= std_logic_vector(resize(unsigned(knn_set_7_0_V_read),7));
    tmp_8_8_1_cast_fu_1004_p1 <= std_logic_vector(resize(unsigned(knn_set_8_1_V_read),8));
    tmp_8_8_2_cast_fu_1008_p1 <= std_logic_vector(resize(unsigned(knn_set_8_2_V_read),7));
    tmp_8_8_3_cast_fu_1012_p1 <= std_logic_vector(resize(unsigned(knn_set_8_3_V_read),7));
    tmp_8_8_4_cast_fu_1016_p1 <= std_logic_vector(resize(unsigned(knn_set_8_4_V_read),7));
    tmp_8_8_cast_fu_1000_p1 <= std_logic_vector(resize(unsigned(knn_set_8_0_V_read),7));
    tmp_8_9_1_cast_fu_1092_p1 <= std_logic_vector(resize(unsigned(knn_set_9_1_V_read),7));
    tmp_8_9_2_cast_fu_1096_p1 <= std_logic_vector(resize(unsigned(knn_set_9_2_V_read),8));
    tmp_8_9_3_cast_fu_1100_p1 <= std_logic_vector(resize(unsigned(knn_set_9_3_V_read),7));
    tmp_8_9_4_cast_fu_1104_p1 <= std_logic_vector(resize(unsigned(knn_set_9_4_V_read),7));
    tmp_8_9_cast_fu_1088_p1 <= std_logic_vector(resize(unsigned(knn_set_9_0_V_read),7));
    tmp_8_cast_fu_418_p1 <= std_logic_vector(resize(unsigned(knn_set_0_0_V_read),7));
    tmp_9_fu_1158_p2 <= (tmp_6_9_fu_1144_p2 or tmp_6_8_fu_1078_p2);
    tmp_fu_564_p2 <= std_logic_vector(unsigned(tmp_8_2_3_cast_fu_556_p1) + unsigned(tmp_8_2_2_cast_fu_552_p1));
    tmp_s_fu_746_p2 <= (tmp_6_3_reg_1194 or tmp_6_2_reg_1189);
end behav;
