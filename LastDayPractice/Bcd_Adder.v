module Bcd_Adder(a,b,cin,s,cout);
input [3:0]a,b;
output [3:0]s;
input cin;
output cout;
wire [3:0]temp;
wire c1,w1,w2,w3;

Adder_Subtractor AS1(a,b,cin,temp,c1);
and(w1,temp[3],temp[2]);
and(w2,temp[3],temp[1]);
or(cout,w1,w2,c1);
Adder_Subtractor AS2(temp,{1'b0,cout,cout,1'b0},cin,s,w3);
endmodule

module TB_BA();
reg  [3:0]a,b;
wire [3:0]s;
reg cin;
wire cout;

Bcd_Adder BA1(a,b,cin,s,cout);
initial begin
#0 a=4'd8;b=4'd8;cin=1'b0;
#100 a=4'd9;b=4'd9;
#100 a=4'd9;b=4'd10;
#100 a=4'd5;b=4'd1;
#100 a=4'd8;b=4'd4;
#100 a=4'd3;b=4'd7;
end
endmodule


