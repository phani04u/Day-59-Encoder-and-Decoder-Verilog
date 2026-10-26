`timescale 1ns / 1ps
module decoder_tb;
reg A2,A1,A0;
wire [7:0] Y;
decoder uut(
.A0(A0),
.A1(A1),
.A2(A2),
.Y(Y)
);
integer i;
initial begin 
for(i=0;i<8;i=i+1) begin
{A2,A1,A0} = i;
#10;
end
$finish;
end
endmodule



