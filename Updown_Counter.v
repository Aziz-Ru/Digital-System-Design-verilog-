/*
During simulation You need to clk to clk 
firstly clr force 0 then run 1 time then force it 1 
if m=0 then it up or m=1 the down
*/
module Up_Down_Counter(m,clk,clr,q);
input clk,clr,m;
output [2:0]q;
wire [2:0]qb;
reg j=1'b1,k=1'b1;
wire mb,a,b,c,d,e,f;
not(mb,m);
wire clr;

jk_flip_flop jk1(j,k,clk,clr,q[0],qb[0]);
and (a,mb,q[0]);
and (b,m,qb[0]);
or (c,a,b);
jk_flip_flop jk2(c,c,clk,clr,q[1],qb[1]);

and (d,a,q[1]);
and (e,b,qb[1]);
or (f,d,e);
jk_flip_flop jk3(f,f,clk,clr,q[2],qb[2]);
endmodule
