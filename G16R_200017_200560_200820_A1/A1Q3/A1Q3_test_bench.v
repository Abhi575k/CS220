`include "A1Q3_three_to_eight_decoder.v"

module test_bench;

    reg [2:0] A;
    wire [7:0] S;
    three_to_eight_decoder te0 (A[2], A[1], A[0], S[7], S[6], S[5], S[4], S[3], S[2], S[1], S[0]);

    initial begin
        A = 3'b000;
        #5 A = 3'b001;
        #5 A = 3'b010;
        #5 A = 3'b011;
        #5 A = 3'b100;
        #5 A = 3'b101;
        #5 A = 3'b110;
        #5 A = 3'b111;
        #10 $finish;
    end

    initial begin
        $monitor ("Time = %d A = %b S = %b", $time, A, S);
    end

endmodule