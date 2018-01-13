module dec_counter(output reg [3:0] count,
                   input clk, reset);               
always@(posedge clk)
begin
  if(reset == 1'b1)
    count = 0;
  else
    if(count >= 4'b1010)
      count = 0;
    else
      count = count + 1;
end                   
endmodule                   
