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
