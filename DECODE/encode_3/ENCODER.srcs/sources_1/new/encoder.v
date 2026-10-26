`timescale 1ns / 1ps
module encoder(
input [7:0] I,
output  reg [2:0] Y
);
integer  i;
always @(*) begin 
Y = 3'b000;  
for(i=0;i<8;i=i+1) begin
  if( I[i]) begin 
       Y = i;
end
end
end
endmodule





  