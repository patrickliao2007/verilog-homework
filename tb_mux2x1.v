module tb_mux2x1();
  wire out;
  reg sel;
  reg [1:0] din;
  mux2x1 ins(out, sel, din);
  initial
  begin
    sel=0;
    din=2'b00;
    #10 din=2'b01;
    #10 din=2'b10;
    #10 din=2'b11;
    #10 sel=1;
    din=2'b00;
    #10 din=2'b01;
    #10 din=2'b10;
    #10 din=2'b11;
  end
endmodule
