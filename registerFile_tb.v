module registerFile_tb;
	reg clk,reset,regWrite;
	reg [31:0] init_reg0,init_reg1,init_reg2,init_reg3,init_reg4,init_reg5,init_reg6,init_reg7,init_reg8,init_reg9,init_reg10,init_reg11,init_reg12,init_reg13,init_reg14,init_reg15,writeData;
	reg [3:0] srcA,srcB,srcC,wr;
	wire [31:0] outA,outB,outC;	
	
	registerFile rf(clk,reset,init_reg0,init_reg1,init_reg2,init_reg3,init_reg4,init_reg5,init_reg6,init_reg7,init_reg8,init_reg9,init_reg10,init_reg11,init_reg12,init_reg13,init_reg14,init_reg15,srcA,srcB,srcC,wr,regWrite,writeData,outA,outB,outC);
	
	always
	begin
		#2 clk=~clk;
	end
	
	initial
	begin
		$dumpfile("registerFile_tb");
		$dumpvars;
		clk=0;
		init_reg0=32'd0;
		init_reg1=32'd0;
		init_reg2=32'd0;
		init_reg3=32'd0;
		init_reg4=32'd0;
		init_reg5=32'd0;
		init_reg6=32'd0;
		init_reg7=32'd0;
		init_reg8=32'd0;
		init_reg9=32'd0;
		init_reg10=32'd0;
		init_reg11=32'd0;
		init_reg12=32'd11;
		init_reg13=32'd22;
		init_reg14=32'd33;
		init_reg15=32'd44;
		reset=1;
		regWrite=0;
		#8	srcA=4'd12;srcB=4'd13;srcC=4'd15;
		#4	reset=0;
		#2	wr=4'd2;
		#2	writeData=32'd789;srcA=4'd2;
		#4	regWrite=1;
		#2	wr=4'd4;
		#2	writeData=32'd123;srcB=4'd4;
		#2	wr=4'd6;
		#2	writeData=32'd456;srcC=4'd6;
		#4 	reset=1;
		#8	$finish;
	end
endmodule	

/*
wr should be given before writeData is given, or else writeData will be written to register selected by previous wr value  
*/
