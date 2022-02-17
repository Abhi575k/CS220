module fsm_sequence_detector (input logic in, input logic reset, output logic out);

    reg [1:0] state = 2'b00;
    
    always @(state or in or reset) begin
        if (reset)
        begin
            state = 2'b00;
            out = 0;
        end
        else
        begin
        case (state)
            2'b00:
                begin
                    if (in) state = 2'b01;
                    else state = 2'b00;
                    out = 0;
                end
            2'b01:
                begin
                    if (in) state = 2'b01;
                    else state = 2'b10;
                    out = 0;
                end
            2'b10:
                begin
                    if (in) state = 2'b11;
                    else state = 2'b00;
                    out = 0;
                end
            2'b11:
                begin
                    if (in)
                    begin
                        out = 0;
                        state = 2'b01;
                    end
                    else
                    begin
                        out = 1;
                        state = 2'b10;
                    end
                end
            default:
            begin
                out = 0;
                state = 2'b00;
            end
        endcase
        end
    end

endmodule