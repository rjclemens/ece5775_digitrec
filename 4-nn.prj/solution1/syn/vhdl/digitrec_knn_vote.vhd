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
    knn_set_1_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_1_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_2_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_3_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_4_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_5_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_6_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_7_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_8_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_0_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_1_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_2_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    knn_set_9_3_V_read : IN STD_LOGIC_VECTOR (5 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of digitrec_knn_vote is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_21 : BOOLEAN;
    signal tmp_6_1_fu_422_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_1_reg_952 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_1_fu_428_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_1_reg_957 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_2_3_fu_472_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_2_3_reg_963 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_3_3_fu_514_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_3_3_reg_969 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_2_fu_520_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_2_reg_975 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_85 : BOOLEAN;
    signal tmp_6_3_fu_530_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_3_reg_980 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_3_fu_535_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_3_reg_986 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_4_3_fu_578_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_4_3_reg_991 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_4_fu_584_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_4_reg_996 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_5_3_fu_626_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_5_3_reg_1002 : STD_LOGIC_VECTOR (7 downto 0);
    signal agg_result_V_0_agg_result_V_02_5_fu_681_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_5_reg_1008 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_104 : BOOLEAN;
    signal tmp_6_6_fu_738_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_6_reg_1013 : STD_LOGIC_VECTOR (0 downto 0);
    signal min_2_min_6_fu_744_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_6_reg_1018 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_7_3_fu_788_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_7_3_reg_1024 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_8_3_fu_830_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_8_3_reg_1030 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_156 : BOOLEAN;
    signal tmp_8_0_2_cast_fu_346_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_0_1_cast_fu_342_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp1_fu_354_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_0_3_cast_fu_350_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_cast_fu_338_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp2_fu_364_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp1_cast_fu_360_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp2_cast_fu_370_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_1_2_cast_fu_388_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_1_cast_fu_384_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_fu_396_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_3_cast_fu_392_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_1_cast_fu_380_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp5_fu_406_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_cast_fu_402_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp5_cast_fu_412_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_1_3_fu_416_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_0_3_fu_374_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_2_2_cast_fu_444_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_1_cast_fu_440_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp7_fu_452_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_3_cast_fu_448_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_2_cast_fu_436_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp8_fu_462_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp7_cast_fu_458_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp8_cast_fu_468_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_3_2_cast_fu_486_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_1_cast_fu_482_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_fu_494_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_3_cast_fu_490_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_3_cast_fu_478_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp3_fu_504_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp10_cast_fu_500_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp11_cast_fu_510_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_2_fu_524_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_4_2_cast_fu_550_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_1_cast_fu_546_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp6_fu_558_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_3_cast_fu_554_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_4_cast_fu_542_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp9_fu_568_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp13_cast_fu_564_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp14_cast_fu_574_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_5_2_cast_fu_598_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_1_cast_fu_594_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp10_fu_606_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_3_cast_fu_602_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_5_cast_fu_590_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp11_fu_616_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp16_cast_fu_612_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp17_cast_fu_622_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_642_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_2_fu_635_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_V_0_agg_result_V_s_fu_632_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal agg_result_V_0_agg_result_V_02_3_fu_646_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal min_2_min_4_fu_658_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_5_fu_663_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_676_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_4_fu_668_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_1_fu_654_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_8_6_2_cast_fu_704_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_1_cast_fu_700_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp12_fu_712_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_3_cast_fu_708_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_6_cast_fu_696_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp13_fu_722_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp19_cast_fu_718_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp20_cast_fu_728_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_6_3_fu_732_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_5_fu_689_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_7_2_cast_fu_760_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_1_cast_fu_756_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp14_fu_768_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_3_cast_fu_764_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_7_cast_fu_752_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp15_fu_778_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp22_cast_fu_774_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp23_cast_fu_784_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_8_2_cast_fu_802_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_1_cast_fu_798_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp16_fu_810_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_3_cast_fu_806_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_8_cast_fu_794_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp17_fu_820_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp25_cast_fu_816_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp26_cast_fu_826_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_7_fu_836_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_848_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_fu_840_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal agg_result_V_0_agg_result_V_02_7_fu_853_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal min_2_min_7_fu_864_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_8_fu_870_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_9_1_cast_fu_886_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_cast_fu_882_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp18_fu_898_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_3_cast_fu_894_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_9_2_cast_fu_890_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp19_fu_908_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp27_cast_fu_904_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp28_cast_fu_914_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_9_3_fu_918_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal min_2_min_8_fu_875_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_9_fu_924_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_938_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal agg_result_V_0_agg_result_V_02_8_fu_930_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal agg_result_V_0_agg_result_V_02_6_fu_860_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal agg_result_V_0_agg_result_V_02_9_fu_944_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


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
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
                    ap_return_preg <= agg_result_V_0_agg_result_V_02_9_fu_944_p3;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                agg_result_V_0_agg_result_V_02_5_reg_1008 <= agg_result_V_0_agg_result_V_02_5_fu_681_p3;
                min_2_min_6_reg_1018 <= min_2_min_6_fu_744_p3;
                sum_7_3_reg_1024 <= sum_7_3_fu_788_p2;
                sum_8_3_reg_1030 <= sum_8_3_fu_830_p2;
                tmp_6_6_reg_1013 <= tmp_6_6_fu_738_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                min_2_min_1_reg_957 <= min_2_min_1_fu_428_p3;
                sum_2_3_reg_963 <= sum_2_3_fu_472_p2;
                sum_3_3_reg_969 <= sum_3_3_fu_514_p2;
                tmp_6_1_reg_952 <= tmp_6_1_fu_422_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                min_2_min_3_reg_986 <= min_2_min_3_fu_535_p3;
                sum_4_3_reg_991 <= sum_4_3_fu_578_p2;
                sum_5_3_reg_1002 <= sum_5_3_fu_626_p2;
                tmp_6_2_reg_975 <= tmp_6_2_fu_520_p2;
                tmp_6_3_reg_980 <= tmp_6_3_fu_530_p2;
                tmp_6_4_reg_996 <= tmp_6_4_fu_584_p2;
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
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    agg_result_V_0_agg_result_V_02_1_fu_654_p1 <= std_logic_vector(resize(unsigned(agg_result_V_0_agg_result_V_02_3_fu_646_p3),3));
    agg_result_V_0_agg_result_V_02_2_fu_635_p3 <= 
        ap_const_lv2_3 when (tmp_6_3_reg_980(0) = '1') else 
        ap_const_lv2_2;
    agg_result_V_0_agg_result_V_02_3_fu_646_p3 <= 
        agg_result_V_0_agg_result_V_02_2_fu_635_p3 when (tmp_s_fu_642_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_s_fu_632_p1;
    agg_result_V_0_agg_result_V_02_4_fu_668_p3 <= 
        ap_const_lv3_5 when (tmp_6_5_fu_663_p2(0) = '1') else 
        ap_const_lv3_4;
    agg_result_V_0_agg_result_V_02_5_fu_681_p3 <= 
        agg_result_V_0_agg_result_V_02_4_fu_668_p3 when (tmp_1_fu_676_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_1_fu_654_p1;
    agg_result_V_0_agg_result_V_02_6_fu_860_p1 <= std_logic_vector(resize(unsigned(agg_result_V_0_agg_result_V_02_7_fu_853_p3),4));
    agg_result_V_0_agg_result_V_02_7_fu_853_p3 <= 
        agg_result_V_0_agg_result_V_02_fu_840_p3 when (tmp_2_fu_848_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_5_reg_1008;
    agg_result_V_0_agg_result_V_02_8_fu_930_p3 <= 
        ap_const_lv4_9 when (tmp_6_9_fu_924_p2(0) = '1') else 
        ap_const_lv4_8;
    agg_result_V_0_agg_result_V_02_9_fu_944_p3 <= 
        agg_result_V_0_agg_result_V_02_8_fu_930_p3 when (tmp_3_fu_938_p2(0) = '1') else 
        agg_result_V_0_agg_result_V_02_6_fu_860_p1;
    agg_result_V_0_agg_result_V_02_fu_840_p3 <= 
        ap_const_lv3_7 when (tmp_6_7_fu_836_p2(0) = '1') else 
        ap_const_lv3_6;
    agg_result_V_0_agg_result_V_s_fu_632_p1 <= std_logic_vector(resize(unsigned(tmp_6_1_reg_952),2));

    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or (ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3))) then 
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


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, agg_result_V_0_agg_result_V_02_9_fu_944_p3, ap_return_preg)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            ap_return <= agg_result_V_0_agg_result_V_02_9_fu_944_p3;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_104_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_104 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_156_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_156 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_85_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_85 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_21)
    begin
        if (ap_sig_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_85)
    begin
        if (ap_sig_85) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_104)
    begin
        if (ap_sig_104) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_156)
    begin
        if (ap_sig_156) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;

    min_2_min_1_fu_428_p3 <= 
        sum_1_3_fu_416_p2 when (tmp_6_1_fu_422_p2(0) = '1') else 
        sum_0_3_fu_374_p2;
    min_2_min_2_fu_524_p3 <= 
        sum_2_3_reg_963 when (tmp_6_2_fu_520_p2(0) = '1') else 
        min_2_min_1_reg_957;
    min_2_min_3_fu_535_p3 <= 
        sum_3_3_reg_969 when (tmp_6_3_fu_530_p2(0) = '1') else 
        min_2_min_2_fu_524_p3;
    min_2_min_4_fu_658_p3 <= 
        sum_4_3_reg_991 when (tmp_6_4_reg_996(0) = '1') else 
        min_2_min_3_reg_986;
    min_2_min_5_fu_689_p3 <= 
        sum_5_3_reg_1002 when (tmp_6_5_fu_663_p2(0) = '1') else 
        min_2_min_4_fu_658_p3;
    min_2_min_6_fu_744_p3 <= 
        sum_6_3_fu_732_p2 when (tmp_6_6_fu_738_p2(0) = '1') else 
        min_2_min_5_fu_689_p3;
    min_2_min_7_fu_864_p3 <= 
        sum_7_3_reg_1024 when (tmp_6_7_fu_836_p2(0) = '1') else 
        min_2_min_6_reg_1018;
    min_2_min_8_fu_875_p3 <= 
        sum_8_3_reg_1030 when (tmp_6_8_fu_870_p2(0) = '1') else 
        min_2_min_7_fu_864_p3;
    sum_0_3_fu_374_p2 <= std_logic_vector(unsigned(tmp1_cast_fu_360_p1) + unsigned(tmp2_cast_fu_370_p1));
    sum_1_3_fu_416_p2 <= std_logic_vector(unsigned(tmp4_cast_fu_402_p1) + unsigned(tmp5_cast_fu_412_p1));
    sum_2_3_fu_472_p2 <= std_logic_vector(unsigned(tmp7_cast_fu_458_p1) + unsigned(tmp8_cast_fu_468_p1));
    sum_3_3_fu_514_p2 <= std_logic_vector(unsigned(tmp10_cast_fu_500_p1) + unsigned(tmp11_cast_fu_510_p1));
    sum_4_3_fu_578_p2 <= std_logic_vector(unsigned(tmp13_cast_fu_564_p1) + unsigned(tmp14_cast_fu_574_p1));
    sum_5_3_fu_626_p2 <= std_logic_vector(unsigned(tmp16_cast_fu_612_p1) + unsigned(tmp17_cast_fu_622_p1));
    sum_6_3_fu_732_p2 <= std_logic_vector(unsigned(tmp19_cast_fu_718_p1) + unsigned(tmp20_cast_fu_728_p1));
    sum_7_3_fu_788_p2 <= std_logic_vector(unsigned(tmp22_cast_fu_774_p1) + unsigned(tmp23_cast_fu_784_p1));
    sum_8_3_fu_830_p2 <= std_logic_vector(unsigned(tmp25_cast_fu_816_p1) + unsigned(tmp26_cast_fu_826_p1));
    sum_9_3_fu_918_p2 <= std_logic_vector(unsigned(tmp27_cast_fu_904_p1) + unsigned(tmp28_cast_fu_914_p1));
    tmp10_cast_fu_500_p1 <= std_logic_vector(resize(unsigned(tmp_fu_494_p2),8));
    tmp10_fu_606_p2 <= std_logic_vector(unsigned(tmp_8_5_2_cast_fu_598_p1) + unsigned(tmp_8_5_1_cast_fu_594_p1));
    tmp11_cast_fu_510_p1 <= std_logic_vector(resize(unsigned(tmp3_fu_504_p2),8));
    tmp11_fu_616_p2 <= std_logic_vector(unsigned(tmp_8_5_3_cast_fu_602_p1) + unsigned(tmp_8_5_cast_fu_590_p1));
    tmp12_fu_712_p2 <= std_logic_vector(unsigned(tmp_8_6_2_cast_fu_704_p1) + unsigned(tmp_8_6_1_cast_fu_700_p1));
    tmp13_cast_fu_564_p1 <= std_logic_vector(resize(unsigned(tmp6_fu_558_p2),8));
    tmp13_fu_722_p2 <= std_logic_vector(unsigned(tmp_8_6_3_cast_fu_708_p1) + unsigned(tmp_8_6_cast_fu_696_p1));
    tmp14_cast_fu_574_p1 <= std_logic_vector(resize(unsigned(tmp9_fu_568_p2),8));
    tmp14_fu_768_p2 <= std_logic_vector(unsigned(tmp_8_7_2_cast_fu_760_p1) + unsigned(tmp_8_7_1_cast_fu_756_p1));
    tmp15_fu_778_p2 <= std_logic_vector(unsigned(tmp_8_7_3_cast_fu_764_p1) + unsigned(tmp_8_7_cast_fu_752_p1));
    tmp16_cast_fu_612_p1 <= std_logic_vector(resize(unsigned(tmp10_fu_606_p2),8));
    tmp16_fu_810_p2 <= std_logic_vector(unsigned(tmp_8_8_2_cast_fu_802_p1) + unsigned(tmp_8_8_1_cast_fu_798_p1));
    tmp17_cast_fu_622_p1 <= std_logic_vector(resize(unsigned(tmp11_fu_616_p2),8));
    tmp17_fu_820_p2 <= std_logic_vector(unsigned(tmp_8_8_3_cast_fu_806_p1) + unsigned(tmp_8_8_cast_fu_794_p1));
    tmp18_fu_898_p2 <= std_logic_vector(unsigned(tmp_8_9_1_cast_fu_886_p1) + unsigned(tmp_8_9_cast_fu_882_p1));
    tmp19_cast_fu_718_p1 <= std_logic_vector(resize(unsigned(tmp12_fu_712_p2),8));
    tmp19_fu_908_p2 <= std_logic_vector(unsigned(tmp_8_9_3_cast_fu_894_p1) + unsigned(tmp_8_9_2_cast_fu_890_p1));
    tmp1_cast_fu_360_p1 <= std_logic_vector(resize(unsigned(tmp1_fu_354_p2),8));
    tmp1_fu_354_p2 <= std_logic_vector(unsigned(tmp_8_0_2_cast_fu_346_p1) + unsigned(tmp_8_0_1_cast_fu_342_p1));
    tmp20_cast_fu_728_p1 <= std_logic_vector(resize(unsigned(tmp13_fu_722_p2),8));
    tmp22_cast_fu_774_p1 <= std_logic_vector(resize(unsigned(tmp14_fu_768_p2),8));
    tmp23_cast_fu_784_p1 <= std_logic_vector(resize(unsigned(tmp15_fu_778_p2),8));
    tmp25_cast_fu_816_p1 <= std_logic_vector(resize(unsigned(tmp16_fu_810_p2),8));
    tmp26_cast_fu_826_p1 <= std_logic_vector(resize(unsigned(tmp17_fu_820_p2),8));
    tmp27_cast_fu_904_p1 <= std_logic_vector(resize(unsigned(tmp18_fu_898_p2),8));
    tmp28_cast_fu_914_p1 <= std_logic_vector(resize(unsigned(tmp19_fu_908_p2),8));
    tmp2_cast_fu_370_p1 <= std_logic_vector(resize(unsigned(tmp2_fu_364_p2),8));
    tmp2_fu_364_p2 <= std_logic_vector(unsigned(tmp_8_0_3_cast_fu_350_p1) + unsigned(tmp_8_cast_fu_338_p1));
    tmp3_fu_504_p2 <= std_logic_vector(unsigned(tmp_8_3_3_cast_fu_490_p1) + unsigned(tmp_8_3_cast_fu_478_p1));
    tmp4_cast_fu_402_p1 <= std_logic_vector(resize(unsigned(tmp4_fu_396_p2),8));
    tmp4_fu_396_p2 <= std_logic_vector(unsigned(tmp_8_1_2_cast_fu_388_p1) + unsigned(tmp_8_1_1_cast_fu_384_p1));
    tmp5_cast_fu_412_p1 <= std_logic_vector(resize(unsigned(tmp5_fu_406_p2),8));
    tmp5_fu_406_p2 <= std_logic_vector(unsigned(tmp_8_1_3_cast_fu_392_p1) + unsigned(tmp_8_1_cast_fu_380_p1));
    tmp6_fu_558_p2 <= std_logic_vector(unsigned(tmp_8_4_2_cast_fu_550_p1) + unsigned(tmp_8_4_1_cast_fu_546_p1));
    tmp7_cast_fu_458_p1 <= std_logic_vector(resize(unsigned(tmp7_fu_452_p2),8));
    tmp7_fu_452_p2 <= std_logic_vector(unsigned(tmp_8_2_2_cast_fu_444_p1) + unsigned(tmp_8_2_1_cast_fu_440_p1));
    tmp8_cast_fu_468_p1 <= std_logic_vector(resize(unsigned(tmp8_fu_462_p2),8));
    tmp8_fu_462_p2 <= std_logic_vector(unsigned(tmp_8_2_3_cast_fu_448_p1) + unsigned(tmp_8_2_cast_fu_436_p1));
    tmp9_fu_568_p2 <= std_logic_vector(unsigned(tmp_8_4_3_cast_fu_554_p1) + unsigned(tmp_8_4_cast_fu_542_p1));
    tmp_1_fu_676_p2 <= (tmp_6_5_fu_663_p2 or tmp_6_4_reg_996);
    tmp_2_fu_848_p2 <= (tmp_6_7_fu_836_p2 or tmp_6_6_reg_1013);
    tmp_3_fu_938_p2 <= (tmp_6_9_fu_924_p2 or tmp_6_8_fu_870_p2);
    tmp_6_1_fu_422_p2 <= "1" when (unsigned(sum_1_3_fu_416_p2) < unsigned(sum_0_3_fu_374_p2)) else "0";
    tmp_6_2_fu_520_p2 <= "1" when (unsigned(sum_2_3_reg_963) < unsigned(min_2_min_1_reg_957)) else "0";
    tmp_6_3_fu_530_p2 <= "1" when (unsigned(sum_3_3_reg_969) < unsigned(min_2_min_2_fu_524_p3)) else "0";
    tmp_6_4_fu_584_p2 <= "1" when (unsigned(sum_4_3_fu_578_p2) < unsigned(min_2_min_3_fu_535_p3)) else "0";
    tmp_6_5_fu_663_p2 <= "1" when (unsigned(sum_5_3_reg_1002) < unsigned(min_2_min_4_fu_658_p3)) else "0";
    tmp_6_6_fu_738_p2 <= "1" when (unsigned(sum_6_3_fu_732_p2) < unsigned(min_2_min_5_fu_689_p3)) else "0";
    tmp_6_7_fu_836_p2 <= "1" when (unsigned(sum_7_3_reg_1024) < unsigned(min_2_min_6_reg_1018)) else "0";
    tmp_6_8_fu_870_p2 <= "1" when (unsigned(sum_8_3_reg_1030) < unsigned(min_2_min_7_fu_864_p3)) else "0";
    tmp_6_9_fu_924_p2 <= "1" when (unsigned(sum_9_3_fu_918_p2) < unsigned(min_2_min_8_fu_875_p3)) else "0";
    tmp_8_0_1_cast_fu_342_p1 <= std_logic_vector(resize(unsigned(knn_set_0_1_V_read),7));
    tmp_8_0_2_cast_fu_346_p1 <= std_logic_vector(resize(unsigned(knn_set_0_2_V_read),7));
    tmp_8_0_3_cast_fu_350_p1 <= std_logic_vector(resize(unsigned(knn_set_0_3_V_read),7));
    tmp_8_1_1_cast_fu_384_p1 <= std_logic_vector(resize(unsigned(knn_set_1_1_V_read),7));
    tmp_8_1_2_cast_fu_388_p1 <= std_logic_vector(resize(unsigned(knn_set_1_2_V_read),7));
    tmp_8_1_3_cast_fu_392_p1 <= std_logic_vector(resize(unsigned(knn_set_1_3_V_read),7));
    tmp_8_1_cast_fu_380_p1 <= std_logic_vector(resize(unsigned(knn_set_1_0_V_read),7));
    tmp_8_2_1_cast_fu_440_p1 <= std_logic_vector(resize(unsigned(knn_set_2_1_V_read),7));
    tmp_8_2_2_cast_fu_444_p1 <= std_logic_vector(resize(unsigned(knn_set_2_2_V_read),7));
    tmp_8_2_3_cast_fu_448_p1 <= std_logic_vector(resize(unsigned(knn_set_2_3_V_read),7));
    tmp_8_2_cast_fu_436_p1 <= std_logic_vector(resize(unsigned(knn_set_2_0_V_read),7));
    tmp_8_3_1_cast_fu_482_p1 <= std_logic_vector(resize(unsigned(knn_set_3_1_V_read),7));
    tmp_8_3_2_cast_fu_486_p1 <= std_logic_vector(resize(unsigned(knn_set_3_2_V_read),7));
    tmp_8_3_3_cast_fu_490_p1 <= std_logic_vector(resize(unsigned(knn_set_3_3_V_read),7));
    tmp_8_3_cast_fu_478_p1 <= std_logic_vector(resize(unsigned(knn_set_3_0_V_read),7));
    tmp_8_4_1_cast_fu_546_p1 <= std_logic_vector(resize(unsigned(knn_set_4_1_V_read),7));
    tmp_8_4_2_cast_fu_550_p1 <= std_logic_vector(resize(unsigned(knn_set_4_2_V_read),7));
    tmp_8_4_3_cast_fu_554_p1 <= std_logic_vector(resize(unsigned(knn_set_4_3_V_read),7));
    tmp_8_4_cast_fu_542_p1 <= std_logic_vector(resize(unsigned(knn_set_4_0_V_read),7));
    tmp_8_5_1_cast_fu_594_p1 <= std_logic_vector(resize(unsigned(knn_set_5_1_V_read),7));
    tmp_8_5_2_cast_fu_598_p1 <= std_logic_vector(resize(unsigned(knn_set_5_2_V_read),7));
    tmp_8_5_3_cast_fu_602_p1 <= std_logic_vector(resize(unsigned(knn_set_5_3_V_read),7));
    tmp_8_5_cast_fu_590_p1 <= std_logic_vector(resize(unsigned(knn_set_5_0_V_read),7));
    tmp_8_6_1_cast_fu_700_p1 <= std_logic_vector(resize(unsigned(knn_set_6_1_V_read),7));
    tmp_8_6_2_cast_fu_704_p1 <= std_logic_vector(resize(unsigned(knn_set_6_2_V_read),7));
    tmp_8_6_3_cast_fu_708_p1 <= std_logic_vector(resize(unsigned(knn_set_6_3_V_read),7));
    tmp_8_6_cast_fu_696_p1 <= std_logic_vector(resize(unsigned(knn_set_6_0_V_read),7));
    tmp_8_7_1_cast_fu_756_p1 <= std_logic_vector(resize(unsigned(knn_set_7_1_V_read),7));
    tmp_8_7_2_cast_fu_760_p1 <= std_logic_vector(resize(unsigned(knn_set_7_2_V_read),7));
    tmp_8_7_3_cast_fu_764_p1 <= std_logic_vector(resize(unsigned(knn_set_7_3_V_read),7));
    tmp_8_7_cast_fu_752_p1 <= std_logic_vector(resize(unsigned(knn_set_7_0_V_read),7));
    tmp_8_8_1_cast_fu_798_p1 <= std_logic_vector(resize(unsigned(knn_set_8_1_V_read),7));
    tmp_8_8_2_cast_fu_802_p1 <= std_logic_vector(resize(unsigned(knn_set_8_2_V_read),7));
    tmp_8_8_3_cast_fu_806_p1 <= std_logic_vector(resize(unsigned(knn_set_8_3_V_read),7));
    tmp_8_8_cast_fu_794_p1 <= std_logic_vector(resize(unsigned(knn_set_8_0_V_read),7));
    tmp_8_9_1_cast_fu_886_p1 <= std_logic_vector(resize(unsigned(knn_set_9_1_V_read),7));
    tmp_8_9_2_cast_fu_890_p1 <= std_logic_vector(resize(unsigned(knn_set_9_2_V_read),7));
    tmp_8_9_3_cast_fu_894_p1 <= std_logic_vector(resize(unsigned(knn_set_9_3_V_read),7));
    tmp_8_9_cast_fu_882_p1 <= std_logic_vector(resize(unsigned(knn_set_9_0_V_read),7));
    tmp_8_cast_fu_338_p1 <= std_logic_vector(resize(unsigned(knn_set_0_0_V_read),7));
    tmp_fu_494_p2 <= std_logic_vector(unsigned(tmp_8_3_2_cast_fu_486_p1) + unsigned(tmp_8_3_1_cast_fu_482_p1));
    tmp_s_fu_642_p2 <= (tmp_6_3_reg_980 or tmp_6_2_reg_975);
end behav;
