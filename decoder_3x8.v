module decoder_3x8(
input wire[2:0] s,
input wire enable,
output reg d0,d1,d2,d3,d4,d5,d6,d7);

always@(*)
begin 
if (!enable)
{d0,d1,d2,d3,d4,d5,d6,d7}=8'b00000000;
else
begin
case (s) 
 3'b000:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00000001;
 3'b001:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00000010;
 3'b010:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00000100;
 3'b011:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00001000;
 3'b100:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00010000;
 3'b101:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00100000;
 3'b110:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b01000000;
 3'b111:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b10000000;
 default:{ d0,d1,d2,d3,d4,d5,d6,d7}=8'b00000000; 
endcase
end
end 
endmodule 