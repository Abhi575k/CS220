module two_to_four_decoder(input S1, input S0, input en, output Y3, output Y2, output Y1, output Y0);

    assign Y0 = (~S1) & (~S0) & en;
    assign Y1 = (~S1) & S0 & en;
    assign Y2 = S1 & (~ S0) & en;
    assign Y3 = S1 & S0 & en;

endmodule