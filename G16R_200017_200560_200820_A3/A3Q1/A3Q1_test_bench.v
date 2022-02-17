`include "A3Q1_fsm_sequence_detector.v"

module test_bench;

    wire out;
    reg reset, in;
    fsm_sequence_detector f1(in, reset, out);

    initial begin
        #1 reset = 1'b1;
        #1 reset = 1'b0;
        #3 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b1;
        #1 reset = 1'b1;
        #1 reset = 1'b0;
        #3 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b1;
        #1 reset = 1'b1;
        #1 reset = 1'b0;
        #3 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b0;
        #5 in = 1'b1;
        #5 in = 1'b1;
        #10 $finish;
    end

    initial begin
        $monitor ("Time = %d in = %b out = %b r = %b", $time, in, out, reset);
    end

endmodule