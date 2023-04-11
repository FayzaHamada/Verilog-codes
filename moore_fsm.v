`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2023 02:35:45 PM
// Design Name: 
// Module Name: moore_fsm
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


module moore_fsm(taken,reset,clk,predict );
input reset ,taken,clk;
output reg predict;
parameter [1:0] idle = 2'b00,
               first =2'b01,
               second=2'b10,
               final=2'b11;
               
               
reg [1:0] state, next;

always@(posedge  clk , posedge reset)
begin
if (reset==0)
begin
state<=idle;
next<=idle;
end
else 
state <=next;
end 

always@(state or taken )
begin
case(state)
idle:begin predict=1;
if(taken) 
next<=idle;
else next<=first;
end
      
first:begin 
predict=1;
if(taken) next<=idle;
      else next<=second; 
      end
 
second:begin 
predict=0;
if(taken) next<=final;
      else next<=second; 
      end     
final:begin 
predict=0;
if(taken) next<=idle;
      else next<=second; 
      end
      
 endcase

end            
endmodule
