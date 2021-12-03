`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:53 08/20/2019 
// Design Name: 
// Module Name:    comb_cktb 
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
module comb_cktb(a,b,c,d,e,f,y);
input a,b,c,d,e,f;
output y;
and(y,f,y1);
or(y1,y2,y3);
and(y2,a,b,c);
and(y3,d,e);
endmodule
