`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:34 10/04/2019 
// Design Name: 
// Module Name:    shiftadd 
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
module shiftadd(start,clk,a,b,flag,mul);
input start,clk;
input [3:0] a,b;
output flag;
output [7:0] mul;
wire m1,m2,m3,m4;																																																																																																																																																																																																																																																																																																					
reg [3:0] State;
reg c;
reg [3:0] Acc;
reg [3:0] Q;
initial begin
State = 0;
c=0;
Acc =4'b0000 ;
Q=4'b0000;
end
always @(posedge clk)
begin
	case (State)
	0:
		begin
			if (start == 1)
				begin
				c <=0;
				Acc <=0;
				Q <= a;
				State <= 1;
			end
		end
	1,3,5,7: //for add when the last bit is 0
		begin
			if(Q[0] == 1)
				begin
					{c,Acc} <= (Acc + b);
					State <= State + 1;
				end
			else //for shift
				begin
					Q <= {Acc[0], Q[3:1]};
					Acc <= {c, Acc[3:1]};
					c <=0;
					State <= State +2;
				end
			end
	2,4,6,8: //for shift
		begin
			Q <= {Acc[0], Q[3:1]};
			Acc <= {c, Acc[3:1]};
			c <=0;
			State <= State +1;
		end
	9:
		begin
			State <= 0;
		end						
	endcase
end
assign flag = (State == 9) ? 1'b1 : 1'b0 ;
assign mul = (State == 9) ? {c,Acc,Q}:0;
endmodule
