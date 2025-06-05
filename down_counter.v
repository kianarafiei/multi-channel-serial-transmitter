module downcounter_bit5 (
 input  clk,
 input  reset,
 input  [4:0] init_value,
 input cntD,
 input ldcntD,
 input clk_En,
 output coD,
 output reg [4:0] count
);


always @(posedge clk or posedge reset ) begin

 if (reset) begin
   count <= 5'b11111;
 end else if (ldcntD)begin
   count <= init_value;	
   end else if (cntD & clk_En)begin
   count <= count - 1;
end
end

assign coD = (count == 5'b00001) ? 1'b0 : 1'b1;

endmodule