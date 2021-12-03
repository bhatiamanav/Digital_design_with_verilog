`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:13:29 09/08/2019
// Design Name:   dec_38
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/dec_38_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec_38
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_38_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg in;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	dec_38 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.in(in), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);
	initial begin
		// Initialize Inputs
        a =1'b0;
        b= 1'b0;
		  c = 1'b0;
		  in = 1'b0;
        #160 $finish;
    	end
    
    	always #40 a =~a;
    	always #20 b =~b;
	   always #10 c =~c;
		always #80 in =~in;
    
     initial begin 
		$monitor("ENABLE: %b \t A2 =%b A1= %b A0 = %b \t Y7=%b Y6=%b Y5=%b Y4=%b Y3=%b Y2 =%b Y1= %b Y0= %b",in,a,b,c,d7,d6,d5,d4,d3,d2,d1,d0);
	  end 
      
endmodule

