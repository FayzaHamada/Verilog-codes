`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2023 03:50:03 PM
// Design Name: 
// Module Name: memory
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


module memory(input clk,rst,w,r,
input  [15:0] data_in,
output reg [15:0] data_out,
output reg empty,full);
reg  [3:0]readPointer,writePointer;
 
 reg [15:0] memory [0:15];
 integer i;
 
 initial begin
 $readmemb("data.mem",memory);
 end

always@(posedge clk,posedge rst)
begin
if(!rst)
begin
full=0;
empty=0;
readPointer=0;
writePointer=0;
end

else if (r==1'b1)
begin
if (readPointer>15)
begin
readPointer=0;
//data_out= memory[readPointer];
//readPointer= readPointer+1;
end
else
begin
data_out= memory[readPointer];
readPointer= readPointer+1;
end
end

else if (w==1'b1)
begin
if (writePointer>15)
begin
writePointer=0;
//memory[writePointer]=data_in;
//writePointer= writePointer+1;
end
else
begin
memory[writePointer]=data_in;
writePointer= writePointer+1;
end
end
if (writePointer==15)
begin
empty=1;
end
else if (writePointer==15)
full=1;


end 


endmodule
