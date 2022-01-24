`include "A1Q1_eight_bit_ripple_carry_adder.v"

module test_bench;

    reg [7:0] A, B;
    wire [7:0] S;
    reg C_in;
    wire C_out;
    eight_bit_ripple_carry_adder ea1 (A, B, C_in, S, C_out);

    initial begin
        A = 8'b00000001;
        #4 A = 8'b00000011;
        #4 A = 8'b00000111;
        #4 A = 8'b00001111;
        #4 A = 8'b00011111;
        #4 A = 8'b00111111;
        #4 A = 8'b01111111;
        #4 A = 8'b11111111;
        #4 $finish; 
    end

    initial begin
        B = 8'b00000000;
        #2 B = 8'b00000001;
        #2 B = 8'b00000011;
        #2 B = 8'b00000111;
        #2 B = 8'b00001111;
        #2 B = 8'b00011111;
        #2 B = 8'b00111111;
        #2 B = 8'b01111111;
        #2 B = 8'b11111111;
        #2 B = 8'b11111110;
        #2 B = 8'b11111100;
        #2 B = 8'b11111000;
        #2 B = 8'b11110000;
        #2 B = 8'b11100000;
        #2 B = 8'b11000000;
        #2 B = 8'b10000000;
        #2 $finish;
    end

    initial begin
        C_in = 1'b0;
        forever 
            #1 C_in = ~C_in;
        #32 $finish;
    end

    initial begin
        $monitor ("Time = %d A = %b B = %b C_in = %b S = %b C_out = %b", $time, A, B, C_in, S, C_out);
    end

endmodule