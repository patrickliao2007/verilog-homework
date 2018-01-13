`timescale 10ns/1ns

module tb_ones_count();
  reg [7:0] dat_in;
  wire [3:0] count;
  integer cnt;
  ones_count ins(count, dat_in);
  initial
  begin
    dat_in = 0;
    for(cnt=0; cnt<128; cnt=cnt+1)
      #10 dat_in = dat_in + 1;
    #10 $stop;
  end
  
  initial
    $monitor("Time:%4t, Input data: %8b, Count: %d", $time, dat_in, count);
endmodule
