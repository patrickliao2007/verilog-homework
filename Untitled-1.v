module main(clk_in,
            rst,
            clk_out);
input clk_in;
input rst;
output reg clk_out;            

always @(posedge clk_in or negedge rst)
begin
  if(!rst)
    clk_out<=0;
  else
    clk_out<=~clk_out;
end
endmodule