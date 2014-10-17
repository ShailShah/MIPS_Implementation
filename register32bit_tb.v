module register32bit_tb;
	reg clk,reset,regWrite,decOut1b;
	reg [31:0] init_value,writeData;
	wire [31:0] outBus;
	
	register32bit reg32(clk,reset,init_value,regWrite,decOut1b,writeData,outBus);
	
	always
	begin
		#2	clk=~clk;
	end
	
	initial
	begin
		$dumpfile("register32bit_tb");
        $dumpvars;
		clk=0;
		reset=1;
		regWrite=0;
		decOut1b=0;
		init_value=32'd212;
		writeData=32'd546;
		#8	reset=0;regWrite=1;decOut1b=1;
		#4	regWrite=0;writeData=32'd111;
		#4	regWrite=1;decOut1b=0;
		#4	decOut1b=1;
		#8	reset=1;
		#8 $finish;
	end
endmodule
		
