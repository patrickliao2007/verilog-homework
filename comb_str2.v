  module comb_str2(output y,
                 input sel, A, B, C, D);
wire in1, in0, temp1, temp0, nsel;
not ns(nsel, sel);
nand n1(in1, C, D),
     n0(in0, A, B);
and t1(temp1, in1, sel),
    t0(temp0, in0, nsel);
or o1(y, temp1, temp0);                                           
endmodule
