`include "A2Q2_eight_bit_johnson_counter.v"

module test_bench;
    
    reg clk, rstn;
    reg [7:0] out;

    eight_bit_johnson_counter jc (clk, rstn, out);

    always #5 clk = ~clk;

    initial begin
        {clk, rstn} <= 0;

        repeat (2) @(posedge clk);
        rstn <= 1;
        
        repeat (15) @(posedge clk);
        $finish;
    end 

    initial begin
        $monitor ("Time = %d clk = %b rstn = %b out = %b", $time, clk, rstn, out);
    end

endmodule