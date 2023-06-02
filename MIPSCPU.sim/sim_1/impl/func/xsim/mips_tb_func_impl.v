// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jan  4 13:19:06 2023
// Host        : yz running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/MIPSCPU/MIPSCPU.sim/sim_1/impl/func/xsim/mips_tb_func_impl.v
// Design      : MIPS_CPU
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "517931e0" *) 
(* NotValidForBitStream *)
module MIPS_CPU
   (clock,
    rstn,
    mips);
  input clock;
  input rstn;
  output [15:0]mips;

  wire [15:0]mips;

  OBUF \mips_OBUF[0]_inst 
       (.I(1'b0),
        .O(mips[0]));
  OBUF \mips_OBUF[10]_inst 
       (.I(1'b0),
        .O(mips[10]));
  OBUF \mips_OBUF[11]_inst 
       (.I(1'b0),
        .O(mips[11]));
  OBUF \mips_OBUF[12]_inst 
       (.I(1'b0),
        .O(mips[12]));
  OBUF \mips_OBUF[13]_inst 
       (.I(1'b0),
        .O(mips[13]));
  OBUF \mips_OBUF[14]_inst 
       (.I(1'b0),
        .O(mips[14]));
  OBUF \mips_OBUF[15]_inst 
       (.I(1'b0),
        .O(mips[15]));
  OBUF \mips_OBUF[1]_inst 
       (.I(1'b0),
        .O(mips[1]));
  OBUF \mips_OBUF[2]_inst 
       (.I(1'b0),
        .O(mips[2]));
  OBUF \mips_OBUF[3]_inst 
       (.I(1'b0),
        .O(mips[3]));
  OBUF \mips_OBUF[4]_inst 
       (.I(1'b0),
        .O(mips[4]));
  OBUF \mips_OBUF[5]_inst 
       (.I(1'b0),
        .O(mips[5]));
  OBUF \mips_OBUF[6]_inst 
       (.I(1'b0),
        .O(mips[6]));
  OBUF \mips_OBUF[7]_inst 
       (.I(1'b0),
        .O(mips[7]));
  OBUF \mips_OBUF[8]_inst 
       (.I(1'b0),
        .O(mips[8]));
  OBUF \mips_OBUF[9]_inst 
       (.I(1'b0),
        .O(mips[9]));
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
