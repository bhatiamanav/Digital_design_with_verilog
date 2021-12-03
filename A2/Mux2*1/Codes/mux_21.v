`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:56 09/07/2019 
// Design Name: 
// Module Name:    mux_21 
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
module mux_21(a,b,c,y);
input a,b,c;
output y;
or (y,y1,y2);
and (y1,c1,a);
and (y2,c,b);
not (c1,c);
endmodule
