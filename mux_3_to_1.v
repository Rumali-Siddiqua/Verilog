module mux_3_to_1(in1,in2,in3,sel,out);
  input wire [8:0] in1, in2,in3;
  input wire [1:0] sel;
  
  output reg [8:0] out;
  
  always @(in1,in2,in3,sel)
    begin
      out = 0;
      case(sel)
        2'b00 : out = in1;
        2'b01 : out = in2;
        2'b10 : out = in3;
        default: out = 'bx;
      endcase
    end
  
endmodule