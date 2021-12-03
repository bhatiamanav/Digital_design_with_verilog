`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:24 10/05/2019
// Design Name:   booth
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment4/booth_test.v
// Project Name:  Assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module booth_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	integer i;
	// Outputs
	wire [7:0] mul;

	// Instantiate the Unit Under Test (UUT)
	booth uut (
		.A(A), 
		.B(B), 
		.mul(mul)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		i=0;

		// Wait 100 ns for global reset to finish
//		#4;
//		A = 0;
//		B = 0;
//		$monitor("a=%d b=%d \t output value mul =%d",$signed(A),$signed(B),$signed(mul));
//     
		#4
		A = -7;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -6;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -5;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -4;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -3;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -2;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = -1;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
		#4
		A = 0;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 1;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 2;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end	
	#4
		A = 3;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 4;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 5;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 6;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	#4
		A = 7;
		for (i=-7;i<=7;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",$signed(A),$signed(B),$signed(mul));					
					 #4;
	end
	
	end
      
endmodule

