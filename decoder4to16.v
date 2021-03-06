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
