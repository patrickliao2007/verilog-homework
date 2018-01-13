module ones_count(output reg [3:0] count,
                  input [7:0] dat_in);
integer idx;                
always @(*)
begin
  count = 0;
  for(idx=0; idx<8; idx=idx+1)
    if(dat_in[idx] == 1)
      count = count + 1;
end                                                   
endmodule                  
