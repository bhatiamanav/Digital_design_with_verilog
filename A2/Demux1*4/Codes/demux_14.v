`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:09:02 09/08/2019 
// Design Name: 
// Module Name:    demux_14 
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
module demux_14(d,s0,s1,y0,y1,y2,y3);
input s0,s1,d;
output y0,y1,y2,y3;
wire z0,z1;
demux_12 demux1(s1,d,z0,z1);
demux_12 demux2(s0,z0,y0,y1);
demux_12 demux3(s0,z1,y2,y3);
endmodule
