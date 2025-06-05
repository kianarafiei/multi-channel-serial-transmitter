module controller(input clk,
    input rst,
    input Ser_In,
    input Co1,
    input Co2,
    input CoD,
    input clk_en,
    output  done, loadcntD ,output reg SerOut_Valid, cnt1, cnt2, cntD, sh_en, sh_enD );



    parameter [1:0] IDLE  = 2'b00,
              PORT = 2'b01,
              DATA_NUMBER  = 2'b10,
	      DATA_TRANSFER  = 2'b11;

reg [1:0] ps, ns;

    always@(posedge clk or posedge rst) begin
	if(rst)
	    ps <= IDLE;
         else if (clk_en)
            ps <= ns;
    end

    
    always@(ps,Co1, Co2, CoD, Ser_In) begin
        ns = IDLE;
        case (ps)
            IDLE:  begin ns = Ser_In ? IDLE : PORT; end
            PORT: begin ns = Co1 ? DATA_NUMBER : PORT;  end 
            DATA_NUMBER:  begin ns = Co2 ? DATA_TRANSFER : DATA_NUMBER; end
	    DATA_TRANSFER: begin ns = CoD ? DATA_TRANSFER : IDLE; end
            default: ns = IDLE;
        endcase
    end

   always@(ps,Co2, CoD) begin
        {cnt1, cnt2, cntD, sh_en, sh_enD, SerOut_Valid} = 6'b0;
	case (ps)
            PORT: {cnt1,sh_en} = 2'b11;  
            DATA_NUMBER: begin {cnt2,sh_enD} = 2'b11; SerOut_Valid = Co2; end
	    DATA_TRANSFER: begin cntD = 1'b1 ;   SerOut_Valid = CoD; end
        endcase
		
	end

	assign loadcntD = Co2;
        assign done = ~CoD;

endmodule

