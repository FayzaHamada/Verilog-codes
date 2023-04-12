`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2023 05:19:48 PM
// Design Name: 
// Module Name: fifo_n
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


module fifo_n( Clk, 

dataIn, 

RD, 

WR,

dataOut, 

Rst,

EMPTY, 

FULL 

); 

input Clk, 

RD, 

WR, 

Rst;

output EMPTY, 

FULL;

input [31:0] dataIn;

output reg [31:0] dataOut; // internal registers 

reg [2:0] Count = 0; 

reg [31:0] FIFO [0:7]; 

reg [2:0] readCounter = 0, 

writeCounter = 0; 

initial begin
 $readmemb("data.mem",FIFO);
 end

assign EMPTY = (Count==0)? 1'b1:1'b0; 

assign FULL = (Count==8)? 1'b1:1'b0; 

always @ (posedge Clk) 

begin 

if (!Rst) begin 

readCounter = 0; 

writeCounter = 0; 

end 

else if (RD ==1'b1 && Count!=0) begin 

dataOut = FIFO[readCounter]; 

readCounter = readCounter+1; 

end 

else if (WR==1'b1 && Count<8) begin

FIFO[writeCounter] = dataIn; 

writeCounter = writeCounter+1; 

end 

else; 



if (writeCounter==8) 

writeCounter=0; 

else if (readCounter==8) 

readCounter=0; 



else if (readCounter > writeCounter) begin 

Count=readCounter-writeCounter; 

end 

else if (writeCounter > readCounter) 

Count=writeCounter-readCounter; 

else;

end 

endmodule
