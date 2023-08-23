module BinToGray(a,b);
input [3:0]a;
output [3:0]b;
buf(b[3],a[3]);
xor(b[2],a[2],a[3]);
xor(b[1],a[1],a[2]);
xor(b[0],a[0],a[1]);
endmodule

module BinToGray_TB();
reg [3:0]a;
wire [3:0]b;
BinToGray BT(a,b);
initial begin
#0 a=4'd1;
#50 a=4'd2;
#50 a=4'd3;
#50 a=4'd4;
#50 a=4'd5;
#50 a=4'd6;
#50 a=4'd7;
#50 a=4'd8;
#50 a=4'd9;
#50 a=4'd10;
#50 a=4'd11;
#50 a=4'd12;
#50 a=4'd13;
#50 a=4'd14;
#50 a=4'd15;
end
endmodule

