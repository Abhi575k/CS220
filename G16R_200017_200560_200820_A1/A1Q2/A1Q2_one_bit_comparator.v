module one_bit_comparator(A, B, lower, equal, greater);
    
    input A, B;
    output lower, equal, greater;

    //lower => A < B
    //equal => A == B
    //greater => A > B

    and(lower, ~A, B);
    and(greater, ~B, A);
    nor(equal, lower, greater);

endmodule

