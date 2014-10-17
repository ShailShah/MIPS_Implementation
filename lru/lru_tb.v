module lru_tb;
	
	reg clk,reset,hit,enable;
	reg [1:0] lineIndex;	
	wire [1:0] lruOut;
		
	lru lrucnt(lineIndex,clk,reset,enable,hit,lruOut);
	
	always
	begin
		#5 clk=~clk;
	end
	
	initial
	begin
		$dumpfile("lru_tb");
		$dumpvars;
		clk=1'b0;
		reset=1'b1;
		enable=1'b1;
		#1 reset=1'b0; hit=1'b0; lineIndex=2'b10;
		#39	hit=1'b1;
		#10 lineIndex=2'b00;
		#10 lineIndex=2'b10;
		#11	enable=1'b0;
		#9 lineIndex=2'b11;
		#10 lineIndex=2'b01;
		#11 enable=1'b1;
		#9 lineIndex=2'b11;
		#10 lineIndex=2'b01;
		#10 hit=1'b0;
		#70 $finish;
	end

endmodule
