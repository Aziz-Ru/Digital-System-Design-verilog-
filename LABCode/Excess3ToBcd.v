module Excess3ToBcd(e,b);
input [3:0]e;
output [3:0]b;
not (b[0],e[0]);
xor(b[1],e[0],e[1]);
and(w1,e[0],e[1]);
xnor(b[2],w1,e[2]);
or(w2,e[2],w1);
and(b[3],e[3],w2);
endmodule

/*
in k map w get this equation
@=xor
'=not
.=and
+=or
b0=e0'
b1=e0@e1
b2=e2'.e1'+e2'.e0'+e2.e1.e0
=e2'(e1'+e0')+e2.e1'.e0'
=(e2@(e1.e0))'
b3=e3.e2+e3.e1.e0;
=e3.(e2+e1.e0)
*/
module Excess3ToBcd_TB();
reg [3:0] a;
wire [3:0]b;
Excess3ToBcd EB(a,b);
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
