`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 09:22:10 PM
// Design Name: 
// Module Name: meally_FSM
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


module meally_FSM(input data,clk,output reg out);
parameter  S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
reg [1:0]state;
always@(posedge clk)
begin
if(state==S0 && data==0)   ///i do it using if else if but the common method is case(state)
begin
state=S0;
out=0;
end
else if(state==S0 && data==1)  
begin
state=S1;
out=0;
end

else if(state==S1 && data==0)
begin
state=S0;
out=0;
end

else if(state==S1 && data==1)
begin
state=S2;
out=0;
end

else if(state==S2 && data==0)
begin
state=S0;
out=0;
end

else if(state==S2 && data==1)
begin
state=S3;
out=1;
end

else if(state==S3 && data==0)
begin
state=S0;
out=0;
end

else if(state==S3 && data==1)
begin
state=S3;
out=1;
end

else 
begin
state=S0;
out=0;
end

end

endmodule
