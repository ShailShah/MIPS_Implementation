//*************************************************************
//                Single Cycle Data-path
//*************************************************************


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

//*************************************************************
//                 Instruction memory
//*************************************************************

module D_ff_IM (input clk, input reset, input init_value1b, output reg q);
always @ (negedge clk)
begin
if(reset==1)
q=init_value1b;

end
endmodule




module D_ff_IM_valid (input clk, input reset,output reg q);
always @ (negedge clk)
begin
if(reset==1)
q=1'b1;

end
endmodule




module D_ff_IM_tag (input clk, input reset,input init_value1b,output reg q);   //same as D_ff_IM
always @ (negedge clk)
begin
if(reset==1)
q=init_value1b;

end
endmodule




module comparator_IM(input [26:0] in1,input [26:0] in2,output reg out);
always @(in1,in2)
begin
if (in1==in2)
out=1'b1;
else
out=1'b0;
end
endmodule




module mux_IMData(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [127:0] in5,input [127:0] in6,input [127:0] in7,input [127:0] in8,input [2:0] Sel, output reg [127:0]  Data_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Data_out=in1;
3'b001:Data_out=in2;
3'b010:Data_out=in3;
3'b011:Data_out=in4;
3'b100:Data_out=in5;
3'b101:Data_out=in6;
3'b110:Data_out=in7;
3'b111:Data_out=in8;

endcase
end
endmodule




module mux_IMTag(input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,input [26:0] tag4,input [26:0] tag5,input [26:0] tag6,input [26:0] tag7,input [26:0] tag8,input [2:0] Sel,output reg [26:0] Tag_out);
always @(tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,Sel)
begin
case(Sel)
3'b000:Tag_out=tag1;
3'b001:Tag_out=tag2;
3'b010:Tag_out=tag3;
3'b011:Tag_out=tag4;
3'b100:Tag_out=tag5;
3'b101:Tag_out=tag6;
3'b110:Tag_out=tag7;
3'b111:Tag_out=tag8;

endcase
end
endmodule





module mux_IMValid(input in1,input in2,input in3,input in4,input in5,input in6,input in7,input in8, input [2:0] Sel,output reg Valid_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Valid_out=in1;
3'b001:Valid_out=in2;
3'b010:Valid_out=in3;
3'b011:Valid_out=in4;
3'b100:Valid_out=in5;
3'b101:Valid_out=in6;
3'b110:Valid_out=in7;
3'b111:Valid_out=in8;

endcase
end
endmodule





module mux_IMOffset(input [127:0] data, input [1:0] Sel,output reg [31:0] read_out);
always @(data,Sel)
begin
case (Sel)
2'b00:read_out=data[31:0];
2'b01:read_out=data[63:32];
2'b10:read_out=data[95:64];
2'b11:read_out=data[127:96];
endcase
end
endmodule






module mux_IMblock(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [1:0] Sel,output reg [127:0] block_out);
always @(in1,in2,in3,in4,Sel)
begin
case(Sel)
2'b00:block_out=in1;
2'b01:block_out=in2;
2'b10:block_out=in3;
2'b11:block_out=in4;
endcase
end
endmodule




module encoder_IM(input in1,input in2,input in3,input in4,output reg [1:0] out);
always @(in1,in2,in3,in4)
begin
casex({in4,in3,in2,in1})
4'bxxx1:out=2'b00;
4'bxx10:out=2'b01;
4'bx100:out=2'b10;
4'b1000:out=2'b11;

endcase
end
endmodule




module instr_IM (input clk, input reset, input [31:0] init_value1,  output  [31:0] q);

D_ff_IM v0(clk, reset,init_value1[0],   q[0]);
D_ff_IM v1(clk, reset,init_value1[1],   q[1]);
D_ff_IM v2(clk, reset,init_value1[2],   q[2]);
D_ff_IM v3(clk, reset,init_value1[3],   q[3]);
D_ff_IM v4(clk, reset,init_value1[4],   q[4]);
D_ff_IM v5(clk, reset,init_value1[5],   q[5]);
D_ff_IM v6(clk, reset,init_value1[6],   q[6]);
D_ff_IM v7(clk, reset,init_value1[7],   q[7]);
D_ff_IM v8(clk, reset,init_value1[8],   q[8]);
D_ff_IM v9(clk, reset,init_value1[9],   q[9]);
D_ff_IM v10(clk, reset,init_value1[10], q[10]);
D_ff_IM v11(clk, reset,init_value1[11],   q[11]);
D_ff_IM v12(clk, reset,init_value1[12],   q[12]);
D_ff_IM v13(clk, reset,init_value1[13],   q[13]);
D_ff_IM v14(clk, reset,init_value1[14],   q[14]);
D_ff_IM v15(clk, reset,init_value1[15],   q[15]);
D_ff_IM v16(clk, reset,init_value1[16],   q[16]);
D_ff_IM v17(clk, reset,init_value1[17],   q[17]);
D_ff_IM v18(clk, reset,init_value1[18],   q[18]);
D_ff_IM v19(clk, reset,init_value1[19],   q[19]);
D_ff_IM v20(clk, reset,init_value1[20],   q[20]);
D_ff_IM v21(clk, reset,init_value1[21],  q[21]);
D_ff_IM v22(clk, reset,init_value1[22],   q[22]);
D_ff_IM v23(clk, reset,init_value1[23],  q[23]);
D_ff_IM v24(clk, reset,init_value1[24],   q[24]);
D_ff_IM v25(clk, reset,init_value1[25],   q[25]);
D_ff_IM v26(clk, reset,init_value1[26],   q[26]);
D_ff_IM v27(clk, reset,init_value1[27],   q[27]);
D_ff_IM v28(clk, reset,init_value1[28],   q[28]);
D_ff_IM v29(clk, reset,init_value1[29],   q[29]);
D_ff_IM v30(clk, reset,init_value1[30], q[30]);
D_ff_IM v31(clk, reset,init_value1[31],   q[31]);

endmodule




module block_IM (input clk, input reset, input [127:0] init_value, output [127:0] q, input [26:0] tag,output [26:0] tag_out,output valid);

instr_IM v32(clk,  reset, init_value[31:0],  q[31:0]);
instr_IM v33(clk,  reset, init_value[63:32],  q[63:32]);
instr_IM v34(clk,  reset, init_value[95:64],  q[95:64]);
instr_IM v35(clk,  reset, init_value[127:96],  q[127:96]);

tag_IM v63(clk, reset, tag, tag_out);

D_ff_IM_valid v64( clk,  reset,valid);
endmodule




module tag_IM(input clk, input reset, input [26:0] init_value1, output [26:0] q);

D_ff_IM_tag v36( clk, reset, init_value1[0],q[0]);
D_ff_IM_tag v37( clk, reset, init_value1[1],q[1]);
D_ff_IM_tag v38( clk, reset, init_value1[2],q[2]);
D_ff_IM_tag v39( clk, reset, init_value1[3],q[3]);
D_ff_IM_tag v40( clk, reset, init_value1[4],q[4]);
D_ff_IM_tag v41( clk, reset, init_value1[5],q[5]);
D_ff_IM_tag v42( clk, reset, init_value1[6],q[6]);
D_ff_IM_tag v43( clk, reset, init_value1[7],q[7]);
D_ff_IM_tag v44( clk, reset, init_value1[8],q[8]);
D_ff_IM_tag v45( clk, reset, init_value1[9],q[9]);
D_ff_IM_tag v46( clk, reset, init_value1[10],q[10]);
D_ff_IM_tag v47( clk, reset, init_value1[11],q[11]);
D_ff_IM_tag v48( clk, reset, init_value1[12],q[12]);
D_ff_IM_tag v49( clk, reset, init_value1[13],q[13]);
D_ff_IM_tag v50( clk, reset, init_value1[14],q[14]);
D_ff_IM_tag v51( clk, reset, init_value1[15],q[15]);
D_ff_IM_tag v52( clk, reset, init_value1[16],q[16]);
D_ff_IM_tag v53( clk, reset, init_value1[17],q[17]);
D_ff_IM_tag v54( clk, reset, init_value1[18],q[18]);
D_ff_IM_tag v55( clk, reset, init_value1[19],q[19]);
D_ff_IM_tag v56( clk, reset, init_value1[20],q[20]);
D_ff_IM_tag v57( clk, reset, init_value1[21],q[21]);
D_ff_IM_tag v58( clk, reset, init_value1[22],q[22]);
D_ff_IM_tag v59( clk, reset, init_value1[23],q[23]);
D_ff_IM_tag v60( clk, reset, init_value1[24],q[24]);
D_ff_IM_tag v61( clk, reset, init_value1[25],q[25]);
D_ff_IM_tag v62( clk, reset, init_value1[26],q[26]);

endmodule




module cache_line(input clk, input reset, input [127:0] init_value1, input [127:0] init_value2, input [127:0] init_value3, input [127:0] init_value4,
 output  [127:0] q1,output [127:0] q2,output [127:0] q3,output  [127:0] q4, input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,
 input [26:0] tag4,output  [26:0] tag_out1,output  [26:0] tag_out2,output  [26:0] tag_out3,output  [26:0] tag_out4, 
 output  valid1,output valid2,output  valid3,output  valid4, input [1:0] wayIndex, input hit, output [1:0] LRUWay);

block_IM v65(clk, reset, init_value1, q1, tag1, tag_out1, valid1);
block_IM v66(clk, reset, init_value2, q2, tag2, tag_out2, valid2);
block_IM v67(clk, reset, init_value3, q3, tag3, tag_out3, valid3);
block_IM v68(clk, reset, init_value4, q4, tag4, tag_out4, valid4);


//////////////////////////////////////////////////////////////
//        ADD LRU
lru l0(wayIndex, clk, reset, hit, LRUWay);

endmodule



module cache_IM(output  [31:0] read_out,input [31:0] instr,input clk, input reset);

wire [127:0] init_value1, init_value2, init_value3, init_value4;
wire [127:0] init_value5, init_value6, init_value7, init_value8;
wire [127:0] init_value9, init_value10, init_value11, init_value12;
wire [127:0] init_value13, init_value14, init_value15, init_value16;
wire [127:0] init_value17, init_value18, init_value19, init_value20;
wire [127:0] init_value21, init_value22, init_value23, init_value24;
wire [127:0] init_value25, init_value26, init_value27, init_value28;
wire [127:0] init_value29, init_value30, init_value31, init_value32;


wire [26:0] tag1, tag2, tag3, tag4, tag5, tag6, tag7, tag8;
wire [26:0] tag9, tag10, tag11, tag12, tag13, tag14, tag15, tag16;
wire [26:0]  tag17, tag18, tag19, tag20, tag21, tag22, tag23, tag24;
wire [26:0]  tag25, tag26, tag27, tag28, tag29, tag30, tag31, tag32;


wire [127:0] q1, q2, q3, q4;
wire [127:0] q5, q6, q7, q8;
wire [127:0] q9, q10, q11, q12;
wire [127:0] q13, q14, q15, q16;
wire [127:0] q17, q18, q19, q20;
wire [127:0] q21, q22, q23, q24;
wire [127:0] q25, q26, q27, q28;
wire [127:0] q29, q30, q31, q32;



wire [26:0]tag_out1;wire [26:0]tag_out2;wire [26:0]tag_out3;wire [26:0]tag_out4;wire [26:0]tag_out5;wire [26:0]tag_out6;wire [26:0]tag_out7;wire [26:0]tag_out8;wire [26:0]tag_out9;
wire [26:0]tag_out10;wire [26:0]tag_out11;wire [26:0]tag_out12;wire [26:0] tag_out13;wire [26:0]tag_out14;wire [26:0]tag_out15;wire [26:0]tag_out16;
wire [26:0]tag_out17;wire [26:0]tag_out18;wire [26:0]tag_out19;wire [26:0]tag_out20;wire [26:0]tag_out21;wire [26:0]tag_out22;wire [26:0]tag_out23;wire [26:0]tag_out24;
wire [26:0]tag_out25;wire [26:0]tag_out26;wire [26:0]tag_out27;wire [26:0]tag_out28;wire [26:0]tag_out29;wire [26:0]tag_out30;wire [26:0]tag_out31;wire [26:0]tag_out32;

wire valid1;wire valid2;wire valid3;wire valid4;
wire valid5;wire valid6;wire valid7;wire valid8;wire valid9;wire valid10;wire valid11;wire valid12;
wire valid13;wire valid14;wire valid15;wire valid16;wire valid17;wire valid18;wire valid19;wire valid20;
wire valid21;wire valid22;wire valid23;wire valid24;wire valid25;wire valid26;wire valid27;wire valid28;wire valid29;wire valid30;wire valid31;wire valid32;

wire [127:0] Data_out1;
wire [127:0] Data_out2;
wire [127:0] Data_out3;
wire [127:0] Data_out4;
wire [26:0] Tag_out_out1;
wire [26:0] Tag_out_out2;
wire [26:0] Tag_out_out3;
wire [26:0] Tag_out_out4;
wire Valid_out1;
wire Valid_out2;
wire Valid_out3;
wire Valid_out4;
wire comp_out1;
wire comp_out2;
wire comp_out3;
wire comp_out4;
wire w1,w2,w3,w4;
wire hit;
wire [127:0] block_out;
wire [1:0] lru_index;


///////////////////////////////////////////////////////////////
//          Assign values to initial values
///////////////////////////////////////////////////////////////

assign init_value1 = 128'hffff_0000_0000_0000_0000_0000_0000_0000;
assign init_value2 = 128'hffff_0000_0000_0000;
assign init_value3 = 128'hffff_0000_0000_0000;
assign init_value4 = 128'hffff_0000_0000_0000;
assign init_value5 = 128'hffff_0000_0000_0000;
assign init_value6 = 128'hffff_0000_0000_0000;
assign init_value7 = 128'hffff_0000_0000_0000;
assign init_value8 = 128'hffff_0000_0000_0000;
assign init_value9 = 128'hffff_0000_0000_0000;
assign init_value10 = 128'hffff_0000_0000_0000;
assign init_value11 = 128'hffff_0000_0000_0000;
assign init_value12 = 128'hffff_0000_0000_0000;
assign init_value13 = 128'hffff_0000_0000_0000;
assign init_value14 = 128'hffff_0000_0000_0000;
assign init_value15 = 128'hffff_0000_0000_0000;
assign init_value16 = 128'hffff_0000_0000_0000;
assign init_value17 = 128'hffff_0000_0000_0000;
assign init_value18 = 128'hffff_0000_0000_0000;
assign init_value19 = 128'hffff_0000_0000_0000;
assign init_value20 = 128'hffff_0000_0000_0000;
assign init_value21 = 128'hffff_0000_0000_0000;
assign init_value22 = 128'hffff_0000_0000_0000;
assign init_value23 = 128'hffff_0000_0000_0000;
assign init_value24 = 128'hffff_0000_0000_0000;
assign init_value25 = 128'hffff_0000_0000_0000;
assign init_value26 = 128'hffff_0000_0000_0000;
assign init_value27 = 128'hffff_0000_0000_0000;
assign init_value28 = 128'hffff_0000_0000_0000;
assign init_value29 = 128'hffff_0000_0000_0000;
assign init_value30 = 128'hffff_0000_0000_0000;
assign init_value31 = 128'hffff_0000_0000_0000;
assign init_value32 = 128'hffff_0000_0000_0000;


assign tag1 = 27'd0;
assign tag2 = 27'd0;
assign tag3 = 27'd0;
assign tag4 = 27'd0;
assign tag5 = 27'd0;
assign tag6 = 27'd0;
assign tag7 = 27'd0;
assign tag8 = 27'd0;
assign tag9 = 27'd0;
assign tag10 = 27'd0;
assign tag11 = 27'd0;
assign tag12 = 27'd0;
assign tag13 = 27'd0;
assign tag14 = 27'd0;
assign tag15 = 27'd0;
assign tag16 = 27'd0;
assign tag17 = 27'd0;
assign tag18 = 27'd0;
assign tag19 = 27'd0;
assign tag20 = 27'd0;
assign tag21 = 27'd0;
assign tag22 = 27'd0;
assign tag23 = 27'd0;
assign tag24 = 27'd0;
assign tag25 = 27'd0;
assign tag26 = 27'd0;
assign tag27 = 27'd0;
assign tag28 = 27'd0;
assign tag29 = 27'd0;
assign tag30 = 27'd0;
assign tag31 = 27'd0;
assign tag32 = 27'd0;

wire [1:0] LRUWay0, LRUWay1, LRUWay2, LRUWay3, LRUWay4, LRUWay5, LRUWay6, LRUWay7;

cache_line set0(clk, reset, init_value1, init_value2, init_value3,init_value4, q1,q2, q3, q4, tag1,tag2,tag3, tag4, tag_out1, tag_out2, 
tag_out3,tag_out4,valid1,valid2,valid3,valid4, lru_index, hit, LRUWay0);
 
cache_line set1(clk, reset, init_value5, init_value6, init_value7,init_value8, q5,q6, q7, q8, tag5,tag6,tag7, tag8, tag_out5, tag_out6, 
tag_out7,tag_out8,valid5,valid6,valid7,valid8, lru_index, hit, LRUWay1);

cache_line set2(clk, reset, init_value9, init_value10, init_value11,init_value12, q9,q10, q11, q12, tag9,tag10,tag11, tag12, tag_out9, tag_out10, 
tag_out11,tag_out12,valid9,valid10,valid11,valid12, lru_index, hit, LRUWay2);

cache_line set3(clk, reset, init_value13, init_value14, init_value15,init_value16, q13,q14, q15, q16, tag13,tag14,tag15, tag16, tag_out13, tag_out14, 
tag_out15,tag_out16,valid13,valid14,valid15,valid16, lru_index, hit, LRUWay3);

cache_line set4(clk, reset, init_value17, init_value18, init_value19,init_value20, q17,q18, q19, q20, tag17,tag18,tag19, tag20, tag_out17, tag_out18, 
tag_out19,tag_out20,valid17,valid18,valid190,valid20, lru_index, hit, LRUWay4);

cache_line set5(clk, reset, init_value21, init_value22, init_value23,init_value24, q21,q22, q23, q24, tag21,tag22,tag23, tag24, tag_out21, tag_out22, 
tag_out23,tag_out24,valid21,valid22,valid23,valid24, lru_index, hit, LRUWay5);

cache_line set6(clk, reset, init_value25, init_value26, init_value27,init_value28, q25,q26, q27, q28, tag25,tag26,tag27, tag28, tag_out25, tag_out26, 
tag_out27,tag_out28,valid25,valid26,valid27,valid28, lru_index, hit, LRUWay6);

cache_line set7(clk, reset, init_value29, init_value30, init_value31,init_value32, q29,q30, q31, q32, tag29,tag30,tag31, tag32, tag_out29, tag_out30, 
tag_out31,tag_out32,valid29,valid30,valid31,valid32, lru_index, hit, LRUWay7);

 
 mux_IMData r0(q1, q5, q9, q13, q17, q21, q25, q29, instr[4:2], Data_out1);
 mux_IMData r1(q2, q6, q10, q14, q18, q22, q26, q30, instr[4:2], Data_out2);
 mux_IMData r2(q3, q7, q11, q15, q19, q23, q27, q31, instr[4:2], Data_out3);
 mux_IMData r3(q4, q8, q12, q16, q20, q24, q28, q32, instr[4:2], Data_out4);

mux_IMTag  r11( tag_out1, tag_out5,tag_out9,tag_out13,tag_out17,tag_out21,tag_out25, tag_out29,instr[4:2], Tag_out_out1);
mux_IMTag  r12( tag_out2, tag_out6,tag_out10,tag_out14,tag_out18,tag_out22,tag_out26, tag_out30,instr[4:2], Tag_out_out2);
mux_IMTag  r13( tag_out3, tag_out7,tag_out11,tag_out15,tag_out19,tag_out23,tag_out27, tag_out31,instr[4:2], Tag_out_out3);
mux_IMTag  r14( tag_out4, tag_out8,tag_out12,tag_out16,tag_out20,tag_out24,tag_out28, tag_out32,instr[4:2], Tag_out_out4);

mux_IMValid  m11( valid1, valid5,valid9,valid13,valid17,valid21,valid25, valid29,instr[4:2], Valid_out1);
mux_IMValid  m12( valid2, valid6,valid10,valid14,valid18,valid22,valid26, valid30,instr[4:2], Valid_out2);
mux_IMValid  m13( valid3, valid7,valid11,valid15,valid19,valid23,valid27, valid31,instr[4:2], Valid_out3);
mux_IMValid  m14( valid4, valid8,valid12,valid16,valid20,valid24,valid28, valid32,instr[4:2], Valid_out4);

comparator_IM r15(Tag_out_out1,instr[31:5],comp_out1);
comparator_IM r16(Tag_out_out2,instr[31:5],comp_out2);
comparator_IM r17(Tag_out_out3,instr[31:5],comp_out3);
comparator_IM r18(Tag_out_out4,instr[31:5],comp_out4);

and(w1,comp_out1,Valid_out1);
and(w2,comp_out2,Valid_out2);
and(w3,comp_out3,Valid_out3);
and(w4,comp_out4,Valid_out4);

or(hit, w1,w2,w3,w4);

encoder_IM r22(comp_out1,comp_out2,comp_out3,comp_out4,lru_index);

mux_IMblock r19(Data_out1,Data_out2,Data_out3,Data_out4,lru_index, block_out);

mux_IMOffset r21(block_out, instr[1:0], read_out);


endmodule

module testbench_IM;
  reg clk;
  reg reset;
  reg [31:0] instr;
  wire [31:0] read_out;
  
  cache_IM uut(read_out, instr, clk, reset);
   
	always
  
    #5 clk = ~clk;


  
  initial
  begin
  #5 clk=1'b0;
   #10 reset = 1'b1;
   #10 reset = 1'b0;
	  
  
    #15 instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
	 #600 $finish;
    end
endmodule


/*
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

*/


//*************************************************************
//                Data Memory
//*************************************************************

//For both data, tag
/*
module D_ff_Mem(input clk, input reset,input writeEnable,input miss, input d, output reg q);
  always @(posedge miss)
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable)
    q = d;
  end
  
  always @(negedge clk)
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable)
    q = d;
  end
endmodule */


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:05 11/25/2013 
// Design Name: 
// Module Name:    single 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module testBench_DM;

	// Inputs
	reg [31:0] instr;
	reg clk;
	reg reset;
	reg MemWrite;
	reg MemRead;
	reg [127:0] replaceData;
	reg [31:0] writeData;

	// Outputs
	wire [31:0] read_out;
	wire miss;

	// Instantiate the Unit Under Test (UUT)
	cache_Mem uut (
		.miss(miss),
		.read_out(read_out), 
		.instr(instr), 
		.clk(clk), 
		.reset(reset), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.replaceData(replaceData), 
		.writeData(writeData)
	);

	always
	#5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
		clk = 0;
		reset = 1;
		MemWrite = 0;
		MemRead = 0;
		replaceData = 0;
		
		writeData = 0;
		
		//#10 writeData = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
	  #10 reset = 0;
	  #10 MemWrite = 1;
	   
	  
	  #10 MemRead = 1;instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
	 
		// Wait 600 ns for global reset to finish
		#600 $finish;
		
		#9 $finish;
	end
	
	always @(miss)
	if (miss==1)
	  replaceData=128'hffff_0000_0000_0000_0000_0000_0000_0000; 
      
endmodule



module D_ff_Mem(input clk, input reset,input writeEnable,input miss,input d, output reg q);
  always @(posedge clk)
  
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable==1 & miss==1)
    q = d;
  end
  
  always @(negedge clk)
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable)
    q = d;
  end
endmodule

module D_ff_Mem_valid(input clk, input reset,input miss, input writeEnable, output reg q);
always @(posedge clk)
  
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable==1 & miss==1)
    q = 1'b1;
  end
  
  always @(negedge clk)
  begin
    if(reset)
      q = 1'b0;
  else if(writeEnable)
    q = 1'b1;
  end
endmodule



//For 4B(32b) data
module instr_4B(input clk, input reset, input writeEnable,input miss, input [31:0] writeData, output [31:0] q);

D_ff_Mem v0(clk, reset, writeEnable, miss, writeData[0], q[0]);
D_ff_Mem v1(clk, reset, writeEnable, miss, writeData[1], q[1]);
D_ff_Mem v2(clk, reset, writeEnable, miss, writeData[2], q[2]);
D_ff_Mem v3(clk, reset, writeEnable, miss, writeData[3], q[3]);
D_ff_Mem v4(clk, reset, writeEnable, miss, writeData[4], q[4]);
D_ff_Mem v5(clk, reset, writeEnable, miss, writeData[5], q[5]);
D_ff_Mem v6(clk, reset, writeEnable, miss, writeData[6], q[6]);
D_ff_Mem v7(clk, reset, writeEnable, miss, writeData[7], q[7]);
D_ff_Mem v8(clk, reset, writeEnable, miss, writeData[8], q[8]);
D_ff_Mem v9(clk, reset, writeEnable, miss, writeData[9], q[9]);
D_ff_Mem v10(clk, reset, writeEnable, miss, writeData[10], q[10]);
D_ff_Mem v11(clk, reset, writeEnable, miss, writeData[11], q[11]);
D_ff_Mem v12(clk, reset, writeEnable, miss, writeData[12], q[12]);
D_ff_Mem v13(clk, reset, writeEnable, miss, writeData[13], q[13]);
D_ff_Mem v14(clk, reset, writeEnable, miss, writeData[14], q[14]);
D_ff_Mem v15(clk, reset, writeEnable, miss, writeData[15], q[15]);
D_ff_Mem v16(clk, reset, writeEnable, miss, writeData[16], q[16]);
D_ff_Mem v17(clk, reset, writeEnable, miss, writeData[17], q[17]);
D_ff_Mem v18(clk, reset, writeEnable, miss, writeData[18], q[18]);
D_ff_Mem v19(clk, reset, writeEnable, miss, writeData[19], q[19]);
D_ff_Mem v20(clk, reset, writeEnable, miss, writeData[20], q[20]);
D_ff_Mem v21(clk, reset, writeEnable, miss, writeData[21], q[21]);
D_ff_Mem v22(clk, reset, writeEnable, miss, writeData[22], q[22]);
D_ff_Mem v23(clk, reset, writeEnable, miss, writeData[23], q[23]);
D_ff_Mem v24(clk, reset, writeEnable, miss, writeData[24], q[24]);
D_ff_Mem v25(clk, reset, writeEnable, miss, writeData[25], q[25]);
D_ff_Mem v26(clk, reset, writeEnable, miss, writeData[26], q[26]);
D_ff_Mem v27(clk, reset, writeEnable, miss, writeData[27], q[27]);
D_ff_Mem v28(clk, reset, writeEnable, miss, writeData[28], q[28]);
D_ff_Mem v29(clk, reset, writeEnable, miss, writeData[29], q[29]);
D_ff_Mem v30(clk, reset, writeEnable, miss, writeData[30], q[30]);
D_ff_Mem v31(clk, reset, writeEnable, miss, writeData[31], q[31]);

endmodule


// 27b tag
module tag_27bits(input clk, input reset, input writeEnable, input miss, input [26:0] writeData, output [26:0] q);

D_ff_Mem v0(clk, reset, writeEnable, miss, writeData[0], q[0]);
D_ff_Mem v1(clk, reset, writeEnable, miss, writeData[1], q[1]);
D_ff_Mem v2(clk, reset, writeEnable, miss, writeData[2], q[2]);
D_ff_Mem v3(clk, reset, writeEnable, miss, writeData[3], q[3]);
D_ff_Mem v4(clk, reset, writeEnable, miss, writeData[4], q[4]);
D_ff_Mem v5(clk, reset, writeEnable, miss, writeData[5], q[5]);
D_ff_Mem v6(clk, reset, writeEnable, miss, writeData[6], q[6]);
D_ff_Mem v7(clk, reset, writeEnable, miss, writeData[7], q[7]);
D_ff_Mem v8(clk, reset, writeEnable, miss, writeData[8], q[8]);
D_ff_Mem v9(clk, reset, writeEnable, miss, writeData[9], q[9]);
D_ff_Mem v10(clk, reset, writeEnable, miss, writeData[10], q[10]);
D_ff_Mem v11(clk, reset, writeEnable, miss, writeData[11], q[11]);
D_ff_Mem v12(clk, reset, writeEnable, miss, writeData[12], q[12]);
D_ff_Mem v13(clk, reset, writeEnable, miss, writeData[13], q[13]);
D_ff_Mem v14(clk, reset, writeEnable, miss, writeData[14], q[14]);
D_ff_Mem v15(clk, reset, writeEnable, miss, writeData[15], q[15]);
D_ff_Mem v16(clk, reset, writeEnable, miss, writeData[16], q[16]);
D_ff_Mem v17(clk, reset, writeEnable, miss, writeData[17], q[17]);
D_ff_Mem v18(clk, reset, writeEnable, miss, writeData[18], q[18]);
D_ff_Mem v19(clk, reset, writeEnable, miss, writeData[19], q[19]);
D_ff_Mem v20(clk, reset, writeEnable, miss, writeData[20], q[20]);
D_ff_Mem v21(clk, reset, writeEnable, miss, writeData[21], q[21]);
D_ff_Mem v22(clk, reset, writeEnable, miss, writeData[22], q[22]);
D_ff_Mem v23(clk, reset, writeEnable, miss, writeData[23], q[23]);
D_ff_Mem v24(clk, reset, writeEnable, miss, writeData[24], q[24]);
D_ff_Mem v25(clk, reset, writeEnable, miss, writeData[25], q[25]);
D_ff_Mem v26(clk, reset, writeEnable, miss, writeData[26], q[26]);

endmodule





//1b V/I
module validInvalid1bit(input clk, input reset, input miss,input writeEnable, output q);

D_ff_Mem_valid v0(clk, reset,miss, writeEnable, q);

endmodule




//16B block or cache line
module block_16B(input clk, input reset, input writeEnable,input miss, input [127:0] finalWriteData, output [127:0] q, input [26:0] tag, 
output [26:0] tag_out, output valid_out );

instr_4B v0(clk, reset, writeEnable, miss, finalWriteData[31:0], q[31:0]);
instr_4B v1(clk, reset, writeEnable, miss, finalWriteData[63:32], q[63:32]);
instr_4B v2(clk, reset, writeEnable, miss, finalWriteData[95:64], q[95:64]);
instr_4B v3(clk, reset, writeEnable, miss, finalWriteData[127:96], q[127:96]);

tag_27bits tag0(clk, reset, writeEnable, miss, tag, tag_out);

validInvalid1bit d1(clk, reset, miss,writeEnable, valid_out);

endmodule




module cacheSet(input clk, input reset, input [3:0] writeEnable, input miss,input [127:0] finalWriteData0, finalWriteData1, finalWriteData2, finalWriteData3,
input [26:0] tag0, tag1, tag2, tag3, output [127:0] data0, data1, data2, data3, output [26:0] tag_out0, tag_out1, tag_out2, tag_out3, 
output valid_out0, valid_out1, valid_out2, valid_out3, input enable, input hit, input [1:0] wayIndex, output [1:0] LRUWay);  
 
block_16B b0(clk, reset, writeEnable[0], miss, finalWriteData0, data0, tag0, tag_out0, valid_out0 );
block_16B b1(clk, reset, writeEnable[1], miss, finalWriteData1, data1, tag1, tag_out1, valid_out1 ); 
block_16B b2(clk, reset, writeEnable[2], miss, finalWriteData2, data2, tag2, tag_out2, valid_out2 );  
block_16B b3(clk, reset, writeEnable[3], miss, finalWriteData3, data3, tag3, tag_out3, valid_out3 ); 
 
lru l0(wayIndex,enable,clk, reset, hit, LRUWay);

 
endmodule



module comparator_Mem(input [26:0] in1,input [26:0] in2,output reg out);
always @(in1,in2)
begin
if (in1==in2)
out=1'b1;
else
out=1'b0;
end
endmodule




module mux_MemData(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [127:0] in5,input [127:0] in6,
input [127:0] in7,input [127:0] in8,input [2:0] Sel, output reg [127:0] Data_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Data_out=in1;
3'b001:Data_out=in2;
3'b010:Data_out=in3;
3'b011:Data_out=in4;
3'b100:Data_out=in5;
3'b101:Data_out=in6;
3'b110:Data_out=in7;
3'b111:Data_out=in8;

endcase
end
endmodule




module mux_MemTag(input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,input [26:0] tag4,input [26:0] tag5,input [26:0] tag6,
input [26:0] tag7,input [26:0] tag8,input [2:0] Sel,output reg [26:0] Tag_out);
always @(tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,Sel)
begin
case(Sel)
3'b000:Tag_out=tag1;
3'b001:Tag_out=tag2;
3'b010:Tag_out=tag3;
3'b011:Tag_out=tag4;
3'b100:Tag_out=tag5;
3'b101:Tag_out=tag6;
3'b110:Tag_out=tag7;
3'b111:Tag_out=tag8;

endcase
end
endmodule





module mux_MemValid(input in1,input in2,input in3,input in4,input in5,input in6,input in7,input in8, input [2:0] Sel,output reg Valid_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Valid_out=in1;
3'b001:Valid_out=in2;
3'b010:Valid_out=in3;
3'b011:Valid_out=in4;
3'b100:Valid_out=in5;
3'b101:Valid_out=in6;
3'b110:Valid_out=in7;
3'b111:Valid_out=in8;

endcase
end
endmodule





module mux_MemOffset(input [127:0] data, input [1:0] Sel,output reg [31:0] read_out);
always @(data,Sel)
begin
case (Sel)
2'b00:read_out=data[31:0];
2'b01:read_out=data[63:32];
2'b10:read_out=data[95:64];
2'b11:read_out=data[127:96];
endcase
end
endmodule





module mux_Memblock(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [1:0] Sel,output reg [127:0] block_out);
always @(in1,in2,in3,in4,Sel)
begin
case(Sel)
2'b00:block_out=in1;
2'b01:block_out=in2;
2'b10:block_out=in3;
2'b11:block_out=in4;
endcase
end
endmodule




module encoder_Mem(input in1,input in2,input in3,input in4,output reg [1:0] out);
always @(in1,in2,in3,in4)
begin
casex({in4,in3,in2,in1})
4'bxxx1:out=2'b00;
4'bxx10:out=2'b01;
4'bx100:out=2'b10;
4'b1000:out=2'b11;

endcase
end
endmodule



module decoder3to8_Mem(input [2:0] index, output reg [7:0] decOut);

always @(index)
begin
    case(index)
        3'b000: decOut = 8'b0000_0001;
        3'b001: decOut = 8'b0000_0010;
        3'b010: decOut = 8'b0000_0100;
        3'b011: decOut = 8'b0000_1000;
        3'b100: decOut = 8'b0001_0000;
        3'b101: decOut = 8'b0010_0000;
        3'b110: decOut = 8'b0100_0000;
        3'b111: decOut = 8'b1000_0000;
    endcase
end
endmodule


module decoder2to4(input [1:0] in, output reg [3:0] out);
always@(in)
begin
case(in)
2'b00: out = 4'b0001;
2'b01: out = 4'b0010;
2'b10: out = 4'b0100;
2'b11: out = 4'b1000;
endcase
end
endmodule


module mux16B_2to1(input [127:0] in1, in2, input hit, output reg [127:0] data);

always @(in1, in2, hit)
begin
    case(hit)
        1'b0: data = in1;
        1'b1: data = in2;
    endcase
end
endmodule




module mux32bits_2to1(input [31:0] in1, input Sel, output reg [31:0] muxOut);

always @(in1, Sel)
begin
    case(Sel)
        1'b0: muxOut = 32'd0;
        1'b1: muxOut = in1;
    endcase
end
endmodule




module cache_Mem(output miss, output [31:0] read_out,input [31:0] instr,input clk, input reset, input MemWrite, MemRead, input [127:0] replaceData, 
input [31:0] writeData);
 
wire [26:0] tag;
wire [127:0] data;
wire [127:0] q1, q2, q3, q4;
wire [127:0] q5, q6, q7, q8;
wire [127:0] q9, q10, q11, q12;
wire [127:0] q13, q14, q15, q16;
wire [127:0] q17, q18, q19, q20;
wire [127:0] q21, q22, q23, q24;
wire [127:0] q25, q26, q27, q28;
wire [127:0] q29, q30, q31, q32;


wire [26:0] tag_out1, tag_out2, tag_out3, tag_out4, tag_out5, tag_out6, tag_out7, tag_out8;
wire [26:0] tag_out9, tag_out10, tag_out11, tag_out12, tag_out13, tag_out14, tag_out15, tag_out16;
wire [26:0] tag_out17, tag_out18, tag_out19, tag_out20, tag_out21, tag_out22, tag_out23, tag_out24;
wire [26:0] tag_out25, tag_out26, tag_out27, tag_out28, tag_out29, tag_out30, tag_out31, tag_out32;

wire valid_out1, valid_out2, valid_out3, valid_out4;
wire valid_out5, valid_out6, valid_out7, valid_out8;
wire valid_out9, valid_out10, valid_out11, valid_out12;
wire valid_out13, valid_out14, valid_out15, valid_out16;
wire valid_out17, valid_out18, valid_out19, valid_out20;
wire valid_out21, valid_out22, valid_out23, valid_out24;
wire valid_out25, valid_out26, valid_out27, valid_out28;
wire valid_out29, valid_out30, valid_out31, valid_out32;

wire [127:0] Data_out1;
wire [127:0] Data_out2;
wire [127:0] Data_out3;
wire [127:0] Data_out4;
wire [26:0] Tag_out_out1;
wire [26:0] Tag_out_out2;
wire [26:0] Tag_out_out3;
wire [26:0] Tag_out_out4;
wire Valid_out1;
wire Valid_out2;
wire Valid_out3;
wire Valid_out4;
wire comp_out1;
wire comp_out2;
wire comp_out3;
wire comp_out4;
wire w1,w2,w3,w4;
wire hit;
wire [127:0] block_out;
wire [1:0] wayIndex;
wire [7:0] enable;
wire [1:0] LRUWay0, LRUWay1, LRUWay2, LRUWay3, LRUWay4, LRUWay5, LRUWay6, LRUWay7;
wire [3:0] LRUdecOut0, LRUdecOut1, LRUdecOut2, LRUdecOut3, LRUdecOut4, LRUdecOut5, LRUdecOut6, LRUdecOut7; 
wire [3:0] writeEnable0, writeEnable1, writeEnable2, writeEnable3, writeEnable4, writeEnable5, writeEnable6, writeEnable7;
reg [127:0] maskedData;
wire [31:0] data_read;

assign tag = instr[31:5];

cacheSet set0(clk, reset, writeEnable0, miss, data, data, data, data, tag, tag, tag, tag, q1, q2, q3, q4, tag_out1, tag_out2, tag_out3, 
tag_out4, valid_out1, valid_out2, valid_out3, valid_out4, enable[0], hit, wayIndex, LRUWay0); 

cacheSet set1(clk, reset, writeEnable1, miss, data, data, data, data, tag, tag, tag, tag, q5, q6, q7, q8, tag_out5, tag_out6, tag_out7, 
tag_out8, valid_out5, valid_out6, valid_out7, valid_out8, enable[1], hit, wayIndex, LRUWay1); 
  
cacheSet set2(clk, reset, writeEnable2, miss, data, data, data, data, tag, tag, tag, tag, q9, q10, q11, q12, tag_out9, tag_out10, tag_out11, 
tag_out12, valid_out9, valid_out10, valid_out11, valid_out12, enable[2], hit, wayIndex, LRUWay2); 

cacheSet set3(clk, reset, writeEnable3, miss, data, data, data, data, tag, tag, tag, tag, q13, q14, q15, q16, tag_out13, tag_out14, 
tag_out15, tag_out16, valid_out13, valid_out14, valid_out15, valid_out16, enable[3], hit, wayIndex, LRUWay3);
  
cacheSet set4(clk, reset, writeEnable4, miss, data, data, data, data, tag, tag, tag, tag, q17, q18, q19, q20, tag_out17, tag_out18, 
tag_out19, tag_out20, valid_out17, valid_out18, valid_out19, valid_out20, enable[4], hit, wayIndex, LRUWay4);

cacheSet set5(clk, reset, writeEnable5, miss, data, data, data, data, tag, tag, tag, tag, q21, q22, q23, q24, tag_out21, tag_out22, 
tag_out23, tag_out24, valid_out21, valid_out22, valid_out23, valid_out24, enable[5], hit, wayIndex, LRUWay5);

cacheSet set6(clk, reset, writeEnable6, miss, data, data, data, data, tag, tag, tag, tag, q25, q26, q27, q28, tag_out25, tag_out26, 
tag_out27, tag_out28, valid_out25, valid_out26, valid_out27, valid_out28, enable[6], hit, wayIndex, LRUWay6);
  
cacheSet set7(clk, reset, writeEnable7, miss, data, data, data, data, tag, tag, tag, tag, q29, q30, q31, q32, tag_out29, tag_out30, 
tag_out31, tag_out32, valid_out29, valid_out30, valid_out31, valid_out32, enable[7], hit, wayIndex, LRUWay7);

  

 
mux_MemData r0(q1, q5, q9, q13, q17, q21, q25, q29, instr[4:2], Data_out1);
mux_MemData r1(q2, q6, q10, q14, q18, q22, q26, q30, instr[4:2], Data_out2);
mux_MemData r2(q3, q7, q11, q15, q19, q23, q27, q31, instr[4:2], Data_out3);
mux_MemData r3(q4, q8, q12, q16, q20, q24, q28, q32, instr[4:2], Data_out4);

mux_MemTag  m11( tag_out1, tag_out5, tag_out9, tag_out13, tag_out17, tag_out21, tag_out25, tag_out29, instr[4:2], Tag_out_out1);
mux_MemTag  m12( tag_out2, tag_out6, tag_out10, tag_out14, tag_out18, tag_out22, tag_out26, tag_out30, instr[4:2], Tag_out_out2);
mux_MemTag  m13( tag_out3, tag_out7, tag_out11, tag_out15, tag_out19, tag_out23, tag_out27, tag_out31, instr[4:2], Tag_out_out3);
mux_MemTag  m14( tag_out4, tag_out8, tag_out12, tag_out16, tag_out20, tag_out24, tag_out28, tag_out32, instr[4:2], Tag_out_out4);

mux_MemValid  r11( valid_out1, valid_out5, valid_out9, valid_out13, valid_out17, valid_out21, valid_out25, valid_out29, instr[4:2], Valid_out1);
mux_MemValid  r12( valid_out2, valid_out6, valid_out10, valid_out14, valid_out18, valid_out22, valid_out26, valid_out30, instr[4:2], valid_out_out2);
mux_MemValid  r13( valid_out3, valid_out7, valid_out11, valid_out15, valid_out19, valid_out23, valid_out27, valid_out31, instr[4:2], Valid_out3);
mux_MemValid  r14( valid_out4, valid_out8, valid_out12, valid_out16, valid_out20, valid_out24, valid_out28, valid_out32, instr[4:2], Valid_out4);

comparator_Mem r15(Tag_out_out1, instr[31:5], comp_out1);
comparator_Mem r16(Tag_out_out2, instr[31:5], comp_out2);
comparator_Mem r17(Tag_out_out3, instr[31:5], comp_out3);
comparator_Mem r18(Tag_out_out4, instr[31:5], comp_out4);

and x1(w1,comp_out1,Valid_out1);
and x2(w2,comp_out2,Valid_out2);
and x3(w3,comp_out3,Valid_out3);
and x4(w4,comp_out4,Valid_out4);

or u8(hit, w1,w2,w3,w4);
assign miss= ~hit;

decoder2to4 a1(LRUWay0, LRUdecOut0);
decoder2to4 a2(LRUWay1, LRUdecOut1);
decoder2to4 a3(LRUWay2, LRUdecOut2);
decoder2to4 a4(LRUWay3, LRUdecOut3);
decoder2to4 a5(LRUWay4, LRUdecOut4);
decoder2to4 a6(LRUWay5, LRUdecOut5);
decoder2to4 a7(LRUWay6, LRUdecOut6);
decoder2to4 a8(LRUWay7, LRUdecOut7);

assign writeEnable0 = {3'd0, MemWrite} & {3'd0,enable[0]} & LRUdecOut0;
assign writeEnable1 = {3'd0, MemWrite} & {3'd0,enable[1]} & LRUdecOut1;
assign writeEnable2 = {3'd0, MemWrite} & {3'd0,enable[2]} & LRUdecOut2;
assign writeEnable3 = {3'd0, MemWrite} & {3'd0,enable[3]} & LRUdecOut3;
assign writeEnable4 = {3'd0, MemWrite} & {3'd0,enable[4]} & LRUdecOut4;
assign writeEnable5 = {3'd0, MemWrite} & {3'd0,enable[5]} & LRUdecOut5;
assign writeEnable6 = {3'd0, MemWrite} & {3'd0,enable[6]} & LRUdecOut6;
assign writeEnable7 = {3'd0, MemWrite} & {3'd0,enable[7]} & LRUdecOut7;


// Masking of  data
always @(writeData)
begin
    if(instr[1:0] == 2'b00)
        maskedData = {block_out[127:32], writeData[31:0]};
    else if(instr[1:0] == 2'b01)
        maskedData = {block_out[127:64], writeData[31:0], block_out[31:0]};
    else if(instr[1:0] == 2'b10)
        maskedData = {block_out[127:96], writeData[31:0], block_out[63:0]};
    else if(instr[1:0] == 2'b11)
        maskedData = {writeData[31:0], block_out[95:0]};
end

mux16B_2to1 mux1(replaceData, maskedData, hit, data);

decoder3to8_Mem d1(instr[4:2], enable);

encoder_Mem r22(comp_out1,comp_out2,comp_out3,comp_out4,wayIndex);

mux_Memblock r19(Data_out1,Data_out2,Data_out3,Data_out4,wayIndex, block_out);

mux_MemOffset r21(block_out, instr[1:0], data_read);

mux32bits_2to1 muxRead(data_read, MemRead, read_out);


endmodule

module mux2to1_2bit(input [1:0] in0, input [1:0] in1, input Sel, output reg [1:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		case(Sel)
			1'b0:	muxOut=in0;
			1'b1:	muxOut=in1;
		endcase
	end
endmodule


module mux4to1_2bit(input [1:0] in0, input [1:0] in1, input [1:0] in2, input [1:0] in3, input [1:0] Sel, output reg [1:0] muxOut);
	always @ (in0,in1,in2,in3,Sel)
	begin
		case(Sel)
			2'b00:	muxOut=in0;
			2'b01:	muxOut=in1;
			2'b10:	muxOut=in2;
			2'b11:	muxOut=in3;
		endcase
	end
endmodule

/*
module decoder2to4(input [1:0] decIn, output reg [3:0] decOut);
	always @ (decIn)
	begin
		case(decIn)
			2'b00:	decOut=4'b0001;
			2'b01:	decOut=4'b0010;
			2'b10:	decOut=4'b0100;
			2'b11:	decOut=4'b1000;
		endcase
	end
endmodule */

	
module counter(input load,input enable, input clk, input reset, input [1:0] init_value, input dcr, output reg [1:0] count);
		
	always @ (enable, load, reset,negedge clk)
	begin
	  if (reset) 
        count=init_value;
      else if(enable)
      begin
		if(dcr)
			count=count-1;
		if(load)
			count=2'b11;
	  end
	end
endmodule	
		

module encoder4to2(input [3:0] encIn, output reg [1:0] encOut);
	always @ (encIn)
	begin
		case(encIn)
			4'b0000:	encOut=2'bxx;
			4'b0001:	encOut=2'b00;
			4'b0011:	encOut=2'b00;
			4'b0101:	encOut=2'b00;
			4'b0111:	encOut=2'b00;
			4'b1001:	encOut=2'b00;
			4'b1011:	encOut=2'b00;
			4'b1101:	encOut=2'b00;
			4'b1111:	encOut=2'b00;
						
			4'b0010:	encOut=2'b01;
			4'b0110:	encOut=2'b01;
			4'b1010:	encOut=2'b01;
			4'b1110:	encOut=2'b01;
			
			4'b0100:	encOut=2'b10;
			4'b1100:	encOut=2'b10;
						
			4'b1000:	encOut=2'b11;
		endcase
	end
endmodule



module comparator(input [1:0] in, input [1:0] ref, output reg dcr, output reg p);
	always @ (in,ref)
	begin
		if(in>ref)
			dcr=1'b1;
		else
			dcr=1'b0;
		
		if(in==2'b00)
			p=1'b1;
		else
			p=1'b0;
	end
endmodule
						
							
						
module lru(input [1:0] lineIndex,input enable, input clk, input reset, input hit, output reg [1:0] selectedWay);
	
	wire [1:0] mux1Out, mux2Out,cnt0Out,cnt1Out,cnt2Out,cnt3Out;
	wire [3:0] decOut;	
	wire comp0Dcr,comp1Dcr,comp2Dcr,comp3Dcr,comp0P,comp1P,comp2P,comp3P;
	reg [3:0] encIn;	
	wire [1:0] encOut;
  //reg [1:0] lruOut;
	
	always @ (comp0P,comp1P,comp2P,comp3P)
	begin
		encIn={comp3P,comp2P,comp1P,comp0P};
	end 
	
/*	always @ (encOut)
	begin
		lruOut=encOut;
	end */
		
	always @ (mux1Out)
	begin
		selectedWay=mux1Out;
	end 
					
	mux2to1_2bit mmux1(lruOut,lineIndex,hit,mux1Out);
	
	decoder2to4 dec(mux1Out,decOut);
	
	counter cnt0(decOut[0],enable,clk,reset,2'b00,(comp0Dcr&~decOut[0]),cnt0Out);
	
	counter cnt1(decOut[1],enable,clk,reset,2'b00,(comp1Dcr&~decOut[1]),cnt1Out);
	
	counter cnt2(decOut[2],enable,clk,reset,2'b00,(comp2Dcr&~decOut[2]),cnt2Out);
	
	counter cnt3(decOut[3],enable,clk,reset,2'b00,(comp3Dcr&~decOut[3]),cnt3Out);
	
	mux4to1_2bit mux2(cnt0Out,cnt1Out,cnt2Out,cnt3Out,mux1Out,mux2Out);

	comparator comp0(cnt0Out,mux2Out,comp0Dcr,comp0P);

	comparator comp1(cnt1Out,mux2Out,comp1Dcr,comp1P);
	
	comparator comp2(cnt2Out,mux2Out,comp2Dcr,comp2P);
	
	comparator comp3(cnt3Out,mux2Out,comp3Dcr,comp3P);
	
	encoder4to2 enc(encIn,encOut);

endmodule




module lru_tb;
	
	reg clk,reset,hit,enable;
	reg [1:0] lineIndex;	
	wire [1:0] lruOut;
		
	lru lrucnt(lineIndex,enable,clk,reset,hit,lruOut);
	
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
		#8 $finish;
		/*
		#1 reset=1'b0; hit=1'b0; lineIndex=2'b10;
		#39	hit=1'b1;
		#10 lineIndex=2'b00;
		#10 lineIndex=2'b10;
		#10 lineIndex=2'b11;
		#10 lineIndex=2'b01;
		#10 hit=1'b0;
		#70 $finish;
		*/
	end

endmodule


/*
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
*/



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
	
    cache_IM im(imOut, pcOut, clk, reset);
	//im insrtmem(clk,reset,pcOut,imOut);
	
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
	
    //cache_Mem dm(output miss, dmOut,input [31:0] instr, clk, reset, memWrite, memRead, input [127:0] replaceData, input [31:0] writeData);
	//dm datamem(clk,aluOut,AOut,memRead,memWrite,dmOut);
	
	mux4to1_32bit mux6(aluOut,dmOut,adderOut,32'd0,regWriteSrc,mux6Out);
	
	mux4to1_32bit mux7(adderOut,{adderOut[31:23],imOut[22:0]},AOut,32'd0,PCSrc,mux7Out);
	
	ctrlCkt control(imOut[31:23],imOut[18:16],regWrite,regDst,readC,aluSrc1,aluSrc2,aluSrc3,aluOp,PCSrc,memRead,memWrite,regWriteSrc);

endmodule

