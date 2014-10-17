module datapath_tb;
	reg clk,reset;
		
	datapath dp(clk,reset);
	
	always
	begin
		#2	clk=~clk;
	end
	
	initial
	begin
		$dumpfile("datapath_tb");
		$dumpvars;
		clk=1'b0;
		reset=1'b1;
		#4	reset=1'b0;	
		#120	$finish;
	end
endmodule	
