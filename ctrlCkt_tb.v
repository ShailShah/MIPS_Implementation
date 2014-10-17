module ctrlCkt_tb;
	reg [8:0] opcode;
	reg [2:0] RorI;
	wire regWrite,regDst,readC,aluSrc1,aluSrc3,memRead,memWrite;
	wire [1:0] aluSrc2,PCSrc,regWriteSrc;
	wire [3:0] aluOp;
	
	ctrlCkt cc(opcode,RorI,regWrite,regDst,readC,aluSrc1,aluSrc2,aluSrc3,aluOp,PCSrc,memRead,memWrite,regWriteSrc);
	
	initial
	begin
		$dumpfile("ctrlCkt_tb");
		$dumpvars;
		opcode=9'h1B6;
		RorI=3'b111;
		#5	opcode=9'h1B8;
		#5	opcode=9'h106;
		#5	opcode=9'h57;
		#5	opcode=9'h56;
		#5	opcode=9'h8C;
		#5	opcode=9'h8D;
		#5	opcode=9'h144;
		#5	opcode=9'h145;
		#5	opcode=9'h147;
		#5	opcode=9'h8E;
		#5	opcode=9'h8F;
		#5	opcode=9'h1FF;
		#5	opcode=9'h1FE;
		#5	opcode=9'h1DD;
		#5	opcode=9'h1ED;
		#5	$finish;
	end
endmodule
