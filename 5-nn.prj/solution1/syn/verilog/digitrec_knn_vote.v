// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module digitrec_knn_vote (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        knn_set_0_0_V_read,
        knn_set_0_1_V_read,
        knn_set_0_2_V_read,
        knn_set_0_3_V_read,
        knn_set_0_4_V_read,
        knn_set_1_0_V_read,
        knn_set_1_1_V_read,
        knn_set_1_2_V_read,
        knn_set_1_3_V_read,
        knn_set_1_4_V_read,
        knn_set_2_0_V_read,
        knn_set_2_1_V_read,
        knn_set_2_2_V_read,
        knn_set_2_3_V_read,
        knn_set_2_4_V_read,
        knn_set_3_0_V_read,
        knn_set_3_1_V_read,
        knn_set_3_2_V_read,
        knn_set_3_3_V_read,
        knn_set_3_4_V_read,
        knn_set_4_0_V_read,
        knn_set_4_1_V_read,
        knn_set_4_2_V_read,
        knn_set_4_3_V_read,
        knn_set_4_4_V_read,
        knn_set_5_0_V_read,
        knn_set_5_1_V_read,
        knn_set_5_2_V_read,
        knn_set_5_3_V_read,
        knn_set_5_4_V_read,
        knn_set_6_0_V_read,
        knn_set_6_1_V_read,
        knn_set_6_2_V_read,
        knn_set_6_3_V_read,
        knn_set_6_4_V_read,
        knn_set_7_0_V_read,
        knn_set_7_1_V_read,
        knn_set_7_2_V_read,
        knn_set_7_3_V_read,
        knn_set_7_4_V_read,
        knn_set_8_0_V_read,
        knn_set_8_1_V_read,
        knn_set_8_2_V_read,
        knn_set_8_3_V_read,
        knn_set_8_4_V_read,
        knn_set_9_0_V_read,
        knn_set_9_1_V_read,
        knn_set_9_2_V_read,
        knn_set_9_3_V_read,
        knn_set_9_4_V_read,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_7 = 3'b111;
parameter    ap_const_lv3_6 = 3'b110;
parameter    ap_const_lv4_9 = 4'b1001;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_0 = 4'b0000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [5:0] knn_set_0_0_V_read;
input  [5:0] knn_set_0_1_V_read;
input  [5:0] knn_set_0_2_V_read;
input  [5:0] knn_set_0_3_V_read;
input  [5:0] knn_set_0_4_V_read;
input  [5:0] knn_set_1_0_V_read;
input  [5:0] knn_set_1_1_V_read;
input  [5:0] knn_set_1_2_V_read;
input  [5:0] knn_set_1_3_V_read;
input  [5:0] knn_set_1_4_V_read;
input  [5:0] knn_set_2_0_V_read;
input  [5:0] knn_set_2_1_V_read;
input  [5:0] knn_set_2_2_V_read;
input  [5:0] knn_set_2_3_V_read;
input  [5:0] knn_set_2_4_V_read;
input  [5:0] knn_set_3_0_V_read;
input  [5:0] knn_set_3_1_V_read;
input  [5:0] knn_set_3_2_V_read;
input  [5:0] knn_set_3_3_V_read;
input  [5:0] knn_set_3_4_V_read;
input  [5:0] knn_set_4_0_V_read;
input  [5:0] knn_set_4_1_V_read;
input  [5:0] knn_set_4_2_V_read;
input  [5:0] knn_set_4_3_V_read;
input  [5:0] knn_set_4_4_V_read;
input  [5:0] knn_set_5_0_V_read;
input  [5:0] knn_set_5_1_V_read;
input  [5:0] knn_set_5_2_V_read;
input  [5:0] knn_set_5_3_V_read;
input  [5:0] knn_set_5_4_V_read;
input  [5:0] knn_set_6_0_V_read;
input  [5:0] knn_set_6_1_V_read;
input  [5:0] knn_set_6_2_V_read;
input  [5:0] knn_set_6_3_V_read;
input  [5:0] knn_set_6_4_V_read;
input  [5:0] knn_set_7_0_V_read;
input  [5:0] knn_set_7_1_V_read;
input  [5:0] knn_set_7_2_V_read;
input  [5:0] knn_set_7_3_V_read;
input  [5:0] knn_set_7_4_V_read;
input  [5:0] knn_set_8_0_V_read;
input  [5:0] knn_set_8_1_V_read;
input  [5:0] knn_set_8_2_V_read;
input  [5:0] knn_set_8_3_V_read;
input  [5:0] knn_set_8_4_V_read;
input  [5:0] knn_set_9_0_V_read;
input  [5:0] knn_set_9_1_V_read;
input  [5:0] knn_set_9_2_V_read;
input  [5:0] knn_set_9_3_V_read;
input  [5:0] knn_set_9_4_V_read;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] ap_return;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
wire   [0:0] tmp_6_1_fu_530_p2;
reg   [0:0] tmp_6_1_reg_1172;
wire   [8:0] min_2_min_1_fu_536_p3;
reg   [8:0] min_2_min_1_reg_1177;
wire   [8:0] sum_2_4_fu_594_p2;
reg   [8:0] sum_2_4_reg_1183;
wire   [0:0] tmp_6_2_fu_600_p2;
reg   [0:0] tmp_6_2_reg_1189;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_94;
wire   [0:0] tmp_6_3_fu_666_p2;
reg   [0:0] tmp_6_3_reg_1194;
wire   [8:0] min_2_min_3_fu_672_p3;
reg   [8:0] min_2_min_3_reg_1200;
wire   [8:0] sum_4_4_fu_730_p2;
reg   [8:0] sum_4_4_reg_1206;
wire   [2:0] agg_result_V_0_agg_result_V_02_5_fu_848_p3;
reg   [2:0] agg_result_V_0_agg_result_V_02_5_reg_1212;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_109;
wire   [8:0] min_2_min_5_fu_856_p3;
reg   [8:0] min_2_min_5_reg_1217;
wire   [8:0] sum_6_4_fu_914_p2;
reg   [8:0] sum_6_4_reg_1223;
wire   [0:0] tmp_6_6_fu_920_p2;
reg   [0:0] tmp_6_6_reg_1229;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_122;
wire   [0:0] tmp_6_7_fu_986_p2;
reg   [0:0] tmp_6_7_reg_1234;
wire   [8:0] min_2_min_7_fu_992_p3;
reg   [8:0] min_2_min_7_reg_1240;
wire   [8:0] sum_8_4_fu_1050_p2;
reg   [8:0] sum_8_4_reg_1246;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_181;
wire   [6:0] tmp_8_0_3_cast_fu_430_p1;
wire   [6:0] tmp_8_0_2_cast_fu_426_p1;
wire   [6:0] tmp2_fu_438_p2;
wire   [6:0] tmp_8_0_4_cast_fu_434_p1;
wire   [6:0] tmp_8_cast_fu_418_p1;
wire   [6:0] tmp4_fu_448_p2;
wire   [7:0] tmp_8_0_1_cast_fu_422_p1;
wire   [7:0] tmp4_cast_fu_454_p1;
wire   [7:0] tmp3_fu_458_p2;
wire   [8:0] tmp2_cast_fu_444_p1;
wire   [8:0] tmp3_cast_fu_464_p1;
wire   [6:0] tmp_8_1_3_cast_fu_486_p1;
wire   [6:0] tmp_8_1_2_cast_fu_482_p1;
wire   [6:0] tmp7_fu_494_p2;
wire   [6:0] tmp_8_1_4_cast_fu_490_p1;
wire   [6:0] tmp_8_1_cast_fu_474_p1;
wire   [6:0] tmp9_fu_504_p2;
wire   [7:0] tmp_8_1_1_cast_fu_478_p1;
wire   [7:0] tmp9_cast_fu_510_p1;
wire   [7:0] tmp8_fu_514_p2;
wire   [8:0] tmp7_cast_fu_500_p1;
wire   [8:0] tmp8_cast_fu_520_p1;
wire   [8:0] sum_1_4_fu_524_p2;
wire   [8:0] sum_0_4_fu_468_p2;
wire   [6:0] tmp_8_2_3_cast_fu_556_p1;
wire   [6:0] tmp_8_2_2_cast_fu_552_p1;
wire   [6:0] tmp_fu_564_p2;
wire   [6:0] tmp_8_2_4_cast_fu_560_p1;
wire   [6:0] tmp_8_2_cast_fu_544_p1;
wire   [6:0] tmp1_fu_574_p2;
wire   [7:0] tmp_8_2_1_cast_fu_548_p1;
wire   [7:0] tmp14_cast_fu_580_p1;
wire   [7:0] tmp5_fu_584_p2;
wire   [8:0] tmp12_cast_fu_570_p1;
wire   [8:0] tmp13_cast_fu_590_p1;
wire   [6:0] tmp_8_3_3_cast_fu_622_p1;
wire   [6:0] tmp_8_3_2_cast_fu_618_p1;
wire   [6:0] tmp6_fu_630_p2;
wire   [6:0] tmp_8_3_4_cast_fu_626_p1;
wire   [6:0] tmp_8_3_cast_fu_610_p1;
wire   [6:0] tmp10_fu_640_p2;
wire   [7:0] tmp_8_3_1_cast_fu_614_p1;
wire   [7:0] tmp19_cast_fu_646_p1;
wire   [7:0] tmp11_fu_650_p2;
wire   [8:0] tmp17_cast_fu_636_p1;
wire   [8:0] tmp18_cast_fu_656_p1;
wire   [8:0] sum_3_4_fu_660_p2;
wire   [8:0] min_2_min_2_fu_604_p3;
wire   [6:0] tmp_8_4_3_cast_fu_692_p1;
wire   [6:0] tmp_8_4_2_cast_fu_688_p1;
wire   [6:0] tmp12_fu_700_p2;
wire   [6:0] tmp_8_4_4_cast_fu_696_p1;
wire   [6:0] tmp_8_4_cast_fu_680_p1;
wire   [6:0] tmp13_fu_710_p2;
wire   [7:0] tmp_8_4_1_cast_fu_684_p1;
wire   [7:0] tmp24_cast_fu_716_p1;
wire   [7:0] tmp14_fu_720_p2;
wire   [8:0] tmp22_cast_fu_706_p1;
wire   [8:0] tmp23_cast_fu_726_p1;
wire   [0:0] tmp_s_fu_746_p2;
wire   [1:0] agg_result_V_0_agg_result_V_02_2_fu_739_p3;
wire   [1:0] agg_result_V_0_agg_result_V_s_fu_736_p1;
wire   [1:0] agg_result_V_0_agg_result_V_02_3_fu_750_p3;
wire   [0:0] tmp_6_4_fu_762_p2;
wire   [6:0] tmp_8_5_3_cast_fu_784_p1;
wire   [6:0] tmp_8_5_2_cast_fu_780_p1;
wire   [6:0] tmp15_fu_792_p2;
wire   [6:0] tmp_8_5_4_cast_fu_788_p1;
wire   [6:0] tmp_8_5_cast_fu_772_p1;
wire   [6:0] tmp16_fu_802_p2;
wire   [7:0] tmp_8_5_1_cast_fu_776_p1;
wire   [7:0] tmp29_cast_fu_808_p1;
wire   [7:0] tmp17_fu_812_p2;
wire   [8:0] tmp27_cast_fu_798_p1;
wire   [8:0] tmp28_cast_fu_818_p1;
wire   [8:0] sum_5_4_fu_822_p2;
wire   [8:0] min_2_min_4_fu_766_p3;
wire   [0:0] tmp_6_5_fu_828_p2;
wire   [0:0] tmp_6_fu_842_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_4_fu_834_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_1_fu_758_p1;
wire   [6:0] tmp_8_6_3_cast_fu_876_p1;
wire   [6:0] tmp_8_6_2_cast_fu_872_p1;
wire   [6:0] tmp18_fu_884_p2;
wire   [6:0] tmp_8_6_4_cast_fu_880_p1;
wire   [6:0] tmp_8_6_cast_fu_864_p1;
wire   [6:0] tmp19_fu_894_p2;
wire   [7:0] tmp_8_6_1_cast_fu_868_p1;
wire   [7:0] tmp34_cast_fu_900_p1;
wire   [7:0] tmp20_fu_904_p2;
wire   [8:0] tmp32_cast_fu_890_p1;
wire   [8:0] tmp33_cast_fu_910_p1;
wire   [6:0] tmp_8_7_3_cast_fu_942_p1;
wire   [6:0] tmp_8_7_2_cast_fu_938_p1;
wire   [6:0] tmp21_fu_950_p2;
wire   [6:0] tmp_8_7_4_cast_fu_946_p1;
wire   [6:0] tmp_8_7_cast_fu_930_p1;
wire   [6:0] tmp22_fu_960_p2;
wire   [7:0] tmp_8_7_1_cast_fu_934_p1;
wire   [7:0] tmp39_cast_fu_966_p1;
wire   [7:0] tmp23_fu_970_p2;
wire   [8:0] tmp37_cast_fu_956_p1;
wire   [8:0] tmp38_cast_fu_976_p1;
wire   [8:0] sum_7_4_fu_980_p2;
wire   [8:0] min_2_min_6_fu_924_p3;
wire   [6:0] tmp_8_8_3_cast_fu_1012_p1;
wire   [6:0] tmp_8_8_2_cast_fu_1008_p1;
wire   [6:0] tmp24_fu_1020_p2;
wire   [6:0] tmp_8_8_4_cast_fu_1016_p1;
wire   [6:0] tmp_8_8_cast_fu_1000_p1;
wire   [6:0] tmp25_fu_1030_p2;
wire   [7:0] tmp_8_8_1_cast_fu_1004_p1;
wire   [7:0] tmp44_cast_fu_1036_p1;
wire   [7:0] tmp26_fu_1040_p2;
wire   [8:0] tmp42_cast_fu_1026_p1;
wire   [8:0] tmp43_cast_fu_1046_p1;
wire   [0:0] tmp_7_fu_1063_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_fu_1056_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_7_fu_1067_p3;
wire   [0:0] tmp_6_8_fu_1078_p2;
wire   [6:0] tmp_8_9_1_cast_fu_1092_p1;
wire   [6:0] tmp_8_9_cast_fu_1088_p1;
wire   [6:0] tmp27_fu_1108_p2;
wire   [6:0] tmp_8_9_4_cast_fu_1104_p1;
wire   [6:0] tmp_8_9_3_cast_fu_1100_p1;
wire   [6:0] tmp28_fu_1118_p2;
wire   [7:0] tmp_8_9_2_cast_fu_1096_p1;
wire   [7:0] tmp47_cast_fu_1124_p1;
wire   [7:0] tmp29_fu_1128_p2;
wire   [8:0] tmp45_cast_fu_1114_p1;
wire   [8:0] tmp46_cast_fu_1134_p1;
wire   [8:0] sum_9_4_fu_1138_p2;
wire   [8:0] min_2_min_8_fu_1082_p3;
wire   [0:0] tmp_6_9_fu_1144_p2;
wire   [0:0] tmp_9_fu_1158_p2;
wire   [3:0] agg_result_V_0_agg_result_V_02_8_fu_1150_p3;
wire   [3:0] agg_result_V_0_agg_result_V_02_6_fu_1074_p1;
wire   [3:0] agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
reg   [3:0] ap_return_preg;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'b1;
#0 ap_return_preg = 4'b0000;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv4_0;
    end else begin
        if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
            ap_return_preg <= agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        agg_result_V_0_agg_result_V_02_5_reg_1212 <= agg_result_V_0_agg_result_V_02_5_fu_848_p3;
        min_2_min_5_reg_1217 <= min_2_min_5_fu_856_p3;
        sum_6_4_reg_1223 <= sum_6_4_fu_914_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        min_2_min_1_reg_1177 <= min_2_min_1_fu_536_p3;
        sum_2_4_reg_1183 <= sum_2_4_fu_594_p2;
        tmp_6_1_reg_1172 <= tmp_6_1_fu_530_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        min_2_min_3_reg_1200 <= min_2_min_3_fu_672_p3;
        sum_4_4_reg_1206 <= sum_4_4_fu_730_p2;
        tmp_6_2_reg_1189 <= tmp_6_2_fu_600_p2;
        tmp_6_3_reg_1194 <= tmp_6_3_fu_666_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        min_2_min_7_reg_1240 <= min_2_min_7_fu_992_p3;
        sum_8_4_reg_1246 <= sum_8_4_fu_1050_p2;
        tmp_6_6_reg_1229 <= tmp_6_6_fu_920_p2;
        tmp_6_7_reg_1234 <= tmp_6_7_fu_986_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        ap_return = agg_result_V_0_agg_result_V_02_9_fu_1164_p3;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_94) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_109) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_122) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_181) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign agg_result_V_0_agg_result_V_02_1_fu_758_p1 = agg_result_V_0_agg_result_V_02_3_fu_750_p3;

assign agg_result_V_0_agg_result_V_02_2_fu_739_p3 = ((tmp_6_3_reg_1194[0:0] === 1'b1) ? ap_const_lv2_3 : ap_const_lv2_2);

assign agg_result_V_0_agg_result_V_02_3_fu_750_p3 = ((tmp_s_fu_746_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_2_fu_739_p3 : agg_result_V_0_agg_result_V_s_fu_736_p1);

assign agg_result_V_0_agg_result_V_02_4_fu_834_p3 = ((tmp_6_5_fu_828_p2[0:0] === 1'b1) ? ap_const_lv3_5 : ap_const_lv3_4);

assign agg_result_V_0_agg_result_V_02_5_fu_848_p3 = ((tmp_6_fu_842_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_4_fu_834_p3 : agg_result_V_0_agg_result_V_02_1_fu_758_p1);

assign agg_result_V_0_agg_result_V_02_6_fu_1074_p1 = agg_result_V_0_agg_result_V_02_7_fu_1067_p3;

assign agg_result_V_0_agg_result_V_02_7_fu_1067_p3 = ((tmp_7_fu_1063_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_fu_1056_p3 : agg_result_V_0_agg_result_V_02_5_reg_1212);

assign agg_result_V_0_agg_result_V_02_8_fu_1150_p3 = ((tmp_6_9_fu_1144_p2[0:0] === 1'b1) ? ap_const_lv4_9 : ap_const_lv4_8);

assign agg_result_V_0_agg_result_V_02_9_fu_1164_p3 = ((tmp_9_fu_1158_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_8_fu_1150_p3 : agg_result_V_0_agg_result_V_02_6_fu_1074_p1);

assign agg_result_V_0_agg_result_V_02_fu_1056_p3 = ((tmp_6_7_reg_1234[0:0] === 1'b1) ? ap_const_lv3_7 : ap_const_lv3_6);

assign agg_result_V_0_agg_result_V_s_fu_736_p1 = tmp_6_1_reg_1172;

always @ (*) begin
    ap_sig_109 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_122 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_181 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_94 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign min_2_min_1_fu_536_p3 = ((tmp_6_1_fu_530_p2[0:0] === 1'b1) ? sum_1_4_fu_524_p2 : sum_0_4_fu_468_p2);

assign min_2_min_2_fu_604_p3 = ((tmp_6_2_fu_600_p2[0:0] === 1'b1) ? sum_2_4_reg_1183 : min_2_min_1_reg_1177);

assign min_2_min_3_fu_672_p3 = ((tmp_6_3_fu_666_p2[0:0] === 1'b1) ? sum_3_4_fu_660_p2 : min_2_min_2_fu_604_p3);

assign min_2_min_4_fu_766_p3 = ((tmp_6_4_fu_762_p2[0:0] === 1'b1) ? sum_4_4_reg_1206 : min_2_min_3_reg_1200);

assign min_2_min_5_fu_856_p3 = ((tmp_6_5_fu_828_p2[0:0] === 1'b1) ? sum_5_4_fu_822_p2 : min_2_min_4_fu_766_p3);

assign min_2_min_6_fu_924_p3 = ((tmp_6_6_fu_920_p2[0:0] === 1'b1) ? sum_6_4_reg_1223 : min_2_min_5_reg_1217);

assign min_2_min_7_fu_992_p3 = ((tmp_6_7_fu_986_p2[0:0] === 1'b1) ? sum_7_4_fu_980_p2 : min_2_min_6_fu_924_p3);

assign min_2_min_8_fu_1082_p3 = ((tmp_6_8_fu_1078_p2[0:0] === 1'b1) ? sum_8_4_reg_1246 : min_2_min_7_reg_1240);

assign sum_0_4_fu_468_p2 = (tmp2_cast_fu_444_p1 + tmp3_cast_fu_464_p1);

assign sum_1_4_fu_524_p2 = (tmp7_cast_fu_500_p1 + tmp8_cast_fu_520_p1);

assign sum_2_4_fu_594_p2 = (tmp12_cast_fu_570_p1 + tmp13_cast_fu_590_p1);

assign sum_3_4_fu_660_p2 = (tmp17_cast_fu_636_p1 + tmp18_cast_fu_656_p1);

assign sum_4_4_fu_730_p2 = (tmp22_cast_fu_706_p1 + tmp23_cast_fu_726_p1);

assign sum_5_4_fu_822_p2 = (tmp27_cast_fu_798_p1 + tmp28_cast_fu_818_p1);

assign sum_6_4_fu_914_p2 = (tmp32_cast_fu_890_p1 + tmp33_cast_fu_910_p1);

assign sum_7_4_fu_980_p2 = (tmp37_cast_fu_956_p1 + tmp38_cast_fu_976_p1);

assign sum_8_4_fu_1050_p2 = (tmp42_cast_fu_1026_p1 + tmp43_cast_fu_1046_p1);

assign sum_9_4_fu_1138_p2 = (tmp45_cast_fu_1114_p1 + tmp46_cast_fu_1134_p1);

assign tmp10_fu_640_p2 = (tmp_8_3_4_cast_fu_626_p1 + tmp_8_3_cast_fu_610_p1);

assign tmp11_fu_650_p2 = (tmp_8_3_1_cast_fu_614_p1 + tmp19_cast_fu_646_p1);

assign tmp12_cast_fu_570_p1 = tmp_fu_564_p2;

assign tmp12_fu_700_p2 = (tmp_8_4_3_cast_fu_692_p1 + tmp_8_4_2_cast_fu_688_p1);

assign tmp13_cast_fu_590_p1 = tmp5_fu_584_p2;

assign tmp13_fu_710_p2 = (tmp_8_4_4_cast_fu_696_p1 + tmp_8_4_cast_fu_680_p1);

assign tmp14_cast_fu_580_p1 = tmp1_fu_574_p2;

assign tmp14_fu_720_p2 = (tmp_8_4_1_cast_fu_684_p1 + tmp24_cast_fu_716_p1);

assign tmp15_fu_792_p2 = (tmp_8_5_3_cast_fu_784_p1 + tmp_8_5_2_cast_fu_780_p1);

assign tmp16_fu_802_p2 = (tmp_8_5_4_cast_fu_788_p1 + tmp_8_5_cast_fu_772_p1);

assign tmp17_cast_fu_636_p1 = tmp6_fu_630_p2;

assign tmp17_fu_812_p2 = (tmp_8_5_1_cast_fu_776_p1 + tmp29_cast_fu_808_p1);

assign tmp18_cast_fu_656_p1 = tmp11_fu_650_p2;

assign tmp18_fu_884_p2 = (tmp_8_6_3_cast_fu_876_p1 + tmp_8_6_2_cast_fu_872_p1);

assign tmp19_cast_fu_646_p1 = tmp10_fu_640_p2;

assign tmp19_fu_894_p2 = (tmp_8_6_4_cast_fu_880_p1 + tmp_8_6_cast_fu_864_p1);

assign tmp1_fu_574_p2 = (tmp_8_2_4_cast_fu_560_p1 + tmp_8_2_cast_fu_544_p1);

assign tmp20_fu_904_p2 = (tmp_8_6_1_cast_fu_868_p1 + tmp34_cast_fu_900_p1);

assign tmp21_fu_950_p2 = (tmp_8_7_3_cast_fu_942_p1 + tmp_8_7_2_cast_fu_938_p1);

assign tmp22_cast_fu_706_p1 = tmp12_fu_700_p2;

assign tmp22_fu_960_p2 = (tmp_8_7_4_cast_fu_946_p1 + tmp_8_7_cast_fu_930_p1);

assign tmp23_cast_fu_726_p1 = tmp14_fu_720_p2;

assign tmp23_fu_970_p2 = (tmp_8_7_1_cast_fu_934_p1 + tmp39_cast_fu_966_p1);

assign tmp24_cast_fu_716_p1 = tmp13_fu_710_p2;

assign tmp24_fu_1020_p2 = (tmp_8_8_3_cast_fu_1012_p1 + tmp_8_8_2_cast_fu_1008_p1);

assign tmp25_fu_1030_p2 = (tmp_8_8_4_cast_fu_1016_p1 + tmp_8_8_cast_fu_1000_p1);

assign tmp26_fu_1040_p2 = (tmp_8_8_1_cast_fu_1004_p1 + tmp44_cast_fu_1036_p1);

assign tmp27_cast_fu_798_p1 = tmp15_fu_792_p2;

assign tmp27_fu_1108_p2 = (tmp_8_9_1_cast_fu_1092_p1 + tmp_8_9_cast_fu_1088_p1);

assign tmp28_cast_fu_818_p1 = tmp17_fu_812_p2;

assign tmp28_fu_1118_p2 = (tmp_8_9_4_cast_fu_1104_p1 + tmp_8_9_3_cast_fu_1100_p1);

assign tmp29_cast_fu_808_p1 = tmp16_fu_802_p2;

assign tmp29_fu_1128_p2 = (tmp_8_9_2_cast_fu_1096_p1 + tmp47_cast_fu_1124_p1);

assign tmp2_cast_fu_444_p1 = tmp2_fu_438_p2;

assign tmp2_fu_438_p2 = (tmp_8_0_3_cast_fu_430_p1 + tmp_8_0_2_cast_fu_426_p1);

assign tmp32_cast_fu_890_p1 = tmp18_fu_884_p2;

assign tmp33_cast_fu_910_p1 = tmp20_fu_904_p2;

assign tmp34_cast_fu_900_p1 = tmp19_fu_894_p2;

assign tmp37_cast_fu_956_p1 = tmp21_fu_950_p2;

assign tmp38_cast_fu_976_p1 = tmp23_fu_970_p2;

assign tmp39_cast_fu_966_p1 = tmp22_fu_960_p2;

assign tmp3_cast_fu_464_p1 = tmp3_fu_458_p2;

assign tmp3_fu_458_p2 = (tmp_8_0_1_cast_fu_422_p1 + tmp4_cast_fu_454_p1);

assign tmp42_cast_fu_1026_p1 = tmp24_fu_1020_p2;

assign tmp43_cast_fu_1046_p1 = tmp26_fu_1040_p2;

assign tmp44_cast_fu_1036_p1 = tmp25_fu_1030_p2;

assign tmp45_cast_fu_1114_p1 = tmp27_fu_1108_p2;

assign tmp46_cast_fu_1134_p1 = tmp29_fu_1128_p2;

assign tmp47_cast_fu_1124_p1 = tmp28_fu_1118_p2;

assign tmp4_cast_fu_454_p1 = tmp4_fu_448_p2;

assign tmp4_fu_448_p2 = (tmp_8_0_4_cast_fu_434_p1 + tmp_8_cast_fu_418_p1);

assign tmp5_fu_584_p2 = (tmp_8_2_1_cast_fu_548_p1 + tmp14_cast_fu_580_p1);

assign tmp6_fu_630_p2 = (tmp_8_3_3_cast_fu_622_p1 + tmp_8_3_2_cast_fu_618_p1);

assign tmp7_cast_fu_500_p1 = tmp7_fu_494_p2;

assign tmp7_fu_494_p2 = (tmp_8_1_3_cast_fu_486_p1 + tmp_8_1_2_cast_fu_482_p1);

assign tmp8_cast_fu_520_p1 = tmp8_fu_514_p2;

assign tmp8_fu_514_p2 = (tmp_8_1_1_cast_fu_478_p1 + tmp9_cast_fu_510_p1);

assign tmp9_cast_fu_510_p1 = tmp9_fu_504_p2;

assign tmp9_fu_504_p2 = (tmp_8_1_4_cast_fu_490_p1 + tmp_8_1_cast_fu_474_p1);

assign tmp_6_1_fu_530_p2 = ((sum_1_4_fu_524_p2 < sum_0_4_fu_468_p2) ? 1'b1 : 1'b0);

assign tmp_6_2_fu_600_p2 = ((sum_2_4_reg_1183 < min_2_min_1_reg_1177) ? 1'b1 : 1'b0);

assign tmp_6_3_fu_666_p2 = ((sum_3_4_fu_660_p2 < min_2_min_2_fu_604_p3) ? 1'b1 : 1'b0);

assign tmp_6_4_fu_762_p2 = ((sum_4_4_reg_1206 < min_2_min_3_reg_1200) ? 1'b1 : 1'b0);

assign tmp_6_5_fu_828_p2 = ((sum_5_4_fu_822_p2 < min_2_min_4_fu_766_p3) ? 1'b1 : 1'b0);

assign tmp_6_6_fu_920_p2 = ((sum_6_4_reg_1223 < min_2_min_5_reg_1217) ? 1'b1 : 1'b0);

assign tmp_6_7_fu_986_p2 = ((sum_7_4_fu_980_p2 < min_2_min_6_fu_924_p3) ? 1'b1 : 1'b0);

assign tmp_6_8_fu_1078_p2 = ((sum_8_4_reg_1246 < min_2_min_7_reg_1240) ? 1'b1 : 1'b0);

assign tmp_6_9_fu_1144_p2 = ((sum_9_4_fu_1138_p2 < min_2_min_8_fu_1082_p3) ? 1'b1 : 1'b0);

assign tmp_6_fu_842_p2 = (tmp_6_5_fu_828_p2 | tmp_6_4_fu_762_p2);

assign tmp_7_fu_1063_p2 = (tmp_6_7_reg_1234 | tmp_6_6_reg_1229);

assign tmp_8_0_1_cast_fu_422_p1 = knn_set_0_1_V_read;

assign tmp_8_0_2_cast_fu_426_p1 = knn_set_0_2_V_read;

assign tmp_8_0_3_cast_fu_430_p1 = knn_set_0_3_V_read;

assign tmp_8_0_4_cast_fu_434_p1 = knn_set_0_4_V_read;

assign tmp_8_1_1_cast_fu_478_p1 = knn_set_1_1_V_read;

assign tmp_8_1_2_cast_fu_482_p1 = knn_set_1_2_V_read;

assign tmp_8_1_3_cast_fu_486_p1 = knn_set_1_3_V_read;

assign tmp_8_1_4_cast_fu_490_p1 = knn_set_1_4_V_read;

assign tmp_8_1_cast_fu_474_p1 = knn_set_1_0_V_read;

assign tmp_8_2_1_cast_fu_548_p1 = knn_set_2_1_V_read;

assign tmp_8_2_2_cast_fu_552_p1 = knn_set_2_2_V_read;

assign tmp_8_2_3_cast_fu_556_p1 = knn_set_2_3_V_read;

assign tmp_8_2_4_cast_fu_560_p1 = knn_set_2_4_V_read;

assign tmp_8_2_cast_fu_544_p1 = knn_set_2_0_V_read;

assign tmp_8_3_1_cast_fu_614_p1 = knn_set_3_1_V_read;

assign tmp_8_3_2_cast_fu_618_p1 = knn_set_3_2_V_read;

assign tmp_8_3_3_cast_fu_622_p1 = knn_set_3_3_V_read;

assign tmp_8_3_4_cast_fu_626_p1 = knn_set_3_4_V_read;

assign tmp_8_3_cast_fu_610_p1 = knn_set_3_0_V_read;

assign tmp_8_4_1_cast_fu_684_p1 = knn_set_4_1_V_read;

assign tmp_8_4_2_cast_fu_688_p1 = knn_set_4_2_V_read;

assign tmp_8_4_3_cast_fu_692_p1 = knn_set_4_3_V_read;

assign tmp_8_4_4_cast_fu_696_p1 = knn_set_4_4_V_read;

assign tmp_8_4_cast_fu_680_p1 = knn_set_4_0_V_read;

assign tmp_8_5_1_cast_fu_776_p1 = knn_set_5_1_V_read;

assign tmp_8_5_2_cast_fu_780_p1 = knn_set_5_2_V_read;

assign tmp_8_5_3_cast_fu_784_p1 = knn_set_5_3_V_read;

assign tmp_8_5_4_cast_fu_788_p1 = knn_set_5_4_V_read;

assign tmp_8_5_cast_fu_772_p1 = knn_set_5_0_V_read;

assign tmp_8_6_1_cast_fu_868_p1 = knn_set_6_1_V_read;

assign tmp_8_6_2_cast_fu_872_p1 = knn_set_6_2_V_read;

assign tmp_8_6_3_cast_fu_876_p1 = knn_set_6_3_V_read;

assign tmp_8_6_4_cast_fu_880_p1 = knn_set_6_4_V_read;

assign tmp_8_6_cast_fu_864_p1 = knn_set_6_0_V_read;

assign tmp_8_7_1_cast_fu_934_p1 = knn_set_7_1_V_read;

assign tmp_8_7_2_cast_fu_938_p1 = knn_set_7_2_V_read;

assign tmp_8_7_3_cast_fu_942_p1 = knn_set_7_3_V_read;

assign tmp_8_7_4_cast_fu_946_p1 = knn_set_7_4_V_read;

assign tmp_8_7_cast_fu_930_p1 = knn_set_7_0_V_read;

assign tmp_8_8_1_cast_fu_1004_p1 = knn_set_8_1_V_read;

assign tmp_8_8_2_cast_fu_1008_p1 = knn_set_8_2_V_read;

assign tmp_8_8_3_cast_fu_1012_p1 = knn_set_8_3_V_read;

assign tmp_8_8_4_cast_fu_1016_p1 = knn_set_8_4_V_read;

assign tmp_8_8_cast_fu_1000_p1 = knn_set_8_0_V_read;

assign tmp_8_9_1_cast_fu_1092_p1 = knn_set_9_1_V_read;

assign tmp_8_9_2_cast_fu_1096_p1 = knn_set_9_2_V_read;

assign tmp_8_9_3_cast_fu_1100_p1 = knn_set_9_3_V_read;

assign tmp_8_9_4_cast_fu_1104_p1 = knn_set_9_4_V_read;

assign tmp_8_9_cast_fu_1088_p1 = knn_set_9_0_V_read;

assign tmp_8_cast_fu_418_p1 = knn_set_0_0_V_read;

assign tmp_9_fu_1158_p2 = (tmp_6_9_fu_1144_p2 | tmp_6_8_fu_1078_p2);

assign tmp_fu_564_p2 = (tmp_8_2_3_cast_fu_556_p1 + tmp_8_2_2_cast_fu_552_p1);

assign tmp_s_fu_746_p2 = (tmp_6_3_reg_1194 | tmp_6_2_reg_1189);

endmodule //digitrec_knn_vote
