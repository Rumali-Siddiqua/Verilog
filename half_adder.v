module half_adder ( input a, b
                   output sum, cout);
  
  
  assign sum = a^b;
  assign cout= a&b;
  
endmodule


module adder;
  reg a,b;
  wire sum, cout;
   
  half_adder k0 ( .a(a), 
                 .b(b),
                 .sum(sum), 
                 .cout(cout));
  
  initial begin
    
    
  end
endmodule