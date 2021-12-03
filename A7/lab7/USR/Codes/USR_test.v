`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:55:44 11/11/2019
// Design Name:   USR
// Module Name:   /home/teja/ISE_DS/ASSIGNMENT-7/USR_tbv.v
// Project Name:  ASSIGNMENT-7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: USR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module USR_tbv;

	// Inputs
	reg [3:0] I;
	reg clk;
	reg reset;
	reg [1:0] s;
	reg SINR;
	reg SINL;

	// Outputs
	wire [3:0] O;

	// Instantiate the Unit Under Test (UUT)
	USR uut (
		.I(I), 
		.O(O), 
		.clk(clk), 
		.reset(reset), 
		.s(s), 
		.SINR(SINR), 
		.SINL(SINL)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		clk = 1'b0;
		reset = 1'b0;
		s = 2'b00;
		SINR = 1'b1;
		SINL = 1'b0;

		// Wait 100 ns for global reset to finish
		#10;
		end
	
		always #2 clk=~clk;
		always #4 s[1]=~s[1];
		always #8 s[0]=~s[0];
		always #16 I[0]=~I[0];
		always #32 I[1]=~I[1];
	   always #64 I[2]=~I[2];
      always #128 I[3]=~I[3];		
		
        
		// Add stimulus here

	
      
endmodule

