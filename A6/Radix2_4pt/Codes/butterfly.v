`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:27 11/01/2019 
// Design Name: 
// Module Name:    butterfly 
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

module butterfly2(a,b,c,d);
input signed [1:0]a;
input signed [1:0]b;
output signed [3:0]c;
output signed [3:0]d;

assign c=a+b;
assign d=a-b;

endmodule

