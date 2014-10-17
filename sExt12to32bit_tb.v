module sExt12to32bit_tb;
	reg [11:0] imm;
	wire [31:0] sExtImm;	
	
	sExt12to32bit s(imm,sExtImm);
	
	initial
	begin
		$dumpfile("sExt12to32bit_tb");
		$dumpvars;
		imm=12'd12;
		#5	imm=-12'd14;
		#5	$finish;
	end
endmodule

