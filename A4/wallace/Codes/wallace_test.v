`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:06:36 10/015/2019
// Design Name:   wallace
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment4/wallace_test.v
// Project Name:  Assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wallace
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wallace_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	integer i;
	// Outputs
	wire [7:0] prod;

	// Instantiate the Unit Under Test (UUT)
	wallace uut (
		.A(A), 
		.B(B), 
		.prod(prod)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		i=0;

		// Wait 100 ns for global reset to finish
//		#3;
//		A = 0;
//		B = 0;
//		$monitor("a=%d b=%d \t output value mul =%d",A,B,prod);
//     
		#3
		A = 0;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end

		#3
		A = 1;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 2;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor("a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 3;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end	
	#3
		A = 4;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 5;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 6;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 7;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 8;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 9;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 10;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 11;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 12;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 13;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 14;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	#3
		A = 15;
		for (i=0;i<=15;i=i+1) begin
					 B = i;
					 
		$monitor( "a=%d b=%d \t output value mul =%d ",A,B,prod);					
					 #3;
	end
	
	end
      
endmodule

