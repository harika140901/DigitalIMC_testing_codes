-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Oct 24 16:49:47 2026
-- Host        : ams34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TO_FMC_0_0_stub.vhdl
-- Design      : design_1_TO_FMC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    capturestart : in STD_LOGIC_VECTOR ( 3 downto 0 );
    div_ratio : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SAMPLE_EDGE_TIME : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SCN_SEL : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CS_B : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLKA : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    IN_EN : in STD_LOGIC;
    SCN_IN : in STD_LOGIC;
    COMPUTE_EN : in STD_LOGIC;
    DFF_RST : in STD_LOGIC;
    MUX_OUT_PAD : in STD_LOGIC;
    CONTROL_EN : in STD_LOGIC;
    CLK_OUT_PAD : in STD_LOGIC;
    CLK_SA_B : in STD_LOGIC;
    WEN : in STD_LOGIC;
    READ_EN : in STD_LOGIC;
    SA_EN : in STD_LOGIC;
    BL_PCHG : in STD_LOGIC;
    osc_EN : in STD_LOGIC;
    WL_EN : in STD_LOGIC;
    FMC_L21 : out STD_LOGIC;
    FMC_L22 : out STD_LOGIC;
    FMC_R19 : out STD_LOGIC;
    FMC_T19 : out STD_LOGIC;
    FMC_K19 : out STD_LOGIC;
    FMC_K20 : out STD_LOGIC;
    FMC_D20 : out STD_LOGIC;
    FMC_C20 : out STD_LOGIC;
    FMC_E21 : out STD_LOGIC;
    FMC_D21 : out STD_LOGIC;
    FMC_N19 : out STD_LOGIC;
    FMC_N20 : out STD_LOGIC;
    FMC_J18 : out STD_LOGIC;
    FMC_K18 : out STD_LOGIC;
    FMC_R20 : out STD_LOGIC;
    FMC_R21 : out STD_LOGIC;
    FMC_L17 : out STD_LOGIC;
    FMC_M17 : out STD_LOGIC;
    FMC_B19 : out STD_LOGIC;
    FMC_B20 : out STD_LOGIC;
    FMC_E15 : out STD_LOGIC;
    FMC_D15 : out STD_LOGIC;
    FMC_F18 : out STD_LOGIC;
    FMC_E18 : out STD_LOGIC;
    FMC_M19 : out STD_LOGIC;
    FMC_M20 : out STD_LOGIC;
    FMC_N22 : out STD_LOGIC;
    FMC_P22 : out STD_LOGIC;
    FMC_J21 : out STD_LOGIC;
    FMC_J22 : out STD_LOGIC;
    FMC_G20 : out STD_LOGIC;
    FMC_G21 : out STD_LOGIC;
    FMC_G19 : out STD_LOGIC;
    FMC_F19 : out STD_LOGIC;
    FMC_D22 : out STD_LOGIC;
    FMC_C22 : out STD_LOGIC;
    FMC_B22 : out STD_LOGIC;
    FMC_C17 : out STD_LOGIC;
    FMC_C18 : out STD_LOGIC;
    FMC_B16 : in STD_LOGIC;
    FMC_B17 : in STD_LOGIC;
    FMC_B21 : in STD_LOGIC;
    DIG_AXI_OUT_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DIG_DEBUG_AXI_OUT_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DIG_DEBUG_AXI_OUT_1 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "capturestart[3:0],div_ratio[3:0],SAMPLE_EDGE_TIME[3:0],SCN_SEL[2:0],CS_B[1:0],CLKA,CLKB,IN_EN,SCN_IN,COMPUTE_EN,DFF_RST,MUX_OUT_PAD,CONTROL_EN,CLK_OUT_PAD,CLK_SA_B,WEN,READ_EN,SA_EN,BL_PCHG,osc_EN,WL_EN,FMC_L21,FMC_L22,FMC_R19,FMC_T19,FMC_K19,FMC_K20,FMC_D20,FMC_C20,FMC_E21,FMC_D21,FMC_N19,FMC_N20,FMC_J18,FMC_K18,FMC_R20,FMC_R21,FMC_L17,FMC_M17,FMC_B19,FMC_B20,FMC_E15,FMC_D15,FMC_F18,FMC_E18,FMC_M19,FMC_M20,FMC_N22,FMC_P22,FMC_J21,FMC_J22,FMC_G20,FMC_G21,FMC_G19,FMC_F19,FMC_D22,FMC_C22,FMC_B22,FMC_C17,FMC_C18,FMC_B16,FMC_B17,FMC_B21,DIG_AXI_OUT_0[2:0],DIG_DEBUG_AXI_OUT_0[31:0],DIG_DEBUG_AXI_OUT_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TO_FMC,Vivado 2018.3";
begin
end;
