module mux4x1(output dout,
              input [1:0] sel,
              input [3:0] din);
         
wire temp1, temp2;
mux2x1 a1 (temp2, sel[0], din[3:2]),
       a2 (temp1, sel[0], din[1:0]),
       a3 (dout, sel[1], {temp2, temp1});
endmodule              
