`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:52:53 09/08/2019
// Design Name:   dec_24
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/dec_24_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec_24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_24_test;

	// Inputs
	reg a0;
	reg a1;
	reg in;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;

	// Instantiate the Unit Under Test (UUT)
	dec_24 uut (
		.a0(a0), 
		.a1(a1), 
		.in(in), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3)
	);

	initial begin
		// Initialize Inputs
		a0 = 0;
		a1 = 0;
		in = 0;
		#40 a0=1;
		#40 a1=1;a0=0;
		#40 a0=1;
		#40 in = 1; a0=0;a1=0;
		#40 a0=1;
		#40 a0=0;a1=1;
		#40 a0=1;
	end
     initial begin 
		$monitor("ENABLE: %b \t A1= %b A0 = %b \t Y3=%b Y2 =%b Y1= %b Y0= %b",in,a1,a0,d3,d2,d1,d0);
	  end 
      
endmodule

