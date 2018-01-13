module tb_filter();
  reg clock, reset, sig_in;
  wire sig_out;
  filter ins(.sig_out(sig_out), .clock(clock), .reset(reset), .sig_in(sig_in));
  initial
  begin
    clock = 1'b0;
    reset = 1'b1;
    sig_in = 1'b0;
    forever
      #5 clock = ~clock;
  end
  
  initial
  begin
    #3 reset = 1'b0;
    #1 reset = 1'b1;
  end
  
  initial
  begin
    #14 sig_in = 1'b1;
    #38 sig_in = 1'b0;
  end
  
  initial
    #110 $stop;
endmodule
