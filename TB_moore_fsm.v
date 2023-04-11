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


module TB_moore_fsm();
wire predict;
reg taken,clk,rst;


moore_fsm  DUT (.taken(taken),.reset(rst),.clk(clk),.predict(predict));

initial clk=0;
always #5 clk=~clk;

initial
begin
$monitor("clk is %b , rst is %b , taken is %b, predict is %b ",clk,rst,taken,predict);
rst=0;
taken=1;
#20
rst=1;
taken=0;
#15
taken=1;
#5
taken=0;
#10
taken=1;
#15
taken=0;
#10
taken=1;
#10
taken=0;
#10
taken=1;
#10
$finish ;
end
endmodule

