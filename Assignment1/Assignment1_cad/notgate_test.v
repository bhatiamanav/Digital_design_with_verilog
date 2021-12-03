`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:16:14 08/20/2019
// Design Name:   notgate
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/notgate_test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: notgate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module notgate_test;

	// Inputs
	reg a;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	notgate uut (
		.a(a), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		#20;
		// Add stimulus here
		#20 a=1;
		#20 a=0;
      #40; 

	end
		initial begin 
		$monitor("a=%d y=%d\n",a,y);
		end
      
      
endmodule


