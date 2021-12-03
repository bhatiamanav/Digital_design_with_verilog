`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:34 09/07/2019 
// Design Name: 
// Module Name:    mux_41 
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
module mux_41(i0,i1,i2,i3,s0,s1,y);
input s0,s1,i0,i1,i2,i3;
output y;
wire mux1,mux2;
mux_21 mux_1(i0,i2,s0,mux1);
mux_21 mux_2(i1,i3,s0,mux2);
mux_21 mux_3(mux1,mux2,s1,y);
endmodule
