module Alu1bit( A,B,CarryIn,S1,S2,CarrySum,Borrow,ResAlu);
 input A,B,CarryIn,S1,S2;
 output CarrySum,Borrow,ResAlu;
 wire i0w1,i0w2,i0w3,i0w4,i0w5,i0w6,i0w7,i0w8;
 wire i0w9,i0w10,i0w11,i0w12,i0w13,i0w14,i0w15,i0w16;
 wire i0w17,i0w18,i0w19;
 not not11(i0w3,A);
 xor xor21_fadd1(i0w5,i1w3,i0w3);
 xor xor22_fadd1(i1w3,CarryIn,B);
 nand nand21_fadd1(i1w6,B,CarryIn);
 nand nand22_fadd1(i1w5,B,i0w3);
 nand nand23_fadd1(i1w4,CarryIn,i0w3);
 nand nand31_fadd1(Borrow,i1w6,i1w5,i1w4);
 xor xor21_fadd2(i0w4,i2w3,CarryIn);
 xor xor22_fadd2(i2w3,A,B);
 nand nand21_fadd2(i2w6,B,A);
 nand nand22_fadd2(i2w5,B,CarryIn);
 nand nand23_fadd2(i2w4,A,CarryIn);
 nand nand31_fadd2(CarrySum,i2w6,i2w5,i2w4);
 and and21(i0w6,B,A);
 or or21(i0w7,A,B);
 nmos nmos1_mux4to11(ResAlu,i3w6,i3w5);
 nmos nmos2_mux4to11(ResAlu,i3w4,S2);
 nmos nmos3_mux4to11(i3w4,i0w6,i3w3);
 nmos nmos4_mux4to11(i3w6,i0w4,i3w3);
 nmos nmos5_mux4to11(i3w6,i0w5,S1);
 nmos nmos6_mux4to11(i3w4,i0w7,S1);
 not not11_mux4to11(i3w5,S2);
 not not12_mux4to11(i3w3,S1);
endmodule

// Simulation parameters
// A CLK 10 10
// B CLK 20 20
// CarryIn CLK 30 30
// S1 CLK 40 40
// S2 CLK 50 50
