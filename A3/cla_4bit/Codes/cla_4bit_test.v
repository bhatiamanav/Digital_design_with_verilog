`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:12 09/25/2019
// Design Name:   cla_4bit
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/verilog/Assignment3/cla_4bit_test.v
// Project Name:  Assignment3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla_4bit_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;
	integer i;

	// Outputs
	wire cout;
	wire [3:0] s;

	// Instantiate the Unit Under Test (UUT)
	cla_4bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.cout(cout), 
		.s(s)
	);

	
	initial begin
		// Initialize Inputs
		a = 4'b0000;
		b = 4'b0000;
		cin = 0; 
				 for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end		
      a = 4'b0001;
	for (i=0;i<16;i=i+1) begin
					 b = i;
					 $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
					
					 #5;
	end
		a = 4'b0010;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b0011;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1000;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end	
		a = 4'b1001;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end
		a = 4'b1010;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1011;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1100;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1101;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1110;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		a = 4'b1111;
		for (i=0;i<16;i=i+1) begin
				 b = i;
	          $monitor( "time =%0t \t a=%b b=%b \t output value s =%b cout =%b",$time,a,b,s,cout);
				
				 #5;
end				 
		
	
	
	
	
	
	
	end
	
      
endmodule

