`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:23:02 10/04/2019
// Design Name:   serial4
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment4/serial4_test.v
// Project Name:  Assignment4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial4_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	integer i;
	// Outputs
	wire [7:0] mul;

	// Instantiate the Unit Under Test (UUT)
	serial4 uut (
		.A(A), 
		.B(B), 
		.mul(mul)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0000;
		B = 4'b0000; 
				 for (i=0;i<16;i=i+1) begin
				 B = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);
				
				 #5;
end		
      A = 4'b0001;
	for (i=0;i<16;i=i+1) begin
					 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);					
					 #5;
	end
		A = 4'b0010;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b0011;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1000;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end	
		A = 4'b1001;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end
		A = 4'b1010;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1011;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1100;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1101;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1110;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		A = 4'b1111;
		for (i=0;i<16;i=i+1) begin
				 B = i;
$monitor( "time =%0t \t a=%b b=%b \t output value mul =%b ",$time,A,B,mul);				
				 #5;
end				 
		
	
	
	
	
	
	
	end
	
      
endmodule

