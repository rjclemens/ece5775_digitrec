// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module digitrec_update_knn (
        test_inst_V,
        train_inst_V,
        min_distances_0_V_i,
        min_distances_0_V_o,
        min_distances_0_V_o_ap_vld,
        min_distances_1_V_i,
        min_distances_1_V_o,
        min_distances_1_V_o_ap_vld,
        min_distances_2_V_i,
        min_distances_2_V_o,
        min_distances_2_V_o_ap_vld
);

parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_2 = 2'b10;

input  [48:0] test_inst_V;
input  [47:0] train_inst_V;
input  [5:0] min_distances_0_V_i;
output  [5:0] min_distances_0_V_o;
output   min_distances_0_V_o_ap_vld;
input  [5:0] min_distances_1_V_i;
output  [5:0] min_distances_1_V_o;
output   min_distances_1_V_o_ap_vld;
input  [5:0] min_distances_2_V_i;
output  [5:0] min_distances_2_V_o;
output   min_distances_2_V_o_ap_vld;

reg[5:0] min_distances_0_V_o;
reg min_distances_0_V_o_ap_vld;
reg[5:0] min_distances_1_V_o;
reg min_distances_1_V_o_ap_vld;
reg[5:0] min_distances_2_V_o;
reg min_distances_2_V_o_ap_vld;

wire   [48:0] distance_V_digitrec_bitcount_fu_89_n_V;
wire   [5:0] distance_V_digitrec_bitcount_fu_89_ap_return;
wire   [0:0] tmp_1_fu_152_p2;
wire   [1:0] p_026_1_2_fu_132_p3;
wire   [48:0] train_inst_V_cast_fu_97_p1;
wire   [0:0] tmp_3_1_fu_108_p2;
wire   [5:0] p_030_1_1_fu_114_p3;
wire   [0:0] tmp_3_2_fu_126_p2;
wire   [1:0] p_026_1_1_fu_122_p1;
wire   [1:0] tmp_fu_140_p4;
wire   [5:0] tmp_fu_140_p5;

digitrec_bitcount distance_V_digitrec_bitcount_fu_89(
    .n_V(distance_V_digitrec_bitcount_fu_89_n_V),
    .ap_return(distance_V_digitrec_bitcount_fu_89_ap_return)
);

digitrec_mux_3to1_sel2_6_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 6 ),
    .din3_WIDTH( 6 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 6 ))
digitrec_mux_3to1_sel2_6_1_U2(
    .din1(min_distances_0_V_i),
    .din2(min_distances_1_V_i),
    .din3(min_distances_2_V_i),
    .din4(tmp_fu_140_p4),
    .dout(tmp_fu_140_p5)
);

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & (p_026_1_2_fu_132_p3 == ap_const_lv2_0))) begin
        min_distances_0_V_o = distance_V_digitrec_bitcount_fu_89_ap_return;
    end else begin
        min_distances_0_V_o = min_distances_0_V_i;
    end
end

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & (p_026_1_2_fu_132_p3 == ap_const_lv2_0))) begin
        min_distances_0_V_o_ap_vld = 1'b1;
    end else begin
        min_distances_0_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & (p_026_1_2_fu_132_p3 == ap_const_lv2_1))) begin
        min_distances_1_V_o = distance_V_digitrec_bitcount_fu_89_ap_return;
    end else begin
        min_distances_1_V_o = min_distances_1_V_i;
    end
end

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & (p_026_1_2_fu_132_p3 == ap_const_lv2_1))) begin
        min_distances_1_V_o_ap_vld = 1'b1;
    end else begin
        min_distances_1_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & ~(p_026_1_2_fu_132_p3 == ap_const_lv2_0) & ~(p_026_1_2_fu_132_p3 == ap_const_lv2_1))) begin
        min_distances_2_V_o = distance_V_digitrec_bitcount_fu_89_ap_return;
    end else begin
        min_distances_2_V_o = min_distances_2_V_i;
    end
end

always @ (*) begin
    if ((~(tmp_1_fu_152_p2 == 1'b0) & ~(p_026_1_2_fu_132_p3 == ap_const_lv2_0) & ~(p_026_1_2_fu_132_p3 == ap_const_lv2_1))) begin
        min_distances_2_V_o_ap_vld = 1'b1;
    end else begin
        min_distances_2_V_o_ap_vld = 1'b0;
    end
end

assign distance_V_digitrec_bitcount_fu_89_n_V = (train_inst_V_cast_fu_97_p1 ^ test_inst_V);

assign p_026_1_1_fu_122_p1 = tmp_3_1_fu_108_p2;

assign p_026_1_2_fu_132_p3 = ((tmp_3_2_fu_126_p2[0:0] === 1'b1) ? ap_const_lv2_2 : p_026_1_1_fu_122_p1);

assign p_030_1_1_fu_114_p3 = ((tmp_3_1_fu_108_p2[0:0] === 1'b1) ? min_distances_1_V_i : min_distances_0_V_i);

assign tmp_1_fu_152_p2 = ((distance_V_digitrec_bitcount_fu_89_ap_return < tmp_fu_140_p5) ? 1'b1 : 1'b0);

assign tmp_3_1_fu_108_p2 = ((min_distances_1_V_i > min_distances_0_V_i) ? 1'b1 : 1'b0);

assign tmp_3_2_fu_126_p2 = ((min_distances_2_V_i > p_030_1_1_fu_114_p3) ? 1'b1 : 1'b0);

assign tmp_fu_140_p4 = ((tmp_3_2_fu_126_p2[0:0] === 1'b1) ? ap_const_lv2_2 : p_026_1_1_fu_122_p1);

assign train_inst_V_cast_fu_97_p1 = train_inst_V;

endmodule //digitrec_update_knn
