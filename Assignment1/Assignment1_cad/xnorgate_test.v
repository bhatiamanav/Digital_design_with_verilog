`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:36:24 08/20/2019
// Design Name:   xnorgate
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/xnorgate_test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xnorgate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xnorgate_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	xnorgate uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#20;
		// Add stimulus here
		#20 b=1;
		#20 a=1;b=0;
		#20 b=1;
		#20 a=0;b=0;
      #50; 

	end
		initial begin 
		$monitor("a=%d b=%d y=%d\n",a,b,y);
		end
      
endmodule


