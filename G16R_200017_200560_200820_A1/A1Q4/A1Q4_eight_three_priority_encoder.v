module eight_three_priority_encoder(A, S);

    input [7:0] A;
    output [2:0] S;

    reg [2:0] S;

    always @(A)
    begin
            if (A[0])
                S = 3'b000;
            else if (A[1])
                S = 3'b001;
            else if (A[2])
                S = 3'b010;
            else if (A[3])
                S = 3'b011;
            else if (A[4])
                S = 3'b100;
            else if (A[5])
                S = 3'b101;
            else if (A[6])
                S = 3'b110;
            else if (A[7])
                S = 3'b111;
            else
                S = 3'bxxx;
    end

endmodule
