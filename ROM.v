`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2022 03:50:36 PM
// Design Name: 
// Module Name: ROM
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


module ROM(addr,clk,out);
input clk;
input [15:0] addr ;
output reg [3:0]out;
reg [3:0] ROM_xx [15:0];
initial 
begin 
$readmemb("data.mem",ROM_xx);
end

always@(posedge clk)
begin 
out <=ROM_xx[addr];
end

endmodule
