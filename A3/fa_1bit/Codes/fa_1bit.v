`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:34 09/25/2019 
// Design Name: 
// Module Name:    fa_1bit 
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
module fa_1bit(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s = a^b^cin;
assign cout = (a&b)|(cin&(a^b));
endmodule
