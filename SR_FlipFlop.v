`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2023 01:32:56 PM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(S,R,CLK,Q,Q_BAR);
input S,R,CLK;
output reg Q;
output wire Q_BAR;

assign Q_BAR=~Q;

always@(posedge CLK)
begin
if((!S&&R))
Q=0;
else if ((S&&!R))
Q=1;

else if ((S&&R))
Q=0;
end

endmodule
