module mealy(output reg flag, input din, clk, rst);
  reg [7:0] state;
  parameter IDLE = 8'b0000_0001,
            A = 8'b0000_0010,
            B = 8'b0000_0100,
            C = 8'b0000_1000,
            D = 8'b0001_0000,
            E = 8'b0010_0000,
            F = 8'b0100_0000,
            G = 8'b1000_0000;
  always@(posedge clk or posedge rst)
  begin
    if(rst==1'b1)
    begin
      state <= IDLE;
      flag <= 1'b0;
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
        G: {state, flag} <= (din==1'b1) ? {A, 1'b0} : {F, 1'b1};        
      endcase
    end
  end
endmodule