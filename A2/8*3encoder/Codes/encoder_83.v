`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:01:58 09/08/2019 
// Design Name: 
// Module Name:    encoder_83 
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
module encoder_83(d,en,y0,y1,y2,v);
input [7:0] d;
input en;
output y0,y1,y2,v;
assign v = en&(y2|d[3]|d[2]|d[1]|d[0]);
assign y2 = en&(d[4]|d[5]|d[6]|d[7]);
assign y1 = en&((~d[5])&(~d[4])&(d[2]| d[3])|d[6]|d[7]);
assign y0 = en&(((~d[6])&(((~d[4])&(~d[2])&d[1])|((~d[4])&d[3])|d[5]))|d[7]);
endmodule
