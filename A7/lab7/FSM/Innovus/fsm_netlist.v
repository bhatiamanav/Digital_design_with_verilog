/*
###############################################################
#  Generated by:      Cadence Innovus 16.21-s078_1
#  OS:                Linux x86_64(Host ID client04)
#  Generated on:      Mon Nov 11 00:46:13 2019
#  Design:            fsm
#  Command:           saveNetlist fsm_netlist.v
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Nov 10 2019 23:40:49 IST (Nov 10 2019 18:10:49 UTC)
// Verification Directory fv/fsm 
module fsm (
	I, 
	O, 
	clk, 
	rst, 
	valid);
   input I;
   output O;
   input clk;
   input rst;
   output valid;

   // Internal wires
   wire [3:0] state;
   wire n_0;
   wire n_1;
   wire n_2;
   wire n_3;
   wire n_4;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_8;
   wire n_9;
   wire n_10;
   wire n_11;
   wire n_12;
   wire n_13;
   wire n_14;
   wire n_15;
   wire n_16;
   wire n_17;

   DFFRHQX1 O_reg (.CK(clk),
	.D(n_17),
	.Q(O),
	.RN(n_16));
   AO22XL g729 (.A0(n_11),
	.A1(state[3]),
	.B0(n_9),
	.B1(state[1]),
	.Y(n_17));
   SDFFRHQX1 \state_reg[2]  (.CK(clk),
	.D(state[2]),
	.Q(state[2]),
	.RN(n_16),
	.SE(n_8),
	.SI(n_12));
   INVXL g733 (.A(n_14),
	.Y(n_15));
   AOI211XL g734 (.A0(n_0),
	.A1(state[0]),
	.B0(n_10),
	.C0(state[1]),
	.Y(n_14));
   OAI21X1 g735 (.A0(n_7),
	.A1(n_12),
	.B0(n_3),
	.Y(n_13));
   OAI2BB1XL g736 (.A0N(n_10),
	.A1N(n_2),
	.B0(n_6),
	.Y(n_11));
   SDFFRHQX1 \state_reg[0]  (.CK(clk),
	.D(state[0]),
	.Q(state[0]),
	.RN(n_16),
	.SE(n_1),
	.SI(n_5));
   OAI2BB1XL g738 (.A0N(O),
	.A1N(state[0]),
	.B0(n_4),
	.Y(n_9));
   NOR2XL g737 (.A(n_7),
	.B(state[3]),
	.Y(n_8));
   AOI32X1 g739 (.A0(state[1]),
	.A1(n_12),
	.A2(n_5),
	.B0(O),
	.B1(state[2]),
	.Y(n_6));
   NOR3X1 g740 (.A(I),
	.B(state[2]),
	.C(n_5),
	.Y(n_10));
   NAND4XL g742 (.A(I),
	.B(state[2]),
	.C(n_5),
	.D(n_3),
	.Y(n_4));
   OAI21X1 g741 (.A0(n_5),
	.A1(n_2),
	.B0(I),
	.Y(n_7));
   AOI211X1 g743 (.A0(state[2]),
	.A1(state[3]),
	.B0(I),
	.C0(state[1]),
	.Y(n_1));
   DFFRHQX1 valid_reg (.CK(clk),
	.D(1'b1),
	.Q(valid),
	.RN(n_16));
   NOR2XL g745 (.A(I),
	.B(state[3]),
	.Y(n_0));
   CLKINVX1 g747 (.A(state[0]),
	.Y(n_5));
   INVXL g749 (.A(rst),
	.Y(n_16));
   CLKINVX1 g750 (.A(state[2]),
	.Y(n_12));
   DFFRX1 \state_reg[1]  (.CK(clk),
	.D(n_15),
	.Q(state[1]),
	.QN(n_2),
	.RN(n_16));
   DFFRX1 \state_reg[3]  (.CK(clk),
	.D(n_13),
	.Q(state[3]),
	.QN(n_3),
	.RN(n_16));
endmodule
