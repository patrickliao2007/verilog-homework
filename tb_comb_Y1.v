module tb_comb_Y1();
  wire Y;
  reg A, B, C;
  integer idx;
  comb_Y1 ins(Y, A, B, C);
  initial
  begin
    for(idx=0; idx<8; idx=idx+1)
      #5 {A, B, C} = idx;
    #5 $stop;
  end
endmodule

module tb_comb_Y2();
  wire Y;
  reg A, B, C, D;
  integer idx;
  comb_Y2 ins(Y, A, B, C, D);
  initial
  begin
    for(idx=0; idx<16; idx=idx+1)
      #5 {A, B, C, D} = idx;
    #5 $stop;
  end  
endmodule
