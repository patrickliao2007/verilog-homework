module shift_counter(output reg [7:0] counter,
                     input clk, reset);
reg inc;                     
always @(posedge clk)
begin
  if(reset == 1) begin
    inc = 1'b1;
    counter = 8'b0000_0001;
  end
  else       
    if(inc == 1'b1) begin
      counter = {counter[6:0], 1'b0};
      if(counter == 8'b1000_0000)
        inc = 1'b0;              
    end
    else begin
      counter = {1'b0, counter[7:1]};
      if(counter == 8'b0000_0001)
        inc = 1'b1;
    end
end
endmodule
