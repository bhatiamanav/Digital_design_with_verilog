`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:57:09 09/08/2019
// Design Name:   encoder_83
// Module Name:   /home/susiejojo/Sems/Sem3/VLSID/Assignment2/enc_83_test.v
// Project Name:  Assignment2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder_83
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module enc_83_test;

	// Inputs
	reg [7:0] d;
	reg en;
	// Outputs
	wire y0;
	wire y1;
	wire y2;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	encoder_83 uut (
		.d(d),
		.y0(y0), 
		.y1(y1), 
		.y2(y2),
		.en(en),
		.v(v)
	);
	initial begin	
	d=0;
	en = 0;
	#25
	$display("ENABLE:%b INPUTS: %b%b%b%b%b%b%b%b \t VALID: x \t Y2= x Y1 = x Y0= x",en,d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0]);
	en = 1;
	#25
	$display("ENABLE:%b INPUTS: %b%b%b%b%b%b%b%b \t VALID: %b \t Y2= x Y1 = x Y0= x",en,d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],v);
	d = 8'b00000001;#100;
	d = 8'b0000001x;#100;
	d = 8'b000001xx;#100;
	d = 8'b00001xxx;#100;
	d = 8'b0001xxxx;#100;
	d = 8'b001xxxxx;#100;
	d = 8'b01xxxxxx;#100;
	d = 8'b1xxxxxxx;#100;
	#1200 $finish;

 end
	//d[7]=1'b0;
	// d[6]=1'b0;
	//d[5]=1'b0;
	//d[4]=1'b0;
	//d[3]=1'b0;
	//d[2]=1'b0;
	//d[1]=1'b0;
	//d[0]=1'b0;
	//#2560 $finish;
	//end
	//always #1280 d[7] =~d[7];
    	//always #640 d[6] =~d[6];
	//always #320 d[5] =~d[5];
    	//always #160  d[4] =~d[4];
	//always #80 d[3] =~d[3];
    	//always #40 d[2] =~d[2];
	//always #20 d[1] =~d[1];
    	//always #10  d[0] =~d[0];
    
     always #100
		$display("ENABLE:%b INPUTS: %b%b%b%b%b%b%b%b \t VALID: %b \t Y2= %b Y1 = %b Y0= %b",en,d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],v,y2,y1,y0);
  
endmodule

