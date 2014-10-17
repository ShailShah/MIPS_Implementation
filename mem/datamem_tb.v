module datamem_tb;
	reg clk,reset,hit;
	reg [3:0] regWrite;
	reg [127:0] writeData;
	wire [127:0] outBus;
	reg [26:0] tag;
	wire [26:0] outTag;
	wire outValid;
		
	cacheLine cl(clk,reset,regWrite,hit,writeData,outBus,tag,outTag,outValid);
	
	always
		#5 clk=~clk;
		
	initial
	begin
		$dumpfile("datamem_tb");
		$dumpvars;
		clk=1'b0;
		reset=1'b1;
		regWrite=4'd0;
		hit=1'b0;
		#10	reset=1'b0; 
		#1	regWrite=4'd15; writeData=128'd128;
		#5	writeData=128'd256;
		#5	hit=1'b1; writeData=128'd200;
		#10 $finish;
	end
endmodule












/*
if(~hit)
					begin
						if(memRead)
							begin
								case(index)
									3'b000:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b001:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b010:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b011:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b100:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b101:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b110:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
									3'b111:	begin
												case(lruOut)
													2'b00:	regWrite0=16'b0000000000001111;
													2'b01:	regWrite0=16'b0000000011110000;
													2'b10:	regWrite0=16'b0000111100000000;
													2'b11:	regWrite0=16'b1111000000000000;
											end
