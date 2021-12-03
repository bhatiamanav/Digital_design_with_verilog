`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:58:47 09/08/2019 
// Design Name: 
// Module Name:    demux_12 
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
module demux_12(s,d,y0,y1);
input s,d;
output y0,y1;
assign y0=(~s)&d;
assign y1=s&d;
endmodule
