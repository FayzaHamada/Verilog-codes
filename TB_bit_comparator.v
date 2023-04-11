`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 09:44:28 AM
// Design Name: 
// Module Name: TB_bit_comparator
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


module TB_bit_comparator;
//Inputs
 reg A,B;
 wire L, E ,G;

//Outputs

bit_comparator test_unit(
            A,B, 
            L,E,G              
           
     );
    initial begin
    A=0;B=0;
    #10
    A=1;
    #10
    B=1;
    #10
    A=0;
    #10
    $finish;
    end
endmodule