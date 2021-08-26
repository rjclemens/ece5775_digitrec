// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module digitrec_update_knn (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        test_inst_V,
        train_inst_V,
        min_distances_V_address0,
        min_distances_V_ce0,
        min_distances_V_we0,
        min_distances_V_d0,
        min_distances_V_q0,
        tmp_4
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
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv49_0 = 49'b0000000000000000000000000000000000000000000000000;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv49_1FFFFFFFFFFFF = 49'b1111111111111111111111111111111111111111111111111;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv2_1 = 2'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [48:0] test_inst_V;
input  [47:0] train_inst_V;
output  [4:0] min_distances_V_address0;
output   min_distances_V_ce0;
output   min_distances_V_we0;
output  [5:0] min_distances_V_d0;
input  [5:0] min_distances_V_q0;
input  [3:0] tmp_4;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] min_distances_V_address0;
reg min_distances_V_ce0;
reg min_distances_V_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
wire   [5:0] tmp_6_fu_152_p2;
reg   [5:0] tmp_6_reg_264;
wire   [48:0] r_V_fu_162_p2;
wire   [5:0] count_V_fu_174_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_52;
wire   [48:0] tmp_6_i_fu_186_p2;
wire   [0:0] tmp_i_fu_168_p2;
wire   [1:0] i_fu_198_p2;
reg   [1:0] i_reg_291;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_67;
wire   [0:0] exitcond_fu_192_p2;
reg   [4:0] min_distances_V_addr_reg_301;
wire   [5:0] max_V_s_fu_242_p3;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_85;
wire   [3:0] i_val_V_026_s_fu_250_p3;
reg   [5:0] distance_V_reg_82;
reg   [48:0] n_V_buf_i_reg_95;
reg   [5:0] p_s_reg_104;
reg   [3:0] p_026_s_reg_116;
reg   [1:0] val_assign_reg_128;
wire  signed [63:0] tmp_8_cast_fu_213_p1;
wire  signed [63:0] tmp_7_cast_fu_227_p1;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_114;
wire   [0:0] tmp_1_fu_258_p2;
wire   [5:0] tmp_5_fu_144_p3;
wire   [5:0] tmp_4_cast_cast_fu_140_p1;
wire   [48:0] train_inst_V_cast_fu_158_p1;
wire   [48:0] tmp_5_i_fu_180_p2;
wire   [5:0] tmp_2_cast_fu_204_p1;
wire   [5:0] tmp_8_fu_208_p2;
wire   [5:0] tmp_cast_fu_218_p1;
wire   [5:0] tmp_7_fu_222_p2;
wire   [0:0] tmp_3_fu_232_p2;
wire   [3:0] i_val_V_fu_238_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_i_fu_168_p2 == 1'b0))) begin
        distance_V_reg_82 <= count_V_fu_174_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        distance_V_reg_82 <= ap_const_lv6_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_i_fu_168_p2 == 1'b0))) begin
        n_V_buf_i_reg_95 <= tmp_6_i_fu_186_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        n_V_buf_i_reg_95 <= r_V_fu_162_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_i_fu_168_p2 == 1'b0))) begin
        p_s_reg_104 <= ap_const_lv6_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_s_reg_104 <= max_V_s_fu_242_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_i_fu_168_p2 == 1'b0))) begin
        val_assign_reg_128 <= ap_const_lv2_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        val_assign_reg_128 <= i_reg_291;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_reg_291 <= i_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond_fu_192_p2))) begin
        min_distances_V_addr_reg_301 <= tmp_7_cast_fu_227_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        p_026_s_reg_116 <= i_val_V_026_s_fu_250_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        tmp_6_reg_264 <= tmp_6_fu_152_p2;
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
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_52) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_67) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_85) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_114) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        min_distances_V_address0 = min_distances_V_addr_reg_301;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond_fu_192_p2))) begin
        min_distances_V_address0 = tmp_7_cast_fu_227_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond_fu_192_p2))) begin
        min_distances_V_address0 = tmp_8_cast_fu_213_p1;
    end else begin
        min_distances_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond_fu_192_p2)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond_fu_192_p2)) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        min_distances_V_ce0 = 1'b1;
    end else begin
        min_distances_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_1_fu_258_p2))) begin
        min_distances_V_we0 = 1'b1;
    end else begin
        min_distances_V_we0 = 1'b0;
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
            if ((tmp_i_fu_168_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == exitcond_fu_192_p2)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_114 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_52 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_67 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_85 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign count_V_fu_174_p2 = (distance_V_reg_82 + ap_const_lv6_1);

assign exitcond_fu_192_p2 = ((val_assign_reg_128 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign i_fu_198_p2 = (val_assign_reg_128 + ap_const_lv2_1);

assign i_val_V_026_s_fu_250_p3 = ((tmp_3_fu_232_p2[0:0] === 1'b1) ? i_val_V_fu_238_p1 : p_026_s_reg_116);

assign i_val_V_fu_238_p1 = val_assign_reg_128;

assign max_V_s_fu_242_p3 = ((tmp_3_fu_232_p2[0:0] === 1'b1) ? min_distances_V_q0 : p_s_reg_104);

assign min_distances_V_d0 = distance_V_reg_82;

assign r_V_fu_162_p2 = (train_inst_V_cast_fu_158_p1 ^ test_inst_V);

assign tmp_1_fu_258_p2 = ((distance_V_reg_82 < min_distances_V_q0) ? 1'b1 : 1'b0);

assign tmp_2_cast_fu_204_p1 = val_assign_reg_128;

assign tmp_3_fu_232_p2 = ((min_distances_V_q0 > p_s_reg_104) ? 1'b1 : 1'b0);

assign tmp_4_cast_cast_fu_140_p1 = tmp_4;

assign tmp_5_fu_144_p3 = {{tmp_4}, {ap_const_lv2_0}};

assign tmp_5_i_fu_180_p2 = ($signed(n_V_buf_i_reg_95) + $signed(ap_const_lv49_1FFFFFFFFFFFF));

assign tmp_6_fu_152_p2 = (tmp_5_fu_144_p3 - tmp_4_cast_cast_fu_140_p1);

assign tmp_6_i_fu_186_p2 = (tmp_5_i_fu_180_p2 & n_V_buf_i_reg_95);

assign tmp_7_cast_fu_227_p1 = $signed(tmp_7_fu_222_p2);

assign tmp_7_fu_222_p2 = (tmp_6_reg_264 + tmp_cast_fu_218_p1);

assign tmp_8_cast_fu_213_p1 = $signed(tmp_8_fu_208_p2);

assign tmp_8_fu_208_p2 = (tmp_6_reg_264 + tmp_2_cast_fu_204_p1);

assign tmp_cast_fu_218_p1 = p_026_s_reg_116;

assign tmp_i_fu_168_p2 = ((n_V_buf_i_reg_95 == ap_const_lv49_0) ? 1'b1 : 1'b0);

assign train_inst_V_cast_fu_158_p1 = train_inst_V;

endmodule //digitrec_update_knn
