//Hierarchical Verilog

module fadd( A,B,C,Sum,Carry);
 input A,B,C;
 output Sum,Carry;
 wire w1,w2,w3,w4;
 xor xor1(Sum,C,w1);
 xor xor2(w1,B,A);
 nor nor1(Carry,w2,w3,w4);
 nor nor2(w4,A,C);
 nor nor3(w3,B,C);
 nor nor4(w2,B,A);
endmodule
