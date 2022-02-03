`include "A1Q2_eight_bit_comparator.v"

module test_bench;

    reg [7:0] A, B;
    wire l, e, g;

    eight_bit_comparator eb1 (A, B, l, e, g);

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
        #5 A = 8'b11111111;
        #10 $finish;
    end

    initial begin
        B = 8'b10000000;
        #5 B = 8'b11000000;
        #5 B = 8'b11100000;
        #5 B = 8'b11110000;
        #5 B = 8'b11111000;
        #5 B = 8'b11111100;
        #5 B = 8'b11111110;
        #5 B = 8'b11111111;
        #5 B = 8'b00000001;
        #5 B = 8'b00000010;
        #5 B = 8'b00000100;
        #5 B = 8'b00001000;
        #5 B = 8'b00010000;
        #5 B = 8'b00100000;
        #5 B = 8'b01000000;
        #5 B = 8'b11111111;
        #10 $finish;
    end

    initial begin
        $monitor ("Time = %d A = %b B = %b AgB = %b BgA = %b AeB = %b", $time, A, B, l, g, e);
    end
    
endmodule