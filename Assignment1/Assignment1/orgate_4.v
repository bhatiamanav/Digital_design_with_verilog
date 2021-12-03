`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:39 08/22/2019 
// Design Name: 
// Module Name:    orgate_4 
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
module orgate_4(a,b,c,d,y);
input a,b,c,d;
output y;
assign y = a|b|c|d;
endmodule
