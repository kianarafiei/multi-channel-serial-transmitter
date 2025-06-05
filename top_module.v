module top(input clk, rst, clkPB,Ser_In, output SerOutValid, done, output p0, p1, p2, p3 , output [6:0] SSD1, SSD2 );

wire cnt1, cnt2, cntD, ld_cntD, sh_en, co1, co2, CoD, clk_en;
dp datapth(.clkPB(clkPB), .clk(clk), .rst(rst), .cnt1(cnt1), .cnt2(cnt2), .cntD(cntD), .ld_cntD(ld_cntD), .sh_en(sh_en), .sh_enD(sh_enD),.clk_EN(clk_en), .Ser_In(Ser_In),.co1(co1), .co2(co2),.CoD(CoD), .p0(p0), .p1(p1), .p2(p2), .p3(p3) , .SSD1(SSD1) , .SSD2(SSD2));
controller cntr( .clk(clk), .rst(rst), .Ser_In(Ser_In), .Co1(co1), .Co2(co2), .CoD(CoD), .clk_en(clk_en), .done(done), .SerOut_Valid(SerOutValid), .cnt1(cnt1), .cnt2(cnt2), .cntD(cntD), .sh_en(sh_en), .sh_enD(sh_enD), .loadcntD(ld_cntD));

endmodule