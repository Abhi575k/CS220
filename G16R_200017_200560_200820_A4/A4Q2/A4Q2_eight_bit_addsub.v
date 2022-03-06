`include "A4Q2_one_bit_addsub.v"
module eight_bit_addsub(input [7:0]a, input [7:0]b, input opcode, output [7:0]res, output cout, output overflow);
    wire [7:0] a,b;
    wire signed [7:0] res;
    wire [6:0] temp;
    one_bit_addsub A0(a[0], b[0], opcode, opcode, res[0], temp[0]);
    one_bit_addsub A1(a[1], b[1], temp[0], opcode, res[1], temp[1]);
    one_bit_addsub A2(a[2], b[2], temp[1], opcode, res[2], temp[2]);
    one_bit_addsub A3(a[3], b[3], temp[2], opcode, res[3], temp[3]);
    one_bit_addsub A4(a[4], b[4], temp[3], opcode, res[4], temp[4]);
    one_bit_addsub A5(a[5], b[5], temp[4], opcode, res[5], temp[5]);
    one_bit_addsub A6(a[6], b[6], temp[5], opcode, res[6], temp[6]);
    one_bit_addsub A7(a[7], b[7], temp[6], opcode, res[7], cout);
    assign overflow = temp[6]^cout;
endmodule