module tb_mux4x1();
reg [3:0] din;
reg [1:0] sel;
wire out;
mux4x1 ins (out, sel, din);
initial
begin
  sel=2'b00;
  din=4'b0000;
  #10 din=4'b0001;
  #10 sel=2'b01;
  din=4'b0000;
  #10 din=4'b0010;
  #10 sel=2'b10;
  din=4'b0000;
  #10 din=4'b0100;
  #10 sel=2'b11;
  din=4'b0000;
  #10 din=4'b1000;
end  
endmodule
