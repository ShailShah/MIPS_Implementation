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
