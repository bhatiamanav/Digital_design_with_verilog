/*
###############################################################
#  Generated by:      Cadence Innovus 16.21-s078_1
#  OS:                Linux x86_64(Host ID client02)
#  Generated on:      Tue Sep 10 01:50:03 2019
#  Design:            mux_21
#  Command:           saveNetlist mux_21_inno_netlist.v
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  8 2019 18:45:23 IST (Sep  8 2019 13:15:23 UTC)
// Verification Directory fv/mux_21 
module mux_21 (
	a, 
	b, 
	c, 
	y);
   input a;
   input b;
   input c;
   output y;

   MX2X1 g24 (.A(a),
	.B(b),
	.S0(c),
	.Y(y));
endmodule
