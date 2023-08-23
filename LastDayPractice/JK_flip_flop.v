module master_slave(j,k,clk,clr,q,qb);
input j,k,clk,clr;
output q,qb;
wire n1,n2,n3,n4,n5,n6,ct;
nand(n1,clk,j,qb,clr);
nand(n2,clk,k,q);
nand(n3,n4,n1);
nand(n4,n3,n2,clr);

not(ct,clk);

nand(n5,ct,n3);
nand(n6,ct,n4);
nand(q,n5,qb);
nand(qb,n6,q,clr);

endmodule
