module counter_3bit (
    input clk,            
    input reset,
    input  cnt2, 
    input clk_en,         
    output co);     

reg[2:0] count;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 3'b0;     
    end else if(cnt2 & clk_en)begin
        count <= count + 1;    
    end
end

assign co = (count == 3'b100) ? 1'b1 : 1'b0;

endmodule
