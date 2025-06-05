module demux_1to4 (
    input  Ser_In,              
    input  [1:0] port_num,         
    output reg p0, p1, p2, p3        
);

always @(port_num) begin
    {p0, p1, p2, p3} = 4'b0000;               
    case (port_num)
        2'b00: p0 = Ser_In;
        2'b01: p1 = Ser_In;
        2'b10: p2 = Ser_In;
        2'b11: p3 = Ser_In;
        default: {p0, p1, p2, p3} = 4'b0000;
    endcase
end

endmodule
