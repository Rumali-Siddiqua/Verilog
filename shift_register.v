module sft_register(sft_reg_out, sft_reg_in, LR_sft_en, ld_sft_reg, sys_clk, rst_n);
  input wire sys_clk, rst_n, ld_sft_reg;
  input wire [1:0] LR_sft_en;
  input wire [8:0] sft_reg_in;
  
  output reg [8:0] sft_reg_out;
  
  always @(posedge sys_clk or negedge rst_n)
    begin
      if(!rst_n) sft_reg_out <= 0;
      else if(LR_sft_en == 2'b10) sft_reg_out <= sft_reg_out << 1;
      else if(LR_sft_en == 2'b11) sft_reg_out <= sft_reg_out >> 1;  // fsm should be written carefully for shift and load
      else if(ld_sft_reg) sft_reg_out <= sft_reg_in;
      else sft_reg_out <= sft_reg_out;
    end
 
  
endmodule