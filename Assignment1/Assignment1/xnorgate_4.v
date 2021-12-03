`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:36 08/23/2019 
// Design Name: 
// Module Name:    xnorgate_4 
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
module xnorgate_4(a,b,c,d,y);
input a,b,c,d;
output y;
assign y = ~(a^b^c^d);
endmodule
