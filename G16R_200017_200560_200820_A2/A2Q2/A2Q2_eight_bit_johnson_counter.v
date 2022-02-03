module eight_bit_johnson_counter(input clk, input rstn, output reg [7:0] out);
    always @ (posedge clk) begin
        if (!rstn)
            out <= 1;
        else begin
            out[7] <= ~out[0];
            for (int i = 0; i < 7; i=i+1) begin
                out[i] <= out[i+1];
            end
        end
    end
endmodule 