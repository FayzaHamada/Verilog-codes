`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 08:01:43 PM
// Design Name: 
// Module Name: adder_4bit
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


 module adder_4bit(input [3:0] in1,in2,input carry_in,
 output wire carry_out,output [3:0] sum);
 wire [2:0]carry;
 full_adder f1(in1[0],in2[0],carry_in,sum[0],carry[0]);
 full_adder f2(in1[1],in2[1],carry[0],sum[1],carry[1]);
 full_adder f3(in1[2],in2[2],carry[1],sum[2],carry[2]);
 full_adder f4(in1[3],in2[3],carry[2],sum[3],carry_out);
 
endmodule
