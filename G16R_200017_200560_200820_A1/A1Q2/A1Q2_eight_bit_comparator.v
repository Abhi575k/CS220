`include "A1Q2_one_bit_comparator.v"

module eight_bit_comparator(A, B, lower, equal, greater);

    input [7:0] A, B;
    output lower, equal, greater;

    integer i;
    
    one_bit_comparator ob0 (A[0], B[0], lower, equal, greater);
    one_bit_comparator ob1 (A[1], B[1], lower, equal, greater);
    one_bit_comparator ob2 (A[2], B[2], lower, equal, greater);
    one_bit_comparator ob3 (A[3], B[3], lower, equal, greater);
    one_bit_comparator ob4 (A[4], B[4], lower, equal, greater);
    one_bit_comparator ob5 (A[5], B[5], lower, equal, greater);
    one_bit_comparator ob6 (A[6], B[6], lower, equal, greater);
    one_bit_comparator ob7 (A[7], B[7], lower, equal, greater);

endmodule