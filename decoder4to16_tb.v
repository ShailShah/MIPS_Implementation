module decoder4to16_tb;
	reg [3:0] destReg;
	wire [15:0] decOut;
	
	decoder4to16 dec(destReg,decOut);
	
	initial
	begin
		$dumpfile("decoder4to16_tb");
		$dumpvars;
		destReg=4'd0;
		#4	destReg=4'd4;
		#4	destReg=4'd15;
		#4	$finish;
	end
endmodule	
