`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:32:01 09/08/2019
// Design Name:   demux_18
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/demux_18_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demux_18
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_18_test;

	// Inputs
	reg d;
	reg a;
	reg b;
	reg c;

	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;

	// Instantiate the Unit Under Test (UUT)
	demux_18 uut (
		.d(d), 
		.a(a), 
		.b(b), 
		.c(c), 
		.y0(y0), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4), 
		.y5(y5), 
		.y6(y6), 
		.y7(y7)
	);

	initial begin
		// Initialize Inputs
        a =1'b0;
        b= 1'b0;
		  c =1'b0;
		  d= 1'b0;
        #160 $finish;
    	end
    
    	always #40 a =~a;
    	always #20 b =~b;
	   always #10 c =~c;
		always #80 d =~d;
    
     initial begin 
		$monitor("SELECT LINES: %b%b%b \t d =%b \t Y7=%b Y6=%b Y5=%b Y4=%b Y3=%b Y2 =%b Y1= %b Y0= %b",a,b,c,d,y7,y6,y5,y4,y3,y2,y1,y0);
	  end 
      
      
endmodule

