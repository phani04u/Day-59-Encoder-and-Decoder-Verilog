`timescale 1ns / 1ps
module decoder(
input A2,A1,A0,
output reg [7:0] Y
);
integer i;
always @(*) begin 
for(i=0;i<8;i=i+1) begin 
   if({A2,A1,A0} == i) begin
         Y[i] = 1'b1;
   end
end
end
endmodule

 