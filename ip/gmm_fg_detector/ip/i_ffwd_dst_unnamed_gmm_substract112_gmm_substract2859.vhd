-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2859
-- VHDL created on Mon Oct 07 15:56:21 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2859 is
    port (
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_dest_data_out_12_0 : out std_logic_vector(7 downto 0);  -- ufix8
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_12_0 : in std_logic_vector(7 downto 0);  -- ufix8
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2859;

architecture normal of i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2859 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_dspba_buffer is
        generic (
            WIDTH : INTEGER := 8
        );
        port (
            buffer_in : in std_logic_vector(7 downto 0);
            buffer_out : out std_logic_vector(7 downto 0)
        );
    end component;


    signal i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860_buffer_in : STD_LOGIC_VECTOR (7 downto 0);
    signal i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860_buffer_out : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860(EXTIFACE,4)@90
    i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860_buffer_in <= in_intel_reserved_ffwd_12_0;
    thei_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860 : acl_dspba_buffer
    GENERIC MAP (
        WIDTH => 8
    )
    PORT MAP (
        buffer_in => in_intel_reserved_ffwd_12_0,
        buffer_out => i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860_buffer_out
    );

    -- dupName_0_sync_out_x(GPOUT,3)@90
    out_dest_data_out_12_0 <= i_ffwd_dst_unnamed_gmm_substract112_gmm_substract2860_buffer_out;
    out_valid_out <= in_valid_in;

    -- sync_out(GPOUT,8)@90
    out_stall_out <= in_stall_in;

END normal;
