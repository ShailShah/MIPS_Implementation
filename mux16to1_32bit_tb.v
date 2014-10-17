module mux16to1_32bit_tb;
	reg [31:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15;
	reg [3:0] Sel;
	wire [31:0] muxOut;
	
	mux16to1_32bit mux(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,Sel,muxOut);
	
	initial
	begin
		in0=32'd0;
		in1=32'd1;
		in2=32'd2;
		in3=32'd3;
		in4=32'd4;
		in5=32'd5;
		in6=32'd6;
		in7=32'd7;
		in8=32'd8;
		in9=32'd9;
		in10=32'd10;
		in11=32'd11;
		in12=32'd12;
		in13=32'd13;
		in14=32'd14;
		in15=32'd15;
		Sel=4'd0;
		$dumpfile("mux16to1_32bit_tb");
        $dumpvars;
		#4	Sel=4'd5;
		#4	Sel=4'd10;
		#4	Sel=4'd3;
		#4	Sel=4'd15;
		#4	$finish;
	end
endmodule
