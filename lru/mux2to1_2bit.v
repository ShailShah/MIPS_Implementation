module mux2to1_2bit(input [1:0] in0, input [1:0] in1, input Sel, output reg [1:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		case(Sel)
			1'b0:	muxOut=in0;
			1'b1:	muxOut=in1;
		endcase
	end
endmodule

