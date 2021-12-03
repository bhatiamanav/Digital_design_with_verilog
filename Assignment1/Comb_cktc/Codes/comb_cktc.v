`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:07 08/20/2019 
// Design Name: 
// Module Name:    comb_cktc 
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
module comb_cktc(a,b,c,d,e,y);
input a,b,c,d,e;
output y;
not (y,y1);
and (y1,y2,y3);
or (y2,a,b1);
not (b1,b);
or (y3,y4,e);
and (y4,c,d);


endmodule
