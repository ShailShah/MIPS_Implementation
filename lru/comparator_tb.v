module comparator_tb;
	reg [1:0] in,ref;
	wire dcr,p;
	
	comparator cmp(in,ref,dcr,p);
	
	initial
	begin
		$dumpfile("comparator_tb");
		$dumpvars;
		in=2'b0;
		ref=2'b0;
		#5	in=2'b00; ref=2'b01;
		#5	in=2'b01; ref=2'b01;
		#5	in=2'b11; ref=2'b01;
		#5	in=2'b10; ref=2'b11;
		#5 $finish;
	end
endmodule
	
