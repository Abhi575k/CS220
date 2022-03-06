`include "./A4Q2_eight_bit_addsub.v"

module test_bench;
    reg signed [7:0] a,b;
    reg opcode;
    wire signed [7:0] res;
    wire cout;
    wire overflow;
    eight_bit_addsub e1(a,b,opcode,res,cout,overflow);
    initial begin
       a = 0; b = 0; opcode = 0;
       #5
       a = 2; b = 5; opcode = 1;
       #5
       a = 126; b = 53; opcode = 1;
       #5
       a = 97; b = 91; opcode = 0;
       #5
       a = 66; b = 143; opcode = 0;
       #5
       a = 45; b = 13; opcode= 1;
       #5
       a = 66; b = 179; opcode = 0;
       #5
       a = 69; b = 420; opcode = 1;
       #5
       a = 15; b = 54; opcode= 1;
       #5
       a = 90; b = 99; opcode = 0;
       #5
       a = 28; b = 1; opcode= 0;
       #5
       a = 7; b = 47; opcode= 1;
       #5
       a = 5; b = 24; opcode= 0;
       #5
       a = 85; b = 24; opcode= 1;
       #5
       a = 33; b = 94; opcode= 1;
       #5
       a = 39; b = 54; opcode= 0;
       #5
       a = 38; b = 9; opcode= 0;
       #5
       $finish;       
    end
    initial begin
        $monitor ("Time = %d a = %b b = %b opcode = %b out = %b cin = %b overflow = %b", $time, a, b, opcode, res, cout, overflow);
    end
endmodule