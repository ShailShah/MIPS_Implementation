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
