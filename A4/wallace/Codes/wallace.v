`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:32:42 10/07/2019 
// Design Name: 
// Module Name:    wallace 
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
module wallace(A,B,prod);
input [3:0] A,B;
output [7:0] prod;
wire s1,s2,S3,S4,S5,S6,S7; 
wire c1,r2,c2,c3,c4,c5,r3,r4,r5,C3,C4,C5,C6;
assign prod[0] = A[0]&B[0];
ha ha1(A[1]&B[0],A[0]&B[1],s1,c1);
assign prod[1] = s1;
//stage 1
fa fa1(A[2]&B[0],A[1]&B[1],A[0]&B[2],r2,c2);
fa fa2(A[3]&B[0],A[2]&B[1],A[1]&B[2],r3,c3);
fa fa3(A[3]&B[1],A[2]&B[2],A[1]&B[3],r4,c4);
ha ha2(A[3]&B[2],A[2]&B[3],r5,c5);
//stage 2
ha ha7(c1,r2,s2,c_2);
fa fa5(r3,c2,A[0]&B[3],p3,c_3);
fa fa6(c3,C3,r4,p4,c_4);
fa fa7(c4,r5,c_4,p5,c_5);
fa fa8(c5,c_5,A[3]&B[3],p6,c_6);
//stage 3
assign prod[2]=s2;
ha ha3(p3,c_2,S3,C3);
assign prod[3] = S3;
ha ha4(p4,c_3,S4,C4);
assign prod[4] = S4;
ha ha5(p5,C4,S5,C5);
assign prod[5] = S5;
ha ha6(p6,C5,S6,C6);
assign prod[6] = S6;
ha ha8(C6,c_6,S7,C7);
assign prod[7] = S7;
endmodule
