`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:49:56 09/07/2019
// Design Name:   mux_41
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/mux_41_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_41
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_41_test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_41 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);

	
	initial begin
	
	i0 = 1'b1;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b0;
	#20 
	i0 = 1'b0;
	i1 = 1'b1;
	i2 = 1'b0;
	i3 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b1;
	#20 
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b1;
	i3 = 1'b0;
	s0 = 1'b1;
	s1 = 1'b0;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b1;
	s0 = 1'b1;
	s1 = 1'b1;
	#20
	i0 = 1'b1;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b0;
	#10 $finish;
	end
     initial begin 
		$monitor("SELECT LINES: %b%b \t I0= %b I1 = %b I2= %b I3 = %b Y= %b",s0,s1,i0,i1,i2,i3,y);
	  end 
endmodule

