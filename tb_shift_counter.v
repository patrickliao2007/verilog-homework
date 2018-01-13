module tb_shift_counter();
  reg reset, clk;
  wire [7:0] count;
  shift_counter ins(count, clk, reset);
  initial
  begin
    reset = 1'b0;
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial
  fork
    #3 reset <= 1'b1;
    #6 reset <= 1'b0;
    #160 reset <= 1'b1;
    #188 reset <= 1'b0;
    #200 $stop;
  join
endmodule