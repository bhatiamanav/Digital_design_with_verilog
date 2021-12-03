`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:27 09/07/2019 
// Design Name: 
// Module Name:    mux_81 
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
module mux_81(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output y;
wire mux1,mux2;
mux_41 mux_1(i0,i2,i4,i6,s0,s1,mux1);
mux_41 mux_2(i1,i3,i5,i7,s0,s1,mux2);
mux_21 mux_3(mux1,mux2,s2,y);
endmodule
