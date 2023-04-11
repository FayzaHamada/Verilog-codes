`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 08:19:14 PM
// Design Name: 
// Module Name: Dmux_4x1
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


module Dmux_4x1(input data_in,destributer,enable,output [3:0]y

    );
 mux_1x2 m1(data_in,destributer,!enable,y[0],y[1]);  
 
 mux_1x2 m2(data_in,destributer,enable,y[2],y[3]); 
 
endmodule
