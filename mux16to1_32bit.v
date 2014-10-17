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
		
