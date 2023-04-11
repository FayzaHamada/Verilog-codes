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


module TB_meally_FSM();
wire out;
reg data,clk;


meally_FSM  DUT (.data(data),.clk(clk),.out(out));

initial clk=0;
always #5 clk=~clk;

initial
begin
$monitor("clk is %b , data is %b , out is %b, state is %b ",clk,data,out,meally_FSM.state);

data=1;
#20
data=0;
#5
data=1;
#30
data=0;

#10
data=1;
#10
data=0;
#10
$finish ;
end
endmodule

