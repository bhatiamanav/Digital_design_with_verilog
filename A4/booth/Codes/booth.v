`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:09 10/05/2019 
// Design Name: 
// Module Name:    booth 
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
module booth (A,B,mul);
input signed [3:0] A,B;
output signed [7:0] mul;
reg signed [7:0] mul;
reg [1:0] checker;
reg signed [3:0] acc;
reg signed [3:0] q;
reg q0;
integer i;
reg [3:0] b_neg;
always @ (A,B) 
begin
//	acc = 4'd0;
//	q = 4'd0;
	mul = 8'd0;
	q0 = 1'b0;
	for (i=0;i<=3;i=i+1)
		begin
		checker = {A[i],q0};
		b_neg = -B;
			if (checker == 2'b00 || checker == 2'b11)
				begin end
			else if (checker == 2'b10) begin 
				mul[7:4] = mul[7:4] + b_neg; end
			else if (checker == 2'b01) begin
				mul[7:4] = mul[7:4] + B; end
		q0 = A[i];
		mul = mul >> 1;
		mul[7] = mul[6];
	end
	if (B == 4'b1000)
		begin
			mul = -mul;
		end
	end
endmodule
