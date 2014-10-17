module sExt12to32bit( input [11:0] imm, output reg [31:0] sExtImm);
	always @ (imm)
	begin
		sExtImm={imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm[11],imm};
	end
endmodule
