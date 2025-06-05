module counter_2bit (
    input clk,            
    input reset,
    input cnt1, 
    input clk_en, 
    output co);     

reg[1:0] count;

always @(posedge clk or posedge reset ) begin
    if (reset) begin
        count <= 2'b0;     
    end else if(cnt1 & clk_en)begin
        count <= count + 1;    
    end
end

assign co =  (count == 2'b01)  ? 1'b1 : 1'b0;

endmodule
