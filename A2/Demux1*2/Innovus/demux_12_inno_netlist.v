/*
###############################################################
#  Generated by:      Cadence Innovus 16.21-s078_1
#  OS:                Linux x86_64(Host ID client02)
#  Generated on:      Mon Sep  9 22:02:59 2019
#  Design:            demux_12
#  Command:           saveNetlist demux_12_inno_netlist.v
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Sep  8 2019 18:46:30 IST (Sep  8 2019 13:16:30 UTC)
// Verification Directory fv/demux_12 
module demux_12 (
	s, 
	d, 
	y0, 
	y1);
   input s;
   input d;
   output y0;
   output y1;

   NOR2BXL g17 (.AN(d),
	.B(s),
	.Y(y0));
   AND2XL g18 (.A(d),
	.B(s),
	.Y(y1));
endmodule

