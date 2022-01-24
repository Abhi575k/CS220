`include "A1Q4_eight_three_priority_encoder.v"

module test_bench;

    reg [7:0] A;
    wire [2:0] S;
    eight_three_priority_encoder ee1 (A, S);

    initial begin
        A = 8'b00000001;
        #5 A = 8'b00000010;
        #5 A = 8'b00000100;
        #5 A = 8'b00001000;
        #5 A = 8'b00010000;
        #5 A = 8'b00100000;
        #5 A = 8'b01000000;
        #5 A = 8'b10000000;
        #5 A = 8'b11000000;
        #5 A = 8'b11100000;
        #5 A = 8'b11110000;
        #5 A = 8'b11111000;
        #5 A = 8'b11111100;
        #5 A = 8'b11111110;
        #5 A = 8'b11111111;
        #10 $finish;
    end

    initial begin
        $monitor ("Time = %d A = %b S = %b", $time, A, S);
    end

endmodule