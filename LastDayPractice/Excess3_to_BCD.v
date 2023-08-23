module xs3_to_BCD(x,b);
input [3:0]x;
output [3:0]b;
wire w,s;
not(b[0],x[0]);
xor(b[1],x[0],x[1]);

and(w,x[0],x[1]);
xnor(b[2],x[2],w);

or(s,x[2],w);
and(b[3],x[3],s);

endmodule
module TB_XB();
reg [3:0]x;
wire [3:0]b;
xs3_to_BCD XB1(x,b);
initial begin
#0 x=4'd0;
#100 x=4'd1;
#100 x=4'd2;
#100 x=4'd3;
#100 x=4'd4;
#100 x=4'd5;
#100 x=4'd6;
#100 x=4'd7;
#100 x=4'd8;
#100 x=4'd9;
#100 x=4'd10;
#100 x=4'd11;
#100 x=4'd12;
#100 x=4'd13;
#100 x=4'd14;
#100 x=4'd15;
end
endmodule

