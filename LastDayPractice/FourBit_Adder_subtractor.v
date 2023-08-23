module Adder_Subtractor(a,bin,cin,s,cout);
input [3:0]a,bin;
input cin;
output [3:0]s;
output cout;
wire [3:0] w,b;
xor(b[0],cin,bin[0]);
xor(b[1],cin,bin[1]);
xor(b[2],cin,bin[2]);
xor(b[3],cin,bin[3]);

full_adder FA1(a[0],b[0],cin,s[0],w[0]);
full_adder FA2(a[1],b[1],w[0],s[1],w[1]);
full_adder FA3(a[2],b[2],w[1],s[2],w[2]);
full_adder FA4(a[3],b[3],w[2],s[3],cout);
endmodule

module TB_AS();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
Adder_Subtractor AS1(a,b,cin,s,cout);
initial begin
#0 a=4'd2;b=4'd9;cin=1'b0;
#100 a=4'd8;b=4'd9;
#100 a=4'd15;b=4'd15;
#100 a=4'd15;b=4'd15;cin=1'b1;
#100 a=4'd10;b=4'd1;
#100 a=4'd9;b=4'd4;
end 
endmodule
