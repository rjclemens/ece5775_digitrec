// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module digitrec_bitcount (
        n_V,
        ap_return
);

parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_14 = 32'b10100;
parameter    ap_const_lv32_15 = 32'b10101;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_19 = 32'b11001;
parameter    ap_const_lv32_1A = 32'b11010;
parameter    ap_const_lv32_1B = 32'b11011;
parameter    ap_const_lv32_1C = 32'b11100;
parameter    ap_const_lv32_1D = 32'b11101;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_21 = 32'b100001;
parameter    ap_const_lv32_22 = 32'b100010;
parameter    ap_const_lv32_23 = 32'b100011;
parameter    ap_const_lv32_24 = 32'b100100;
parameter    ap_const_lv32_25 = 32'b100101;
parameter    ap_const_lv32_26 = 32'b100110;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv32_28 = 32'b101000;
parameter    ap_const_lv32_29 = 32'b101001;
parameter    ap_const_lv32_2A = 32'b101010;
parameter    ap_const_lv32_2B = 32'b101011;
parameter    ap_const_lv32_2C = 32'b101100;
parameter    ap_const_lv32_2D = 32'b101101;
parameter    ap_const_lv32_2E = 32'b101110;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv32_30 = 32'b110000;

input  [48:0] n_V;
output  [5:0] ap_return;

wire   [0:0] tmp_20_fu_108_p1;
wire   [0:0] tmp_21_fu_116_p3;
wire   [0:0] tmp_22_fu_128_p3;
wire   [0:0] tmp_23_fu_140_p3;
wire   [0:0] tmp_24_fu_152_p3;
wire   [0:0] tmp_25_fu_164_p3;
wire   [0:0] tmp_26_fu_176_p3;
wire   [0:0] tmp_27_fu_188_p3;
wire   [0:0] tmp_28_fu_200_p3;
wire   [0:0] tmp_29_fu_212_p3;
wire   [0:0] tmp_30_fu_224_p3;
wire   [0:0] tmp_31_fu_236_p3;
wire   [0:0] tmp_32_fu_248_p3;
wire   [0:0] tmp_33_fu_260_p3;
wire   [0:0] tmp_34_fu_272_p3;
wire   [0:0] tmp_35_fu_284_p3;
wire   [0:0] tmp_36_fu_296_p3;
wire   [0:0] tmp_37_fu_308_p3;
wire   [0:0] tmp_38_fu_320_p3;
wire   [0:0] tmp_39_fu_332_p3;
wire   [0:0] tmp_40_fu_344_p3;
wire   [0:0] tmp_41_fu_356_p3;
wire   [0:0] tmp_42_fu_368_p3;
wire   [0:0] tmp_43_fu_380_p3;
wire   [0:0] tmp_44_fu_392_p3;
wire   [0:0] tmp_45_fu_404_p3;
wire   [0:0] tmp_46_fu_416_p3;
wire   [0:0] tmp_47_fu_428_p3;
wire   [0:0] tmp_48_fu_440_p3;
wire   [0:0] tmp_49_fu_452_p3;
wire   [0:0] tmp_50_fu_464_p3;
wire   [0:0] tmp_51_fu_476_p3;
wire   [0:0] tmp_52_fu_488_p3;
wire   [0:0] tmp_53_fu_500_p3;
wire   [0:0] tmp_54_fu_512_p3;
wire   [0:0] tmp_55_fu_524_p3;
wire   [0:0] tmp_56_fu_536_p3;
wire   [0:0] tmp_57_fu_548_p3;
wire   [0:0] tmp_58_fu_560_p3;
wire   [0:0] tmp_59_fu_572_p3;
wire   [0:0] tmp_60_fu_584_p3;
wire   [0:0] tmp_61_fu_596_p3;
wire   [0:0] tmp_62_fu_608_p3;
wire   [0:0] tmp_63_fu_620_p3;
wire   [0:0] tmp_64_fu_632_p3;
wire   [0:0] tmp_65_fu_644_p3;
wire   [0:0] tmp_66_fu_656_p3;
wire   [0:0] tmp_67_fu_668_p3;
wire   [0:0] tmp_68_fu_680_p3;
wire   [1:0] tmp_5_2_cast_fu_136_p1;
wire   [1:0] tmp_5_1_cast_fu_124_p1;
wire   [1:0] tmp_5_cast_fu_112_p1;
wire   [1:0] tmp4_fu_692_p2;
wire   [1:0] tmp3_fu_698_p2;
wire   [1:0] tmp_5_5_cast_fu_172_p1;
wire   [1:0] tmp_5_4_cast_fu_160_p1;
wire   [1:0] tmp_5_3_cast_fu_148_p1;
wire   [1:0] tmp6_fu_708_p2;
wire   [1:0] tmp5_fu_714_p2;
wire   [2:0] tmp3_cast_fu_704_p1;
wire   [2:0] tmp5_cast_fu_720_p1;
wire   [2:0] tmp2_fu_724_p2;
wire   [1:0] tmp_5_8_cast_fu_208_p1;
wire   [1:0] tmp_5_7_cast_fu_196_p1;
wire   [1:0] tmp_5_6_cast_fu_184_p1;
wire   [1:0] tmp9_fu_734_p2;
wire   [1:0] tmp8_fu_740_p2;
wire   [1:0] tmp_5_10_cast_fu_244_p1;
wire   [1:0] tmp_5_cast_4_fu_232_p1;
wire   [1:0] tmp_5_9_cast_fu_220_p1;
wire   [1:0] tmp11_fu_750_p2;
wire   [1:0] tmp10_fu_756_p2;
wire   [2:0] tmp8_cast_fu_746_p1;
wire   [2:0] tmp10_cast_fu_762_p1;
wire   [2:0] tmp7_fu_766_p2;
wire   [3:0] tmp2_cast_fu_730_p1;
wire   [3:0] tmp7_cast_fu_772_p1;
wire   [3:0] tmp1_fu_776_p2;
wire   [1:0] tmp_5_13_cast_fu_280_p1;
wire   [1:0] tmp_5_12_cast_fu_268_p1;
wire   [1:0] tmp_5_11_cast_fu_256_p1;
wire   [1:0] tmp15_fu_786_p2;
wire   [1:0] tmp14_fu_792_p2;
wire   [1:0] tmp_5_16_cast_fu_316_p1;
wire   [1:0] tmp_5_15_cast_fu_304_p1;
wire   [1:0] tmp_5_14_cast_fu_292_p1;
wire   [1:0] tmp17_fu_802_p2;
wire   [1:0] tmp16_fu_808_p2;
wire   [2:0] tmp14_cast_fu_798_p1;
wire   [2:0] tmp16_cast_fu_814_p1;
wire   [2:0] tmp13_fu_818_p2;
wire   [1:0] tmp_5_19_cast_fu_352_p1;
wire   [1:0] tmp_5_18_cast_fu_340_p1;
wire   [1:0] tmp_5_17_cast_fu_328_p1;
wire   [1:0] tmp20_fu_828_p2;
wire   [1:0] tmp19_fu_834_p2;
wire   [1:0] tmp_5_22_cast_fu_388_p1;
wire   [1:0] tmp_5_21_cast_fu_376_p1;
wire   [1:0] tmp_5_20_cast_fu_364_p1;
wire   [1:0] tmp22_fu_844_p2;
wire   [1:0] tmp21_fu_850_p2;
wire   [2:0] tmp19_cast_fu_840_p1;
wire   [2:0] tmp21_cast_fu_856_p1;
wire   [2:0] tmp18_fu_860_p2;
wire   [3:0] tmp13_cast_fu_824_p1;
wire   [3:0] tmp18_cast_fu_866_p1;
wire   [3:0] tmp12_fu_870_p2;
wire   [4:0] tmp1_cast_fu_782_p1;
wire   [4:0] tmp12_cast_fu_876_p1;
wire   [4:0] tmp_fu_880_p2;
wire   [1:0] tmp_5_25_cast_fu_424_p1;
wire   [1:0] tmp_5_24_cast_fu_412_p1;
wire   [1:0] tmp_5_23_cast_fu_400_p1;
wire   [1:0] tmp27_fu_890_p2;
wire   [1:0] tmp26_fu_896_p2;
wire   [1:0] tmp_5_28_cast_fu_460_p1;
wire   [1:0] tmp_5_27_cast_fu_448_p1;
wire   [1:0] tmp_5_26_cast_fu_436_p1;
wire   [1:0] tmp29_fu_906_p2;
wire   [1:0] tmp28_fu_912_p2;
wire   [2:0] tmp26_cast_fu_902_p1;
wire   [2:0] tmp28_cast_fu_918_p1;
wire   [2:0] tmp25_fu_922_p2;
wire   [1:0] tmp_5_31_cast_fu_496_p1;
wire   [1:0] tmp_5_30_cast_fu_484_p1;
wire   [1:0] tmp_5_29_cast_fu_472_p1;
wire   [1:0] tmp32_fu_932_p2;
wire   [1:0] tmp31_fu_938_p2;
wire   [1:0] tmp_5_34_cast_fu_532_p1;
wire   [1:0] tmp_5_33_cast_fu_520_p1;
wire   [1:0] tmp_5_32_cast_fu_508_p1;
wire   [1:0] tmp34_fu_948_p2;
wire   [1:0] tmp33_fu_954_p2;
wire   [2:0] tmp31_cast_fu_944_p1;
wire   [2:0] tmp33_cast_fu_960_p1;
wire   [2:0] tmp30_fu_964_p2;
wire   [3:0] tmp25_cast_fu_928_p1;
wire   [3:0] tmp30_cast_fu_970_p1;
wire   [3:0] tmp24_fu_974_p2;
wire   [1:0] tmp_5_37_cast_fu_568_p1;
wire   [1:0] tmp_5_36_cast_fu_556_p1;
wire   [1:0] tmp_5_35_cast_fu_544_p1;
wire   [1:0] tmp38_fu_984_p2;
wire   [1:0] tmp37_fu_990_p2;
wire   [1:0] tmp_5_40_cast_fu_604_p1;
wire   [1:0] tmp_5_39_cast_fu_592_p1;
wire   [1:0] tmp_5_38_cast_fu_580_p1;
wire   [1:0] tmp40_fu_1000_p2;
wire   [1:0] tmp39_fu_1006_p2;
wire   [2:0] tmp37_cast_fu_996_p1;
wire   [2:0] tmp39_cast_fu_1012_p1;
wire   [2:0] tmp36_fu_1016_p2;
wire   [1:0] tmp_5_43_cast_fu_640_p1;
wire   [1:0] tmp_5_42_cast_fu_628_p1;
wire   [1:0] tmp_5_41_cast_fu_616_p1;
wire   [1:0] tmp43_fu_1026_p2;
wire   [1:0] tmp42_fu_1032_p2;
wire   [1:0] tmp_5_45_cast_fu_664_p1;
wire   [1:0] tmp_5_44_cast_fu_652_p1;
wire   [1:0] tmp45_fu_1042_p2;
wire   [1:0] tmp_47_cast_fu_688_p1;
wire   [1:0] tmp_5_46_cast_fu_676_p1;
wire   [1:0] tmp46_fu_1052_p2;
wire   [2:0] tmp45_cast_fu_1048_p1;
wire   [2:0] tmp46_cast_fu_1058_p1;
wire   [2:0] tmp42_cast_fu_1038_p1;
wire   [2:0] tmp44_fu_1062_p2;
wire   [2:0] tmp41_fu_1068_p2;
wire   [3:0] tmp36_cast_fu_1022_p1;
wire   [3:0] tmp41_cast_fu_1074_p1;
wire   [3:0] tmp35_fu_1078_p2;
wire   [4:0] tmp24_cast_fu_980_p1;
wire   [4:0] tmp35_cast_fu_1084_p1;
wire   [4:0] tmp23_fu_1088_p2;
wire   [5:0] tmp_cast_fu_886_p1;
wire   [5:0] tmp23_cast_fu_1094_p1;

assign ap_return = (tmp_cast_fu_886_p1 + tmp23_cast_fu_1094_p1);

assign tmp10_cast_fu_762_p1 = tmp10_fu_756_p2;

assign tmp10_fu_756_p2 = (tmp_5_9_cast_fu_220_p1 + tmp11_fu_750_p2);

assign tmp11_fu_750_p2 = (tmp_5_10_cast_fu_244_p1 + tmp_5_cast_4_fu_232_p1);

assign tmp12_cast_fu_876_p1 = tmp12_fu_870_p2;

assign tmp12_fu_870_p2 = (tmp13_cast_fu_824_p1 + tmp18_cast_fu_866_p1);

assign tmp13_cast_fu_824_p1 = tmp13_fu_818_p2;

assign tmp13_fu_818_p2 = (tmp14_cast_fu_798_p1 + tmp16_cast_fu_814_p1);

assign tmp14_cast_fu_798_p1 = tmp14_fu_792_p2;

assign tmp14_fu_792_p2 = (tmp_5_11_cast_fu_256_p1 + tmp15_fu_786_p2);

assign tmp15_fu_786_p2 = (tmp_5_13_cast_fu_280_p1 + tmp_5_12_cast_fu_268_p1);

assign tmp16_cast_fu_814_p1 = tmp16_fu_808_p2;

assign tmp16_fu_808_p2 = (tmp_5_14_cast_fu_292_p1 + tmp17_fu_802_p2);

assign tmp17_fu_802_p2 = (tmp_5_16_cast_fu_316_p1 + tmp_5_15_cast_fu_304_p1);

assign tmp18_cast_fu_866_p1 = tmp18_fu_860_p2;

assign tmp18_fu_860_p2 = (tmp19_cast_fu_840_p1 + tmp21_cast_fu_856_p1);

assign tmp19_cast_fu_840_p1 = tmp19_fu_834_p2;

assign tmp19_fu_834_p2 = (tmp_5_17_cast_fu_328_p1 + tmp20_fu_828_p2);

assign tmp1_cast_fu_782_p1 = tmp1_fu_776_p2;

assign tmp1_fu_776_p2 = (tmp2_cast_fu_730_p1 + tmp7_cast_fu_772_p1);

assign tmp20_fu_828_p2 = (tmp_5_19_cast_fu_352_p1 + tmp_5_18_cast_fu_340_p1);

assign tmp21_cast_fu_856_p1 = tmp21_fu_850_p2;

assign tmp21_fu_850_p2 = (tmp_5_20_cast_fu_364_p1 + tmp22_fu_844_p2);

assign tmp22_fu_844_p2 = (tmp_5_22_cast_fu_388_p1 + tmp_5_21_cast_fu_376_p1);

assign tmp23_cast_fu_1094_p1 = tmp23_fu_1088_p2;

assign tmp23_fu_1088_p2 = (tmp24_cast_fu_980_p1 + tmp35_cast_fu_1084_p1);

assign tmp24_cast_fu_980_p1 = tmp24_fu_974_p2;

assign tmp24_fu_974_p2 = (tmp25_cast_fu_928_p1 + tmp30_cast_fu_970_p1);

assign tmp25_cast_fu_928_p1 = tmp25_fu_922_p2;

assign tmp25_fu_922_p2 = (tmp26_cast_fu_902_p1 + tmp28_cast_fu_918_p1);

assign tmp26_cast_fu_902_p1 = tmp26_fu_896_p2;

assign tmp26_fu_896_p2 = (tmp_5_23_cast_fu_400_p1 + tmp27_fu_890_p2);

assign tmp27_fu_890_p2 = (tmp_5_25_cast_fu_424_p1 + tmp_5_24_cast_fu_412_p1);

assign tmp28_cast_fu_918_p1 = tmp28_fu_912_p2;

assign tmp28_fu_912_p2 = (tmp_5_26_cast_fu_436_p1 + tmp29_fu_906_p2);

assign tmp29_fu_906_p2 = (tmp_5_28_cast_fu_460_p1 + tmp_5_27_cast_fu_448_p1);

assign tmp2_cast_fu_730_p1 = tmp2_fu_724_p2;

assign tmp2_fu_724_p2 = (tmp3_cast_fu_704_p1 + tmp5_cast_fu_720_p1);

assign tmp30_cast_fu_970_p1 = tmp30_fu_964_p2;

assign tmp30_fu_964_p2 = (tmp31_cast_fu_944_p1 + tmp33_cast_fu_960_p1);

assign tmp31_cast_fu_944_p1 = tmp31_fu_938_p2;

assign tmp31_fu_938_p2 = (tmp_5_29_cast_fu_472_p1 + tmp32_fu_932_p2);

assign tmp32_fu_932_p2 = (tmp_5_31_cast_fu_496_p1 + tmp_5_30_cast_fu_484_p1);

assign tmp33_cast_fu_960_p1 = tmp33_fu_954_p2;

assign tmp33_fu_954_p2 = (tmp_5_32_cast_fu_508_p1 + tmp34_fu_948_p2);

assign tmp34_fu_948_p2 = (tmp_5_34_cast_fu_532_p1 + tmp_5_33_cast_fu_520_p1);

assign tmp35_cast_fu_1084_p1 = tmp35_fu_1078_p2;

assign tmp35_fu_1078_p2 = (tmp36_cast_fu_1022_p1 + tmp41_cast_fu_1074_p1);

assign tmp36_cast_fu_1022_p1 = tmp36_fu_1016_p2;

assign tmp36_fu_1016_p2 = (tmp37_cast_fu_996_p1 + tmp39_cast_fu_1012_p1);

assign tmp37_cast_fu_996_p1 = tmp37_fu_990_p2;

assign tmp37_fu_990_p2 = (tmp_5_35_cast_fu_544_p1 + tmp38_fu_984_p2);

assign tmp38_fu_984_p2 = (tmp_5_37_cast_fu_568_p1 + tmp_5_36_cast_fu_556_p1);

assign tmp39_cast_fu_1012_p1 = tmp39_fu_1006_p2;

assign tmp39_fu_1006_p2 = (tmp_5_38_cast_fu_580_p1 + tmp40_fu_1000_p2);

assign tmp3_cast_fu_704_p1 = tmp3_fu_698_p2;

assign tmp3_fu_698_p2 = (tmp_5_cast_fu_112_p1 + tmp4_fu_692_p2);

assign tmp40_fu_1000_p2 = (tmp_5_40_cast_fu_604_p1 + tmp_5_39_cast_fu_592_p1);

assign tmp41_cast_fu_1074_p1 = tmp41_fu_1068_p2;

assign tmp41_fu_1068_p2 = (tmp42_cast_fu_1038_p1 + tmp44_fu_1062_p2);

assign tmp42_cast_fu_1038_p1 = tmp42_fu_1032_p2;

assign tmp42_fu_1032_p2 = (tmp_5_41_cast_fu_616_p1 + tmp43_fu_1026_p2);

assign tmp43_fu_1026_p2 = (tmp_5_43_cast_fu_640_p1 + tmp_5_42_cast_fu_628_p1);

assign tmp44_fu_1062_p2 = (tmp45_cast_fu_1048_p1 + tmp46_cast_fu_1058_p1);

assign tmp45_cast_fu_1048_p1 = tmp45_fu_1042_p2;

assign tmp45_fu_1042_p2 = (tmp_5_45_cast_fu_664_p1 + tmp_5_44_cast_fu_652_p1);

assign tmp46_cast_fu_1058_p1 = tmp46_fu_1052_p2;

assign tmp46_fu_1052_p2 = (tmp_47_cast_fu_688_p1 + tmp_5_46_cast_fu_676_p1);

assign tmp4_fu_692_p2 = (tmp_5_2_cast_fu_136_p1 + tmp_5_1_cast_fu_124_p1);

assign tmp5_cast_fu_720_p1 = tmp5_fu_714_p2;

assign tmp5_fu_714_p2 = (tmp_5_3_cast_fu_148_p1 + tmp6_fu_708_p2);

assign tmp6_fu_708_p2 = (tmp_5_5_cast_fu_172_p1 + tmp_5_4_cast_fu_160_p1);

assign tmp7_cast_fu_772_p1 = tmp7_fu_766_p2;

assign tmp7_fu_766_p2 = (tmp8_cast_fu_746_p1 + tmp10_cast_fu_762_p1);

assign tmp8_cast_fu_746_p1 = tmp8_fu_740_p2;

assign tmp8_fu_740_p2 = (tmp_5_6_cast_fu_184_p1 + tmp9_fu_734_p2);

assign tmp9_fu_734_p2 = (tmp_5_8_cast_fu_208_p1 + tmp_5_7_cast_fu_196_p1);

assign tmp_20_fu_108_p1 = n_V[0:0];

assign tmp_21_fu_116_p3 = n_V[ap_const_lv32_1];

assign tmp_22_fu_128_p3 = n_V[ap_const_lv32_2];

assign tmp_23_fu_140_p3 = n_V[ap_const_lv32_3];

assign tmp_24_fu_152_p3 = n_V[ap_const_lv32_4];

assign tmp_25_fu_164_p3 = n_V[ap_const_lv32_5];

assign tmp_26_fu_176_p3 = n_V[ap_const_lv32_6];

assign tmp_27_fu_188_p3 = n_V[ap_const_lv32_7];

assign tmp_28_fu_200_p3 = n_V[ap_const_lv32_8];

assign tmp_29_fu_212_p3 = n_V[ap_const_lv32_9];

assign tmp_30_fu_224_p3 = n_V[ap_const_lv32_A];

assign tmp_31_fu_236_p3 = n_V[ap_const_lv32_B];

assign tmp_32_fu_248_p3 = n_V[ap_const_lv32_C];

assign tmp_33_fu_260_p3 = n_V[ap_const_lv32_D];

assign tmp_34_fu_272_p3 = n_V[ap_const_lv32_E];

assign tmp_35_fu_284_p3 = n_V[ap_const_lv32_F];

assign tmp_36_fu_296_p3 = n_V[ap_const_lv32_10];

assign tmp_37_fu_308_p3 = n_V[ap_const_lv32_11];

assign tmp_38_fu_320_p3 = n_V[ap_const_lv32_12];

assign tmp_39_fu_332_p3 = n_V[ap_const_lv32_13];

assign tmp_40_fu_344_p3 = n_V[ap_const_lv32_14];

assign tmp_41_fu_356_p3 = n_V[ap_const_lv32_15];

assign tmp_42_fu_368_p3 = n_V[ap_const_lv32_16];

assign tmp_43_fu_380_p3 = n_V[ap_const_lv32_17];

assign tmp_44_fu_392_p3 = n_V[ap_const_lv32_18];

assign tmp_45_fu_404_p3 = n_V[ap_const_lv32_19];

assign tmp_46_fu_416_p3 = n_V[ap_const_lv32_1A];

assign tmp_47_cast_fu_688_p1 = tmp_68_fu_680_p3;

assign tmp_47_fu_428_p3 = n_V[ap_const_lv32_1B];

assign tmp_48_fu_440_p3 = n_V[ap_const_lv32_1C];

assign tmp_49_fu_452_p3 = n_V[ap_const_lv32_1D];

assign tmp_50_fu_464_p3 = n_V[ap_const_lv32_1E];

assign tmp_51_fu_476_p3 = n_V[ap_const_lv32_1F];

assign tmp_52_fu_488_p3 = n_V[ap_const_lv32_20];

assign tmp_53_fu_500_p3 = n_V[ap_const_lv32_21];

assign tmp_54_fu_512_p3 = n_V[ap_const_lv32_22];

assign tmp_55_fu_524_p3 = n_V[ap_const_lv32_23];

assign tmp_56_fu_536_p3 = n_V[ap_const_lv32_24];

assign tmp_57_fu_548_p3 = n_V[ap_const_lv32_25];

assign tmp_58_fu_560_p3 = n_V[ap_const_lv32_26];

assign tmp_59_fu_572_p3 = n_V[ap_const_lv32_27];

assign tmp_5_10_cast_fu_244_p1 = tmp_31_fu_236_p3;

assign tmp_5_11_cast_fu_256_p1 = tmp_32_fu_248_p3;

assign tmp_5_12_cast_fu_268_p1 = tmp_33_fu_260_p3;

assign tmp_5_13_cast_fu_280_p1 = tmp_34_fu_272_p3;

assign tmp_5_14_cast_fu_292_p1 = tmp_35_fu_284_p3;

assign tmp_5_15_cast_fu_304_p1 = tmp_36_fu_296_p3;

assign tmp_5_16_cast_fu_316_p1 = tmp_37_fu_308_p3;

assign tmp_5_17_cast_fu_328_p1 = tmp_38_fu_320_p3;

assign tmp_5_18_cast_fu_340_p1 = tmp_39_fu_332_p3;

assign tmp_5_19_cast_fu_352_p1 = tmp_40_fu_344_p3;

assign tmp_5_1_cast_fu_124_p1 = tmp_21_fu_116_p3;

assign tmp_5_20_cast_fu_364_p1 = tmp_41_fu_356_p3;

assign tmp_5_21_cast_fu_376_p1 = tmp_42_fu_368_p3;

assign tmp_5_22_cast_fu_388_p1 = tmp_43_fu_380_p3;

assign tmp_5_23_cast_fu_400_p1 = tmp_44_fu_392_p3;

assign tmp_5_24_cast_fu_412_p1 = tmp_45_fu_404_p3;

assign tmp_5_25_cast_fu_424_p1 = tmp_46_fu_416_p3;

assign tmp_5_26_cast_fu_436_p1 = tmp_47_fu_428_p3;

assign tmp_5_27_cast_fu_448_p1 = tmp_48_fu_440_p3;

assign tmp_5_28_cast_fu_460_p1 = tmp_49_fu_452_p3;

assign tmp_5_29_cast_fu_472_p1 = tmp_50_fu_464_p3;

assign tmp_5_2_cast_fu_136_p1 = tmp_22_fu_128_p3;

assign tmp_5_30_cast_fu_484_p1 = tmp_51_fu_476_p3;

assign tmp_5_31_cast_fu_496_p1 = tmp_52_fu_488_p3;

assign tmp_5_32_cast_fu_508_p1 = tmp_53_fu_500_p3;

assign tmp_5_33_cast_fu_520_p1 = tmp_54_fu_512_p3;

assign tmp_5_34_cast_fu_532_p1 = tmp_55_fu_524_p3;

assign tmp_5_35_cast_fu_544_p1 = tmp_56_fu_536_p3;

assign tmp_5_36_cast_fu_556_p1 = tmp_57_fu_548_p3;

assign tmp_5_37_cast_fu_568_p1 = tmp_58_fu_560_p3;

assign tmp_5_38_cast_fu_580_p1 = tmp_59_fu_572_p3;

assign tmp_5_39_cast_fu_592_p1 = tmp_60_fu_584_p3;

assign tmp_5_3_cast_fu_148_p1 = tmp_23_fu_140_p3;

assign tmp_5_40_cast_fu_604_p1 = tmp_61_fu_596_p3;

assign tmp_5_41_cast_fu_616_p1 = tmp_62_fu_608_p3;

assign tmp_5_42_cast_fu_628_p1 = tmp_63_fu_620_p3;

assign tmp_5_43_cast_fu_640_p1 = tmp_64_fu_632_p3;

assign tmp_5_44_cast_fu_652_p1 = tmp_65_fu_644_p3;

assign tmp_5_45_cast_fu_664_p1 = tmp_66_fu_656_p3;

assign tmp_5_46_cast_fu_676_p1 = tmp_67_fu_668_p3;

assign tmp_5_4_cast_fu_160_p1 = tmp_24_fu_152_p3;

assign tmp_5_5_cast_fu_172_p1 = tmp_25_fu_164_p3;

assign tmp_5_6_cast_fu_184_p1 = tmp_26_fu_176_p3;

assign tmp_5_7_cast_fu_196_p1 = tmp_27_fu_188_p3;

assign tmp_5_8_cast_fu_208_p1 = tmp_28_fu_200_p3;

assign tmp_5_9_cast_fu_220_p1 = tmp_29_fu_212_p3;

assign tmp_5_cast_4_fu_232_p1 = tmp_30_fu_224_p3;

assign tmp_5_cast_fu_112_p1 = tmp_20_fu_108_p1;

assign tmp_60_fu_584_p3 = n_V[ap_const_lv32_28];

assign tmp_61_fu_596_p3 = n_V[ap_const_lv32_29];

assign tmp_62_fu_608_p3 = n_V[ap_const_lv32_2A];

assign tmp_63_fu_620_p3 = n_V[ap_const_lv32_2B];

assign tmp_64_fu_632_p3 = n_V[ap_const_lv32_2C];

assign tmp_65_fu_644_p3 = n_V[ap_const_lv32_2D];

assign tmp_66_fu_656_p3 = n_V[ap_const_lv32_2E];

assign tmp_67_fu_668_p3 = n_V[ap_const_lv32_2F];

assign tmp_68_fu_680_p3 = n_V[ap_const_lv32_30];

assign tmp_cast_fu_886_p1 = tmp_fu_880_p2;

assign tmp_fu_880_p2 = (tmp1_cast_fu_782_p1 + tmp12_cast_fu_876_p1);

endmodule //digitrec_bitcount
