// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct 24 16:49:47 2026
// Host        : ams34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Unbundle_AXI_Bus_0_0_stub.v
// Design      : design_1_Unbundle_AXI_Bus_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Unbundle_AXI_Bus,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(DIG_AXI_IN_0, DIG_AXI_IN_1, WL_EN_C, SA_EN_C, 
  BL_PCHG_C, WEN_C, READ_EN_C, CS_B_C, SCN_SEL_C, CLKA_C, CLKB_C, IN_EN_C, SCN_IN_C, COMPUTE_EN_C, 
  DFF_RST_C, MUX_OUT_PAD_C, CONTROL_EN_C, CLK_OUT_PAD_C, osc_EN_C, capturestart_C, div_ratio_C, 
  SAMPLE_EDGE_TIME_C, CLK_SA_B_C)
/* synthesis syn_black_box black_box_pad_pin="DIG_AXI_IN_0[31:0],DIG_AXI_IN_1,WL_EN_C,SA_EN_C,BL_PCHG_C,WEN_C,READ_EN_C,CS_B_C[1:0],SCN_SEL_C[2:0],CLKA_C,CLKB_C,IN_EN_C,SCN_IN_C,COMPUTE_EN_C,DFF_RST_C,MUX_OUT_PAD_C,CONTROL_EN_C,CLK_OUT_PAD_C,osc_EN_C,capturestart_C[3:0],div_ratio_C[3:0],SAMPLE_EDGE_TIME_C[3:0],CLK_SA_B_C" */;
  input [31:0]DIG_AXI_IN_0;
  input DIG_AXI_IN_1;
  output WL_EN_C;
  output SA_EN_C;
  output BL_PCHG_C;
  output WEN_C;
  output READ_EN_C;
  output [1:0]CS_B_C;
  output [2:0]SCN_SEL_C;
  output CLKA_C;
  output CLKB_C;
  output IN_EN_C;
  output SCN_IN_C;
  output COMPUTE_EN_C;
  output DFF_RST_C;
  output MUX_OUT_PAD_C;
  output CONTROL_EN_C;
  output CLK_OUT_PAD_C;
  output osc_EN_C;
  output [3:0]capturestart_C;
  output [3:0]div_ratio_C;
  output [3:0]SAMPLE_EDGE_TIME_C;
  output CLK_SA_B_C;
endmodule
