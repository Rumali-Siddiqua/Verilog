module mux_2_to_1(in1,in2,sel,out);
  input wire [8:0] in1, in2;
  input wire sel;
  output reg [8:0] out;
  
  assign out = !sel? in1 : in2;
  
  
endmodule