module dp(input clk, rst, cnt1, cnt2, cntD, ld_cntD, sh_en, sh_enD, Ser_In, clkPB, output co1, co2,CoD, output p0, p1, p2, p3, clk_EN , output [6:0] SSD1 , SSD2);


wire [1:0] data_out2;
wire [4:0] data_out5, count;




counter_3bit counter3bit(.clk(clk),.reset(rst),.clk_en(clk_EN), .cnt2(cnt2),.co(co2)); 
shift_register_Port2  shifreg2Bit(.clk(clk),.rst(rst), .Ser_In(Ser_In), .sh_en(sh_en), .clk_en(clk_EN), .data_out(data_out2));
shift_register_Port5 shifreg5Bit(.clk(clk), .rst(rst), .Ser_In(Ser_In), .sh_en(sh_enD), .clk_en(clk_EN), .data_out(data_out5));
one_pulser oneP(.clk(clk), .rst(rst), .clkPB(clkPB), .clk_EN(clk_EN));

downcounter_bit5 DC5Bit(.clk(clk), .reset(rst), .init_value(data_out5), .cntD(cntD), .ldcntD(ld_cntD), .clk_En(clk_EN), .coD(CoD), .count(count));
counter_2bit cntr2Bit(.clk(clk),.reset(rst),.clk_en(clk_EN), .cnt1(cnt1),.co(co1)); 
demux_1to4 Dmux(
    .Ser_In(Ser_In),               
    .port_num(data_out2),         
    .p0(p0), .p1(p1), .p2(p2), .p3(p3)         
);

Seven_Segment seven_seg1(.count(count[3:0]), .SSD(SSD1));
Seven_Segment seven_seg2(.count({3'b000 , count[4]}), .SSD(SSD2));


 
      
endmodule