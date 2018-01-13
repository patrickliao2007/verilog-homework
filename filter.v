module filter(output reg sig_out,
              input clock, reset, sig_in);
  reg [1:4] q;
  reg j, k;
  reg n1, n2, n3;     
  always @(posedge clock or negedge reset)
  begin
    if(reset==1'b0)
      {q, sig_out} = 5'b0;
    else begin
      q[2:4] = q[1:3];
      q[1] = sig_in;
      {n1, n2, n3} = ~q[2:4];
      j = q[2]&q[3]&q[4];
      k = n1&n2&n3;
      case({j, k})
        2'b01: sig_out = 1'b0;
        2'b10: sig_out = 1'b1;
        2'b11: sig_out = ~sig_out;
        default: ;
      endcase
    end
  end         
endmodule              
