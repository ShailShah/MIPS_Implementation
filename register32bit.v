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

module register32bit(input clk, input reset, input [31:0] init_value, input regWrite, input decOut1b, input [31:0] writeData,output [31:0] outBus);
	D_ff d0(clk,reset,init_value[0],regWrite,decOut1b,writeData[0],outBus[0]);
	D_ff d1(clk,reset,init_value[1],regWrite,decOut1b,writeData[1],outBus[1]);
	D_ff d2(clk,reset,init_value[2],regWrite,decOut1b,writeData[2],outBus[2]);
	D_ff d3(clk,reset,init_value[3],regWrite,decOut1b,writeData[3],outBus[3]);
	D_ff d4(clk,reset,init_value[4],regWrite,decOut1b,writeData[4],outBus[4]);
	D_ff d5(clk,reset,init_value[5],regWrite,decOut1b,writeData[5],outBus[5]);
	D_ff d6(clk,reset,init_value[6],regWrite,decOut1b,writeData[6],outBus[6]);
	D_ff d7(clk,reset,init_value[7],regWrite,decOut1b,writeData[7],outBus[7]);
	D_ff d8(clk,reset,init_value[8],regWrite,decOut1b,writeData[8],outBus[8]);
	D_ff d9(clk,reset,init_value[9],regWrite,decOut1b,writeData[9],outBus[9]);
	D_ff d10(clk,reset,init_value[10],regWrite,decOut1b,writeData[10],outBus[10]);
	D_ff d11(clk,reset,init_value[11],regWrite,decOut1b,writeData[11],outBus[11]);
	D_ff d12(clk,reset,init_value[12],regWrite,decOut1b,writeData[12],outBus[12]);
	D_ff d13(clk,reset,init_value[13],regWrite,decOut1b,writeData[13],outBus[13]);
	D_ff d14(clk,reset,init_value[14],regWrite,decOut1b,writeData[14],outBus[14]);
	D_ff d15(clk,reset,init_value[15],regWrite,decOut1b,writeData[15],outBus[15]);
	D_ff d16(clk,reset,init_value[16],regWrite,decOut1b,writeData[16],outBus[16]);
	D_ff d17(clk,reset,init_value[17],regWrite,decOut1b,writeData[17],outBus[17]);
	D_ff d18(clk,reset,init_value[18],regWrite,decOut1b,writeData[18],outBus[18]);
	D_ff d19(clk,reset,init_value[19],regWrite,decOut1b,writeData[19],outBus[19]);
	D_ff d20(clk,reset,init_value[20],regWrite,decOut1b,writeData[20],outBus[20]);
	D_ff d21(clk,reset,init_value[21],regWrite,decOut1b,writeData[21],outBus[21]);
	D_ff d22(clk,reset,init_value[22],regWrite,decOut1b,writeData[22],outBus[22]);
	D_ff d23(clk,reset,init_value[23],regWrite,decOut1b,writeData[23],outBus[23]);
	D_ff d24(clk,reset,init_value[24],regWrite,decOut1b,writeData[24],outBus[24]);
	D_ff d25(clk,reset,init_value[25],regWrite,decOut1b,writeData[25],outBus[25]);
	D_ff d26(clk,reset,init_value[26],regWrite,decOut1b,writeData[26],outBus[26]);
	D_ff d27(clk,reset,init_value[27],regWrite,decOut1b,writeData[27],outBus[27]);
	D_ff d28(clk,reset,init_value[28],regWrite,decOut1b,writeData[28],outBus[28]);
	D_ff d29(clk,reset,init_value[29],regWrite,decOut1b,writeData[29],outBus[29]);
	D_ff d30(clk,reset,init_value[30],regWrite,decOut1b,writeData[30],outBus[30]);
	D_ff d31(clk,reset,init_value[31],regWrite,decOut1b,writeData[31],outBus[31]);
endmodule
