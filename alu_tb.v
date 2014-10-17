module alu_tb;
	reg [31:0] aluSrc1,aluSrc2,aluSrc3;
	reg [3:0] operation;
	wire [31:0] aluResult;
	wire carry;
	
	alu a(aluSrc1,aluSrc2,aluSrc3,operation,aluResult,carry);
	
	initial
	begin
		$dumpfile("alu_tb");
		$dumpvars;
		aluSrc1=-32'd4;
		aluSrc2=32'd4;
		aluSrc3=32'd4;
		operation=4'd0;
		#5	operation=4'd1;
		#5	operation=4'd2;
		#5	operation=4'd3;
		#5	operation=4'd4;
		#5	operation=4'd5;
		#5	operation=4'd6;
		#5	operation=4'd7;
		#5	operation=4'd8;
		#5	operation=4'd9;
		#5	$finish;
	end
endmodule
