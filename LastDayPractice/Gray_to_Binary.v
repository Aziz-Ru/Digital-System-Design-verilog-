
module gray_to_bin(g,b);
input [3:0]g;
output [3:0]b;
buf(b[3],g[3]);

xor(b[2],g[3],g[2]);
xor(b[1],g[3],g[2],g[1]);
xor(b[0],g[3],g[2],g[1],g[0]);

endmodule

module TB_GB();
reg [3:0]g;
wire [3:0]b;
gray_to_bin GB1(g,b);
initial begin
#0 g=4'd0;
#100 g=4'd1;
#100 g=4'd2;
#100 g=4'd3;
#100 g=4'd4;
#100 g=4'd5;
#100 g=4'd6;
#100 g=4'd7;
#100 g=4'd8;
#100 g=4'd9;
#100 g=4'd10;
#100 g=4'd11;
#100 g=4'd12;
#100 g=4'd13;
#100 g=4'd14;
#100 g=4'd15;
end
endmodule