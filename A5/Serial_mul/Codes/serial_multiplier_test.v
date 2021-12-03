`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:24 10/19/2019
// Design Name:   serial_multiplier
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/A5/serialmul_test.v
// Project Name:  A5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serialmul
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serialmul_test;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] P;

	// Instantiate the Unit Under Test (UUT)
	serialmul uut (
		.clk(clk), 
		.rst(rst), 
		.a(a), 
		.b(b), 
		.P(P)
	);

always 	#5 clk = ~clk;
//initial #480 $finish;
	initial begin
		// Initialize Inputs
		clk=0;
		rst = 0;
		a =0;
		b= 0;
		#6;
		rst =1;
		#57;
		repeat(15) begin
		repeat(15) begin
		rst = 0;
		if(b==15)
		begin
		a = a+1;
		end
		b = b+4'b0001;
		#6;
		rst = 1;
		#54;
		end
		end
	end
      
endmodule

