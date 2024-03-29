module DLatch( Data,Clock1,nQ,Q);
 input Data,Clock1;
 output nQ,Q;
 wire i0w1,i0w2,i0w3;
 not not1(i0w1,Data);
 and and1(i0w3,Data,Clock1);
 and and2(i0w2,i0w1,Clock1);
 nor nor1(nQ,i0w3,Q);
 nor nor2(Q,nQ,i0w2);
endmodule

// Simulation parameters
// Data CLK 10 10
// Clock1 CLK 20 20
