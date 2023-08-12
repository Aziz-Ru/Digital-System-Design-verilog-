/*
During simulation You need to clk to clk 
firstly clr force 0 then run 1 time then force it 1 
*/

module jk_flip_flop(j,k,clk,clr,q,qbar);
input j,k,clk,clr;
output q,qbar;
wire w1,w2,w3,w4,w5,w6,nc;

nand(w1,j,clk,clr,qbar);
nand(w2,k,clk,q);
nand(w3,w4,w1);
nand(w4,w3,w2,clr);

not(nc,clk);

nand(w5,w3,nc);
nand(w6,w4,nc);
nand(q,w5,qbar);
nand(qbar,clr,q,w6);
endmodule

