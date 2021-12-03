`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:25:16 09/07/2019
// Design Name:   mux_21
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/mux_21_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_21_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_21 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
	a = 1'b1;
	b = 1'b0;
	c = 1'b0;
	#20 
	a = 1'b0;
	b = 1'b1;
	c = 1'b1;
	#20 
	a = 1'b1;
	b = 1'b0;
	c = 1'b0;
	#10 $finish;
	end
     initial begin 
		$monitor("SELECT LINE: %b \t A= %b B = %b Y= %b",c,a,b,y);
	  end 
endmodule

