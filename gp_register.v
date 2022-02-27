module gp_register(gp_reg_out, gp_reg_in, ld_gp_reg, sys_clk, rst_n);
  input wire [4:0] gp_reg_in;
  input wire sys_clk, rst_n, ld_gp_reg;
  
  output reg [4:0] gp_reg_out;
  
  always @(posedge sys_clk or negedge rst_n)
    begin
      if(!rst_n) gp_reg_out <= 0;
      else if(ld_gp_reg) gp_reg_out <= gp_reg_in;
      else gp_reg_out <= gp_reg_out;
    end
  
endmodule