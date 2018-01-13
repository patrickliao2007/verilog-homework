module tb_dec_counter();
  reg clk, rst;
  wire [3:0] count;
  dec_counter ins(.count(count), .clk(clk), .reset(rst));
  initial
  begin
    clk = 1'b0;
    forever
    #10 clk = ~clk;
  end
  
  initial
  begin
    rst = 1'b1;
    #15 rst = 1'b0;
  end
endmodule
