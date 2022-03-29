//      Euclid's algorithm for GCD
module eight_bit_gcd(input[7:0] x, input[7:0] y, output[7:0] res);
        reg[7:0] X;
        reg[7:0] Y;
        reg[7:0] res;
        reg[7:0] temp;
        integer ok;                             //      variable to terminate loop once gcd is calculated
        always@(*) begin
                ok = 0;                         //      which is initially zero
                X = x;
                Y = y;
                while (!ok) begin               //      while gcd is not calculated
                        if (X < Y) begin
                                temp = X;       //      swap the values so that X > Y
                                X = Y;
                                Y = temp;
                        end
                        elseif (Y != 0)         //      keep subtracting Y from X until either
                                X = X - Y;      //      Y > X or Y == 0
                        else
                                ok = 1;         //      terminate when Y == 0
                end
                res = X;
        end
endmodule