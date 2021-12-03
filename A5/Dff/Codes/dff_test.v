`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:41 10/14/2019
// Design Name:   dff
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment5/dff_test.v
// Project Name:  Assignment5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_test;

	// Inputs
	reg clk;
	reg d;
	// Outputs
	wire q;
	wire q_c;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.q(q), 
		.clk(clk), 
		.q_c(q_c),
		.d(d)
	);

initial begin
  clk=0;
  d = 0;
  forever #10 clk = ~clk;  
end 
initial begin 
 d <= 0;
 #100;
 d <= 1;
 #100;
 d <= 0;
 #100;
 d <= 1;
end endmodule

