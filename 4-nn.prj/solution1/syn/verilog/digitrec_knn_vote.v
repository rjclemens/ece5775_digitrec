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
        knn_set_1_0_V_read,
        knn_set_1_1_V_read,
        knn_set_1_2_V_read,
        knn_set_1_3_V_read,
        knn_set_2_0_V_read,
        knn_set_2_1_V_read,
        knn_set_2_2_V_read,
        knn_set_2_3_V_read,
        knn_set_3_0_V_read,
        knn_set_3_1_V_read,
        knn_set_3_2_V_read,
        knn_set_3_3_V_read,
        knn_set_4_0_V_read,
        knn_set_4_1_V_read,
        knn_set_4_2_V_read,
        knn_set_4_3_V_read,
        knn_set_5_0_V_read,
        knn_set_5_1_V_read,
        knn_set_5_2_V_read,
        knn_set_5_3_V_read,
        knn_set_6_0_V_read,
        knn_set_6_1_V_read,
        knn_set_6_2_V_read,
        knn_set_6_3_V_read,
        knn_set_7_0_V_read,
        knn_set_7_1_V_read,
        knn_set_7_2_V_read,
        knn_set_7_3_V_read,
        knn_set_8_0_V_read,
        knn_set_8_1_V_read,
        knn_set_8_2_V_read,
        knn_set_8_3_V_read,
        knn_set_9_0_V_read,
        knn_set_9_1_V_read,
        knn_set_9_2_V_read,
        knn_set_9_3_V_read,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_st3_fsm_2 = 4'b100;
parameter    ap_ST_st4_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
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
input  [5:0] knn_set_1_0_V_read;
input  [5:0] knn_set_1_1_V_read;
input  [5:0] knn_set_1_2_V_read;
input  [5:0] knn_set_1_3_V_read;
input  [5:0] knn_set_2_0_V_read;
input  [5:0] knn_set_2_1_V_read;
input  [5:0] knn_set_2_2_V_read;
input  [5:0] knn_set_2_3_V_read;
input  [5:0] knn_set_3_0_V_read;
input  [5:0] knn_set_3_1_V_read;
input  [5:0] knn_set_3_2_V_read;
input  [5:0] knn_set_3_3_V_read;
input  [5:0] knn_set_4_0_V_read;
input  [5:0] knn_set_4_1_V_read;
input  [5:0] knn_set_4_2_V_read;
input  [5:0] knn_set_4_3_V_read;
input  [5:0] knn_set_5_0_V_read;
input  [5:0] knn_set_5_1_V_read;
input  [5:0] knn_set_5_2_V_read;
input  [5:0] knn_set_5_3_V_read;
input  [5:0] knn_set_6_0_V_read;
input  [5:0] knn_set_6_1_V_read;
input  [5:0] knn_set_6_2_V_read;
input  [5:0] knn_set_6_3_V_read;
input  [5:0] knn_set_7_0_V_read;
input  [5:0] knn_set_7_1_V_read;
input  [5:0] knn_set_7_2_V_read;
input  [5:0] knn_set_7_3_V_read;
input  [5:0] knn_set_8_0_V_read;
input  [5:0] knn_set_8_1_V_read;
input  [5:0] knn_set_8_2_V_read;
input  [5:0] knn_set_8_3_V_read;
input  [5:0] knn_set_9_0_V_read;
input  [5:0] knn_set_9_1_V_read;
input  [5:0] knn_set_9_2_V_read;
input  [5:0] knn_set_9_3_V_read;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] ap_return;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_21;
wire   [0:0] tmp_6_1_fu_422_p2;
reg   [0:0] tmp_6_1_reg_952;
wire   [7:0] min_2_min_1_fu_428_p3;
reg   [7:0] min_2_min_1_reg_957;
wire   [7:0] sum_2_3_fu_472_p2;
reg   [7:0] sum_2_3_reg_963;
wire   [7:0] sum_3_3_fu_514_p2;
reg   [7:0] sum_3_3_reg_969;
wire   [0:0] tmp_6_2_fu_520_p2;
reg   [0:0] tmp_6_2_reg_975;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_85;
wire   [0:0] tmp_6_3_fu_530_p2;
reg   [0:0] tmp_6_3_reg_980;
wire   [7:0] min_2_min_3_fu_535_p3;
reg   [7:0] min_2_min_3_reg_986;
wire   [7:0] sum_4_3_fu_578_p2;
reg   [7:0] sum_4_3_reg_991;
wire   [0:0] tmp_6_4_fu_584_p2;
reg   [0:0] tmp_6_4_reg_996;
wire   [7:0] sum_5_3_fu_626_p2;
reg   [7:0] sum_5_3_reg_1002;
wire   [2:0] agg_result_V_0_agg_result_V_02_5_fu_681_p3;
reg   [2:0] agg_result_V_0_agg_result_V_02_5_reg_1008;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_104;
wire   [0:0] tmp_6_6_fu_738_p2;
reg   [0:0] tmp_6_6_reg_1013;
wire   [7:0] min_2_min_6_fu_744_p3;
reg   [7:0] min_2_min_6_reg_1018;
wire   [7:0] sum_7_3_fu_788_p2;
reg   [7:0] sum_7_3_reg_1024;
wire   [7:0] sum_8_3_fu_830_p2;
reg   [7:0] sum_8_3_reg_1030;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_156;
wire   [6:0] tmp_8_0_2_cast_fu_346_p1;
wire   [6:0] tmp_8_0_1_cast_fu_342_p1;
wire   [6:0] tmp1_fu_354_p2;
wire   [6:0] tmp_8_0_3_cast_fu_350_p1;
wire   [6:0] tmp_8_cast_fu_338_p1;
wire   [6:0] tmp2_fu_364_p2;
wire   [7:0] tmp1_cast_fu_360_p1;
wire   [7:0] tmp2_cast_fu_370_p1;
wire   [6:0] tmp_8_1_2_cast_fu_388_p1;
wire   [6:0] tmp_8_1_1_cast_fu_384_p1;
wire   [6:0] tmp4_fu_396_p2;
wire   [6:0] tmp_8_1_3_cast_fu_392_p1;
wire   [6:0] tmp_8_1_cast_fu_380_p1;
wire   [6:0] tmp5_fu_406_p2;
wire   [7:0] tmp4_cast_fu_402_p1;
wire   [7:0] tmp5_cast_fu_412_p1;
wire   [7:0] sum_1_3_fu_416_p2;
wire   [7:0] sum_0_3_fu_374_p2;
wire   [6:0] tmp_8_2_2_cast_fu_444_p1;
wire   [6:0] tmp_8_2_1_cast_fu_440_p1;
wire   [6:0] tmp7_fu_452_p2;
wire   [6:0] tmp_8_2_3_cast_fu_448_p1;
wire   [6:0] tmp_8_2_cast_fu_436_p1;
wire   [6:0] tmp8_fu_462_p2;
wire   [7:0] tmp7_cast_fu_458_p1;
wire   [7:0] tmp8_cast_fu_468_p1;
wire   [6:0] tmp_8_3_2_cast_fu_486_p1;
wire   [6:0] tmp_8_3_1_cast_fu_482_p1;
wire   [6:0] tmp_fu_494_p2;
wire   [6:0] tmp_8_3_3_cast_fu_490_p1;
wire   [6:0] tmp_8_3_cast_fu_478_p1;
wire   [6:0] tmp3_fu_504_p2;
wire   [7:0] tmp10_cast_fu_500_p1;
wire   [7:0] tmp11_cast_fu_510_p1;
wire   [7:0] min_2_min_2_fu_524_p3;
wire   [6:0] tmp_8_4_2_cast_fu_550_p1;
wire   [6:0] tmp_8_4_1_cast_fu_546_p1;
wire   [6:0] tmp6_fu_558_p2;
wire   [6:0] tmp_8_4_3_cast_fu_554_p1;
wire   [6:0] tmp_8_4_cast_fu_542_p1;
wire   [6:0] tmp9_fu_568_p2;
wire   [7:0] tmp13_cast_fu_564_p1;
wire   [7:0] tmp14_cast_fu_574_p1;
wire   [6:0] tmp_8_5_2_cast_fu_598_p1;
wire   [6:0] tmp_8_5_1_cast_fu_594_p1;
wire   [6:0] tmp10_fu_606_p2;
wire   [6:0] tmp_8_5_3_cast_fu_602_p1;
wire   [6:0] tmp_8_5_cast_fu_590_p1;
wire   [6:0] tmp11_fu_616_p2;
wire   [7:0] tmp16_cast_fu_612_p1;
wire   [7:0] tmp17_cast_fu_622_p1;
wire   [0:0] tmp_s_fu_642_p2;
wire   [1:0] agg_result_V_0_agg_result_V_02_2_fu_635_p3;
wire   [1:0] agg_result_V_0_agg_result_V_s_fu_632_p1;
wire   [1:0] agg_result_V_0_agg_result_V_02_3_fu_646_p3;
wire   [7:0] min_2_min_4_fu_658_p3;
wire   [0:0] tmp_6_5_fu_663_p2;
wire   [0:0] tmp_1_fu_676_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_4_fu_668_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_1_fu_654_p1;
wire   [6:0] tmp_8_6_2_cast_fu_704_p1;
wire   [6:0] tmp_8_6_1_cast_fu_700_p1;
wire   [6:0] tmp12_fu_712_p2;
wire   [6:0] tmp_8_6_3_cast_fu_708_p1;
wire   [6:0] tmp_8_6_cast_fu_696_p1;
wire   [6:0] tmp13_fu_722_p2;
wire   [7:0] tmp19_cast_fu_718_p1;
wire   [7:0] tmp20_cast_fu_728_p1;
wire   [7:0] sum_6_3_fu_732_p2;
wire   [7:0] min_2_min_5_fu_689_p3;
wire   [6:0] tmp_8_7_2_cast_fu_760_p1;
wire   [6:0] tmp_8_7_1_cast_fu_756_p1;
wire   [6:0] tmp14_fu_768_p2;
wire   [6:0] tmp_8_7_3_cast_fu_764_p1;
wire   [6:0] tmp_8_7_cast_fu_752_p1;
wire   [6:0] tmp15_fu_778_p2;
wire   [7:0] tmp22_cast_fu_774_p1;
wire   [7:0] tmp23_cast_fu_784_p1;
wire   [6:0] tmp_8_8_2_cast_fu_802_p1;
wire   [6:0] tmp_8_8_1_cast_fu_798_p1;
wire   [6:0] tmp16_fu_810_p2;
wire   [6:0] tmp_8_8_3_cast_fu_806_p1;
wire   [6:0] tmp_8_8_cast_fu_794_p1;
wire   [6:0] tmp17_fu_820_p2;
wire   [7:0] tmp25_cast_fu_816_p1;
wire   [7:0] tmp26_cast_fu_826_p1;
wire   [0:0] tmp_6_7_fu_836_p2;
wire   [0:0] tmp_2_fu_848_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_fu_840_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_7_fu_853_p3;
wire   [7:0] min_2_min_7_fu_864_p3;
wire   [0:0] tmp_6_8_fu_870_p2;
wire   [6:0] tmp_8_9_1_cast_fu_886_p1;
wire   [6:0] tmp_8_9_cast_fu_882_p1;
wire   [6:0] tmp18_fu_898_p2;
wire   [6:0] tmp_8_9_3_cast_fu_894_p1;
wire   [6:0] tmp_8_9_2_cast_fu_890_p1;
wire   [6:0] tmp19_fu_908_p2;
wire   [7:0] tmp27_cast_fu_904_p1;
wire   [7:0] tmp28_cast_fu_914_p1;
wire   [7:0] sum_9_3_fu_918_p2;
wire   [7:0] min_2_min_8_fu_875_p3;
wire   [0:0] tmp_6_9_fu_924_p2;
wire   [0:0] tmp_3_fu_938_p2;
wire   [3:0] agg_result_V_0_agg_result_V_02_8_fu_930_p3;
wire   [3:0] agg_result_V_0_agg_result_V_02_6_fu_860_p1;
wire   [3:0] agg_result_V_0_agg_result_V_02_9_fu_944_p3;
reg   [3:0] ap_return_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'b1;
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
        if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
            ap_return_preg <= agg_result_V_0_agg_result_V_02_9_fu_944_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        agg_result_V_0_agg_result_V_02_5_reg_1008 <= agg_result_V_0_agg_result_V_02_5_fu_681_p3;
        min_2_min_6_reg_1018 <= min_2_min_6_fu_744_p3;
        sum_7_3_reg_1024 <= sum_7_3_fu_788_p2;
        sum_8_3_reg_1030 <= sum_8_3_fu_830_p2;
        tmp_6_6_reg_1013 <= tmp_6_6_fu_738_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        min_2_min_1_reg_957 <= min_2_min_1_fu_428_p3;
        sum_2_3_reg_963 <= sum_2_3_fu_472_p2;
        sum_3_3_reg_969 <= sum_3_3_fu_514_p2;
        tmp_6_1_reg_952 <= tmp_6_1_fu_422_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        min_2_min_3_reg_986 <= min_2_min_3_fu_535_p3;
        sum_4_3_reg_991 <= sum_4_3_fu_578_p2;
        sum_5_3_reg_1002 <= sum_5_3_fu_626_p2;
        tmp_6_2_reg_975 <= tmp_6_2_fu_520_p2;
        tmp_6_3_reg_980 <= tmp_6_3_fu_530_p2;
        tmp_6_4_reg_996 <= tmp_6_4_fu_584_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
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
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        ap_return = agg_result_V_0_agg_result_V_02_9_fu_944_p3;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (ap_sig_21) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_85) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_104) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_156) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
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
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign agg_result_V_0_agg_result_V_02_1_fu_654_p1 = agg_result_V_0_agg_result_V_02_3_fu_646_p3;

assign agg_result_V_0_agg_result_V_02_2_fu_635_p3 = ((tmp_6_3_reg_980[0:0] === 1'b1) ? ap_const_lv2_3 : ap_const_lv2_2);

assign agg_result_V_0_agg_result_V_02_3_fu_646_p3 = ((tmp_s_fu_642_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_2_fu_635_p3 : agg_result_V_0_agg_result_V_s_fu_632_p1);

assign agg_result_V_0_agg_result_V_02_4_fu_668_p3 = ((tmp_6_5_fu_663_p2[0:0] === 1'b1) ? ap_const_lv3_5 : ap_const_lv3_4);

assign agg_result_V_0_agg_result_V_02_5_fu_681_p3 = ((tmp_1_fu_676_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_4_fu_668_p3 : agg_result_V_0_agg_result_V_02_1_fu_654_p1);

assign agg_result_V_0_agg_result_V_02_6_fu_860_p1 = agg_result_V_0_agg_result_V_02_7_fu_853_p3;

assign agg_result_V_0_agg_result_V_02_7_fu_853_p3 = ((tmp_2_fu_848_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_fu_840_p3 : agg_result_V_0_agg_result_V_02_5_reg_1008);

assign agg_result_V_0_agg_result_V_02_8_fu_930_p3 = ((tmp_6_9_fu_924_p2[0:0] === 1'b1) ? ap_const_lv4_9 : ap_const_lv4_8);

assign agg_result_V_0_agg_result_V_02_9_fu_944_p3 = ((tmp_3_fu_938_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_8_fu_930_p3 : agg_result_V_0_agg_result_V_02_6_fu_860_p1);

assign agg_result_V_0_agg_result_V_02_fu_840_p3 = ((tmp_6_7_fu_836_p2[0:0] === 1'b1) ? ap_const_lv3_7 : ap_const_lv3_6);

assign agg_result_V_0_agg_result_V_s_fu_632_p1 = tmp_6_1_reg_952;

always @ (*) begin
    ap_sig_104 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_156 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_21 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_85 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign min_2_min_1_fu_428_p3 = ((tmp_6_1_fu_422_p2[0:0] === 1'b1) ? sum_1_3_fu_416_p2 : sum_0_3_fu_374_p2);

assign min_2_min_2_fu_524_p3 = ((tmp_6_2_fu_520_p2[0:0] === 1'b1) ? sum_2_3_reg_963 : min_2_min_1_reg_957);

assign min_2_min_3_fu_535_p3 = ((tmp_6_3_fu_530_p2[0:0] === 1'b1) ? sum_3_3_reg_969 : min_2_min_2_fu_524_p3);

assign min_2_min_4_fu_658_p3 = ((tmp_6_4_reg_996[0:0] === 1'b1) ? sum_4_3_reg_991 : min_2_min_3_reg_986);

assign min_2_min_5_fu_689_p3 = ((tmp_6_5_fu_663_p2[0:0] === 1'b1) ? sum_5_3_reg_1002 : min_2_min_4_fu_658_p3);

assign min_2_min_6_fu_744_p3 = ((tmp_6_6_fu_738_p2[0:0] === 1'b1) ? sum_6_3_fu_732_p2 : min_2_min_5_fu_689_p3);

assign min_2_min_7_fu_864_p3 = ((tmp_6_7_fu_836_p2[0:0] === 1'b1) ? sum_7_3_reg_1024 : min_2_min_6_reg_1018);

assign min_2_min_8_fu_875_p3 = ((tmp_6_8_fu_870_p2[0:0] === 1'b1) ? sum_8_3_reg_1030 : min_2_min_7_fu_864_p3);

assign sum_0_3_fu_374_p2 = (tmp1_cast_fu_360_p1 + tmp2_cast_fu_370_p1);

assign sum_1_3_fu_416_p2 = (tmp4_cast_fu_402_p1 + tmp5_cast_fu_412_p1);

assign sum_2_3_fu_472_p2 = (tmp7_cast_fu_458_p1 + tmp8_cast_fu_468_p1);

assign sum_3_3_fu_514_p2 = (tmp10_cast_fu_500_p1 + tmp11_cast_fu_510_p1);

assign sum_4_3_fu_578_p2 = (tmp13_cast_fu_564_p1 + tmp14_cast_fu_574_p1);

assign sum_5_3_fu_626_p2 = (tmp16_cast_fu_612_p1 + tmp17_cast_fu_622_p1);

assign sum_6_3_fu_732_p2 = (tmp19_cast_fu_718_p1 + tmp20_cast_fu_728_p1);

assign sum_7_3_fu_788_p2 = (tmp22_cast_fu_774_p1 + tmp23_cast_fu_784_p1);

assign sum_8_3_fu_830_p2 = (tmp25_cast_fu_816_p1 + tmp26_cast_fu_826_p1);

assign sum_9_3_fu_918_p2 = (tmp27_cast_fu_904_p1 + tmp28_cast_fu_914_p1);

assign tmp10_cast_fu_500_p1 = tmp_fu_494_p2;

assign tmp10_fu_606_p2 = (tmp_8_5_2_cast_fu_598_p1 + tmp_8_5_1_cast_fu_594_p1);

assign tmp11_cast_fu_510_p1 = tmp3_fu_504_p2;

assign tmp11_fu_616_p2 = (tmp_8_5_3_cast_fu_602_p1 + tmp_8_5_cast_fu_590_p1);

assign tmp12_fu_712_p2 = (tmp_8_6_2_cast_fu_704_p1 + tmp_8_6_1_cast_fu_700_p1);

assign tmp13_cast_fu_564_p1 = tmp6_fu_558_p2;

assign tmp13_fu_722_p2 = (tmp_8_6_3_cast_fu_708_p1 + tmp_8_6_cast_fu_696_p1);

assign tmp14_cast_fu_574_p1 = tmp9_fu_568_p2;

assign tmp14_fu_768_p2 = (tmp_8_7_2_cast_fu_760_p1 + tmp_8_7_1_cast_fu_756_p1);

assign tmp15_fu_778_p2 = (tmp_8_7_3_cast_fu_764_p1 + tmp_8_7_cast_fu_752_p1);

assign tmp16_cast_fu_612_p1 = tmp10_fu_606_p2;

assign tmp16_fu_810_p2 = (tmp_8_8_2_cast_fu_802_p1 + tmp_8_8_1_cast_fu_798_p1);

assign tmp17_cast_fu_622_p1 = tmp11_fu_616_p2;

assign tmp17_fu_820_p2 = (tmp_8_8_3_cast_fu_806_p1 + tmp_8_8_cast_fu_794_p1);

assign tmp18_fu_898_p2 = (tmp_8_9_1_cast_fu_886_p1 + tmp_8_9_cast_fu_882_p1);

assign tmp19_cast_fu_718_p1 = tmp12_fu_712_p2;

assign tmp19_fu_908_p2 = (tmp_8_9_3_cast_fu_894_p1 + tmp_8_9_2_cast_fu_890_p1);

assign tmp1_cast_fu_360_p1 = tmp1_fu_354_p2;

assign tmp1_fu_354_p2 = (tmp_8_0_2_cast_fu_346_p1 + tmp_8_0_1_cast_fu_342_p1);

assign tmp20_cast_fu_728_p1 = tmp13_fu_722_p2;

assign tmp22_cast_fu_774_p1 = tmp14_fu_768_p2;

assign tmp23_cast_fu_784_p1 = tmp15_fu_778_p2;

assign tmp25_cast_fu_816_p1 = tmp16_fu_810_p2;

assign tmp26_cast_fu_826_p1 = tmp17_fu_820_p2;

assign tmp27_cast_fu_904_p1 = tmp18_fu_898_p2;

assign tmp28_cast_fu_914_p1 = tmp19_fu_908_p2;

assign tmp2_cast_fu_370_p1 = tmp2_fu_364_p2;

assign tmp2_fu_364_p2 = (tmp_8_0_3_cast_fu_350_p1 + tmp_8_cast_fu_338_p1);

assign tmp3_fu_504_p2 = (tmp_8_3_3_cast_fu_490_p1 + tmp_8_3_cast_fu_478_p1);

assign tmp4_cast_fu_402_p1 = tmp4_fu_396_p2;

assign tmp4_fu_396_p2 = (tmp_8_1_2_cast_fu_388_p1 + tmp_8_1_1_cast_fu_384_p1);

assign tmp5_cast_fu_412_p1 = tmp5_fu_406_p2;

assign tmp5_fu_406_p2 = (tmp_8_1_3_cast_fu_392_p1 + tmp_8_1_cast_fu_380_p1);

assign tmp6_fu_558_p2 = (tmp_8_4_2_cast_fu_550_p1 + tmp_8_4_1_cast_fu_546_p1);

assign tmp7_cast_fu_458_p1 = tmp7_fu_452_p2;

assign tmp7_fu_452_p2 = (tmp_8_2_2_cast_fu_444_p1 + tmp_8_2_1_cast_fu_440_p1);

assign tmp8_cast_fu_468_p1 = tmp8_fu_462_p2;

assign tmp8_fu_462_p2 = (tmp_8_2_3_cast_fu_448_p1 + tmp_8_2_cast_fu_436_p1);

assign tmp9_fu_568_p2 = (tmp_8_4_3_cast_fu_554_p1 + tmp_8_4_cast_fu_542_p1);

assign tmp_1_fu_676_p2 = (tmp_6_5_fu_663_p2 | tmp_6_4_reg_996);

assign tmp_2_fu_848_p2 = (tmp_6_7_fu_836_p2 | tmp_6_6_reg_1013);

assign tmp_3_fu_938_p2 = (tmp_6_9_fu_924_p2 | tmp_6_8_fu_870_p2);

assign tmp_6_1_fu_422_p2 = ((sum_1_3_fu_416_p2 < sum_0_3_fu_374_p2) ? 1'b1 : 1'b0);

assign tmp_6_2_fu_520_p2 = ((sum_2_3_reg_963 < min_2_min_1_reg_957) ? 1'b1 : 1'b0);

assign tmp_6_3_fu_530_p2 = ((sum_3_3_reg_969 < min_2_min_2_fu_524_p3) ? 1'b1 : 1'b0);

assign tmp_6_4_fu_584_p2 = ((sum_4_3_fu_578_p2 < min_2_min_3_fu_535_p3) ? 1'b1 : 1'b0);

assign tmp_6_5_fu_663_p2 = ((sum_5_3_reg_1002 < min_2_min_4_fu_658_p3) ? 1'b1 : 1'b0);

assign tmp_6_6_fu_738_p2 = ((sum_6_3_fu_732_p2 < min_2_min_5_fu_689_p3) ? 1'b1 : 1'b0);

assign tmp_6_7_fu_836_p2 = ((sum_7_3_reg_1024 < min_2_min_6_reg_1018) ? 1'b1 : 1'b0);

assign tmp_6_8_fu_870_p2 = ((sum_8_3_reg_1030 < min_2_min_7_fu_864_p3) ? 1'b1 : 1'b0);

assign tmp_6_9_fu_924_p2 = ((sum_9_3_fu_918_p2 < min_2_min_8_fu_875_p3) ? 1'b1 : 1'b0);

assign tmp_8_0_1_cast_fu_342_p1 = knn_set_0_1_V_read;

assign tmp_8_0_2_cast_fu_346_p1 = knn_set_0_2_V_read;

assign tmp_8_0_3_cast_fu_350_p1 = knn_set_0_3_V_read;

assign tmp_8_1_1_cast_fu_384_p1 = knn_set_1_1_V_read;

assign tmp_8_1_2_cast_fu_388_p1 = knn_set_1_2_V_read;

assign tmp_8_1_3_cast_fu_392_p1 = knn_set_1_3_V_read;

assign tmp_8_1_cast_fu_380_p1 = knn_set_1_0_V_read;

assign tmp_8_2_1_cast_fu_440_p1 = knn_set_2_1_V_read;

assign tmp_8_2_2_cast_fu_444_p1 = knn_set_2_2_V_read;

assign tmp_8_2_3_cast_fu_448_p1 = knn_set_2_3_V_read;

assign tmp_8_2_cast_fu_436_p1 = knn_set_2_0_V_read;

assign tmp_8_3_1_cast_fu_482_p1 = knn_set_3_1_V_read;

assign tmp_8_3_2_cast_fu_486_p1 = knn_set_3_2_V_read;

assign tmp_8_3_3_cast_fu_490_p1 = knn_set_3_3_V_read;

assign tmp_8_3_cast_fu_478_p1 = knn_set_3_0_V_read;

assign tmp_8_4_1_cast_fu_546_p1 = knn_set_4_1_V_read;

assign tmp_8_4_2_cast_fu_550_p1 = knn_set_4_2_V_read;

assign tmp_8_4_3_cast_fu_554_p1 = knn_set_4_3_V_read;

assign tmp_8_4_cast_fu_542_p1 = knn_set_4_0_V_read;

assign tmp_8_5_1_cast_fu_594_p1 = knn_set_5_1_V_read;

assign tmp_8_5_2_cast_fu_598_p1 = knn_set_5_2_V_read;

assign tmp_8_5_3_cast_fu_602_p1 = knn_set_5_3_V_read;

assign tmp_8_5_cast_fu_590_p1 = knn_set_5_0_V_read;

assign tmp_8_6_1_cast_fu_700_p1 = knn_set_6_1_V_read;

assign tmp_8_6_2_cast_fu_704_p1 = knn_set_6_2_V_read;

assign tmp_8_6_3_cast_fu_708_p1 = knn_set_6_3_V_read;

assign tmp_8_6_cast_fu_696_p1 = knn_set_6_0_V_read;

assign tmp_8_7_1_cast_fu_756_p1 = knn_set_7_1_V_read;

assign tmp_8_7_2_cast_fu_760_p1 = knn_set_7_2_V_read;

assign tmp_8_7_3_cast_fu_764_p1 = knn_set_7_3_V_read;

assign tmp_8_7_cast_fu_752_p1 = knn_set_7_0_V_read;

assign tmp_8_8_1_cast_fu_798_p1 = knn_set_8_1_V_read;

assign tmp_8_8_2_cast_fu_802_p1 = knn_set_8_2_V_read;

assign tmp_8_8_3_cast_fu_806_p1 = knn_set_8_3_V_read;

assign tmp_8_8_cast_fu_794_p1 = knn_set_8_0_V_read;

assign tmp_8_9_1_cast_fu_886_p1 = knn_set_9_1_V_read;

assign tmp_8_9_2_cast_fu_890_p1 = knn_set_9_2_V_read;

assign tmp_8_9_3_cast_fu_894_p1 = knn_set_9_3_V_read;

assign tmp_8_9_cast_fu_882_p1 = knn_set_9_0_V_read;

assign tmp_8_cast_fu_338_p1 = knn_set_0_0_V_read;

assign tmp_fu_494_p2 = (tmp_8_3_2_cast_fu_486_p1 + tmp_8_3_1_cast_fu_482_p1);

assign tmp_s_fu_642_p2 = (tmp_6_3_reg_980 | tmp_6_2_reg_975);

endmodule //digitrec_knn_vote
