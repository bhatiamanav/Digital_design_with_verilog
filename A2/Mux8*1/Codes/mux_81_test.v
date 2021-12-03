`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:28 09/08/2019
// Design Name:   mux_81
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/mux_81_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_81
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_81_test;

	// Inputs
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg s0;
	reg s1;
	reg s2;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_81 uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.y(y)
	);

	initial begin	
	i0 = 1'b1;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b0;
	s2 = 1'b0;
	#20 
	i0 = 1'b0;
	i1 = 1'b1;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b0;
	s2 = 1'b1;
	#20 
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b1;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b1;
	s2 = 1'b0;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b1;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b0;
	s1 = 1'b1;
	s2 = 1'b1;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b1;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b1;
	s1 = 1'b0;
	s2 = 1'b0;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b1;
	i6 = 1'b0;
	i7 = 1'b0;
	s0 = 1'b1;
	s1 = 1'b0;
	s2 = 1'b1;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b1;
	i7 = 1'b0;
	s0 = 1'b1;
	s1 = 1'b1;
	s2 = 1'b0;
	#20
	i0 = 1'b0;
	i1 = 1'b0;
	i2 = 1'b0;
	i3 = 1'b0;
	i4 = 1'b0;
	i5 = 1'b0;
	i6 = 1'b0;
	i7 = 1'b1;
	s0 = 1'b1;
	s1 = 1'b1;
	s2 = 1'b1;
	#10 $finish;
	end
     initial begin 
		$monitor("SELECT LINES: %b%b%b \t I0= %b I1 = %b I2= %b I3 = %b I4 = %b I5 = %b I6= %b I7 = %b Y= %b",s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,y);
	  end 
      
endmodule

