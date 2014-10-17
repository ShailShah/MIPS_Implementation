module D_ff_mem(input clk, input reset, input regWrite, input hit, input d, output reg q);
	always @ (posedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(regWrite==1 && hit==0)
				q = d;
		end
	end
	
	always @ (negedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(regWrite==1)
				q = d;
		end
	end
endmodule

module data32bit(input clk, input reset, input regWrite, input hit, input [31:0] writeData, output [31:0] outBus);
	D_ff_mem dff0(clk, reset, regWrite, hit, writeData[0], outBus[0]);
	D_ff_mem dff1(clk, reset, regWrite, hit, writeData[1], outBus[1]);
	D_ff_mem dff2(clk, reset, regWrite, hit, writeData[2], outBus[2]);
	D_ff_mem dff3(clk, reset, regWrite, hit, writeData[3], outBus[3]);
	D_ff_mem dff4(clk, reset, regWrite, hit, writeData[4], outBus[4]);
	D_ff_mem dff5(clk, reset, regWrite, hit, writeData[5], outBus[5]);
	D_ff_mem dff6(clk, reset, regWrite, hit, writeData[6], outBus[6]);
	D_ff_mem dff7(clk, reset, regWrite, hit, writeData[7], outBus[7]);
	D_ff_mem dff8(clk, reset, regWrite, hit, writeData[8], outBus[8]);
	D_ff_mem dff9(clk, reset, regWrite, hit, writeData[9], outBus[9]);
	D_ff_mem dff10(clk, reset, regWrite, hit, writeData[10], outBus[10]);
	D_ff_mem dff11(clk, reset, regWrite, hit, writeData[11], outBus[11]);
	D_ff_mem dff12(clk, reset, regWrite, hit, writeData[12], outBus[12]);
	D_ff_mem dff13(clk, reset, regWrite, hit, writeData[13], outBus[13]);
	D_ff_mem dff14(clk, reset, regWrite, hit, writeData[14], outBus[14]);
	D_ff_mem dff15(clk, reset, regWrite, hit, writeData[15], outBus[15]);
	D_ff_mem dff16(clk, reset, regWrite, hit, writeData[16], outBus[16]);
	D_ff_mem dff17(clk, reset, regWrite, hit, writeData[17], outBus[17]);
	D_ff_mem dff18(clk, reset, regWrite, hit, writeData[18], outBus[18]);
	D_ff_mem dff19(clk, reset, regWrite, hit, writeData[19], outBus[19]);
	D_ff_mem dff20(clk, reset, regWrite, hit, writeData[20], outBus[20]);
	D_ff_mem dff21(clk, reset, regWrite, hit, writeData[21], outBus[21]);
	D_ff_mem dff22(clk, reset, regWrite, hit, writeData[22], outBus[22]);
	D_ff_mem dff23(clk, reset, regWrite, hit, writeData[23], outBus[23]);
	D_ff_mem dff24(clk, reset, regWrite, hit, writeData[24], outBus[24]);
	D_ff_mem dff25(clk, reset, regWrite, hit, writeData[25], outBus[25]);
	D_ff_mem dff26(clk, reset, regWrite, hit, writeData[26], outBus[26]);
	D_ff_mem dff27(clk, reset, regWrite, hit, writeData[27], outBus[27]);
	D_ff_mem dff28(clk, reset, regWrite, hit, writeData[28], outBus[28]);
	D_ff_mem dff29(clk, reset, regWrite, hit, writeData[29], outBus[29]);
	D_ff_mem dff30(clk, reset, regWrite, hit, writeData[30], outBus[30]);
	D_ff_mem dff31(clk, reset, regWrite, hit, writeData[31], outBus[31]);
endmodule

module tag27bit(input clk, input reset, input regWrite, input hit, input [26:0] writeData, output [26:0] outBus);
	D_ff_mem dff0(clk, reset, regWrite, hit, writeData[0], outBus[0]);
	D_ff_mem dff1(clk, reset, regWrite, hit, writeData[1], outBus[1]);
	D_ff_mem dff2(clk, reset, regWrite, hit, writeData[2], outBus[2]);
	D_ff_mem dff3(clk, reset, regWrite, hit, writeData[3], outBus[3]);
	D_ff_mem dff4(clk, reset, regWrite, hit, writeData[4], outBus[4]);
	D_ff_mem dff5(clk, reset, regWrite, hit, writeData[5], outBus[5]);
	D_ff_mem dff6(clk, reset, regWrite, hit, writeData[6], outBus[6]);
	D_ff_mem dff7(clk, reset, regWrite, hit, writeData[7], outBus[7]);
	D_ff_mem dff8(clk, reset, regWrite, hit, writeData[8], outBus[8]);
	D_ff_mem dff9(clk, reset, regWrite, hit, writeData[9], outBus[9]);
	D_ff_mem dff10(clk, reset, regWrite, hit, writeData[10], outBus[10]);
	D_ff_mem dff11(clk, reset, regWrite, hit, writeData[11], outBus[11]);
	D_ff_mem dff12(clk, reset, regWrite, hit, writeData[12], outBus[12]);
	D_ff_mem dff13(clk, reset, regWrite, hit, writeData[13], outBus[13]);
	D_ff_mem dff14(clk, reset, regWrite, hit, writeData[14], outBus[14]);
	D_ff_mem dff15(clk, reset, regWrite, hit, writeData[15], outBus[15]);
	D_ff_mem dff16(clk, reset, regWrite, hit, writeData[16], outBus[16]);
	D_ff_mem dff17(clk, reset, regWrite, hit, writeData[17], outBus[17]);
	D_ff_mem dff18(clk, reset, regWrite, hit, writeData[18], outBus[18]);
	D_ff_mem dff19(clk, reset, regWrite, hit, writeData[19], outBus[19]);
	D_ff_mem dff20(clk, reset, regWrite, hit, writeData[20], outBus[20]);
	D_ff_mem dff21(clk, reset, regWrite, hit, writeData[21], outBus[21]);
	D_ff_mem dff22(clk, reset, regWrite, hit, writeData[22], outBus[22]);
	D_ff_mem dff23(clk, reset, regWrite, hit, writeData[23], outBus[23]);
	D_ff_mem dff24(clk, reset, regWrite, hit, writeData[24], outBus[24]);
	D_ff_mem dff25(clk, reset, regWrite, hit, writeData[25], outBus[25]);
	D_ff_mem dff26(clk, reset, regWrite, hit, writeData[26], outBus[26]);
endmodule

module valid1bit(input clk, input reset, input regWrite, input hit, input writeData, output outBus);
	D_ff_mem dff0(clk, reset, regWrite, hit, writeData, outBus);
endmodule

module cacheLine(input clk, input reset, input [3:0] regWrite, input hit, input [127:0] writeData, output [127:0] outBus, input [26:0] tag, output [26:0] outTag, output outValid);
	data32bit reg0(clk, reset, regWrite[0], hit, writeData[31:0], outBus[31:0]);
	data32bit reg1(clk, reset, regWrite[1], hit, writeData[63:32], outBus[63:32]);
	data32bit reg2(clk, reset, regWrite[2], hit, writeData[95:64], outBus[95:64]);
	data32bit reg3(clk, reset, regWrite[3], hit, writeData[127:96], outBus[127:96]);

	tag27bit tag0(clk, reset, (regWrite[0]&regWrite[1]&regWrite[2]&regWrite[3]), hit, tag, outTag);

	valid1bit v0(clk, reset, (regWrite[0]&regWrite[1]&regWrite[2]&regWrite[3]), hit, 1'b1, outValid);
endmodule

module muxValid(input in0,input in1,input in2,input in3,input in4,input in5,input in6,input in7,input [2:0] Sel,output reg muxOut);
	always @(in0,in1,in2,in3,in4,in5,in6,in7,Sel)
	begin
		case(Sel)
			3'b000:muxOut=in0;
			3'b001:muxOut=in1;
			3'b010:muxOut=in2;
			3'b011:muxOut=in3;
			3'b100:muxOut=in4;
			3'b101:muxOut=in5;
			3'b110:muxOut=in6;
			3'b111:muxOut=in7;
		endcase
	end
endmodule

module muxTag(input [26:0] tag0,input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,input [26:0] tag4,input [26:0] tag5,input [26:0] tag6,input [26:0] tag7,input [2:0] Sel,output reg [26:0] muxOut);
	always @ (tag0,tag1,tag2,tag3,tag4,tag5,tag6,tag7,Sel)
	begin
		case(Sel)
			3'b000:muxOut=tag0;
			3'b001:muxOut=tag1;
			3'b010:muxOut=tag2;
			3'b011:muxOut=tag3;
			3'b100:muxOut=tag4;
			3'b101:muxOut=tag5;
			3'b110:muxOut=tag6;
			3'b111:muxOut=tag7;
		endcase
	end
endmodule

module muxData(input [127:0] in0,input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [127:0] in5,input [127:0] in6,input [127:0] in7,input [2:0] Sel, output reg [127:0] muxOut);
	always @ (in0,in1,in2,in3,in4,in5,in6,in7,Sel)
	begin
		case(Sel)
			3'b000:muxOut=in0;
			3'b001:muxOut=in1;
			3'b010:muxOut=in2;
			3'b011:muxOut=in3;
			3'b100:muxOut=in4;
			3'b101:muxOut=in5;
			3'b110:muxOut=in6;
			3'b111:muxOut=in7;
		endcase
	end
endmodule

module comparator_mem(input [26:0] in1,input [26:0] in2,output reg out);
	always @(in1,in2)
	begin
		if (in1==in2)
			out=1'b1;
		else
			out=1'b0;
	end
endmodule

module encoder_mem(input in1,input in2,input in3,input in4,output reg [1:0] out);
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

module muxLine(input [127:0] in0,input [127:0] in1,input [127:0] in2,input [127:0] in3,input [1:0] Sel,output reg [127:0] muxOut);
	always @(in0,in1,in2,in3,Sel)
	begin
		case(Sel)
			2'b00:muxOut=in0;
			2'b01:muxOut=in1;
			2'b10:muxOut=in2;
			2'b11:muxOut=in3;
		endcase
	end
endmodule

module muxOffset(input [127:0] data, input [1:0] Sel, input enable, output reg [31:0] muxOut);
	always @(data,Sel)
	begin
		if (~enable)
			muxOut=32'dx;
		else
		begin
			case (Sel)
				2'b00:	muxOut=data[31:0];
				2'b01:	muxOut=data[63:32];
				2'b10:	muxOut=data[95:64];
				2'b11:	muxOut=data[127:96];
		
			endcase
		end
	end
endmodule

module decoder3to8_mem(input [2:0] index,input enable,output reg [7:0] decOut);
	always @(index,enable)
	begin
		if(~enable)
			decOut=8'd0;
		else
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
	end
endmodule

////////////////////////////////////////////////////////////////////////
////////////////////// LRU /////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

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
endmodule

	
module counter(input load, input enable, input clk, input reset, input [1:0] init_value, input dcr, output reg [1:0] count);
	always @ (negedge clk,reset)
	begin
		if(reset)
			count=init_value;
		else
		begin
			if(enable)
			begin
				if(dcr)
					count=count-1;
				if(load)
					count=2'b11;
			end
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
						
							
						
module lru(input [1:0] lineIndex, input clk, input reset, input enable, input hit, output reg [1:0] lruOut);
	
	wire [1:0] mux1Out,mux2Out,cnt0Out,cnt1Out,cnt2Out,cnt3Out;
	wire [3:0] decOut;	
	wire comp0Dcr,comp1Dcr,comp2Dcr,comp3Dcr,comp0P,comp1P,comp2P,comp3P;
	reg [3:0] encIn;	
	wire [1:0] encOut;
	
	always @ (comp0P,comp1P,comp2P,comp3P)
	begin
		encIn={comp3P,comp2P,comp1P,comp0P};
	end 
	
	always @ (encOut)
	begin
		lruOut=encOut;
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


////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////


module regWriteControl(input memRead, input memWrite, input hit, input lineIndex, input lruOut, input offset, input index, output [15:0] regWrite0,regWrite1,regWrite2,regWrite3,regWrite4,regWrite5,regWrite6,regWrite7);
	always @ (memRead,memWrite,hit,lineIndex,lruOut,offset,index)
	begin
		if(~memRead && ~memWrite)
		begin
			regWrite0=16'd0;
			regWrite1=16'd0;
			regWrite2=16'd0;
			regWrite3=16'd0;
			regWrite4=16'd0;
			regWrite5=16'd0;
			regWrite6=16'd0;
			regWrite7=16'd0;
		end
		
		else
		begin
			if(memRead && hit)
			begin
				regWrite0=16'd0;
				regWrite1=16'd0;
				regWrite2=16'd0;
				regWrite3=16'd0;
				regWrite4=16'd0;
				regWrite5=16'd0;
				regWrite6=16'd0;
				regWrite7=16'd0;
			end
			else if(memread && ~hit)
			begin
				case(index)
					3'b000:	begin
								case(lruOut)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b001:	begin
								case(lruOut)
									2'b00:	regWrite1=16'b0000000000001111;
									2'b01:	regWrite1=16'b0000000011110000;
									2'b10:	regWrite1=16'b0000111100000000;
									2'b11:	regWrite1=16'b1111000000000000;
							end
					3'b010:	begin
								case(lruOut)
									2'b00:	regWrite2=16'b0000000000001111;
									2'b01:	regWrite2=16'b0000000011110000;
									2'b10:	regWrite2=16'b0000111100000000;
									2'b11:	regWrite2=16'b1111000000000000;
							end
					3'b011:	begin
								case(lruOut)
									2'b00:	regWrite3=16'b0000000000001111;
									2'b01:	regWrite3=16'b0000000011110000;
									2'b10:	regWrite3=16'b0000111100000000;
									2'b11:	regWrite3=16'b1111000000000000;
							end
					3'b100:	begin
								case(lruOut)
									2'b00:	regWrite4=16'b0000000000001111;
									2'b01:	regWrite4=16'b0000000011110000;
									2'b10:	regWrite4=16'b0000111100000000;
									2'b11:	regWrite4=16'b1111000000000000;
							end
					3'b101:	begin
								case(lruOut)
									2'b00:	regWrite5=16'b0000000000001111;
									2'b01:	regWrite5=16'b0000000011110000;
									2'b10:	regWrite5=16'b0000111100000000;
									2'b11:	regWrite5=16'b1111000000000000;
							end
					3'b110:	begin
								case(lruOut)
									2'b00:	regWrite6=16'b0000000000001111;
									2'b01:	regWrite6=16'b0000000011110000;
									2'b10:	regWrite6=16'b0000111100000000;
									2'b11:	regWrite6=16'b1111000000000000;
							end
					3'b111:	begin
								case(lruOut)
									2'b00:	regWrite7=16'b0000000000001111;
									2'b01:	regWrite7=16'b0000000011110000;
									2'b10:	regWrite7=16'b0000111100000000;
									2'b11:	regWrite7=16'b1111000000000000;
							end
			end
			
			else if(memWrite && hit)
			begin
				case(index)
					3'b000:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b001:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b010:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b011:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b100:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b101:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b110:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
					3'b111:	begin
								case(lineIndex)
									2'b00:	regWrite0=16'b0000000000001111;
									2'b01:	regWrite0=16'b0000000011110000;
									2'b10:	regWrite0=16'b0000111100000000;
									2'b11:	regWrite0=16'b1111000000000000;
							end
			end



















	

