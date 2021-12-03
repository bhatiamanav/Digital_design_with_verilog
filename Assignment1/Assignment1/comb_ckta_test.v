`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:18 08/20/2019
// Design Name:   comb_ckta
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment1/Assignment1/comb_ckta_test.v
// Project Name:  Assignment1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comb_ckta
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comb_ckta_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire y;
	// Instantiate the Unit Under Test (UUT)
	comb_ckta uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);
	initial begin
        a =1'b0;
        b= 1'b0;
	c = 1'b0;
	d = 1'b0;
        #100 $finish;
    	end
    
    	always #40 a =~a;
    	always #20 b =~b;
	always #10 c =~c;
    	always #5  d =~d;
    
    always @(y)
    $display( "time =%0t \t a=%b b=%b c=%b d=%b \t output value y  =%b",$time,a,b,c,d,y);
      
	
      
endmodule


