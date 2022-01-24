module one_bit_full_adder(input A, input B, input C_in, output S, output C_out);        //inputs A, B and carry in and outputs their sum and carry out

    wire x, y, z;

    xor x1(x, A, B);
    and a1(y, A, B);

    xor x2(S, x, C_in);
    and a2(z, x, C_in);
    
    or o1(C_out,y,z);
    
endmodule