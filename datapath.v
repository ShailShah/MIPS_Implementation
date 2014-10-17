module D_ff(input clk, input reset, input init_value1b, input regWrite, input decOut1b, input d, output reg q);
	always @ (negedge clk)
	begin
		if(reset==1)
			q=init_value1b;
		else
			if(regWrite == 1 && decOut1b==1)
			begin
				q=d;
			end
	end
endmodule

module register32bit(input clk, input reset, input [31:0] init_value, input regWrite, input decOut1b, input [31:0] writeData,output [31:0] outBus);
	D_ff d0(clk,reset,init_value[0],regWrite,decOut1b,writeData[0],outBus[0]);
	D_ff d1(clk,reset,init_value[1],regWrite,decOut1b,writeData[1],outBus[1]);
	D_ff d2(clk,reset,init_value[2],regWrite,decOut1b,writeData[2],outBus[2]);
	D_ff d3(clk,reset,init_value[3],regWrite,decOut1b,writeData[3],outBus[3]);
	D_ff d4(clk,reset,init_value[4],regWrite,decOut1b,writeData[4],outBus[4]);
	D_ff d5(clk,reset,init_value[5],regWrite,decOut1b,writeData[5],outBus[5]);
	D_ff d6(clk,reset,init_value[6],regWrite,decOut1b,writeData[6],outBus[6]);
	D_ff d7(clk,reset,init_value[7],regWrite,decOut1b,writeData[7],outBus[7]);
	D_ff d8(clk,reset,init_value[8],regWrite,decOut1b,writeData[8],outBus[8]);
	D_ff d9(clk,reset,init_value[9],regWrite,decOut1b,writeData[9],outBus[9]);
	D_ff d10(clk,reset,init_value[10],regWrite,decOut1b,writeData[10],outBus[10]);
	D_ff d11(clk,reset,init_value[11],regWrite,decOut1b,writeData[11],outBus[11]);
	D_ff d12(clk,reset,init_value[12],regWrite,decOut1b,writeData[12],outBus[12]);
	D_ff d13(clk,reset,init_value[13],regWrite,decOut1b,writeData[13],outBus[13]);
	D_ff d14(clk,reset,init_value[14],regWrite,decOut1b,writeData[14],outBus[14]);
	D_ff d15(clk,reset,init_value[15],regWrite,decOut1b,writeData[15],outBus[15]);
	D_ff d16(clk,reset,init_value[16],regWrite,decOut1b,writeData[16],outBus[16]);
	D_ff d17(clk,reset,init_value[17],regWrite,decOut1b,writeData[17],outBus[17]);
	D_ff d18(clk,reset,init_value[18],regWrite,decOut1b,writeData[18],outBus[18]);
	D_ff d19(clk,reset,init_value[19],regWrite,decOut1b,writeData[19],outBus[19]);
	D_ff d20(clk,reset,init_value[20],regWrite,decOut1b,writeData[20],outBus[20]);
	D_ff d21(clk,reset,init_value[21],regWrite,decOut1b,writeData[21],outBus[21]);
	D_ff d22(clk,reset,init_value[22],regWrite,decOut1b,writeData[22],outBus[22]);
	D_ff d23(clk,reset,init_value[23],regWrite,decOut1b,writeData[23],outBus[23]);
	D_ff d24(clk,reset,init_value[24],regWrite,decOut1b,writeData[24],outBus[24]);
	D_ff d25(clk,reset,init_value[25],regWrite,decOut1b,writeData[25],outBus[25]);
	D_ff d26(clk,reset,init_value[26],regWrite,decOut1b,writeData[26],outBus[26]);
	D_ff d27(clk,reset,init_value[27],regWrite,decOut1b,writeData[27],outBus[27]);
	D_ff d28(clk,reset,init_value[28],regWrite,decOut1b,writeData[28],outBus[28]);
	D_ff d29(clk,reset,init_value[29],regWrite,decOut1b,writeData[29],outBus[29]);
	D_ff d30(clk,reset,init_value[30],regWrite,decOut1b,writeData[30],outBus[30]);
	D_ff d31(clk,reset,init_value[31],regWrite,decOut1b,writeData[31],outBus[31]);
endmodule

module mux16to1_32bit(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, input [31:0] in4, input
[31:0] in5, input [31:0] in6, input [31:0] in7, input [31:0] in8, input [31:0] in9, input [31:0] in10, input [31:0] in11, input [31:0] in12, input [31:0] in13, input [31:0] in14, input [31:0] in15, input [3:0] Sel, output reg [31:0] muxOut);
	always @ (in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,Sel)
	begin
		case(Sel)
			4'd0:	muxOut=in0;
			4'd1:	muxOut=in1;
			4'd2:	muxOut=in2;
			4'd3:	muxOut=in3;
			4'd4:	muxOut=in4;
			4'd5:	muxOut=in5;
			4'd6:	muxOut=in6;
			4'd7:	muxOut=in7;
			4'd8:	muxOut=in8;
			4'd9:	muxOut=in9;
			4'd10:	muxOut=in10;
			4'd11:	muxOut=in11;
			4'd12:	muxOut=in12;
			4'd13:	muxOut=in13;
			4'd14:	muxOut=in14;
			4'd15:	muxOut=in15;
		endcase
	end
endmodule
		
module decoder4to16(input [3:0] destReg, output reg [15:0] decOut);
	always @ (destReg)
	begin
		case(destReg)
			4'd0:	decOut=16'b0000000000000001;
			4'd1:	decOut=16'b0000000000000010;
			4'd2:	decOut=16'b0000000000000100;
			4'd3:	decOut=16'b0000000000001000;
			4'd4:	decOut=16'b0000000000010000;
			4'd5:	decOut=16'b0000000000100000;
			4'd6:	decOut=16'b0000000001000000;
			4'd7:	decOut=16'b0000000010000000;
			4'd8:	decOut=16'b0000000100000000;
			4'd9:	decOut=16'b0000001000000000;
			4'd10:	decOut=16'b0000010000000000;
			4'd11:	decOut=16'b0000100000000000;
			4'd12:	decOut=16'b0001000000000000;
			4'd13:	decOut=16'b0010000000000000;
			4'd14:	decOut=16'b0100000000000000;
			4'd15:	decOut=16'b1000000000000000;
		endcase
	end
endmodule

module registerFile( input clk, input reset, input [31:0] init_reg0, input [31:0] init_reg1, input [31:0] init_reg2, input [31:0]
init_reg3, input [31:0] init_reg4, input [31:0] init_reg5, input [31:0] init_reg6, input [31:0] init_reg7, input [31:0] init_reg8, input [31:0] init_reg9, input [31:0] init_reg10, input [31:0] init_reg11, input [31:0] init_reg12, input [31:0] init_reg13, input [31:0] init_reg14, input [31:0] init_reg15, input [3:0] srcA, input [3:0] srcB, input [3:0] srcC, input [3:0] wr, input regWrite, input [31:0] writeData, output [31:0] outA, output [31:0] outB, output [31:0] outC);
	wire [15:0] decOut;
	wire [31:0] outReg0,outReg1,outReg2,outReg3,outReg4,outReg5,outReg6,outReg7,outReg8,outReg9,outReg10,outReg11,outReg12,outReg13,outReg14,outReg15;
	
	decoder4to16 dec(wr,decOut);
		
	register32bit r0(clk,reset,init_reg0,regWrite,decOut[0],writeData,outReg0);
	register32bit r1(clk,reset,init_reg1,regWrite,decOut[1],writeData,outReg1);
	register32bit r2(clk,reset,init_reg2,regWrite,decOut[2],writeData,outReg2);
	register32bit r3(clk,reset,init_reg3,regWrite,decOut[3],writeData,outReg3);
	register32bit r4(clk,reset,init_reg4,regWrite,decOut[4],writeData,outReg4);
	register32bit r5(clk,reset,init_reg5,regWrite,decOut[5],writeData,outReg5);
	register32bit r6(clk,reset,init_reg6,regWrite,decOut[6],writeData,outReg6);
	register32bit r7(clk,reset,init_reg7,regWrite,decOut[7],writeData,outReg7);
	register32bit r8(clk,reset,init_reg8,regWrite,decOut[8],writeData,outReg8);
	register32bit r9(clk,reset,init_reg9,regWrite,decOut[9],writeData,outReg9);
	register32bit r10(clk,reset,init_reg10,regWrite,decOut[10],writeData,outReg10);
	register32bit r11(clk,reset,init_reg11,regWrite,decOut[11],writeData,outReg11);
	register32bit r12(clk,reset,init_reg12,regWrite,decOut[12],writeData,outReg12);
	register32bit r13(clk,reset,init_reg13,regWrite,decOut[13],writeData,outReg13);
	register32bit r14(clk,reset,init_reg14,regWrite,decOut[14],writeData,outReg14);
	register32bit r15(clk,reset,init_reg15,regWrite,decOut[15],writeData,outReg15);
	
	mux16to1_32bit muxA(outReg0,outReg1,outReg2,outReg3,outReg4,outReg5,outReg6,outReg7,outReg8,outReg9,outReg10,outReg11,outReg12,outReg13,outReg14,outReg15,srcA,outA);
	
	mux16to1_32bit muxB(outReg0,outReg1,outReg2,outReg3,outReg4,outReg5,outReg6,outReg7,outReg8,outReg9,outReg10,outReg11,outReg12,outReg13,outReg14,outReg15,srcB,outB);
	
	mux16to1_32bit muxC(outReg0,outReg1,outReg2,outReg3,outReg4,outReg5,outReg6,outReg7,outReg8,outReg9,outReg10,outReg11,outReg12,outReg13,outReg14,outReg15,srcC,outC);
endmodule


module adder(input [31:0] in1, input [31:0] in2, output reg [31:0] adder_out);
	always @ (in1,in2)
	begin
		adder_out=in1+in2;
	end
endmodule


module mux2to1_4bit(input [3:0] in0, input [3:0] in1, input Sel, output reg [3:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		if(~Sel)
			muxOut=in0;
		else
			muxOut=in1;
	end
endmodule


module mux2to1_32bit(input [31:0] in0, input [31:0] in1, input Sel, output reg [31:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		if(~Sel)
			muxOut=in0;
		else
			muxOut=in1;
	end
endmodule


module mux4to1_32bit(input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, input [1:0] Sel, output reg [31:0] muxOut);
	always @ (in0,in1,in2,in3,Sel)
	begin
		case(Sel)
			2'd0:	muxOut=in0;
			2'd1:	muxOut=in1;
			2'd2:	muxOut=in2;
			2'd3:	muxOut=in3;
		endcase
	end
endmodule


module sExt12to32bit( input [11:0] imm, output reg [31:0] sExtImm);
	always @ (imm)
	begin
		sExtImm={imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm};
	end
endmodule


module zExt12to32bit( input [11:0] imm, output reg [31:0] zExtImm);
	always @ (imm)
	begin
		zExtImm={20'd0,imm};
	end
endmodule


module zExt4to32bit( input [3:0] imm, output reg [31:0] zExtImm);
	always @ (imm)
	begin
		zExtImm={28'd0,imm};
	end
endmodule


module ctrlCkt(input [8:0] opcode, input [2:0] RorI, output reg regWrite, output reg regDst, output reg readC, output reg aluSrc1, output reg [1:0] aluSrc2, output reg aluSrc3, output reg [3:0] aluOp, output reg [1:0] PCSrc, output reg memRead, output reg memWrite, output reg [1:0] regWriteSrc);
	always @ (opcode,RorI)
	begin
		case(opcode)
			9'h1B6:	begin
						case(RorI)
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b01;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
						endcase
					end
			
			9'h1B8:	begin
						case(RorI)
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0001;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b01;
										aluSrc3=1'bx;
										aluOp=4'b0001;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
						endcase
					end
			
			9'h106:	begin
						case(RorI)
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0010;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b10;
										aluSrc3=1'bx;
										aluOp=4'b0010;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
						endcase
					end
			
			9'h57:	begin
						case(RorI)
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b01;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b1;
										memWrite=1'b0;
										regWriteSrc=2'b01;
									end
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b1;
										memWrite=1'b0;
										regWriteSrc=2'b01;
									end
						endcase
					end
			
			9'h56:	begin
						case(RorI)
							3'b000:	begin
										regWrite=1'b0;
										regDst=1'bx;
										readC=1'b1;
										aluSrc1=1'b1;
										aluSrc2=2'b01;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b1;
										regWriteSrc=2'bxx;
									end
							3'b111:	begin
										regWrite=1'b0;
										regDst=1'bx;
										readC=1'b1;
										aluSrc1=1'b1;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0000;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b1;
										regWriteSrc=2'bxx;
									end
						endcase
					end
			
			9'h8C:	begin
						case(RorI)
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b10;
										aluSrc3=1'bx;
										aluOp=4'b0011;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0011;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
						endcase
					end
			
			9'h8D:	begin
						case(RorI)
							3'b000:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b10;
										aluSrc3=1'bx;
										aluOp=4'b0100;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
							3'b111:	begin
										regWrite=1'b1;
										regDst=1'b0;
										readC=1'bx;
										aluSrc1=1'b0;
										aluSrc2=2'b00;
										aluSrc3=1'bx;
										aluOp=4'b0100;
										PCSrc=2'b00;
										memRead=1'b0;
										memWrite=1'b0;
										regWriteSrc=2'b00;
									end
						endcase
					end
			
			9'h144:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'b0;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b0;
						aluOp=4'b0101;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end
			
			9'h145:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'b0;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b0;
						aluOp=4'b0110;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end
			
			9'h147:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'b0;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b0;
						aluOp=4'b0111;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end	

			9'h8E:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'bx;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b1;
						aluOp=4'b1000;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end
			
			9'h8F:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'bx;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b1;
						aluOp=4'b1001;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end
			
			9'h1FF:	begin
						regWrite=1'b0;
						regDst=1'bx;
						readC=1'bx;
						aluSrc1=1'bx;
						aluSrc2=2'bx;
						aluSrc3=1'bx;
						aluOp=4'bxxxx;
						PCSrc=2'b01;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'bxx;
					end
			
			9'h1FE:	begin
						regWrite=1'b1;
						regDst=1'b1;
						readC=1'bx;
						aluSrc1=1'bx;
						aluSrc2=2'bxx;
						aluSrc3=1'bx;
						aluOp=4'bxxxx;
						PCSrc=2'b01;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b10;
					end
			
			9'h1DD:	begin
						regWrite=1'b1;
						regDst=1'b0;
						readC=1'bx;
						aluSrc1=1'bx;
						aluSrc2=2'bx;
						aluSrc3=1'bx;
						aluOp=4'bxxxx;
						PCSrc=2'b10;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b10;
					end
			
			9'h1ED:	begin
						regWrite=1'b0;
						regDst=1'bx;
						readC=1'bx;
						aluSrc1=1'bx;
						aluSrc2=2'bxx;
						aluSrc3=1'bx;
						aluOp=4'bxxxx;
						PCSrc=2'b10;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'bxx;
					end
			default:begin
						regWrite=1'b0;
						regDst=1'b0;
						readC=1'b0;
						aluSrc1=1'b0;
						aluSrc2=2'b00;
						aluSrc3=1'b0;
						aluOp=4'b0000;
						PCSrc=2'b00;
						memRead=1'b0;
						memWrite=1'b0;
						regWriteSrc=2'b00;
					end
		endcase
	end
endmodule

/*

control signals

ADD:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

ADDI:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b01;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

RSUB:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0001;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

RSUBI:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b01;
aluSrc3=1'bx;
aluOp=4'b0001;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

AND:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0010;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

ANDI:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b10;
aluSrc3=1'bx;
aluOp=4'b0010;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

LW:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b01;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b1;
memWrite=1'b0;
regWriteSrc=2'b01;

LWR:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b1;
memWrite=1'b0;
regWriteSrc=2'b01;

SW:
regWrite=1'b0;
regDst=1'bx;
readC=1'b1;
aluSrc1=1'b1;
aluSrc2=2'b01;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b1;
regWriteSrc=2'bxx;

SWR:
regWrite=1'b0;
regDst=1'bx;
readC=1'b1;
aluSrc1=1'b1;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0000;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b1;
regWriteSrc=2'bxx;

SLLI:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b10;
aluSrc3=1'bx;
aluOp=4'b0011;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

SLLV:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0011;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

SRLI:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b10;
aluSrc3=1'bx;
aluOp=4'b0100;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

SRLV:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'bx;
aluOp=4'b0100;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

MULADD:
regWrite=1'b1;
regDst=1'b0;
readC=1'b0;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'b0;
aluOp=4'b0101;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

MULSUB:
regWrite=1'b1;
regDst=1'b0;
readC=1'b0;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'b0;
aluOp=4'b0110;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

ADSUB:
regWrite=1'b1;
regDst=1'b0;
readC=1'b0;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'b0;
aluOp=4'b0111;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

SLADD:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'b1;
aluOp=4'b1000;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

SRADD:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'b0;
aluSrc2=2'b00;
aluSrc3=1'b1;
aluOp=4'b1001;
PCSrc=2'b00;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b00;

J:
regWrite=1'b0;
regDst=1'bx;
readC=1'bx;
aluSrc1=1'bx;
aluSrc2=2'bx;
aluSrc3=1'bx;
aluOp=4'bxxxx;
PCSrc=2'b01;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'bxx;

JAL:
regWrite=1'b1;
regDst=1'b1;
readC=1'bx;
aluSrc1=1'bx;
aluSrc2=2'bxx;
aluSrc3=1'bx;
aluOp=4'bxxxx;
PCSrc=2'b01;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b10;

JALR:
regWrite=1'b1;
regDst=1'b0;
readC=1'bx;
aluSrc1=1'bx;
aluSrc2=2'bx;
aluSrc3=1'bx;
aluOp=4'bxxxx;
PCSrc=2'b10;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'b10;

JR:
regWrite=1'b0;
regDst=1'bx;
readC=1'bx;
aluSrc1=1'bx;
aluSrc2=2'bxx;
aluSrc3=1'bx;
aluOp=4'bxxxx;
PCSrc=2'b10;
memRead=1'b0;
memWrite=1'b0;
regWriteSrc=2'bxx;

*/


module alu(input [31:0] aluSrc1, input [31:0] aluSrc2, input [31:0] aluSrc3, input [3:0] operation, output reg [31:0] aluResult, output reg carry);
	reg [32:0] temp;
	always @ (aluSrc1,aluSrc2,aluSrc3,operation)
	begin
		case(operation)
			4'b0000:	{carry,aluResult}=aluSrc1+aluSrc2;
			4'b0001:	{carry,aluResult}=aluSrc2-aluSrc1;
			4'b0010:	begin	
							aluResult=aluSrc1&aluSrc2;
							carry=1'b0;
						end		
			4'b0011:	{carry,aluResult}=aluSrc1<<aluSrc2;
			4'b0100:	{carry,aluResult}=aluSrc1>>aluSrc2;
			4'b0101:	{carry,aluResult}=(aluSrc1*aluSrc2)+aluSrc3;
			4'b0110:	{carry,aluResult}=(aluSrc1*aluSrc2)-aluSrc3;
			4'b0111:	{carry,aluResult}=(aluSrc1+aluSrc2)-aluSrc3;
			4'b1000:	{carry,aluResult}=aluSrc1+(aluSrc2<<aluSrc3);
			4'b1001:	{carry,aluResult}=aluSrc1+(aluSrc2>>aluSrc3);
		endcase
	end
endmodule

/*

aluOp:

0000		src1+src2
0001		src2-src1
0010		src1&src2
0011		src1<<src2
0100		src1>>src2
0101		(src1*src2)+src3
0110		(src1*src2)-src3
0111		src1+src2-src3
1000		src1+(src2<<src3)
1001		src1+(src2>>src3)

*/


module im(input clk, input reset, input [31:0] address, output reg [31:0] instr);
	reg [31:0] im[0:63];
	integer i;
	
	initial
	begin
		im[0]=32'hDB00FFF0;
		im[1]=32'hDB080041;
		im[2]=32'h46000040;
		im[3]=32'h46070010;
		im[4]=32'h46800080;
		im[5]=32'h46870010;
		im[6]=32'hDB0000AF;
		im[7]=32'hDB08018F;
		im[8]=32'hDB1002AF;
		im[9]=32'hA21F0210;
		im[10]=32'hA29F0210;
		im[11]=32'hA39F0210;
		im[12]=32'h471F2010;
		im[13]=32'h479F3010;
		im[14]=32'hF687000E;
		for(i=15;i<64;i=i+1)
			begin
				im[i]=32'd0;
			end
	end	
		
	always @ (address)
	begin
		instr=im[address[5:0]];
	end
endmodule	


module dm(input clk, input [31:0] address, input [31:0] writeData, input memRead, input memWrite, output reg [31:0] data);
	reg [31:0] dm[0:63];
	always @ (address)
	begin
		if(memRead)
			data=dm[address[5:0]];
		else
			data=32'd0;
	end

	always @ (negedge clk)
	begin
		if(memWrite)
			dm[address[5:0]]=writeData;
	end
endmodule	


module datapath(input clk, input reset);
	wire [31:0] pcOut,imOut,adderOut,AOut,BOut,COut,sExtOut,zExt1Out,zExt2Out,mux3Out,mux4Out,mux5Out,aluOut,dmOut,mux6Out,mux7Out;
	wire [3:0] mux1Out,mux2Out;
	wire regWrite,regDst,readC,aluSrc1,aluSrc3,memRead,memWrite;
	wire [1:0] aluSrc2,PCSrc,regWriteSrc;
	wire [3:0] aluOp;
	wire carry;
	/*
	
	mux1 - 2to1 4bit srcC
	mux2 - 2to1 4bit dst
	mux3 - 2to1 32bit aluIn1
	mux4 - 4to1 32bit aluIn2
	mux5 - 2to1 32bit aluIn3
	mux6 - 4to1 32bit regWriteSrc
	mux7 - 4to1 32bit pcSrc
	
	zExt1 - 12 to 32
	zExt2 - 4 to 32
	
	*/
	
	reg [31:0] init_reg0,init_reg1,init_reg2,init_reg3,init_reg4,init_reg5,init_reg6,init_reg7,init_reg8,init_reg9,init_reg10,init_reg11,init_reg12,init_reg13,init_reg14,init_reg15;
	
	initial
	begin
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
		init_reg12=32'd0;
		init_reg13=32'd0;
		init_reg14=32'd0;
		init_reg15=32'd0;
	end
			
	register32bit pc(clk,reset,32'd0,1'b1,1'b1,mux7Out,pcOut);
	
	im insrtmem(clk,reset,pcOut,imOut);
	
	adder pcadr(pcOut,32'd1,adderOut);
	
	mux2to1_4bit mux1(imOut[11:8],imOut[22:19],readC,mux1Out);
	
	mux2to1_4bit mux2(imOut[22:19],4'd0,regDst,mux2Out);
	
	registerFile rf(clk,reset,init_reg0,init_reg1,init_reg2,init_reg3,init_reg4,init_reg5,init_reg6,init_reg7,init_reg8,init_reg9,init_reg10,init_reg11,init_reg12,init_reg13,init_reg14,init_reg15,imOut[3:0],imOut[7:4],mux1Out,mux2Out,regWrite,mux6Out,AOut,BOut,COut);
	
	sExt12to32bit ext1(imOut[15:4],sExtOut);

	zExt12to32bit ext2(imOut[15:4],zExt1Out);

	zExt4to32bit ext3(imOut[15:12],zExt2Out);
	
	mux2to1_32bit mux3(AOut,COut,aluSrc1,mux3Out);
	
	mux4to1_32bit mux4(BOut,sExtOut,zExt1Out,32'd0,aluSrc2,mux4Out);
	
	mux2to1_32bit mux5(COut,zExt2Out,aluSrc3,mux5Out);
	
	alu arith(mux3Out,mux4Out,mux5Out,aluOp,aluOut,carry);
	
	dm datamem(clk,aluOut,AOut,memRead,memWrite,dmOut);
	
	mux4to1_32bit mux6(aluOut,dmOut,adderOut,32'd0,regWriteSrc,mux6Out);
	
	mux4to1_32bit mux7(adderOut,{adderOut[31:23],imOut[22:0]},AOut,32'd0,PCSrc,mux7Out);
	
	ctrlCkt control(imOut[31:23],imOut[18:16],regWrite,regDst,readC,aluSrc1,aluSrc2,aluSrc3,aluOp,PCSrc,memRead,memWrite,regWriteSrc);

endmodule
