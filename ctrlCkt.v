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
