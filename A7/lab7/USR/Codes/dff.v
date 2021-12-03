module dff(q,d,clk,reset);
input d,clk,reset;
output reg q;
always @(negedge clk)
if(!reset)
q<=d;
else
q<=1'b0;
endmodule

