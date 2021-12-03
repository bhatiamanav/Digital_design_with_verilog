`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:15:55 09/25/2019 
// Design Name: 
// Module Name:    rcarry_4bit 
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
module rcarry_4bit(a,b,cin,s,cout);
input   [3:0] a,b;
input   cin;
output [3:0] s;
output cout;
wire [4:0] carry;    
assign carry[0]=cin;
fa_1bit FA1 (a[0],b[0],carry[0],s[0],carry[1]);
fa_1bit FA2 (a[1],b[1],carry[1],s[1],carry[2]);
fa_1bit FA3 (a[2],b[2],carry[2],s[2],carry[3]);
fa_1bit FA4 (a[3],b[3],carry[3],s[3],carry[4]);
assign cout = carry[4];    
endmodule
