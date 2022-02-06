module carry_look_ahead_adder(A,B,C0,S,C8);
    input[7:0] A, B;
    input C0;
    output [7:0] S;
    output C8;
    
    wire P0, P1, P2, P3, P4, P5, P6, P7, G0, G1, G2, G3, G4, G5, G6, G7, C0, C1, C2, C3, C4, C5, C6, C7;
    
    xor x0 (P0, A[0], B[0]);
    xor x1 (P1, A[1], B[1]);
    xor x2 (P2, A[2], B[2]);
    xor x3 (P3, A[3], B[3]);
    xor x4 (P4, A[4], B[4]);
    xor x5 (P5, A[5], B[5]);
    xor x6 (P6, A[6], B[6]);
    xor x7 (P7, A[7], B[7]);

    and a0 (G0, A[0], B[0]);
    and a1 (G1, A[1], B[1]);
    and a2 (G2, A[2], B[2]);
    and a3 (G3, A[3], B[3]);
    and a4 (G4, A[4], B[4]);
    and a5 (G5, A[5], B[5]);
    and a6 (G6, A[6], B[6]);
    and a7 (G7, A[7], B[7]);

    assign C1 = G0 | (P0 & C0), 
    C2 = G1 | (P1 & G0) | (P1 & P0 & C0), 
    C3 = G2 | (P2 & G1) | (P1 & P2 & G0) | (P0 & P1 & P2 & C0), 
    C4 = G3 | (P3 & G2) | (P2 & P3 & G1) | (P1 & P2 & P3 & G0) | (P0 & P1 & P2 & P3 & C0), 
    C5 = G4 | (P4 & G3) | (P3 & P4 & G2) | (P2 & P3 & P4 & G1) | (P1 & P2 & P3 & P4 & G0) | (P0 & P1 & P2 & P3 & P4 & C0), 
    C6 = G5 | (P5 & G4) | (P4 & P5 & G3) | (P3 & P4 & P5 & G2) | (P2 & P3 & P4 & P5 & G1) | (P1 & P2 & P3 & P4 & P5 & G0) | (P0 & P1 & P2 & P3 & P4 & P5 & C0), 
    C7 = G6 | (P6 & G5) | (P5 & P6 & G4) | (P4 & P5 & P6 & G3) | (P3 & P4 & P5 & P6 & G2) | (P2 & P3 & P4 & P5 & P6 & G1) | (P1 & P2 & P3 & P4 & P5 & P6 & G0) | (P0 & P1 & P2 & P3 & P4 & P5 & C0);
    
    assign C8 = C7;

    xor x8 (S[0], P0, C0);
    xor x9 (S[1], P1, C1);
    xor x10 (S[2], P2, C2);
    xor x11 (S[3], P3, C3);
    xor x12 (S[4], P4, C4);
    xor x13 (S[5], P5, C5);
    xor x14 (S[6], P6, C6);
    xor x15 (S[7], P7, C7);

endmodule