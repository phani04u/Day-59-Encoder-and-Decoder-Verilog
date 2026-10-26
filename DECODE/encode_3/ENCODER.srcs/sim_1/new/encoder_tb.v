`timescale 1ns / 1ps
module encoder_tb;
reg [7:0] I;
wire [2:0] Y;
encoder uut(
.I(I),
.Y(Y)
);
integer i;
initial begin
$monitor("Time=%0t I=%b Y=%b", $time, I, Y);
for(i=0;i<8;i=i+1) begin 
      I = 1 << i;
      #10;
end
$finish;
end 
endmodule





