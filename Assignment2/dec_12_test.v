`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:28:43 09/08/2019
// Design Name:   dec_12
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/dec_12_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec_12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_12_test;

	// Inputs
	reg a;
	reg in;

	// Outputs
	wire y0;
	wire y1;

	// Instantiate the Unit Under Test (UUT)
	dec_12 uut (
		.a(a), 
		.in(in), 
		.y0(y0), 
		.y1(y1)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		in = 0;
		// Wait 100 ns for global reset to finish
		#20 a=1;
		#20 in = 1; a=0;
		#20 a=1;
      #10 $finish;
	end
     initial begin 
		$monitor("ENABLE: %b \t A= %b \t Y1= %b Y0= %b",in,a,y1,y0);
	  end 
      
endmodule

