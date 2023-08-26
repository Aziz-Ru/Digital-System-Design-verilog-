module mod10(clk,q);
input clk;
reg j=1'b1,k=1'b1;
output [3:0]q;
wire clr;
wire [3:0]qb;

nand(w,q[3],q[1]);
or(clr,1'b0,w);

master_slave ms1(j,k,clk,clr,q[0],qb[0]);
master_slave ms2(j,k,q[0],clr,q[1],qb[1]);
master_slave ms3(j,k,q[1],clr,q[2],qb[2]);
master_slave ms4(j,k,q[2],clr,q[3],qb[3]);


endmodule
//1st time always 0
//then always clr no force kore dite hbe