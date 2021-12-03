`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:22:50 09/08/2019 
// Design Name: 
// Module Name:    demux_18 
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
module demux_18(d,a,b,c,y0,y1,y2,y3,y4,y5,y6,y7);
input d,a,b,c;
output y0,y1,y2,y3,y4,y5,y6,y7;
wire z0,z1;
demux_12 demux1(a,d,z0,z1);
demux_14 demux2(z0,c,b,y0,y1,y2,y3);
demux_14 demux3(z1,c,b,y4,y5,y6,y7);
endmodule
