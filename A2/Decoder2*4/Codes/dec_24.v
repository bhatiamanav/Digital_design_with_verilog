`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:57 09/08/2019 
// Design Name: 
// Module Name:    dec_24 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dec_24(a0,a1,in,d0,d1,d2,d3);
input a0,a1,in;
output d0,d1,d2,d3;
wire y0,y1;
dec_12 dec_1(a1,in,y0,y1);
dec_12 dec_2(a0,y0,d0,d1);
dec_12 dec_3(a0,y1,d2,d3);
endmodule
