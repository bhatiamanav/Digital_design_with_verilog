`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:43:07 11/01/2019 
// Design Name: 
// Module Name:    radix2fft 
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
`timescale 1ns / 1ps

module radix2fft(i0,i1,i2,i3,e,ei,f,fi,g,gi,h,hi);
input signed [1:0]i0;
input signed [1:0]i1;
input signed [1:0]i2;
input signed [1:0]i3;
output signed [3:0]e;
output signed [3:0]ei;
output signed [3:0]f;
output signed [3:0]fi;
output signed [3:0]g;
output signed [3:0]gi;
output signed [3:0]h;
output signed [3:0]hi;

wire [3:0] A,B,C,D;

butterfly2 f1(i0,i2,A,B);
butterfly2 f2(i1,i3,C,D);

assign e=(A+C);
assign ei=4'b0;
assign f=B;
assign fi=-D;
assign g=(A-C);
assign gi=4'b0;
assign h=B;
assign hi=D;

endmodule

