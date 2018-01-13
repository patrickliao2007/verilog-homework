`timescale 10ns / 1ns

module wavegen(output reg w);
  initial
  begin
    w=0;
    #2 w=1;
    #1 w=0;
    #9 w=1;
    #10 w=0;
    #2 w=1;
    #3 w=0;
    #5 w=1;
  end
endmodule
