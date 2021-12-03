`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:37 10/04/2019 
// Design Name: 
// Module Name:    serial4 
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
module serial4(input [3:0] A,input [3:0] B,output [7:0] mul);
assign mul[0] = A[0]&B[0];
ha h1(A[1]&B[0],A[0]&B[1],mul[1],c10);
fa f1(A[2]&B[0],A[1]&B[1],c10,s11,c11);
ha h2(s11,A[0]&B[2],s20,c20);
assign mul[2]=s20;
fa f2(A[3]&B[0],A[2]&B[1],c11,s12,c12);
fa f3(s12,A[1]&B[2],c20,s21,c21);
ha h3(s21,A[0]&B[3],s30,c30);
assign mul[3]=s30;
ha h4(A[3]&B[1],c12,s13,c13);
fa f4(s13,A[2]&B[2],c21,s22,c22);
fa f5(s22,A[1]&B[3],c30,s31,c31);
assign mul[4]=s31;
fa f6(c13,A[3]&B[2],c22,s23,c23);
fa f7(s23,A[2]&B[3],c31,s32,c32);
assign mul[5]= s32;
fa f8(c23,A[3]&B[3],c32,s33,c33);
assign mul[6]=s33;
assign mul[7]=c33;
endmodule
