`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:10:06 09/08/2019 
// Design Name: 
// Module Name:    dec_38 
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
module dec_38(a,b,c,in,d0,d1,d2,d3,d4,d5,d6,d7);
input in,a,b,c;
output d0,d1,d2,d3,d4,d5,d6,d7;
wire y0,y1;
dec_12 dec1(a,in,y0,y1);
dec_24 dec2(c,b,y0,d0,d1,d2,d3);
dec_24 dec3(c,b,y1,d4,d5,d6,d7);
endmodule
