module testbench_comb();
  reg A, B, C, D;
  wire Y1, Y2, Y3, Y4;
  integer idx;
  comb_str ins1(Y1, A, B, C, D);
  comb_dataflow ins2(Y2, A, B, C, D);
  comb_behavior ins3(Y3, A, B, C, D);
  comb_prim ins4(Y4, A, B, C, D);
  initial
  begin
    for(idx=0; idx<16; idx=idx+1)
      #5 {A, B, C, D} = idx;
    #5 $stop;
  end
endmodule