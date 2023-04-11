`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2023 01:46:37 PM
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter();
wire [3:0]  Q;
reg clk,rst;


ring_counter  C1 (.Q(Q),.clock(clk),.rst(rst));

initial clk=0;
always #5 clk=~clk;

initial
begin
$monitor("clk is %b , rst is %b ,  Q is %b ",clk,rst,Q);
rst=0;
#10
rst=1;
#300
$finish ;
end
endmodule
