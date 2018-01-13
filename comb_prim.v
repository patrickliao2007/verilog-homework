module comb_prim(output Y,
                 input A, B, C, D);
                 
udp_comb ins(Y, A, B, C, D);                                
                 
endmodule                 

primitive udp_comb(output Y,
                   input A, B, C, D);
table
//  A B C D : Y;
    0 1 1 0 : 1;
    1 ? ? ? : 0;
    ? 0 ? ? : 0;
    ? ? 0 ? : 0;
    ? ? ? 1 : 0;
endtable                   
endprimitive