module tb_LFSR();
  reg clk, rst_n, load;
  reg [1:26] din;
  wire [1:26] q;
  LFSR ins(.q(q), .clk(clk), .rst_n(rst_n),
           .load(load), .din(din));
  initial
  begin
  clk = 0;           
  forever
  #5 clk = ~clk;
  end
  
  initial
  begin
    rst_n = 0;
    #8 rst_n = 1;
  end
  
  initial
  begin
    load = 0;
    din = 26'b0;
    #88 load = 1;
    din = 26'b10_1111_0001_0001_0001_0010_1101;
    #10 load = 0;
  end
  
  initial
  begin
    #200 $stop;
  end
  
endmodule