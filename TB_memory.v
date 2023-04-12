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


module TB_memory();
reg clk,r,w,rst;
reg [15:0] data_in;
wire [15:0] data_out; 
wire empty,full;  
memory  DUT (.clk(clk),.w(w),.rst(rst),.r(r),.data_in(data_in),.data_out(data_out),.empty(empty),.full(full));

initial clk=0;
always #5 clk=~clk;

initial
begin
$monitor("clk is %b , rst is %b , r is %b, w is %b, data_in is %b,data_out is %b , empty %b,full %b",
clk,rst,r,w,data_in,data_out,empty,full);

rst=0;
data_in =16'b0;
r=0;
w=0;
#10
rst=1;
r=1;
#170
r=0;
w=1;
data_in=16'b0000000001111111;
#10
data_in=16'b0000000001111100;
#10
data_in=16'b0000000001111000;
#10
data_in=16'b0000000001110000;
#10
data_in=16'b0000000001100000;
#10
data_in=16'b0000000001000000;
#10
data_in=16'b0000000001111000;
#10
data_in=16'b0000000001110000;
#10
data_in=16'b0000000001111111;
#10
data_in=16'b0000000001111100;
#10
data_in=16'b0000000001111000;
#10
data_in=16'b0000000001110000;
#10
data_in=16'b0000000001100000;
#10
data_in=16'b0000000001000000;
#10
data_in=16'b0000000001111000;
#10
data_in=16'b0000000001110000;
#10
data_in=16'b1000000000000000;

#10
r=1;
w=0;
#10
$finish ;
end

endmodule

