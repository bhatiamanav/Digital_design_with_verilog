////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: demux_18_synthesis.v
// /___/   /\     Timestamp: Tue Sep 10 02:13:30 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim demux_18.ngc demux_18_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: demux_18.ngc
// Output file	: /home/susiejojo/Sems/Sem3/VLSID/Assignment2/netgen/synthesis/demux_18_synthesis.v
// # of Modules	: 1
// Design Name	: demux_18
// Xilinx        : /opt/Xilinx/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module demux_18 (
  d, a, b, c, y0, y1, y2, y3, y4, y5, y6, y7
);
  input d;
  input a;
  input b;
  input c;
  output y0;
  output y1;
  output y2;
  output y3;
  output y4;
  output y5;
  output y6;
  output y7;
  wire d_IBUF_0;
  wire a_IBUF_1;
  wire b_IBUF_2;
  wire c_IBUF_3;
  wire y0_OBUF_4;
  wire y1_OBUF_5;
  wire y2_OBUF_6;
  wire y3_OBUF_7;
  wire y4_OBUF_8;
  wire y5_OBUF_9;
  wire y6_OBUF_10;
  wire y7_OBUF_11;
  LUT4 #(
    .INIT ( 16'h0200 ))
  \demux2/demux2/y11  (
    .I0(c_IBUF_3),
    .I1(b_IBUF_2),
    .I2(a_IBUF_1),
    .I3(d_IBUF_0),
    .O(y1_OBUF_5)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \demux2/demux2/y01  (
    .I0(c_IBUF_3),
    .I1(b_IBUF_2),
    .I2(a_IBUF_1),
    .I3(d_IBUF_0),
    .O(y0_OBUF_4)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \demux2/demux3/y11  (
    .I0(c_IBUF_3),
    .I1(b_IBUF_2),
    .I2(a_IBUF_1),
    .I3(d_IBUF_0),
    .O(y3_OBUF_7)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \demux2/demux3/y01  (
    .I0(b_IBUF_2),
    .I1(c_IBUF_3),
    .I2(a_IBUF_1),
    .I3(d_IBUF_0),
    .O(y2_OBUF_6)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \demux3/demux2/y11  (
    .I0(a_IBUF_1),
    .I1(c_IBUF_3),
    .I2(b_IBUF_2),
    .I3(d_IBUF_0),
    .O(y5_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \demux3/demux2/y01  (
    .I0(a_IBUF_1),
    .I1(c_IBUF_3),
    .I2(b_IBUF_2),
    .I3(d_IBUF_0),
    .O(y4_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \demux3/demux3/y11  (
    .I0(c_IBUF_3),
    .I1(b_IBUF_2),
    .I2(a_IBUF_1),
    .I3(d_IBUF_0),
    .O(y7_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \demux3/demux3/y01  (
    .I0(a_IBUF_1),
    .I1(b_IBUF_2),
    .I2(c_IBUF_3),
    .I3(d_IBUF_0),
    .O(y6_OBUF_10)
  );
  IBUF   d_IBUF (
    .I(d),
    .O(d_IBUF_0)
  );
  IBUF   a_IBUF (
    .I(a),
    .O(a_IBUF_1)
  );
  IBUF   b_IBUF (
    .I(b),
    .O(b_IBUF_2)
  );
  IBUF   c_IBUF (
    .I(c),
    .O(c_IBUF_3)
  );
  OBUF   y0_OBUF (
    .I(y0_OBUF_4),
    .O(y0)
  );
  OBUF   y1_OBUF (
    .I(y1_OBUF_5),
    .O(y1)
  );
  OBUF   y2_OBUF (
    .I(y2_OBUF_6),
    .O(y2)
  );
  OBUF   y3_OBUF (
    .I(y3_OBUF_7),
    .O(y3)
  );
  OBUF   y4_OBUF (
    .I(y4_OBUF_8),
    .O(y4)
  );
  OBUF   y5_OBUF (
    .I(y5_OBUF_9),
    .O(y5)
  );
  OBUF   y6_OBUF (
    .I(y6_OBUF_10),
    .O(y6)
  );
  OBUF   y7_OBUF (
    .I(y7_OBUF_11),
    .O(y7)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

