`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:14:29 09/08/2019
// Design Name:   demux_14
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/demux_14_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_14
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_14_test;

	// Inputs
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	demux_14 uut (
		.d(d), 
		.s0(s0), 
		.s1(s1), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3)
	);

	initial begin
		// Initialize Inputs
		s0 = 0;
		s1 = 0;
		d = 0;
		#40 s0=1;
		#40 s1=1;s0=0;
		#40 s0=1;
		#40 d = 1; s0=0;s1=0;
		#40 s0=1;
		#40 s0=0;s1=1;
		#40 s0=1;
	end
     initial begin 
		$monitor("SELECT LINES: %b%b \t d= %b \t Y3=%b Y2 =%b Y1= %b Y0= %b",s1,s0,d,y3,y2,y1,y0);
	  end 
      
endmodule

