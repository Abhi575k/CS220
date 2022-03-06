module one_bit_addsub(input a, input b, input cin, input opcode, output res, output cout);
    wire x;
    assign x = b^opcode;
    assign res = a^x^cin;
    assign cout = (a&x) | (x&cin) | (cin&a);
endmodule