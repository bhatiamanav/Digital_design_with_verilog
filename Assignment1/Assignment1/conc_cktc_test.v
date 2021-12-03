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

module comb_cktc_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	// Outputs
	wire y;
	// Instantiate the Unit Under Test (UUT)
	comb_cktc uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d),
		.e(e), 
		.y(y)
	);
	initial begin
        a =1'b0;
        b= 1'b0;
	c = 1'b0;
	d = 1'b0;
	e = 1'b0;
        #320 $finish;
    	end
    	always #80 a =~a;
    	always #40 b =~b;
    	always #20 c =~c;
	always #10 d =~d;
    	always #5  e =~e;
    
    always @(y)
    $display( "time =%0t \t a=%b b=%b c=%b d=%b e=%b \t output value y  =%b",$time,a,b,c,d,e,y);
      
	
      
endmodule


