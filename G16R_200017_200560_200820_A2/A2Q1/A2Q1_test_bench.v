`include "A2Q1_carry_look_ahead_adder.v"

module test_bench;
    reg [3:0] A;
    reg [3:0] B;
    reg cin;

    wire [3:0] sum;
    wire cout;

    carry_look_ahead_adder cla (A, B, cin, sum, cout);
    initial begin
        A = 0;
        B = 0;
        cin = 0;
        #5;
        A = 1;
        B = 0;
        cin = 0;
        #5;
        A = 1;
        B = 1;
        cin = 0;
        #5;
        A = 1;
        B = 2;
        cin = 0;
        #5;
        A = 1;
        B = 3;
        cin = 0;
        #5;
        A = 1;
        B = 4;
        cin = 0;
        #5;
        A = 1;
        B = 5;
        cin = 0;
        #5;
        A = 1;
        B = 6;
        cin = 0;
        #5;
        A = 1;
        B = 7;
        cin = 0;
        #5;
        A = 1;
        B = 8;
        cin = 0;
        #5;
        A = 1;
        B = 9;
        cin = 0;
        #5;
        A = 1;
        B = 10;
        cin = 0;
        #5;
        A = 1;
        B = 12;
        cin = 0;
        #5;
        A = 1;
        B = 13;
        cin = 0;
        #5;
        A = 2;
        B = 13;
        cin = 1;
    end

    initial begin
        $monitor ("Time = %d A = %b B = %b cin = %b sum = %b cout = %b", $time, A, B, cin, sum, cout);
    end

endmodule