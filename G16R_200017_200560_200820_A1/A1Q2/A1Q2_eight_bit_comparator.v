`include "A1Q2_one_bit_comparator.v"

module eight_bit_comparator(A, B, l, e, g);

    input [7:0] A, B;
    wire [7:0] lower, equal, greater;
    output l, e, g;
    
    one_bit_comparator ob0 (A[0], B[0], lower[0], equal[0], greater[0]);
    one_bit_comparator ob1 (A[1], B[1], lower[1], equal[1], greater[1]);
    one_bit_comparator ob2 (A[2], B[2], lower[2], equal[2], greater[2]);
    one_bit_comparator ob3 (A[3], B[3], lower[3], equal[3], greater[3]);
    one_bit_comparator ob4 (A[4], B[4], lower[4], equal[4], greater[4]);
    one_bit_comparator ob5 (A[5], B[5], lower[5], equal[5], greater[5]);
    one_bit_comparator ob6 (A[6], B[6], lower[6], equal[6], greater[6]);
    one_bit_comparator ob7 (A[7], B[7], lower[7], equal[7], greater[7]);

    assign e = equal[0] & equal[1] & equal[2] & equal[3] & equal[4] & equal[5] & equal[6] & equal[7];
    assign g = lower[7] | (~greater[7] & lower[6]) | (~greater[7] & ~greater[6] & lower[5]) | (~greater[7] & ~greater[6] & ~greater[5] & lower[4]) | (~greater[7] & ~greater[6] & ~greater[5] & ~greater[4] & lower[3]) | (~greater[7] & ~greater[6] & ~greater[5] & ~greater[4] & ~greater[3] & lower[2]) | (~greater[7] & ~greater[6] & ~greater[5] & ~greater[4] & ~greater[3] & ~greater[2] & lower[1]) | (~greater[7] & ~greater[6] & ~greater[5] & ~greater[4] & ~greater[3] & ~greater[2] & ~greater[1] & lower[0]);
    assign l = greater[7] | (~lower[7] & greater[6]) | (~lower[7] & ~lower[6] & greater[5]) | (~lower[7] & ~lower[6] & ~lower[5] & greater[4]) | (~lower[7] & ~lower[6] & ~lower[5] & ~lower[4] & greater[3]) | (~lower[7] & ~lower[6] & ~lower[5] & ~lower[4] & ~lower[3] & greater[2]) | (~lower[7] & ~lower[6] & ~lower[5] & ~lower[4] & ~lower[3] & ~lower[2] & greater[1]) | (~lower[7] & ~lower[6] & ~lower[5] & ~lower[4] & ~lower[3] & ~lower[2] & ~lower[1] & greater[0]);

endmodule