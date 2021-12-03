`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:08 09/25/2019 
// Design Name: 
// Module Name:    cla_4bit 
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
module cla_4bit(a,b,cin,cout,s);
input [3:0] a,b;
input cin;
output cout;
wire [4:0] carry;
wire [3:0] p,g;    
assign carry[0]=cin;
output [3:0] s;
assign s[0] = a[0] ^ b[0] ^ cin;
assign g[0] = a[0] & b[0];
assign p[0] = a[0] ^ b[0];
assign carry[1] = g[0] | (p[0]&cin);
assign g[1] = a[1] & b[1];
assign p[1] = a[1] ^ b[1];
assign s[1] = a[1] ^ b[1] ^ carry[1];
assign carry[2] = g[1] | (p[1]&g[0]) | (p[1]&p[0]&cin);
assign g[2] = a[2] & b[2];
assign p[2] = a[2] ^ b[2];
assign s[2] = a[2] ^ b[2] ^ carry[2];
assign carry[3] = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&cin);
assign g[3] = a[3] & b[3];
assign p[3] = a[3] ^ b[3];
assign s[3] = a[3] ^ b[3] ^ carry[3];
assign carry[4] = g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&g[0]) | (p[3]&p[2]&p[1]&p[0]&cin);
assign cout = carry[4];
endmodule
