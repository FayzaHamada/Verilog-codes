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


module TB_SR_FF();
wire  Q,Q_BAR;
reg S,CLK,R;


SR_FF  DUT (.S(S),.R(R),.CLK(CLK),.Q(Q),.Q_BAR(Q_BAR));

initial CLK=0;
always #5 CLK=~CLK;

initial
begin
$monitor("clk is %b , rst is %b , set is %b, Q is %b, Q_BAR is %b ",CLK,R,S,Q,Q_BAR);
R=0;
S=1;
#10
R=1;
#10
S=0;
#10
R=0;
#10
$finish ;
end
endmodule

