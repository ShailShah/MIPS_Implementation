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

