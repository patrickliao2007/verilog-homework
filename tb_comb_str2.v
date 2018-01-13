module tb_comb_str2();
  reg A, B, C, D, sel;
  wire y;
  comb_str2 ins(y, sel, A, B, C, D);
  integer idx;
  initial
  begin
    sel = 1'b0;
    for(idx=0; idx<16; idx=idx+1)
      #10 {A, B, C, D} = idx;
    #10 sel = 1'b1;
    for(idx=0; idx<16; idx=idx+1)
      #10 {A, B, C, D} = idx;
    #10 $stop;
  end
  
  initial
    $monitor("time=%4t, A=%b, B=%b, C=%b, D=%b, sel=%b, y=%b", 
    $time, A, B, C, D, sel, y);
endmodule
