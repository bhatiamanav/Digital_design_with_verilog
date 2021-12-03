`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:36 10/22/2019 
// Design Name: 
// Module Name:    serial_adder 
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
module serial_add(clk,rst,a,b,c_in,S,c_out);
input clk,rst;
input [3:0] a,b;
input c_in;
output reg c_out;
output reg[3:0] S;
reg [3:0] x,y,z;
reg [1:0]temp; //temp stores cout in [1] and current sum in [0]
reg [2:0]i;
wire p;
assign p = x[0]^y[0];
always@(posedge clk or negedge rst)
begin
if(!rst)
begin
x <= a;
y <= b;
temp[1] <= c_in;
i <= 0;
temp[0] <= 0;
z <= 0;
end
else
begin
//full adder
temp[0] <= p^temp[1];
temp[1] <= (x[0]&y[0])|(p&temp[1]);
//shift for next cycle
z[3:0] <= {temp[0],z[3:1]};
x[3:0] <= {x[0],x[3:1]};
y[3:0] <= {y[0],y[3:1]};
i<=i+1;
//return correct output every 5 clock cycles
if(i==4)
begin
c_out<=temp[1];
end
if(i==5)                                                           
begin
S <= z;
end
end
end
endmodule
