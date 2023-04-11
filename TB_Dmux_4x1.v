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


module TB_Dmux_1x4();
reg a,b,en;
wire [3:0]y;


Dmux_4x1  m2(.data_in(a),.destributer(b),.enable(en),.y(y));

initial begin 
$monitor("data_in is %b , destributer is %b , enable is %b, y is %b",a,b,en,y);
a=1;
b=0;
en=0;
#10
b=1;
#10
en=1;
b=0;
#10
b=1;
#10
a=1;
b=0;
#10
a=0;
b=0;
#20 
$finish ;
end
endmodule

