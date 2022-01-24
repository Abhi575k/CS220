`include "A1Q1_one_bit_full_adder.v"

module eight_bit_ripple_carry_adder(A, B, C_in, S, C_out);

    input [7:0] A, B;
    input C_in;
    output [7:0] S;
    output C_out;
    wire [6:0] C;

    one_bit_full_adder oa0 (A[0], B[0], C_in, S[0], C[0]);
    one_bit_full_adder oa1 (A[1], B[1], C[0], S[1], C[1]);
    one_bit_full_adder oa2 (A[2], B[2], C[1], S[2], C[2]);
    one_bit_full_adder oa3 (A[3], B[3], C[2], S[3], C[3]);
    one_bit_full_adder oa4 (A[4], B[4], C[3], S[4], C[4]);
    one_bit_full_adder oa5 (A[5], B[5], C[4], S[5], C[5]);
    one_bit_full_adder oa6 (A[6], B[6], C[5], S[6], C[6]);
    one_bit_full_adder oa7 (A[7], B[7], C[6], S[7], C_out);

endmodule