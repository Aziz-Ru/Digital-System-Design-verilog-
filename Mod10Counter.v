module mod_10_counter(q,clk);
input clk;
reg j=1'b1,k=1'b1;
output [3:0]q;
wire [3:0] qb;
wire clr;

jk_flip_flop jk1(j,k,clk,clr,q[0],qb[0]);
jk_flip_flop jk2(j,k,q[0],clr,q[1],qb[1]);
jk_flip_flop jk3(j,k,q[1],clr,q[2],qb[2]);
jk_flip_flop jk4(j,k,q[2],clr,q[3],qb[3]);
nand(clr,q[3],q[1]);

endmodule

/*
During simulation You need to clk to clk 
firstly clr force 0 then run 1 time then force it 1 
*/
