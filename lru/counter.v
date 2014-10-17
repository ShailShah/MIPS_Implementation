module counter(input load, input clk, input reset, input dcr, output reg [1:0] count);
		
	always @ (negedge clk)
	begin
		if(reset)
			count=2'b00;
		else
		begin
			if(dcr)
				count=count-1;
			if(load)
				count=2'b11;
			
		end
	end
endmodule	
		
