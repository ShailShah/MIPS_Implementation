module mux2to1_4bit(input [3:0] in0, input [3:0] in1, input Sel, output reg [3:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		if(~Sel)
			muxOut=in0;
		else
			muxOut=in1;
	end
endmodule
