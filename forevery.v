// forevery block
`define forevery(gain,i) for(i=0;i<2**($bits(gain));i++) 
module using_sformat();
  int a,i;
  reg [3:0] gain;
  string msg;
  initial begin
    `forevery(gain,i) begin
      a=i;
      #1;
      $sformat(msg,"a=%0d",a);
      $display(msg);
    end
    $finish;
  end
endmodule
