`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:01:17 09/08/2019
// Design Name:   demux_12
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/demux_12_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_12_test;

	// Inputs
	reg s;
	reg d;

	// Outputs
	wire y0;
	wire y1;

	// Instantiate the Unit Under Test (UUT)
	demux_12 uut (
		.s(s), 
		.d(d), 
		.y0(y0), 
		.y1(y1)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		s = 0;
		// Wait 100 ns for global reset to finish
		#20 d=1;
		#20 s = 1; d=0;
		#20 d=1;
      #10 $finish;
	end
     initial begin 
		$monitor("SELECT LINE: %b \t A= %b \t Y1= %b Y0= %b",s,d,y1,y0);
	  end 
      
endmodule

