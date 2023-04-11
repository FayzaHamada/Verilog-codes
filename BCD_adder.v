`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 01:40:45 PM
// Design Name: 
// Module Name: BCD_adder
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


module BCD_adder(input [3:0] in1,in2,input carry_in,
 output wire carry_out,output [3:0] sum);         ///binary+6=bcd so if you want a bcd out you need to add 6 to your binary adder
                                                  /// 6=0110 so 0,0 hard coded to 0 
                                                  ///but i need specific out to determine if i need to add 6 or not\
                                                  ///becouse if my out is equal or less than 9 then no need for add any thing
                                                  ///so this special cases that will have one only when the out greater than 9 and cover all cases from 10 to 19 is
                                                  ///c=carry_out+sum[3].sum[2]+sum[3].sum[1]
                                                  //so connect them to 11 in 0110 
                                                  ///that's all
 wire [2:0]carry;
 wire [3:0] z;
 wire k1,k2,k3,k;
 
 adder_4bit f1(in1,in2,carry_in, k1,z);
 
 and g1(k2,z[3],z[2]);
 
 and g2(k3,z[3],z[1]);
 
 or g3(carry_out,k1,k2,k3);
 
 adder_4bit f2(z,{1'b0,carry_out,carry_out,1'b0},0, k,sum);
 

endmodule
