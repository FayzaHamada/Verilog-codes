`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2023 11:39:57 AM
// Design Name: 
// Module Name: TB_clk_div
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


module TB_clk_div;
 // Inputs
 reg clock_in;
 // Outputs
 wire clock_out;
 // Instantiate the Unit Under Test (UUT)
 // Test the clock divider in Verilog
 clk_div uut (.clock_in(clock_in),.clock_out(clock_out)
 );
 initial begin
  // Initialize Inputs
  clock_in = 0;
  // create input clock 50MHz
        forever #10 clock_in = ~clock_in;
 end
      
endmodule
