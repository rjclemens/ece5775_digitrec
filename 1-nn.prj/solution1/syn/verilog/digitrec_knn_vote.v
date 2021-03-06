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
        p_read,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        p_read9,
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
input  [5:0] p_read;
input  [5:0] p_read1;
input  [5:0] p_read2;
input  [5:0] p_read3;
input  [5:0] p_read4;
input  [5:0] p_read5;
input  [5:0] p_read6;
input  [5:0] p_read7;
input  [5:0] p_read8;
input  [5:0] p_read9;
output  [3:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] ap_return;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_21;
wire   [0:0] tmp_3_1_fu_98_p2;
reg   [0:0] tmp_3_1_reg_303;
wire   [0:0] tmp_3_2_fu_112_p2;
reg   [0:0] tmp_3_2_reg_308;
wire   [5:0] tmp_2_min_2_v_fu_118_p3;
reg   [5:0] tmp_2_min_2_v_reg_313;
wire   [0:0] tmp_3_3_fu_126_p2;
reg   [0:0] tmp_3_3_reg_319;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_53;
wire   [0:0] tmp_3_4_fu_138_p2;
reg   [0:0] tmp_3_4_reg_325;
wire   [5:0] tmp_2_min_4_v_fu_144_p3;
reg   [5:0] tmp_2_min_4_v_reg_330;
wire   [2:0] agg_result_V_0_agg_result_V_02_5_fu_196_p3;
reg   [2:0] agg_result_V_0_agg_result_V_02_5_reg_336;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_66;
wire   [0:0] tmp_3_6_fu_211_p2;
reg   [0:0] tmp_3_6_reg_341;
wire   [5:0] tmp_2_min_6_v_fu_217_p3;
reg   [5:0] tmp_2_min_6_v_reg_346;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_85;
wire   [5:0] tmp_2_min_1_v_fu_104_p3;
wire   [5:0] tmp_2_min_3_v_fu_131_p3;
wire   [0:0] tmp_8_fu_162_p2;
wire   [1:0] agg_result_V_0_agg_result_V_02_2_fu_155_p3;
wire   [1:0] agg_result_V_0_agg_result_V_s_fu_152_p1;
wire   [1:0] agg_result_V_0_agg_result_V_02_3_fu_166_p3;
wire   [0:0] tmp_3_5_fu_178_p2;
wire   [0:0] tmp_s_fu_191_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_4_fu_183_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_1_fu_174_p1;
wire   [5:0] tmp_2_min_5_v_fu_204_p3;
wire   [0:0] tmp_3_7_fu_225_p2;
wire   [0:0] tmp_1_fu_238_p2;
wire   [2:0] agg_result_V_0_agg_result_V_02_fu_230_p3;
wire   [2:0] agg_result_V_0_agg_result_V_02_7_fu_243_p3;
wire   [5:0] tmp_2_min_7_v_fu_254_p3;
wire   [0:0] tmp_3_8_fu_261_p2;
wire   [5:0] tmp_2_min_8_v_fu_267_p3;
wire   [0:0] tmp_3_9_fu_275_p2;
wire   [0:0] tmp_2_fu_289_p2;
wire   [3:0] agg_result_V_0_agg_result_V_02_8_fu_281_p3;
wire   [3:0] agg_result_V_0_agg_result_V_02_6_fu_250_p1;
wire   [3:0] agg_result_V_0_agg_result_V_02_9_fu_295_p3;
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
            ap_return_preg <= agg_result_V_0_agg_result_V_02_9_fu_295_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        agg_result_V_0_agg_result_V_02_5_reg_336 <= agg_result_V_0_agg_result_V_02_5_fu_196_p3;
        tmp_2_min_6_v_reg_346 <= tmp_2_min_6_v_fu_217_p3;
        tmp_3_6_reg_341 <= tmp_3_6_fu_211_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        tmp_2_min_2_v_reg_313 <= tmp_2_min_2_v_fu_118_p3;
        tmp_3_1_reg_303 <= tmp_3_1_fu_98_p2;
        tmp_3_2_reg_308 <= tmp_3_2_fu_112_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tmp_2_min_4_v_reg_330 <= tmp_2_min_4_v_fu_144_p3;
        tmp_3_3_reg_319 <= tmp_3_3_fu_126_p2;
        tmp_3_4_reg_325 <= tmp_3_4_fu_138_p2;
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
        ap_return = agg_result_V_0_agg_result_V_02_9_fu_295_p3;
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
    if (ap_sig_53) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_66) begin
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

assign agg_result_V_0_agg_result_V_02_1_fu_174_p1 = agg_result_V_0_agg_result_V_02_3_fu_166_p3;

assign agg_result_V_0_agg_result_V_02_2_fu_155_p3 = ((tmp_3_3_reg_319[0:0] === 1'b1) ? ap_const_lv2_3 : ap_const_lv2_2);

assign agg_result_V_0_agg_result_V_02_3_fu_166_p3 = ((tmp_8_fu_162_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_2_fu_155_p3 : agg_result_V_0_agg_result_V_s_fu_152_p1);

assign agg_result_V_0_agg_result_V_02_4_fu_183_p3 = ((tmp_3_5_fu_178_p2[0:0] === 1'b1) ? ap_const_lv3_5 : ap_const_lv3_4);

assign agg_result_V_0_agg_result_V_02_5_fu_196_p3 = ((tmp_s_fu_191_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_4_fu_183_p3 : agg_result_V_0_agg_result_V_02_1_fu_174_p1);

assign agg_result_V_0_agg_result_V_02_6_fu_250_p1 = agg_result_V_0_agg_result_V_02_7_fu_243_p3;

assign agg_result_V_0_agg_result_V_02_7_fu_243_p3 = ((tmp_1_fu_238_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_fu_230_p3 : agg_result_V_0_agg_result_V_02_5_reg_336);

assign agg_result_V_0_agg_result_V_02_8_fu_281_p3 = ((tmp_3_9_fu_275_p2[0:0] === 1'b1) ? ap_const_lv4_9 : ap_const_lv4_8);

assign agg_result_V_0_agg_result_V_02_9_fu_295_p3 = ((tmp_2_fu_289_p2[0:0] === 1'b1) ? agg_result_V_0_agg_result_V_02_8_fu_281_p3 : agg_result_V_0_agg_result_V_02_6_fu_250_p1);

assign agg_result_V_0_agg_result_V_02_fu_230_p3 = ((tmp_3_7_fu_225_p2[0:0] === 1'b1) ? ap_const_lv3_7 : ap_const_lv3_6);

assign agg_result_V_0_agg_result_V_s_fu_152_p1 = tmp_3_1_reg_303;

always @ (*) begin
    ap_sig_21 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_53 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_66 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_85 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign tmp_1_fu_238_p2 = (tmp_3_7_fu_225_p2 | tmp_3_6_reg_341);

assign tmp_2_fu_289_p2 = (tmp_3_9_fu_275_p2 | tmp_3_8_fu_261_p2);

assign tmp_2_min_1_v_fu_104_p3 = ((tmp_3_1_fu_98_p2[0:0] === 1'b1) ? p_read1 : p_read);

assign tmp_2_min_2_v_fu_118_p3 = ((tmp_3_2_fu_112_p2[0:0] === 1'b1) ? p_read2 : tmp_2_min_1_v_fu_104_p3);

assign tmp_2_min_3_v_fu_131_p3 = ((tmp_3_3_fu_126_p2[0:0] === 1'b1) ? p_read3 : tmp_2_min_2_v_reg_313);

assign tmp_2_min_4_v_fu_144_p3 = ((tmp_3_4_fu_138_p2[0:0] === 1'b1) ? p_read4 : tmp_2_min_3_v_fu_131_p3);

assign tmp_2_min_5_v_fu_204_p3 = ((tmp_3_5_fu_178_p2[0:0] === 1'b1) ? p_read5 : tmp_2_min_4_v_reg_330);

assign tmp_2_min_6_v_fu_217_p3 = ((tmp_3_6_fu_211_p2[0:0] === 1'b1) ? p_read6 : tmp_2_min_5_v_fu_204_p3);

assign tmp_2_min_7_v_fu_254_p3 = ((tmp_3_7_fu_225_p2[0:0] === 1'b1) ? p_read7 : tmp_2_min_6_v_reg_346);

assign tmp_2_min_8_v_fu_267_p3 = ((tmp_3_8_fu_261_p2[0:0] === 1'b1) ? p_read8 : tmp_2_min_7_v_fu_254_p3);

assign tmp_3_1_fu_98_p2 = ((p_read1 < p_read) ? 1'b1 : 1'b0);

assign tmp_3_2_fu_112_p2 = ((tmp_2_min_1_v_fu_104_p3 > p_read2) ? 1'b1 : 1'b0);

assign tmp_3_3_fu_126_p2 = ((tmp_2_min_2_v_reg_313 > p_read3) ? 1'b1 : 1'b0);

assign tmp_3_4_fu_138_p2 = ((tmp_2_min_3_v_fu_131_p3 > p_read4) ? 1'b1 : 1'b0);

assign tmp_3_5_fu_178_p2 = ((tmp_2_min_4_v_reg_330 > p_read5) ? 1'b1 : 1'b0);

assign tmp_3_6_fu_211_p2 = ((tmp_2_min_5_v_fu_204_p3 > p_read6) ? 1'b1 : 1'b0);

assign tmp_3_7_fu_225_p2 = ((tmp_2_min_6_v_reg_346 > p_read7) ? 1'b1 : 1'b0);

assign tmp_3_8_fu_261_p2 = ((tmp_2_min_7_v_fu_254_p3 > p_read8) ? 1'b1 : 1'b0);

assign tmp_3_9_fu_275_p2 = ((tmp_2_min_8_v_fu_267_p3 > p_read9) ? 1'b1 : 1'b0);

assign tmp_8_fu_162_p2 = (tmp_3_3_reg_319 | tmp_3_2_reg_308);

assign tmp_s_fu_191_p2 = (tmp_3_5_fu_178_p2 | tmp_3_4_reg_325);

endmodule //digitrec_knn_vote
