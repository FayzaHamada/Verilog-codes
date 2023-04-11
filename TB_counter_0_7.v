`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2023 01:58:03 PM
// Design Name: 
// Module Name: TB_MUX
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


module TB_counter_0_7();
wire [2:0]  Q;
reg mode,clk,rst;


counter_0_7  m1(.q(Q),.clk(clk),.rst(rst),.mode(mode));

initial clk=0;
always #5 clk=~clk;

initial
begin
$monitor("clk is %b , rst is %b , mode is %b, Q is %b ",clk,rst,mode,Q);
rst=1;
mode=0;
#3
rst=0;
#7
rst=1;
mode=1;
#75
mode=0;
#85
$finish ;
end
endmodule

