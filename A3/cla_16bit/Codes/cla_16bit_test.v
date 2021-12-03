`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:02:02 09/26/2019
// Design Name:   cla_16bit
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment3/cla_16bit_test.v
// Project Name:  Assignment3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_16bit_test;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg cin;

	// Outputs
	wire [15:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	cla_16bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 16'b0000000000000000;
		b = 16'b0000000000000000;
		cin = 0;
      
#100 a= 16'b0000000000011111; b=16'b000000000001100; 
#10 a= 16'b0000000000011111; b=16'b000000000001100; 
#10 a= 16'b1100011000011111; b=16'b000000110001100; 
#10 a= 16'b1111111111111111; b=16'b000000000000000;
end
 
initial
$monitor("A=%b,B=%b,Cin=%b: Sum= %b,Cout=%b",a,b,cin,s,cout);
      
endmodule

