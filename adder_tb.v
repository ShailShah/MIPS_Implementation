module adder_tb;
	reg [31:0] in1,in2;
	wire [31:0] adder_out;
	
	adder ad(in1,in2,adder_out);
	
	initial
	begin
		$dumpfile("adder_tb");
		$dumpvars;
		in1=32'd5;
		in2=32'd10;
		#5	in1=-32'd15;
		#10	$finish;
	end
endmodule
