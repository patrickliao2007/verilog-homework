module counter8b_updown(output reg [7:0] count,
                        input clk, reset, dir);
always @(posedge clk or posedge reset)
begin
  if(reset == 1'b1)
    count = 7'b0;
  else                        
    if(dir == 1'b1)
      count = count + 1;
    else
      count = count - 1;
end
endmodule
