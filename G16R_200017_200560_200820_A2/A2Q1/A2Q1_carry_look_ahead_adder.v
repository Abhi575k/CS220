module carry_look_ahead_adder(A,B,C0,S,C5);
    input[3:0] A, B;
    input C0;
    output [3:0] S;
    output C5;
    
    wire P0, P1, P2, P3, G0, G1, G2, G3, C0, C1, C2, C3, C4;
    
    assign P0 = (~A[0] & B[0]) | (A[0] & ~B[0]), P1 = (~A[1] & B[1]) | (A[1] & ~B[1]), P2 = (~A[2] & B[2]) | (A[2] & ~B[2]), P3 = (~A[3] & B[3]) | (A[3] & ~B[3]);
    assign G0 = A[0] & B[0], G1 = A[1] & B[1], G2 = A[2] & B[2], G3 = A[3] & B[3];
    assign C1 = G0 | (P0 & C0), C2 = G1 | (P1 & G0) | (P1 & P0 & C0), C3 = G2 | (P2 & G1) | (P1 & P2 & G0) | (P0 & P1 & P2 & C0), C4 = G3 | (G2 & P3) | (P2 & P3 & G1) | (P1 & P2 & P3 & G0) | (P0 & P1 & P2 & P3 & C0);
    assign S[0] = (~P0 & C0) | (P0 & ~C0), S[1] = (~P1 & C1) | (P1 & ~C1), S[2] = (~P2 & C2) | (P2 & ~C2), S[3] = (~P3 & C3) | (P3 & ~C3);
    assign C5 = C4;
endmodule