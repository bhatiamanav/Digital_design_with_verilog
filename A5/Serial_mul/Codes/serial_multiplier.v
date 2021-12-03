`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:31 10/20/2019 
// Design Name: 
// Module Name:    serial_multiplier 
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
module serialmul(clk,rst,a,b,P);
input clk,rst;
input [3:0] a,b;
output reg[7:0] P;
reg [3:0] x;
reg [2:0] i;
reg [7:0] z;
wire [3:0] g,c,s;
assign g = ({4{x[0]}}&b)&z[7:4]; //creating the first row of products
assign s = ({4{x[0]}}&b)^z[7:4]; 
//carry look-ahead code
//we need only the carries 
assign c[0] = g[0];
assign c[1] = g[1]|(g[0]&s[1])|(s[1]&s[0]&c[0]);
assign c[2] = g[2]|(s[2]&g[1])|(s[2]&s[1]&g[0])|(s[2]&s[1]&s[0]&c[0]);
assign c[3] = g[3]|(s[3]&g[2])|(s[3]&s[2]&g[1])|(s[3]&s[2]&s[1]&g[0])|(s[3]&s[2]&s[1]&s[0]&c[0]);
always@(posedge clk or negedge rst)
begin
if(!rst)
begin
x <= a;
i <= 0;
z <= 0;
end
else
begin
//give correct output every 5 clock cycles
if(i==4)                                                           
begin
P <= z[7:0];
end
//shifting for the next stage of addition
z[7:0] <= {c[3],s[3]^c[2],s[2]^c[1],s[1]^c[0],s[0],z[3:1]};
//shifting for the next multiplier
x[3:0] <= {x[0],x[3:1]};
i <= i+1;
end
end
endmodule
