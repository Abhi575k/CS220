`include "A1Q3_two_to_four_decoder.v"

module three_to_eight_decoder (input S2, input S1, input S0, output Y7, output Y6, output Y5, output Y4, output Y3, output Y2, output Y1, output Y0);
    
    two_to_four_decoder tf0 (S1, S0, ~S2, Y3, Y2, Y1, Y0);
    two_to_four_decoder tf1 (S1, S0, S2, Y7, Y6, Y5, Y4);

endmodule