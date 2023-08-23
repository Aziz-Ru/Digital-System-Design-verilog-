module bin_to_gray(b,g);
input [3:0]b;
output [3:0]g;
buf(g[3],b[3]);
xor(g[2],b[3],b[2]);
xor(g[1],b[2],b[1]);
xor(g[0],b[1],b[0]);
endmodule

module TB_BG();
reg [3:0]b;
wire [3:0]g;
bin_to_gray BG1(b,g);
initial begin
#0 b=4'd0;
#100 b=4'd1;
#100 b=4'd2;
#100 b=4'd3;
#100 b=4'd4;
#100 b=4'd5;
#100 b=4'd6;
#100 b=4'd7;
#100 b=4'd8;
#100 b=4'd9;
#100 b=4'd10;
#100 b=4'd11;
#100 b=4'd12;
#100 b=4'd13;
#100 b=4'd14;
#100 b=4'd15;
end
endmodule
