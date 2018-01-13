module mux2x1(output out,
              input sel,
              input [1:0] din);

bufif1 b2(out, din[1], sel);
bufif0 b1(out, din[0], sel);
endmodule              
