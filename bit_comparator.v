`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 09:42:35 AM
// Design Name: 
// Module Name: bit_comparator
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



module bit_comparator (a, b, L, E,G);
input a, b; output L, E, G;
wire s1, s2;
not X1(s1, a);
not X2 (s2, b);
and X3 (L,s1, b);
and X4 (G,s2, a);
xnor X5 (E, a, b);
endmodule