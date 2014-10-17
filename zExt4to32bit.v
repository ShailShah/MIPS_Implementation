module zExt4to32bit( input [3:0] imm, output reg [31:0] zExtImm);
	always @ (imm)
	begin
		zExtImm={28'd0,imm};
	end
endmodule
