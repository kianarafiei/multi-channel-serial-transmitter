module Seven_Segment(count, SSD);
  input [3:0] count;
  output reg [6:0] SSD;

  always@(count)begin
    case(count)
      4'b0000: SSD = 7'b1000000;
      4'b0001: SSD = 7'b1111001;
      4'b0010: SSD = 7'b0100100;
      4'b0011: SSD = 7'b0110000;
      4'b0100: SSD = 7'b0011001;
      4'b0101: SSD = 7'b0010010;
      4'b0110: SSD = 7'b0000010;
      4'b0111: SSD = 7'b1111000;
      4'b1000: SSD = 7'b0000000;
      4'b1001: SSD = 7'b0010000;
      4'b1010: SSD = 7'b0001000;
      4'b1011: SSD = 7'b0000011;
      4'b1100: SSD = 7'b1000110;
      4'b1101: SSD = 7'b0100001;
      4'b1110: SSD = 7'b0000110;
      4'b1111: SSD = 7'b0001110;
    endcase
  end

endmodule
