module FSM(I,O,clk,rst,valid);
	input I,clk,rst;
	output reg O,valid;
	reg [3:0] state;

 	always@(posedge clk or posedge rst)
	begin
		if(rst) begin
			state = 4'b0000;O = 0;
			assign valid = 0;
		end
		else begin
			assign valid = 1;
			if(state == 4'b0000)	begin
				if(I == 0) begin
					state = 4'b0001;O = 0;
				end	
				else begin
					state = 4'b0100;O = 0;
				end
			end
			else if(state == 4'b0001)	begin
				if(I == 0) begin
					state = 4'b0010;O = 0;
				end
				else begin
					state = 4'b0101;O = 0;
				end
			end
			else if(state == 4'b0100) begin
				if(I == 0) begin
					state = 4'b0101;O = 0;
				end
				else begin
					state = 4'b1000;O = 0;
				end
			end
			else if(state == 4'b0101) begin
				if(I == 0) begin
					state = 4'b0110;O = 0;
				end
				else begin
					state = 4'b1001;O = 0;
				end
			end
			else if(state == 4'b0110) begin
				if(I == 0) begin
					state = 4'b0110;O = 0;
				end
				else begin
					state = 4'b1010;O = 1;
				end
			end
			else if(state == 4'b1001) begin
				if(I == 0) begin
					state = 4'b1010;O = 1;
				end
				else begin
					state = 4'b1001;O = 0;
				end
			end
			else if(state == 4'b1000) begin
				if(I == 0) begin
					state = 4'b1001;O = 0;
				end
				else begin
					state = 4'b1000;O = 0;
				end
			end
			else if(state == 4'b0010) begin
				if(I == 0) begin
					state = 4'b0010;O = 0;
				end
				else begin
					state = 4'b0110;O = 0;
				end
			end
			else if(state == 4'b1010) begin
				if(I == 0) begin
					state = 4'b1010;O = 1;
				end
				else begin
					state = 4'b1010;O = 1;
				end
			end
		end
	end
endmodule


