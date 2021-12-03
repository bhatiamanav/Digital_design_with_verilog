`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:26:17 09/08/2019 
// Design Name: 
// Module Name:    dec_12 
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
module dec_12(a,in,y0,y1);
input a,in;
output y0,y1;
assign y0 = (~a) & in;
assign y1 = a & in;
endmodule
