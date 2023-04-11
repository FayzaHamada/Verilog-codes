`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2023 01:24:32 PM
// Design Name: 
// Module Name: TB_halfadder
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


module TB_BCD_adder();

reg [3:0] in1,in2;
reg carry_in;
wire carry_out;
wire [3:0] sum ;


BCD_adder f1(.in1(in1),.in2(in2),.carry_in(carry_in),.sum(sum),.carry_out(carry_out));

initial begin 
$monitor("in1 is %b , in2 is %b ,carry_in is %b, Sum is %b,carry_out is %b",in1,in2,carry_in,sum,carry_out);

in1=0000;
in2=0000;
carry_in=0;

#10
in1=1011;
in2=0011;


#20
in1=1001;
in2=1001;


#10
in1=0101;
in2=1101;
#20 
$finish ;
end
endmodule
