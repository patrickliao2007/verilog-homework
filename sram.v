module sram(output [7:0] dout,
            input [7:0] din,
            input [7:0] addr,
            input wr, rd, cs );
reg [7:0] mem[255:0];
always @(posedge wr)
begin
  if(cs == 1'b1)
    mem[addr] = din;
end

assign dout = (cs == 1'b1 && rd == 1'b0)? mem[addr] : 8'bz;
endmodule
