/*
0 4 7 2 3 0
*/
module Random_sequence(clk,clr,q,qbar);
input clk,clr;
output [2:0]q,qbar;
wire t0,t1,t2;
or(t0,q[2],q[1]);
and (w1,q[2],qbar[1]);
and (w2,qbar[2],q[0]);
or(t1,w1,w2);
xnor(t2,q[2],q[1]);
jk_flip_flop jk2(t2,t2,clk,clr,q[2],qbar[2]);
jk_flip_flop jk1(t1,t1,clk,clr,q[1],qbar[1]);
jk_flip_flop jk0(t0,t0,clk,clr,q[0],qbar[0]);
endmodule
//1 4 3 5 7 6 2 1

module Random_sequence1 (clk,clr,q,qb);
input clk,clr;
output [2:0]q,qb;
wire t0,t1,t2;
or(w1,qb[0],qb[2]);
and(w2,q[1],w1);
xnor(w3,q[2],q[0]);
and(w4,q[1],w3);
or(t0,w2,w4);
xnor(t2,q[2],q[1]);
and(w5,qb[2],q[1]);
or(t1,qb[0],w5);
and(w6,qb[1],qb[0]);
and(w7,qb[2],q[0]);
and(w8,q[2],q[1],qb[0]);
or(t2,w6,w7,w8);
jk_flip_flop jk2(t2,t2,clk,clr,q[2],qb[2]);
jk_flip_flop jk1(t1,t1,clk,clr,q[1],qb[1]);
jk_flip_flop jk0(t0,t0,clk,clr,q[0],qb[0]);
endmodule


