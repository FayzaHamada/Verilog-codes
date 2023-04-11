`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2022 04:12:49 PM
// Design Name: 
// Module Name: ROM_TB
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


module ROM_TB();
reg clk=0;
reg [15:0]addr;
wire [3:0]out;
integer i;

ROM dut (addr,clk,out);
always #0.5 clk=~clk;
initial begin 
#1
$display($time, "ROM content: ");
for (i=0;i<16;i=i+1)
begin
read_data(i);
end
#40 $stop ;
end

task read_data (input[15:0]address_in);
begin
@(posedge clk);
addr=address_in;
@(posedge clk);
#0.1
$display($time , "adress = %b, data_rd = %b " , addr, out);
end
endtask

endmodule
