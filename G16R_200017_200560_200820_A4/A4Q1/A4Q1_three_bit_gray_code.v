module three_bit_gray_code(input clk, output out);
  reg out;
  reg [2:0] curS, nextS;
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010, S4 = 3'b110, S5 = 3'b111, S6 = 3'b101, S7 = 3'b100;
  always @(curS or clk)
  begin
    case (curS)
    S0: begin
      nextS = S1;
      out=1'b0;
    end
    S1: begin
      nextS = S2;
      out=1'b0;
    end 
    S2: begin
      nextS = S3;
      out=1'b0;
    end 
    S3: begin
      nextS = S4;
      out=1'b0;
    end 
    S4: begin
      nextS = S5;
      out=1'b0;
    end 
    S5: begin
      nextS = S6;
      out=1'b0;
    end 
    S6: begin
      nextS = S7;
      out=1'b0;
    end 
    S7: begin
      nextS = S0;
      out=1'b1;
    end 
    default: nextS = S0;
    endcase
  end
  always@(posedge clk)
  begin
    curS <= nextS;
  end
endmodule