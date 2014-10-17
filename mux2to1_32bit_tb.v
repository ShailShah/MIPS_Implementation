module mux2to1_32bit_tb;
	reg [31:0] in0,in1;
	reg Sel;
	wire [31:0] muxOut;

	mux2to1_32bit m(in0,in1,Sel,muxOut);
	
	initial
	begin
		$dumpfile("mux2to1_32bit_tb");
		$dumpvars;
		in0=32'd500;
		in1=32'd666;
		Sel=1'b0;
		#5	Sel=1'b1;
		#5	in0=32'd999;
		#5	Sel=1'b0;
		#5	$finish;
	end
endmodule
