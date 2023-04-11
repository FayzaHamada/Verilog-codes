module counter_0_7(
input clk,rst,mode,
output reg [2:0] q);

always@(posedge clk or negedge rst)
begin
if (rst==0)
q<=3'b000;

else if (mode)
begin
if(q==7)
q<=3'b000;
else
q<=q+1;
end
else 
begin
if(q==0)
q<=7;
else
q<=q-1;
end
end



endmodule