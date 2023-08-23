module PYQuesion(clk,clr,q);
input clk,clr;
output [3:0]q;
wire [3:0]qb;
wire t1,t2,t3,t4;
xor(t1,q[1],q[0]);
xor(t2,q[2],q[1]);
xor(t3,q[3],q[2]);
xnor(t4,q[3],q[0]);
jk_flip_flop jk1(t1,t1,clk,clr,q[0],qb[0]);
jk_flip_flop jk2(t2,t2,clk,clr,q[1],qb[1]);
jk_flip_flop jk3(t3,t3,clk,clr,q[2],qb[2]);
jk_flip_flop jk4(t4,t4,clk,clr,q[3],qb[3]);
endmodule

