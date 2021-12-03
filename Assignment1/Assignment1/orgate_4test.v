`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:28 08/22/2019
// Design Name:   orgate_4
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/orgate_4test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: orgate_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module orgate_4test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	orgate_4 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

