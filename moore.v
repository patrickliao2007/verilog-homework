module moore(output reg flag, 
           	 input din, clk, rst);
  reg [8:0] state;
  parameter IDLE = 9'b0_0000_0001,
            A = 9'b0_0000_0010,
            B = 9'b0_0000_0100,
            C = 9'b0_0000_1000,
            D = 9'b0_0001_0000,
            E = 9'b0_0010_0000,
            F = 9'b0_0100_0000,
            G = 9'b0_1000_0000,
            H = 9'b1_0000_0000;
  always@(posedge clk or posedge rst)
  begin
  if(rst==1'b1)
  begin
    flag <= 1'b0;            
    state <= IDLE;
  end
  else
  begin
    case(state)
      IDLE: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {IDLE, 1'b0};
      A: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {B, 1'b0};
      B: {state, flag} <= (din==1'b1) ? {C, 1'b0} : {IDLE, 1'b0};
      C: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {D, 1'b0};
      D: {state, flag} <= (din==1'b1) ? {E, 1'b0} : {IDLE, 1'b0};
      E: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {F, 1'b0};
      F: {state, flag} <= (din==1'b1) ? {G, 1'b0} : {IDLE, 1'b0};
      G: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {H, 1'b0};
      H: {state, flag} <= (din==1'b1) ? {G, 1'b1} : {IDLE, 1'b1};                                                
      default:;
    endcase
  end
end
always @(state)
  $display("time:%t,state:%9b",$time,state);
endmodule
  