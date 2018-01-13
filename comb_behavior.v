module comb_behavior(output reg Y,
                     input A, B, C, D);
                     
reg out1, out2, out3, out4;
always @(*)
begin
  out1 = ~D;
  out4 = B & C & out1;
  out3 = A | D;
  out2 = ~out3;
  Y = out2 & out4;
end                  
endmodule                     
