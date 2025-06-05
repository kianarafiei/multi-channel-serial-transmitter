`timescale 1ns/1ns

module test_bench();


reg clk, rst , clkPB;
wire clk_EN;

one_pulser OP(.rst(rst), .clk(clk), .clkPB(clkPB), .clk_EN(clk_EN));



initial begin
	clk = 1'b0;
	rst = 1'b0;
	clkPB = 1'b0;
	

end

always #5 clk = ~clk;

initial begin


#5 rst = 1;
#15 rst = 0;
#15 clkPB = 1;
#100 clkPB = 0;

#300 $stop;


end





endmodule
