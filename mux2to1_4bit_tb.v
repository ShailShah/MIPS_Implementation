module mux2to1_4bit_tb;
	reg [3:0] in0,in1;
	reg Sel;
	wire [3:0] muxOut;

	mux2to1_4bit m(in0,in1,Sel,muxOut);
	
	initial
	begin
		$dumpfile("mux2to1_4bit_tb");
		$dumpvars;
		in0=4'd14;
		in1=4'd6;
		Sel=1'b0;
		#5	Sel=1'b1;
		#5	in0=4'd12;
		#5	Sel=1'b0;
		#5	$finish;
	end
endmodule
