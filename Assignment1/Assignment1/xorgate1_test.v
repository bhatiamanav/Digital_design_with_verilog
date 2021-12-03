`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:18:00 09/11/2019
// Design Name:   xorgate1
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/xorgate1_test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xorgate1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xorgate1_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	xorgate1 uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		// Add stimulus here
		#40 b=1;
		#40 a=1;b=0;
		#40 b=1;
      #40; 
	end
endmodule

