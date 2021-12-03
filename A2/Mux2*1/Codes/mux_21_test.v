`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:25:16 09/07/2019
// Design Name:   mux_21
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/mux_21_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_21
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_21_test;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_21 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 1'b0;
		b = 1'b0;
		c = 1'b0;

		// Wait 100 ns for global reset to finish
		#100 $finish;
		end
		
		always #25 c=~c;
		always #10 b=~b;
		always #5 a=~a;
        
		// Add stimulus here
	always @(y)
    $display( "time =%0t \t c=%b b=%b a=%b \t output value y  =%b",$time,c,b,a,y);
      
endmodule

