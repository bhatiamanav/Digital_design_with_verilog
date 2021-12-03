`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:15:44 11/11/2019
// Design Name:   FSM
// Module Name:   /home/teja/ISE_DS/ASSIGNMENT-7/FSM_testbench.v
// Project Name:  ASSIGNMENT-7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_testbench;

	// Inputs
	reg I;
	reg clk;
	reg rst;

	// Outputs
	wire O;
	wire valid;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.I(I), 
		.O(O), 
		.clk(clk), 
		.rst(rst), 
		.valid(valid)
	);

	initial begin
		// Initialize Inputs
		I = 0;
		clk = 0;
		rst = 1;
		
		#4 I = 1;rst = 0;
		#10 I = 0;
		#10 I = 1;
		#10 I = 0;
		#29 rst = 1;
		#1 rst = 0;I = 0;
		#20 I = 1;
		#10 I = 0;
		#20 I = 1;
		#9 rst = 1;
		#1 rst = 0;I = 0;
		#10 I = 1;
		#20 I = 0;
		#10 I = 1;
		#19 rst = 1;
		#1 rst = 0;
        
		// Add stimulus here

	end
      always #5 clk=~clk;
endmodule

