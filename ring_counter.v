`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2023 10:12:52 AM
// Design Name: 
// Module Name: ring_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module D_FF(D,reset,set,clk,q);
input D,clk,reset,set;
output reg q;
always@(posedge clk)
if (reset)
q=1'b0;
else if (set)
q=1'b1;
else
begin 
q<=D;
end
endmodule


module ring_counter#(parameter N=4) (input clock,rst ,output [N-1:0] Q);

genvar i;
generate
for(i=0;i<N;i=i+1)
begin
if(i==0)
D_FF D1(Q[N-1],1'b0,!rst,clock,Q[0]);
else

D_FF Di(Q[i-1],!rst,1'b0,clock,Q[i]);

end
endgenerate
endmodule








