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


module TB_decoder_3x8();
reg [2:0]  s;
reg enable;
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder_3x8  DUT (.s(s),.enable(enable),.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6)
,.d7(d7) );

initial
begin
$monitor("enable is %b , s is %b ,d0 is %b,d1 is %b,d2 is %b, d3 is %b,d4 is %b,d5 is %b,d6 is%b ,d7 is %b",
 enable,s,d0,d1,d2,d3,d4,d5,d6,d7);
 
 
enable=1'b0;
#10
enable=1'b1;
s=3'b000;
#20
s=3'b100;
#10
s=3'b101;
#10
s=3'b111;
#10
s=3'bxxx;
#20
$finish ;
end
endmodule

