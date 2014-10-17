module D_ff(input clk, input reset, input init_value1b, input regWrite, input decOut1b, input d, output reg q);
	always @ (negedge clk)
	begin
		if(reset==1)
			q=init_value1b;
		else
			if(regWrite == 1 && decOut1b==1)
			begin
				q=d;
			end
	end
endmodule
