// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct 24 16:49:47 2026
// Host        : ams34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Unbundle_AXI_Bus_0_0_sim_netlist.v
// Design      : design_1_Unbundle_AXI_Bus_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Unbundle_AXI_Bus_0_0,Unbundle_AXI_Bus,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Unbundle_AXI_Bus,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (DIG_AXI_IN_0,
    DIG_AXI_IN_1,
    WL_EN_C,
    SA_EN_C,
    BL_PCHG_C,
    WEN_C,
    READ_EN_C,
    CS_B_C,
    SCN_SEL_C,
    CLKA_C,
    CLKB_C,
    IN_EN_C,
    SCN_IN_C,
    COMPUTE_EN_C,
    DFF_RST_C,
    MUX_OUT_PAD_C,
    CONTROL_EN_C,
    CLK_OUT_PAD_C,
    osc_EN_C,
    capturestart_C,
    div_ratio_C,
    SAMPLE_EDGE_TIME_C,
    CLK_SA_B_C);
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

  wire [31:0]DIG_AXI_IN_0;
  wire DIG_AXI_IN_1;

  assign BL_PCHG_C = DIG_AXI_IN_0[30];
  assign CLKA_C = DIG_AXI_IN_0[17];
  assign CLKB_C = DIG_AXI_IN_0[18];
  assign CLK_OUT_PAD_C = DIG_AXI_IN_0[25];
  assign CLK_SA_B_C = DIG_AXI_IN_0[26];
  assign COMPUTE_EN_C = DIG_AXI_IN_0[21];
  assign CONTROL_EN_C = DIG_AXI_IN_0[24];
  assign CS_B_C[1:0] = DIG_AXI_IN_0[16:15];
  assign DFF_RST_C = DIG_AXI_IN_0[22];
  assign IN_EN_C = DIG_AXI_IN_0[19];
  assign MUX_OUT_PAD_C = DIG_AXI_IN_0[23];
  assign READ_EN_C = DIG_AXI_IN_0[28];
  assign SAMPLE_EDGE_TIME_C[3:0] = DIG_AXI_IN_0[11:8];
  assign SA_EN_C = DIG_AXI_IN_0[29];
  assign SCN_IN_C = DIG_AXI_IN_0[20];
  assign SCN_SEL_C[2:0] = DIG_AXI_IN_0[14:12];
  assign WEN_C = DIG_AXI_IN_0[27];
  assign WL_EN_C = DIG_AXI_IN_1;
  assign capturestart_C[3:0] = DIG_AXI_IN_0[3:0];
  assign div_ratio_C[3:0] = DIG_AXI_IN_0[7:4];
  assign osc_EN_C = DIG_AXI_IN_0[31];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
