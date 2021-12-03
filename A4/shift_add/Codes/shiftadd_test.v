`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:43 10/04/2019
// Design Name:   shiftadd
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment4/shiftadd_test.v
// Project Name:  Assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shiftadd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftadd_test;

	// Inputs
	reg clk;
	reg start;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire flag;
	wire [7:0] mul;

	// Instantiate the Unit Under Test (UUT)
	shiftadd uut (
		.clk(clk), 
		.start(start), 
		.a(a), 
		.b(b), 
		.flag(flag), 
		.mul(mul)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		a = 0;
		b = 0;

	end
	initial clk = 0;
	always #5 clk = ~clk;
	initial begin
	start = 0;
	a=4'b0000;
	b=4'b0000;
	#20
	start = 1;
	a = 4'b0100;
	b = 4'b0110;
	end
	always @(clk) begin
	if (mul!=0) begin
		$display("a=%d b=%d \t output value mul =%d ",a,b,mul);
					end
	end
endmodule

