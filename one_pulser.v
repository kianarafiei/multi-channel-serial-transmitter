module one_pulser(input clk,
    input rst,
    input clkPB,
    output reg clk_EN);



    parameter A  = 2'b00,
              B = 2'b01,
              C  = 2'b10;

reg [1:0] ps, ns;


 
    always@(posedge clk or posedge rst ) begin
	if(rst)
	    ps <= A;
         else
            ps <= ns;
    end

    
    always@(clkPB , ps) begin
	ns = 2'b00;
        case (ps)
            A:  begin ns = clkPB ? B : A; end
            B: begin ns = C ;  end 
            C:  begin ns = clkPB ? C : A;end
            default: ns = A;
        endcase
    end

   always@(clkPB , ps) begin
	clk_EN = 0;
	if(ps == B)
		clk_EN = 1'b1;
		
	end

endmodule



