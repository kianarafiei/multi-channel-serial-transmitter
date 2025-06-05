module shift_register_Port5(
    input  clk,
    input  rst,    
    input  Ser_In, 
    input sh_en,
    input clk_en,
    output reg [4 : 0] data_out 
);


always @(posedge clk or posedge rst) begin
    if (rst) begin
    data_out <=5'b0;
end else if (sh_en & clk_en) begin
        data_out <= {data_out[3:0], Ser_In};
end
    end

endmodule

