// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 11 19:37:50 2026
// Host        : ams34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Verilog_Controller_0_0_stub.v
// Design      : design_1_Verilog_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Verilog_Controller,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(WL_EN_C, SA_EN_C, BL_PCHG_C, CLK_SA_C, READ_EN_C, 
  WEN_C, CS_B_C, SCN_SEL_C, CLK_A_C, CLK_B_C, IN_EN_C, SCN_IN_C, COMPUTE_EN_C, DFF_RST_C, 
  MUX_OUT_PAD_C, CONTROL_EN_C, CLK_OUT_PAD_C, osc_EN_C, capturestart_C, div_ratio_C, 
  SAMPLE_EDGE_TIME_C, WL_EN, SA_EN, BL_PCHG, CLK_SA, WEN, READ_EN, CS_B, SCN_SEL, CLKA, CLKB, IN_EN, 
  SCN_IN, COMPUTE_EN, DFF_RST, MUX_OUT_PAD, CONTROL_EN, CLK_OUT_PAD, osc_EN, capturestart, 
  div_ratio, SAMPLE_EDGE_TIME, scan_mode_setting_in, dig_out, clk, in_tvalid, in_tlast, in_tdata, 
  in_tready, out_tready, out_tvalid, out_tlast, out_tdata, SCAN_DONE_FLAGS)
/* synthesis syn_black_box black_box_pad_pin="WL_EN_C,SA_EN_C,BL_PCHG_C,CLK_SA_C,READ_EN_C,WEN_C,CS_B_C[1:0],SCN_SEL_C[2:0],CLK_A_C,CLK_B_C,IN_EN_C,SCN_IN_C,COMPUTE_EN_C,DFF_RST_C,MUX_OUT_PAD_C,CONTROL_EN_C,CLK_OUT_PAD_C,osc_EN_C,capturestart_C[3:0],div_ratio_C[3:0],SAMPLE_EDGE_TIME_C[3:0],WL_EN,SA_EN,BL_PCHG,CLK_SA,WEN,READ_EN,CS_B[1:0],SCN_SEL[2:0],CLKA,CLKB,IN_EN,SCN_IN,COMPUTE_EN,DFF_RST,MUX_OUT_PAD,CONTROL_EN,CLK_OUT_PAD,osc_EN,capturestart[3:0],div_ratio[3:0],SAMPLE_EDGE_TIME[3:0],scan_mode_setting_in[15:0],dig_out[2:0],clk,in_tvalid,in_tlast,in_tdata[31:0],in_tready,out_tready,out_tvalid,out_tlast,out_tdata[31:0],SCAN_DONE_FLAGS[3:0]" */;
  input WL_EN_C;
  input SA_EN_C;
  input BL_PCHG_C;
  input CLK_SA_C;
  input READ_EN_C;
  input WEN_C;
  input [1:0]CS_B_C;
  input [2:0]SCN_SEL_C;
  input CLK_A_C;
  input CLK_B_C;
  input IN_EN_C;
  input SCN_IN_C;
  input COMPUTE_EN_C;
  input DFF_RST_C;
  input MUX_OUT_PAD_C;
  input CONTROL_EN_C;
  input CLK_OUT_PAD_C;
  input osc_EN_C;
  input [3:0]capturestart_C;
  input [3:0]div_ratio_C;
  input [3:0]SAMPLE_EDGE_TIME_C;
  output WL_EN;
  output SA_EN;
  output BL_PCHG;
  output CLK_SA;
  output WEN;
  output READ_EN;
  output [1:0]CS_B;
  output [2:0]SCN_SEL;
  output CLKA;
  output CLKB;
  output IN_EN;
  output SCN_IN;
  output COMPUTE_EN;
  output DFF_RST;
  output MUX_OUT_PAD;
  output CONTROL_EN;
  output CLK_OUT_PAD;
  output osc_EN;
  output [3:0]capturestart;
  output [3:0]div_ratio;
  output [3:0]SAMPLE_EDGE_TIME;
  input [15:0]scan_mode_setting_in;
  input [2:0]dig_out;
  input clk;
  input in_tvalid;
  input in_tlast;
  input [31:0]in_tdata;
  output in_tready;
  input out_tready;
  output out_tvalid;
  output out_tlast;
  output [31:0]out_tdata;
  output [3:0]SCAN_DONE_FLAGS;
endmodule
