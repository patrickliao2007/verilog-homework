module tb_sram();
  wire [7:0] dout;
  reg [7:0] din;
  reg [7:0] addr;
  reg wr, rd, cs;
  sram ins(dout, din, addr, wr, rd, cs);
  initial
  begin
    cs = 1'b1;
    addr = 8'b0000_0101;
    din = 8'b1010_0010;
    wr = 1'b0;
    rd = 1'b1;
    #5 wr = 1'b1;
    #2 wr = 1'b0;
    #5 rd = 1'b0;
    #2 rd = 1'b1;
    addr = 8'b0000_0100;
    #5 rd = 1'b0;
    #2 rd = 1'b1;
    #5 $stop;
  end
endmodule
