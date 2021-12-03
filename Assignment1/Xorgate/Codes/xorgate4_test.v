`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:23:10 08/23/2019
// Design Name:   xorgate4
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/xorgate4_test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: xorgate4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xorgate4_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire y;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	xorgate4 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

	end
		always @ ( a, b, c, d )
		begin
      
      // generate truth table
		for ( i = 0; i < 16; i = i+1 )
      // every 10 ns set a, b, and cin to the binary rep. of i
			#10 {a, b, c, d} = i;
			
      // stop 10ns after last change of inputs
		#10 $stop;
		end
			initial begin 
			$monitor("a=%d b=%d c=%d d=%d y=%d\n",a,b,c,d,y);
			end
      
endmodule

