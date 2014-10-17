module zExt4to32bit_tb;
	reg [3:0] imm;
	wire [31:0] zExtImm;	
	
	zExt4to32bit s(imm,zExtImm);
	
	initial
	begin
		$dumpfile("zExt4to32bit_tb");
		$dumpvars;
		imm=4'd12;
		#5	imm=-4'd5;
		#5	$finish;
	end
endmodule
