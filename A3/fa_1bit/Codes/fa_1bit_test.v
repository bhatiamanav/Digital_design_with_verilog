`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:36:24 09/25/2019
// Design Name:   fa_1bit
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment3/fa_1bit_test.v
// Project Name:  Assignment3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fa_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa_1bit_test;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fa_1bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		// Wait 100 ns for global reset to finish
		#160 $finish;
		end
    	always #40 a =~a;
    	always #20 b =~b;
	   always #10 cin =~cin;
    
	always @(s,cout)
    $display("a=%b b=%b cin=%b \t output value s =%b cout =%b",a,b,cin,s,cout);
   
endmodule

