module tb_Encoder8x3;
  reg [7:0] data;
  wire [2:0] code;
  initial
  begin
    data=8'b0000_0001;
    #10 data=8'b0000_0010;
    #10 data=8'b0000_0100;
    #10 data=8'b0000_1000;
    #10 data=8'b0001_0000;
    #10 data=8'b0010_0000;
    #10 data=8'b0100_0000;
    #10 data=8'b1000_0000;                                    
  end
  
  Encoder8x3 e(code, data);
endmodule
