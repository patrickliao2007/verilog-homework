module tb_counter8b_updown();
  wire [7:0] count;
  reg clk, reset, dir;
  counter8b_updown ins(.count(count), .clk(clk), .reset(reset), .dir(dir));
  initial
  begin
    clk = 1'b0;
    reset = 1'b0;
    forever #5 clk = ~clk;
  end
  
  initial
  begin
    #3 reset = 1'b1;
    #1 reset = 1'b0;
  end
  
  initial
  begin
    dir = 1'b1;    
    # 1000 dir = 1'b0;
    # 1000 $stop;
  end
endmodule
