module mux4to1_32bit_tb;
	reg [31:0] in0,in1,in2,in3;
	reg [1:0] Sel;
	wire [31:0] muxOut;

	mux4to1_32bit m(in0,in1,in2,in3,Sel,muxOut);
	
	initial
	begin
		$dumpfile("mux4to1_32bit_tb");
		$dumpvars;
		in0=32'd555;
		in1=32'd666;
		Sel=2'b00;
		#5	Sel=2'b01;
		#5	in2=32'd777;in3=32'd888;
		#5	Sel=2'b10;
		#5	Sel=2'b11;
		#5	in0=32'd123;
		#5	Sel=2'b00;
		#5	$finish;
	end
endmodule
