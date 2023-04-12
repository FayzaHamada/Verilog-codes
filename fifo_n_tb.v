`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2023 05:24:05 PM
// Design Name: 
// Module Name: fifo_n_tb
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



module fifo_n_tb;

// Inputs

reg Clk;

reg [31:0] dataIn;

reg RD;

reg WR;

reg EN;

reg Rst;

// Outputs

wire [31:0] dataOut;

wire EMPTY;

wire FULL;

// Instantiate the Unit Under Test (UUT)

fifo_n uut (

.Clk(Clk), 

.dataIn(dataIn), 

.RD(RD), 

.WR(WR), 

.dataOut(dataOut), 

.Rst(Rst), 

.EMPTY(EMPTY), 

.FULL(FULL)

);
initial
begin
$monitor("clk is %b , rst is %b , r is %b, w is %b, data_in is %b,data_out is %b , empty %b,full %b",
Clk,Rst,RD,WR,dataIn,dataOut,EMPTY,FULL);

// Initialize Inputs

Clk = 1'b0;

dataIn = 32'h0;

RD = 1'b0;

WR = 1'b0;


Rst = 1'b0;

// Wait 100 ns for global reset to finish

#20;

Rst = 1'b1;
RD=1;
#170;
RD=0;
WR = 1'b1;

dataIn = 32'h1;

#20;

dataIn = 32'h2;

#20;

dataIn = 32'h3;

#20;

dataIn = 32'h4;

#20;

dataIn = 32'h5;

#20;

WR = 1'b0;

RD = 1'b1; 

end 

always #10 Clk = ~Clk; 



endmodule

