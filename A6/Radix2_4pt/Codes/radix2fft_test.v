`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:43:36 11/01/2019
// Design Name:   radix2fft
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/A6/radix2fft_test.v
// Project Name:  A6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: radix2fft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module radix2fft_tb;

	// Inputs
	reg [1:0] i0;
	reg [1:0] i1;
	reg [1:0] i2;
	reg [1:0] i3;

	// Outputs
	wire [3:0] e;
	wire [3:0] ei;
	wire [3:0] f;
	wire [3:0] fi;
	wire [3:0] g;
	wire [3:0] gi;
	wire [3:0] h;
	wire [3:0] hi;

	// Instantiate the Unit Under Test (UUT)
	radix2fft uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.e(e), 
		.ei(ei), 
		.f(f), 
		.fi(fi), 
		.g(g), 
		.gi(gi), 
		.h(h), 
		.hi(hi)
	);

	initial begin
		// Initialize Inputs
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;

		end
		
		always #1 i0[0]=~i0[0];
		always #2 i0[1]=~i0[1];
		always #4 i1[0]=~i1[0];
		always #8 i1[1]=~i0[1];
      always #16 i2[0]=~i2[0];
		always #32 i2[1]=~i2[1];
		always #64 i3[0]=~i3[0];
		always #128 i3[1]=~i3[1];
		
endmodule



