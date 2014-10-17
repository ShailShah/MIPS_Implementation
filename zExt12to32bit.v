module zExt12to32bit( input [11:0] imm, output reg [31:0] zExtImm);
	always @ (imm)
	begin
		zExtImm={20'd0,imm};
	end
endmodule
