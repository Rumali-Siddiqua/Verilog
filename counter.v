module counter(count, dn_cnt_en, restore_cnt, sys_clk, rst_n);
  input wire sys_clk, rst_n, restore_cnt, dn_cnt_en;
  output reg [2:0] count;
  
  always @(posedge sys_clk or negedge rst_n)
    begin
      if(!rst_n) count <= 3'b100;
      else if(dn_cnt_en)   count <= count-1;
      else if(restore_cnt) count <= 3'b100;
      else count <= count;
    end
  
endmodule