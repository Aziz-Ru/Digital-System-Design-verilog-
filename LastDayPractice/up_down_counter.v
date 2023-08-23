module up_down_counter(m,clk,clr,q);
input clk,clr,m;
output [2:0]q;
reg j=1'b1,k=1'b1;
wire [3:0]qb;
wire mn,w1,w2,w3,w4,w5,w6;
not(mn,m);
master_slave ms1(j,k,clk,clr,q[0],qb[0]);
and(w1,mn,q[0]);
and(w2,m,qb[0]);
or (w3,w1,w2);
master_slave ms2(w3,w3,clk,clr,q[1],qb[1]);
and(w4,w1,q[1]);
and(w5,w2,qb[1]);
or(w6,w4,w5);
master_slave ms3(w6,w6,clk,clr,q[2],qb[2]);
endmodule
//first time clr 0
//then alway clr set 1
