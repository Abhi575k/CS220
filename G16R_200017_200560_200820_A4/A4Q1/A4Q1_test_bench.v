 `include "A4Q1_three_bit_gray_code.v"
module test_bench;
    reg clk;
    wire out;
    three_bit_gray_code g1(clk, out);

    always #5 clk = ~clk;
    initial begin
        #0 clk = 0;
        #205 $finish;
    end
    always@(posedge clk) begin
        $monitor($time, "out=%b clk=%b", out, clk);
    end
endmodule