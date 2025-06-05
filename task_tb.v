` timescale 1ns/1ns

module task_tst_bnch();

reg clk = 1'b0;
reg rst = 0;
reg clkPB = 0;
reg Ser_In = 0;

wire SerOutValid;
wire done;
wire p0, p1, p2, p3;
wire [6:0] SSD1, SSD2;


top top_module(.clk(clk), .rst(rst), .clkPB(clkPB),.Ser_In(Ser_In), .SerOutValid(SerOutValid), .done(done), .p0(p0), .p1(p1), .p2(p2), .p3(p3), .SSD1(SSD1), .SSD2(SSD2) );


always #5 clk = ~clk;


task test_1();
    begin
        $display("Test 1 is starting at time = %t", $time);
    #5 rst = 1;
    #5 rst = 0;
    #5 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #5 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;


        $display("Test 1 ends at time = %t", $time);
    end
endtask
	
task test_2();
    begin
        $display("test_2 is starting at time = %t", $time);
        	#5 rst = 1;
    #5 rst = 1;
    #5 rst = 0;
    #5 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #10 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #20 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 0;
    #15 clkPB = 0;
    #15 clkPB = 1;
    #15 Ser_In = 1;
          $display("test_2 ends at time = %t", $time);
    end
endtask
	
	initial begin
		$display("Start Testing");
		test_1();
		test_2();
		$display("Finish Testing");
		#100 
		$stop;
	end
endmodule