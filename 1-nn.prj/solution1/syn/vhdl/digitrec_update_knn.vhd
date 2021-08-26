-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity digitrec_update_knn is
port (
    test_inst_V : IN STD_LOGIC_VECTOR (48 downto 0);
    train_inst_V : IN STD_LOGIC_VECTOR (47 downto 0);
    min_distances_V_i : IN STD_LOGIC_VECTOR (5 downto 0);
    min_distances_V_o : OUT STD_LOGIC_VECTOR (5 downto 0);
    min_distances_V_o_ap_vld : OUT STD_LOGIC );
end;


architecture behav of digitrec_update_knn is 
    constant ap_true : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal distance_V_digitrec_bitcount_fu_51_n_V : STD_LOGIC_VECTOR (48 downto 0);
    signal distance_V_digitrec_bitcount_fu_51_ap_return : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal train_inst_V_cast_fu_57_p1 : STD_LOGIC_VECTOR (48 downto 0);

    component digitrec_bitcount IS
    port (
        n_V : IN STD_LOGIC_VECTOR (48 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (5 downto 0) );
    end component;



begin
    distance_V_digitrec_bitcount_fu_51 : component digitrec_bitcount
    port map (
        n_V => distance_V_digitrec_bitcount_fu_51_n_V,
        ap_return => distance_V_digitrec_bitcount_fu_51_ap_return);




    distance_V_digitrec_bitcount_fu_51_n_V <= (train_inst_V_cast_fu_57_p1 xor test_inst_V);

    min_distances_V_o_assign_proc : process(min_distances_V_i, distance_V_digitrec_bitcount_fu_51_ap_return, tmp_1_fu_68_p2)
    begin
        if (not((tmp_1_fu_68_p2 = ap_const_lv1_0))) then 
            min_distances_V_o <= distance_V_digitrec_bitcount_fu_51_ap_return;
        else 
            min_distances_V_o <= min_distances_V_i;
        end if; 
    end process;


    min_distances_V_o_ap_vld_assign_proc : process(tmp_1_fu_68_p2)
    begin
        if (not((tmp_1_fu_68_p2 = ap_const_lv1_0))) then 
            min_distances_V_o_ap_vld <= ap_const_logic_1;
        else 
            min_distances_V_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_68_p2 <= "1" when (unsigned(distance_V_digitrec_bitcount_fu_51_ap_return) < unsigned(min_distances_V_i)) else "0";
    train_inst_V_cast_fu_57_p1 <= std_logic_vector(resize(unsigned(train_inst_V),49));
end behav;
