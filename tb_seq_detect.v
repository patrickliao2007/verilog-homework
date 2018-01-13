module tb_seq_detect();
  wire flag;
  reg din, clk, rst_n;
  parameter sequence = 8'b1001_1011;
  integer idx;
  seq_detect ins(flag, din, clk, rst_n);
  initial
  begin
    clk = 1'b1;
    forever #5 clk = ~clk;
  end
  
  initial
  begin
    rst_n = 1'b0;
    #10 rst_n = 1'b1;
  end
  
  initial
  begin
    din = 1'b0;
    for(idx=0; idx<8; idx=idx+1)
      #10 din = sequence[idx];
    #10 $stop;
  end
endmodule