`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 10:30:57 AM
// Design Name: 
// Module Name: sl_sr
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


module sl_sr(sl, sr, din, clk, reset,Q);
input sl, sr, din, clk, reset;
output [7:0] Q;
reg [7:0] Q;
always @ (posedge clk) begin
if (~reset) begin
if (sl) begin
Q <= #2 {Q[6:0],din}; ///shift left so we delete Q[7] and add din in Q[0]
end
else if (sr) begin
Q <= #2 {din, Q[7:1]};          ///shift right so we delete Q[0] and add din in Q[7]
end
end
end
always @ (posedge reset) begin
Q<= 8'b00000000;
end
endmodule
