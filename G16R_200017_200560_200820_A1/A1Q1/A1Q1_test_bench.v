`include "A1Q1_eight_bit_ripple_carry_adder.v"

module test_bench;

    reg [7:0] A, B;
    wire [7:0] S;
    reg C_in;
    wire C_out;
    eight_bit_ripple_carry_adder ea1 (A, B, C_in, S, C_out);
    
    initial begin
        A = 8'b00111111; //1
        B = 8'b01000000; 
        C_in = 1'b0;
        
        #5 A = 8'b01111010; //2
        B = 8'b10000101; 
        C_in = 1'b0;
        
        #5 A = 8'b00001101; //3
        B = 8'b0001101; 
        C_in = 1'b0;
        
        #5 A = 8'b00011000; //4
        B = 8'b11110110; 
        C_in = 1'b0;
        
        #5 A = 8'b00111000; //5
        B = 8'b11110111; 
        C_in = 1'b0;
        
        #5 A = 8'b00010000; //6
        B = 8'b11000110; 
        C_in = 1'b1;
        
        #5 A = 8'b00011000; //7
        B = 8'b11010110; 
        C_in = 1'b0;
        
        #5 A = 8'b10001010; //8
        B = 8'b10011010; 
        C_in = 1'b1;
        
        #5 A = 8'b00001101; //9
        B = 8'b00001101; 
        C_in = 1'b1;
        
        #5 A = 8'b00011000; //10
        B = 8'b11110110; 
        C_in = 1'b1;
        
        #5 A = 8'b10101010; //11
        B = 8'b01010101; 
        C_in = 1'b0;
        
        #5 A = 8'b10110011; //12
        B = 8'b11001001; 
        C_in = 1'b1;
        
        #5 A = 8'b01000001; //13
        B = 8'b10110010; 
        C_in = 1'b0;
        
        #5 A = 8'b11111110; //14
        B = 8'b10111110; 
        C_in = 1'b1;
        
        #5 A = 8'b00101010; //15
        B = 8'b00001010; 
        C_in = 1'b0;
        
        #70
        $finish;
    end
    
    initial begin
        $monitor ("Time = %d A = %b B = %b C_in = %b S = %b C_out = %b", $time, A, B, C_in, S, C_out);
    end

endmodule
