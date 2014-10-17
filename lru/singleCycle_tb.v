module datapath_tb;
	reg clk,reset;
	wire miss;
	reg [127:0] replaceData;
	
	datapath dp(clk,reset,miss,replaceData);
	
	always
	begin
		#5	clk=~clk;
	end
	
	initial
	begin
		$dumpfile("datapath_tb");
		$dumpvars;
		clk=1'b0;
		reset=1'b1;
		#2	reset=1'b0;	
		
		#10	$finish;
		
	end

always @ (miss)
	begin
		if(miss)
			replaceData=128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF;
	end
endmodule	
