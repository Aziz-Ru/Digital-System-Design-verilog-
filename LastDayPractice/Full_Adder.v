module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
xor(w,a,b);
and(c1,a,b);
xor(s,w,cin);
and(c2,w,cin);
or(cout,c1,c2);
endmodule

