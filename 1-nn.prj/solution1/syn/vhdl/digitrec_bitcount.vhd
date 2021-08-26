-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity digitrec_bitcount is
port (
    n_V : IN STD_LOGIC_VECTOR (48 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (5 downto 0) );
end;


architecture behav of digitrec_bitcount is 
    constant ap_true : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_1D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011101";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_21 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100001";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv32_2A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101010";
    constant ap_const_lv32_2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101011";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101101";
    constant ap_const_lv32_2E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101110";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal tmp_1_fu_108_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_116_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_128_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_fu_140_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_152_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_164_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_176_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_fu_188_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_200_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_212_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_224_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_fu_236_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_fu_248_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_260_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_15_fu_272_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_16_fu_284_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_17_fu_296_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_308_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_19_fu_320_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_20_fu_332_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_21_fu_344_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_fu_356_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_fu_368_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_24_fu_380_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_25_fu_392_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_26_fu_404_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_27_fu_416_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_28_fu_428_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_29_fu_440_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_30_fu_452_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_31_fu_464_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_32_fu_476_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_33_fu_488_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_34_fu_500_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_35_fu_512_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_36_fu_524_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_37_fu_536_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_38_fu_548_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_39_fu_560_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_40_fu_572_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_41_fu_584_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_42_fu_596_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_43_fu_608_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_44_fu_620_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_45_fu_632_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_46_fu_644_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_47_fu_656_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_48_fu_668_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_49_fu_680_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_2_cast_fu_136_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_1_cast_fu_124_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_cast_fu_112_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp4_fu_692_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp3_fu_698_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_5_cast_fu_172_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_4_cast_fu_160_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_3_cast_fu_148_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp6_fu_708_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp5_fu_714_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp3_cast_fu_704_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp5_cast_fu_720_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp2_fu_724_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_8_cast_fu_208_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_7_cast_fu_196_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_6_cast_fu_184_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp9_fu_734_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp8_fu_740_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_10_cast_fu_244_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_cast_3_fu_232_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_9_cast_fu_220_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp11_fu_750_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp10_fu_756_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp8_cast_fu_746_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp10_cast_fu_762_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp7_fu_766_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp2_cast_fu_730_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp7_cast_fu_772_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_fu_776_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_13_cast_fu_280_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_12_cast_fu_268_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_11_cast_fu_256_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp15_fu_786_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp14_fu_792_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_16_cast_fu_316_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_15_cast_fu_304_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_14_cast_fu_292_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp17_fu_802_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp16_fu_808_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp14_cast_fu_798_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp16_cast_fu_814_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp13_fu_818_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_19_cast_fu_352_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_18_cast_fu_340_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_17_cast_fu_328_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp20_fu_828_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp19_fu_834_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_22_cast_fu_388_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_21_cast_fu_376_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_20_cast_fu_364_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp22_fu_844_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp21_fu_850_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp19_cast_fu_840_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp21_cast_fu_856_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp18_fu_860_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp13_cast_fu_824_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp18_cast_fu_866_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp12_fu_870_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp1_cast_fu_782_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp12_cast_fu_876_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_fu_880_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_1_25_cast_fu_424_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_24_cast_fu_412_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_23_cast_fu_400_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp27_fu_890_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp26_fu_896_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_28_cast_fu_460_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_27_cast_fu_448_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_26_cast_fu_436_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp29_fu_906_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp28_fu_912_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp26_cast_fu_902_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp28_cast_fu_918_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp25_fu_922_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_31_cast_fu_496_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_30_cast_fu_484_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_29_cast_fu_472_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp32_fu_932_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp31_fu_938_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_34_cast_fu_532_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_33_cast_fu_520_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_32_cast_fu_508_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp34_fu_948_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp33_fu_954_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp31_cast_fu_944_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp33_cast_fu_960_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp30_fu_964_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp25_cast_fu_928_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp30_cast_fu_970_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp24_fu_974_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_1_37_cast_fu_568_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_36_cast_fu_556_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_35_cast_fu_544_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp38_fu_984_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp37_fu_990_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_40_cast_fu_604_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_39_cast_fu_592_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_38_cast_fu_580_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp40_fu_1000_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp39_fu_1006_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp37_cast_fu_996_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp39_cast_fu_1012_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp36_fu_1016_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_43_cast_fu_640_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_42_cast_fu_628_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_41_cast_fu_616_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp43_fu_1026_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp42_fu_1032_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_45_cast_fu_664_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_44_cast_fu_652_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp45_fu_1042_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_47_cast_fu_688_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_46_cast_fu_676_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp46_fu_1052_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp45_cast_fu_1048_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp46_cast_fu_1058_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp42_cast_fu_1038_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp44_fu_1062_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp41_fu_1068_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp36_cast_fu_1022_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp41_cast_fu_1074_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp35_fu_1078_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp24_cast_fu_980_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp35_cast_fu_1084_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp23_fu_1088_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_cast_fu_886_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp23_cast_fu_1094_p1 : STD_LOGIC_VECTOR (5 downto 0);


begin



    ap_return <= std_logic_vector(unsigned(tmp_cast_fu_886_p1) + unsigned(tmp23_cast_fu_1094_p1));
    tmp10_cast_fu_762_p1 <= std_logic_vector(resize(unsigned(tmp10_fu_756_p2),3));
    tmp10_fu_756_p2 <= std_logic_vector(unsigned(tmp_1_9_cast_fu_220_p1) + unsigned(tmp11_fu_750_p2));
    tmp11_fu_750_p2 <= std_logic_vector(unsigned(tmp_1_10_cast_fu_244_p1) + unsigned(tmp_1_cast_3_fu_232_p1));
    tmp12_cast_fu_876_p1 <= std_logic_vector(resize(unsigned(tmp12_fu_870_p2),5));
    tmp12_fu_870_p2 <= std_logic_vector(unsigned(tmp13_cast_fu_824_p1) + unsigned(tmp18_cast_fu_866_p1));
    tmp13_cast_fu_824_p1 <= std_logic_vector(resize(unsigned(tmp13_fu_818_p2),4));
    tmp13_fu_818_p2 <= std_logic_vector(unsigned(tmp14_cast_fu_798_p1) + unsigned(tmp16_cast_fu_814_p1));
    tmp14_cast_fu_798_p1 <= std_logic_vector(resize(unsigned(tmp14_fu_792_p2),3));
    tmp14_fu_792_p2 <= std_logic_vector(unsigned(tmp_1_11_cast_fu_256_p1) + unsigned(tmp15_fu_786_p2));
    tmp15_fu_786_p2 <= std_logic_vector(unsigned(tmp_1_13_cast_fu_280_p1) + unsigned(tmp_1_12_cast_fu_268_p1));
    tmp16_cast_fu_814_p1 <= std_logic_vector(resize(unsigned(tmp16_fu_808_p2),3));
    tmp16_fu_808_p2 <= std_logic_vector(unsigned(tmp_1_14_cast_fu_292_p1) + unsigned(tmp17_fu_802_p2));
    tmp17_fu_802_p2 <= std_logic_vector(unsigned(tmp_1_16_cast_fu_316_p1) + unsigned(tmp_1_15_cast_fu_304_p1));
    tmp18_cast_fu_866_p1 <= std_logic_vector(resize(unsigned(tmp18_fu_860_p2),4));
    tmp18_fu_860_p2 <= std_logic_vector(unsigned(tmp19_cast_fu_840_p1) + unsigned(tmp21_cast_fu_856_p1));
    tmp19_cast_fu_840_p1 <= std_logic_vector(resize(unsigned(tmp19_fu_834_p2),3));
    tmp19_fu_834_p2 <= std_logic_vector(unsigned(tmp_1_17_cast_fu_328_p1) + unsigned(tmp20_fu_828_p2));
    tmp1_cast_fu_782_p1 <= std_logic_vector(resize(unsigned(tmp1_fu_776_p2),5));
    tmp1_fu_776_p2 <= std_logic_vector(unsigned(tmp2_cast_fu_730_p1) + unsigned(tmp7_cast_fu_772_p1));
    tmp20_fu_828_p2 <= std_logic_vector(unsigned(tmp_1_19_cast_fu_352_p1) + unsigned(tmp_1_18_cast_fu_340_p1));
    tmp21_cast_fu_856_p1 <= std_logic_vector(resize(unsigned(tmp21_fu_850_p2),3));
    tmp21_fu_850_p2 <= std_logic_vector(unsigned(tmp_1_20_cast_fu_364_p1) + unsigned(tmp22_fu_844_p2));
    tmp22_fu_844_p2 <= std_logic_vector(unsigned(tmp_1_22_cast_fu_388_p1) + unsigned(tmp_1_21_cast_fu_376_p1));
    tmp23_cast_fu_1094_p1 <= std_logic_vector(resize(unsigned(tmp23_fu_1088_p2),6));
    tmp23_fu_1088_p2 <= std_logic_vector(unsigned(tmp24_cast_fu_980_p1) + unsigned(tmp35_cast_fu_1084_p1));
    tmp24_cast_fu_980_p1 <= std_logic_vector(resize(unsigned(tmp24_fu_974_p2),5));
    tmp24_fu_974_p2 <= std_logic_vector(unsigned(tmp25_cast_fu_928_p1) + unsigned(tmp30_cast_fu_970_p1));
    tmp25_cast_fu_928_p1 <= std_logic_vector(resize(unsigned(tmp25_fu_922_p2),4));
    tmp25_fu_922_p2 <= std_logic_vector(unsigned(tmp26_cast_fu_902_p1) + unsigned(tmp28_cast_fu_918_p1));
    tmp26_cast_fu_902_p1 <= std_logic_vector(resize(unsigned(tmp26_fu_896_p2),3));
    tmp26_fu_896_p2 <= std_logic_vector(unsigned(tmp_1_23_cast_fu_400_p1) + unsigned(tmp27_fu_890_p2));
    tmp27_fu_890_p2 <= std_logic_vector(unsigned(tmp_1_25_cast_fu_424_p1) + unsigned(tmp_1_24_cast_fu_412_p1));
    tmp28_cast_fu_918_p1 <= std_logic_vector(resize(unsigned(tmp28_fu_912_p2),3));
    tmp28_fu_912_p2 <= std_logic_vector(unsigned(tmp_1_26_cast_fu_436_p1) + unsigned(tmp29_fu_906_p2));
    tmp29_fu_906_p2 <= std_logic_vector(unsigned(tmp_1_28_cast_fu_460_p1) + unsigned(tmp_1_27_cast_fu_448_p1));
    tmp2_cast_fu_730_p1 <= std_logic_vector(resize(unsigned(tmp2_fu_724_p2),4));
    tmp2_fu_724_p2 <= std_logic_vector(unsigned(tmp3_cast_fu_704_p1) + unsigned(tmp5_cast_fu_720_p1));
    tmp30_cast_fu_970_p1 <= std_logic_vector(resize(unsigned(tmp30_fu_964_p2),4));
    tmp30_fu_964_p2 <= std_logic_vector(unsigned(tmp31_cast_fu_944_p1) + unsigned(tmp33_cast_fu_960_p1));
    tmp31_cast_fu_944_p1 <= std_logic_vector(resize(unsigned(tmp31_fu_938_p2),3));
    tmp31_fu_938_p2 <= std_logic_vector(unsigned(tmp_1_29_cast_fu_472_p1) + unsigned(tmp32_fu_932_p2));
    tmp32_fu_932_p2 <= std_logic_vector(unsigned(tmp_1_31_cast_fu_496_p1) + unsigned(tmp_1_30_cast_fu_484_p1));
    tmp33_cast_fu_960_p1 <= std_logic_vector(resize(unsigned(tmp33_fu_954_p2),3));
    tmp33_fu_954_p2 <= std_logic_vector(unsigned(tmp_1_32_cast_fu_508_p1) + unsigned(tmp34_fu_948_p2));
    tmp34_fu_948_p2 <= std_logic_vector(unsigned(tmp_1_34_cast_fu_532_p1) + unsigned(tmp_1_33_cast_fu_520_p1));
    tmp35_cast_fu_1084_p1 <= std_logic_vector(resize(unsigned(tmp35_fu_1078_p2),5));
    tmp35_fu_1078_p2 <= std_logic_vector(unsigned(tmp36_cast_fu_1022_p1) + unsigned(tmp41_cast_fu_1074_p1));
    tmp36_cast_fu_1022_p1 <= std_logic_vector(resize(unsigned(tmp36_fu_1016_p2),4));
    tmp36_fu_1016_p2 <= std_logic_vector(unsigned(tmp37_cast_fu_996_p1) + unsigned(tmp39_cast_fu_1012_p1));
    tmp37_cast_fu_996_p1 <= std_logic_vector(resize(unsigned(tmp37_fu_990_p2),3));
    tmp37_fu_990_p2 <= std_logic_vector(unsigned(tmp_1_35_cast_fu_544_p1) + unsigned(tmp38_fu_984_p2));
    tmp38_fu_984_p2 <= std_logic_vector(unsigned(tmp_1_37_cast_fu_568_p1) + unsigned(tmp_1_36_cast_fu_556_p1));
    tmp39_cast_fu_1012_p1 <= std_logic_vector(resize(unsigned(tmp39_fu_1006_p2),3));
    tmp39_fu_1006_p2 <= std_logic_vector(unsigned(tmp_1_38_cast_fu_580_p1) + unsigned(tmp40_fu_1000_p2));
    tmp3_cast_fu_704_p1 <= std_logic_vector(resize(unsigned(tmp3_fu_698_p2),3));
    tmp3_fu_698_p2 <= std_logic_vector(unsigned(tmp_1_cast_fu_112_p1) + unsigned(tmp4_fu_692_p2));
    tmp40_fu_1000_p2 <= std_logic_vector(unsigned(tmp_1_40_cast_fu_604_p1) + unsigned(tmp_1_39_cast_fu_592_p1));
    tmp41_cast_fu_1074_p1 <= std_logic_vector(resize(unsigned(tmp41_fu_1068_p2),4));
    tmp41_fu_1068_p2 <= std_logic_vector(unsigned(tmp42_cast_fu_1038_p1) + unsigned(tmp44_fu_1062_p2));
    tmp42_cast_fu_1038_p1 <= std_logic_vector(resize(unsigned(tmp42_fu_1032_p2),3));
    tmp42_fu_1032_p2 <= std_logic_vector(unsigned(tmp_1_41_cast_fu_616_p1) + unsigned(tmp43_fu_1026_p2));
    tmp43_fu_1026_p2 <= std_logic_vector(unsigned(tmp_1_43_cast_fu_640_p1) + unsigned(tmp_1_42_cast_fu_628_p1));
    tmp44_fu_1062_p2 <= std_logic_vector(unsigned(tmp45_cast_fu_1048_p1) + unsigned(tmp46_cast_fu_1058_p1));
    tmp45_cast_fu_1048_p1 <= std_logic_vector(resize(unsigned(tmp45_fu_1042_p2),3));
    tmp45_fu_1042_p2 <= std_logic_vector(unsigned(tmp_1_45_cast_fu_664_p1) + unsigned(tmp_1_44_cast_fu_652_p1));
    tmp46_cast_fu_1058_p1 <= std_logic_vector(resize(unsigned(tmp46_fu_1052_p2),3));
    tmp46_fu_1052_p2 <= std_logic_vector(unsigned(tmp_47_cast_fu_688_p1) + unsigned(tmp_1_46_cast_fu_676_p1));
    tmp4_fu_692_p2 <= std_logic_vector(unsigned(tmp_1_2_cast_fu_136_p1) + unsigned(tmp_1_1_cast_fu_124_p1));
    tmp5_cast_fu_720_p1 <= std_logic_vector(resize(unsigned(tmp5_fu_714_p2),3));
    tmp5_fu_714_p2 <= std_logic_vector(unsigned(tmp_1_3_cast_fu_148_p1) + unsigned(tmp6_fu_708_p2));
    tmp6_fu_708_p2 <= std_logic_vector(unsigned(tmp_1_5_cast_fu_172_p1) + unsigned(tmp_1_4_cast_fu_160_p1));
    tmp7_cast_fu_772_p1 <= std_logic_vector(resize(unsigned(tmp7_fu_766_p2),4));
    tmp7_fu_766_p2 <= std_logic_vector(unsigned(tmp8_cast_fu_746_p1) + unsigned(tmp10_cast_fu_762_p1));
    tmp8_cast_fu_746_p1 <= std_logic_vector(resize(unsigned(tmp8_fu_740_p2),3));
    tmp8_fu_740_p2 <= std_logic_vector(unsigned(tmp_1_6_cast_fu_184_p1) + unsigned(tmp9_fu_734_p2));
    tmp9_fu_734_p2 <= std_logic_vector(unsigned(tmp_1_8_cast_fu_208_p1) + unsigned(tmp_1_7_cast_fu_196_p1));
    tmp_10_fu_212_p3 <= n_V(9 downto 9);
    tmp_11_fu_224_p3 <= n_V(10 downto 10);
    tmp_12_fu_236_p3 <= n_V(11 downto 11);
    tmp_13_fu_248_p3 <= n_V(12 downto 12);
    tmp_14_fu_260_p3 <= n_V(13 downto 13);
    tmp_15_fu_272_p3 <= n_V(14 downto 14);
    tmp_16_fu_284_p3 <= n_V(15 downto 15);
    tmp_17_fu_296_p3 <= n_V(16 downto 16);
    tmp_18_fu_308_p3 <= n_V(17 downto 17);
    tmp_19_fu_320_p3 <= n_V(18 downto 18);
    tmp_1_10_cast_fu_244_p1 <= std_logic_vector(resize(unsigned(tmp_12_fu_236_p3),2));
    tmp_1_11_cast_fu_256_p1 <= std_logic_vector(resize(unsigned(tmp_13_fu_248_p3),2));
    tmp_1_12_cast_fu_268_p1 <= std_logic_vector(resize(unsigned(tmp_14_fu_260_p3),2));
    tmp_1_13_cast_fu_280_p1 <= std_logic_vector(resize(unsigned(tmp_15_fu_272_p3),2));
    tmp_1_14_cast_fu_292_p1 <= std_logic_vector(resize(unsigned(tmp_16_fu_284_p3),2));
    tmp_1_15_cast_fu_304_p1 <= std_logic_vector(resize(unsigned(tmp_17_fu_296_p3),2));
    tmp_1_16_cast_fu_316_p1 <= std_logic_vector(resize(unsigned(tmp_18_fu_308_p3),2));
    tmp_1_17_cast_fu_328_p1 <= std_logic_vector(resize(unsigned(tmp_19_fu_320_p3),2));
    tmp_1_18_cast_fu_340_p1 <= std_logic_vector(resize(unsigned(tmp_20_fu_332_p3),2));
    tmp_1_19_cast_fu_352_p1 <= std_logic_vector(resize(unsigned(tmp_21_fu_344_p3),2));
    tmp_1_1_cast_fu_124_p1 <= std_logic_vector(resize(unsigned(tmp_2_fu_116_p3),2));
    tmp_1_20_cast_fu_364_p1 <= std_logic_vector(resize(unsigned(tmp_22_fu_356_p3),2));
    tmp_1_21_cast_fu_376_p1 <= std_logic_vector(resize(unsigned(tmp_23_fu_368_p3),2));
    tmp_1_22_cast_fu_388_p1 <= std_logic_vector(resize(unsigned(tmp_24_fu_380_p3),2));
    tmp_1_23_cast_fu_400_p1 <= std_logic_vector(resize(unsigned(tmp_25_fu_392_p3),2));
    tmp_1_24_cast_fu_412_p1 <= std_logic_vector(resize(unsigned(tmp_26_fu_404_p3),2));
    tmp_1_25_cast_fu_424_p1 <= std_logic_vector(resize(unsigned(tmp_27_fu_416_p3),2));
    tmp_1_26_cast_fu_436_p1 <= std_logic_vector(resize(unsigned(tmp_28_fu_428_p3),2));
    tmp_1_27_cast_fu_448_p1 <= std_logic_vector(resize(unsigned(tmp_29_fu_440_p3),2));
    tmp_1_28_cast_fu_460_p1 <= std_logic_vector(resize(unsigned(tmp_30_fu_452_p3),2));
    tmp_1_29_cast_fu_472_p1 <= std_logic_vector(resize(unsigned(tmp_31_fu_464_p3),2));
    tmp_1_2_cast_fu_136_p1 <= std_logic_vector(resize(unsigned(tmp_3_fu_128_p3),2));
    tmp_1_30_cast_fu_484_p1 <= std_logic_vector(resize(unsigned(tmp_32_fu_476_p3),2));
    tmp_1_31_cast_fu_496_p1 <= std_logic_vector(resize(unsigned(tmp_33_fu_488_p3),2));
    tmp_1_32_cast_fu_508_p1 <= std_logic_vector(resize(unsigned(tmp_34_fu_500_p3),2));
    tmp_1_33_cast_fu_520_p1 <= std_logic_vector(resize(unsigned(tmp_35_fu_512_p3),2));
    tmp_1_34_cast_fu_532_p1 <= std_logic_vector(resize(unsigned(tmp_36_fu_524_p3),2));
    tmp_1_35_cast_fu_544_p1 <= std_logic_vector(resize(unsigned(tmp_37_fu_536_p3),2));
    tmp_1_36_cast_fu_556_p1 <= std_logic_vector(resize(unsigned(tmp_38_fu_548_p3),2));
    tmp_1_37_cast_fu_568_p1 <= std_logic_vector(resize(unsigned(tmp_39_fu_560_p3),2));
    tmp_1_38_cast_fu_580_p1 <= std_logic_vector(resize(unsigned(tmp_40_fu_572_p3),2));
    tmp_1_39_cast_fu_592_p1 <= std_logic_vector(resize(unsigned(tmp_41_fu_584_p3),2));
    tmp_1_3_cast_fu_148_p1 <= std_logic_vector(resize(unsigned(tmp_4_fu_140_p3),2));
    tmp_1_40_cast_fu_604_p1 <= std_logic_vector(resize(unsigned(tmp_42_fu_596_p3),2));
    tmp_1_41_cast_fu_616_p1 <= std_logic_vector(resize(unsigned(tmp_43_fu_608_p3),2));
    tmp_1_42_cast_fu_628_p1 <= std_logic_vector(resize(unsigned(tmp_44_fu_620_p3),2));
    tmp_1_43_cast_fu_640_p1 <= std_logic_vector(resize(unsigned(tmp_45_fu_632_p3),2));
    tmp_1_44_cast_fu_652_p1 <= std_logic_vector(resize(unsigned(tmp_46_fu_644_p3),2));
    tmp_1_45_cast_fu_664_p1 <= std_logic_vector(resize(unsigned(tmp_47_fu_656_p3),2));
    tmp_1_46_cast_fu_676_p1 <= std_logic_vector(resize(unsigned(tmp_48_fu_668_p3),2));
    tmp_1_4_cast_fu_160_p1 <= std_logic_vector(resize(unsigned(tmp_5_fu_152_p3),2));
    tmp_1_5_cast_fu_172_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_164_p3),2));
    tmp_1_6_cast_fu_184_p1 <= std_logic_vector(resize(unsigned(tmp_7_fu_176_p3),2));
    tmp_1_7_cast_fu_196_p1 <= std_logic_vector(resize(unsigned(tmp_8_fu_188_p3),2));
    tmp_1_8_cast_fu_208_p1 <= std_logic_vector(resize(unsigned(tmp_9_fu_200_p3),2));
    tmp_1_9_cast_fu_220_p1 <= std_logic_vector(resize(unsigned(tmp_10_fu_212_p3),2));
    tmp_1_cast_3_fu_232_p1 <= std_logic_vector(resize(unsigned(tmp_11_fu_224_p3),2));
    tmp_1_cast_fu_112_p1 <= std_logic_vector(resize(unsigned(tmp_1_fu_108_p1),2));
    tmp_1_fu_108_p1 <= n_V(1 - 1 downto 0);
    tmp_20_fu_332_p3 <= n_V(19 downto 19);
    tmp_21_fu_344_p3 <= n_V(20 downto 20);
    tmp_22_fu_356_p3 <= n_V(21 downto 21);
    tmp_23_fu_368_p3 <= n_V(22 downto 22);
    tmp_24_fu_380_p3 <= n_V(23 downto 23);
    tmp_25_fu_392_p3 <= n_V(24 downto 24);
    tmp_26_fu_404_p3 <= n_V(25 downto 25);
    tmp_27_fu_416_p3 <= n_V(26 downto 26);
    tmp_28_fu_428_p3 <= n_V(27 downto 27);
    tmp_29_fu_440_p3 <= n_V(28 downto 28);
    tmp_2_fu_116_p3 <= n_V(1 downto 1);
    tmp_30_fu_452_p3 <= n_V(29 downto 29);
    tmp_31_fu_464_p3 <= n_V(30 downto 30);
    tmp_32_fu_476_p3 <= n_V(31 downto 31);
    tmp_33_fu_488_p3 <= n_V(32 downto 32);
    tmp_34_fu_500_p3 <= n_V(33 downto 33);
    tmp_35_fu_512_p3 <= n_V(34 downto 34);
    tmp_36_fu_524_p3 <= n_V(35 downto 35);
    tmp_37_fu_536_p3 <= n_V(36 downto 36);
    tmp_38_fu_548_p3 <= n_V(37 downto 37);
    tmp_39_fu_560_p3 <= n_V(38 downto 38);
    tmp_3_fu_128_p3 <= n_V(2 downto 2);
    tmp_40_fu_572_p3 <= n_V(39 downto 39);
    tmp_41_fu_584_p3 <= n_V(40 downto 40);
    tmp_42_fu_596_p3 <= n_V(41 downto 41);
    tmp_43_fu_608_p3 <= n_V(42 downto 42);
    tmp_44_fu_620_p3 <= n_V(43 downto 43);
    tmp_45_fu_632_p3 <= n_V(44 downto 44);
    tmp_46_fu_644_p3 <= n_V(45 downto 45);
    tmp_47_cast_fu_688_p1 <= std_logic_vector(resize(unsigned(tmp_49_fu_680_p3),2));
    tmp_47_fu_656_p3 <= n_V(46 downto 46);
    tmp_48_fu_668_p3 <= n_V(47 downto 47);
    tmp_49_fu_680_p3 <= n_V(48 downto 48);
    tmp_4_fu_140_p3 <= n_V(3 downto 3);
    tmp_5_fu_152_p3 <= n_V(4 downto 4);
    tmp_6_fu_164_p3 <= n_V(5 downto 5);
    tmp_7_fu_176_p3 <= n_V(6 downto 6);
    tmp_8_fu_188_p3 <= n_V(7 downto 7);
    tmp_9_fu_200_p3 <= n_V(8 downto 8);
    tmp_cast_fu_886_p1 <= std_logic_vector(resize(unsigned(tmp_fu_880_p2),6));
    tmp_fu_880_p2 <= std_logic_vector(unsigned(tmp1_cast_fu_782_p1) + unsigned(tmp12_cast_fu_876_p1));
end behav;
