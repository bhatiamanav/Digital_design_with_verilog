`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:42 08/20/2019 
// Design Name: 
// Module Name:    comb_ckta 
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
module comb_ckta(a,b,c,d,y);
input a,b,c,d;
output y;
or(y,s1,s2);
and(s1,a,b);
and(s2,c,d);
endmodule
