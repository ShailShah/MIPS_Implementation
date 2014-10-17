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

