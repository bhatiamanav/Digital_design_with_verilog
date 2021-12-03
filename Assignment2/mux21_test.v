`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:30 09/07/2019
// Design Name:   mux21
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/mux21_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux21_test;

	// Inputs
	reg a;
	reg b;
	reg select;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux21 uut (
		.y(y), 
		.a(a), 
		.b(b), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		select = 0;
		// Wait 250 ns for global reset to finish
		#250 $finish;
      end
		always #80 select=~select;
		always #40 b=~b;
		always #20 a=~a;
always @(y)
    $display( "time =%0t \t s=%b a=%b b=%b \t output value y  =%b",$time,select,a,b,y);
      
     
endmodule

