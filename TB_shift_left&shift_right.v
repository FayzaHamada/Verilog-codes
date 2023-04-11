`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 10:33:46 AM
// Design Name: 
// Module Name: TB_sl_sr
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


module TB_sl_sr;
reg clk, reset, din, sl, sr;
wire [7:0] q;
sl_sr slsr1(sl, sr, din, clk, reset, q);

initial begin
forever begin
clk <= 0;
#5
clk <= 1;
#5
clk <= 0;
end
end

initial begin
reset = 1;
#12
reset = 0;
#90
reset = 1;
#12
reset = 0;
end

initial begin
sl = 1;
sr = 0;
#50
sl = 0;
#12
sr = 1;
end

initial begin
forever begin
din = 0;
#7
din = 1;
#8
din = 0;
end
end

endmodule
