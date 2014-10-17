module encoder4to2_tb;
	reg [3:0] encIn;
	wire [1:0] encOut;
	
	encoder4to2 enco(encIn,encOut);
	
	initial
	begin
		$dumpfile("encoder4to2_tb");
		$dumpvars;
		encIn=4'b0001;
		#5 encIn=4'b0011;
		#5 encIn=4'b0111;
		#5 encIn=4'b1100;
		#5 encIn=4'b1000;
		#5 encIn=4'b1111;
		#5 $finish;
	end
endmodule
		
	
