module tb_ALU();
  wire c_out;
  wire [7:0] sum;
  reg [8*10:1] oper;
  reg [7:0] a;
  reg [7:0] b;
  reg c_in;
  ALU ins(c_out, sum, oper, a, b, c_in);
  initial
  begin
    #5
    a <= 8'b10010000;
    b <= 8'b10000111;
    c_in <= 1'b1;
    #5 oper <= "and";
    #5 oper <= "subtract";
    #5 oper <= "subtract_a";
    #5 oper <= "or_ab";
    #5 oper <= "and_ab";
    #5 oper <= "not_ab";
    #5 oper <= "exor";
    #5 oper <= "exnor";
    #5 oper <= "fgh";
    #5 $stop;
  end
endmodule
