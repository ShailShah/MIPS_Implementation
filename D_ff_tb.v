module D_ff_tb;
	reg clk,reset,init_value1b,regWrite,decOut1b,d;
	wire q;
			
	D_ff dff(clk,reset,init_value1b,regWrite,decOut1b,d,q);

	always
	begin
		#1	clk=~clk;
	end
	
	initial
	begin
		clk=0;reset=1;init_value1b=0;regWrite=0;decOut1b=0;d=0;
		$dumpfile("D_ff_tb");
        $dumpvars;
		//$monitor($time," ");
		#2	reset=0;regWrite=1;decOut1b=1;d=1;
		#2	d=0;
		#6	d=1;
		#1	reset=1;
		#1	reset=0;
		#2	regWrite=0;d=0;
		#2	regWrite=1;decOut1b=0;
		#2	regWrite=1;decOut1b=1;
		#6	$finish;
	end
endmodule
