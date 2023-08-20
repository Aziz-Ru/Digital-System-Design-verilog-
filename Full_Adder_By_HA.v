module halfAdder(a,b,s,c);
input a,b;
output s,c;
xor(s,a,b);
and(c,a,b);
endmodule

module fullAdder(input a , b , cin , output s , Cout);
  wire S0 , C0 , c1;
  halfAdder hf1( a , b , S0 , C0);
  halfAdder hf2( S0 , cin , s , c1);
  or(Cout , C0 , c1);
endmodule

module fullAdderTest();
  reg a, b, cin;
  wire s, cout;
  fullAdder fa(a,b,cin,s,cout);
  
  initial begin
    #0 a = 1'b0; b = 1'b0; cin = 1'b0;
    #50 a = 1'b0; b = 1'b0; cin = 1'b1;
    #50 a = 1'b0; b = 1'b1; cin = 1'b0;
    #50 a = 1'b0; b = 1'b1; cin = 1'b1;
    #50 a = 1'b1; b = 1'b0; cin = 1'b0;
    #50 a = 1'b1; b = 1'b0; cin = 1'b1;
    #50 a = 1'b1; b = 1'b1; cin = 1'b0;
    #50 a = 1'b1; b = 1'b1; cin = 1'b1;   
  end
endmodule