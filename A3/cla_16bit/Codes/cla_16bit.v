`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:00:35 09/26/2019 
// Design Name: 
// Module Name:    cla_16bit 
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
module cla_16bit(a,b,cin,s,cout);
input [15:0] a,b;
input cin;
output [15:0] s;
output cout;
wire c1,c2,c3;
cla_4bit rc_1(a[3:0],b[3:0],cin,s[3:0],c1);
cla_4bit rc_2(a[7:4],b[7:4],c1,s[7:4],c2);
cla_4bit rc_3(a[11:8],b[11:8],c2,s[11:8],c3);
cla_4bit rc_4(a[15:12],b[15:12],c3,s[15:12],c4);
assign cout = c4;
endmodule