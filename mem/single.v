`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:05 11/25/2013 
// Design Name: 
// Module Name:    single 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module testBench_DM;

	// Inputs
	reg [31:0] instr;
	reg clk;
	reg reset;
	reg MemWrite;
	reg MemRead;
	reg [127:0] replaceData;
	reg [31:0] writeData;

	// Outputs
	wire [31:0] read_out;
	wire miss;

	// Instantiate the Unit Under Test (UUT)
	cache_Mem uut (
		.miss(miss),
		.read_out(read_out), 
		.instr(instr), 
		.clk(clk), 
		.reset(reset), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.replaceData(replaceData), 
		.writeData(writeData)
	);

	always
	#5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
		clk = 0;
		reset = 1;
		MemWrite = 0;
		MemRead = 0;
		replaceData = 0;
		
		writeData = 0;
		
		//#10 writeData = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
	  #10 reset = 0;
	  #10 MemWrite = 1;
	   
	  
	  #10 MemRead = 1;instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
	 
		// Wait 600 ns for global reset to finish
		#600 $finish;
		
		#9 $finish;
	end
	
	always @(miss)
	if (miss==1)
	  replaceData=128'hffff_0000_0000_0000_0000_0000_0000_0000; 
      
endmodule



module D_ff_Mem(input clk, input reset,input writeEnable,input miss,input d, output reg q);
	always @(posedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(writeEnable==1 & miss==1)
				q = d;
		end
	end
  
	always @(negedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(writeEnable)
				q = d;
		end
	end
endmodule

module D_ff_Mem_valid(input clk, input reset,input miss, input writeEnable, output reg q);
always @(posedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(writeEnable==1 & miss==1)
				q = 1'b1;
		end
	end
  
	always @(negedge clk)
	begin
		if(reset)
			q = 1'b0;
		else 
		begin
			if(writeEnable)
				q = 1'b1;
		end
	end
endmodule



//For 4B(32b) data
module instr_4B(input clk, input reset, input writeEnable,input miss, input [31:0] writeData, output [31:0] q);

D_ff_Mem v0(clk, reset, writeEnable, miss, writeData[0], q[0]);
D_ff_Mem v1(clk, reset, writeEnable, miss, writeData[1], q[1]);
D_ff_Mem v2(clk, reset, writeEnable, miss, writeData[2], q[2]);
D_ff_Mem v3(clk, reset, writeEnable, miss, writeData[3], q[3]);
D_ff_Mem v4(clk, reset, writeEnable, miss, writeData[4], q[4]);
D_ff_Mem v5(clk, reset, writeEnable, miss, writeData[5], q[5]);
D_ff_Mem v6(clk, reset, writeEnable, miss, writeData[6], q[6]);
D_ff_Mem v7(clk, reset, writeEnable, miss, writeData[7], q[7]);
D_ff_Mem v8(clk, reset, writeEnable, miss, writeData[8], q[8]);
D_ff_Mem v9(clk, reset, writeEnable, miss, writeData[9], q[9]);
D_ff_Mem v10(clk, reset, writeEnable, miss, writeData[10], q[10]);
D_ff_Mem v11(clk, reset, writeEnable, miss, writeData[11], q[11]);
D_ff_Mem v12(clk, reset, writeEnable, miss, writeData[12], q[12]);
D_ff_Mem v13(clk, reset, writeEnable, miss, writeData[13], q[13]);
D_ff_Mem v14(clk, reset, writeEnable, miss, writeData[14], q[14]);
D_ff_Mem v15(clk, reset, writeEnable, miss, writeData[15], q[15]);
D_ff_Mem v16(clk, reset, writeEnable, miss, writeData[16], q[16]);
D_ff_Mem v17(clk, reset, writeEnable, miss, writeData[17], q[17]);
D_ff_Mem v18(clk, reset, writeEnable, miss, writeData[18], q[18]);
D_ff_Mem v19(clk, reset, writeEnable, miss, writeData[19], q[19]);
D_ff_Mem v20(clk, reset, writeEnable, miss, writeData[20], q[20]);
D_ff_Mem v21(clk, reset, writeEnable, miss, writeData[21], q[21]);
D_ff_Mem v22(clk, reset, writeEnable, miss, writeData[22], q[22]);
D_ff_Mem v23(clk, reset, writeEnable, miss, writeData[23], q[23]);
D_ff_Mem v24(clk, reset, writeEnable, miss, writeData[24], q[24]);
D_ff_Mem v25(clk, reset, writeEnable, miss, writeData[25], q[25]);
D_ff_Mem v26(clk, reset, writeEnable, miss, writeData[26], q[26]);
D_ff_Mem v27(clk, reset, writeEnable, miss, writeData[27], q[27]);
D_ff_Mem v28(clk, reset, writeEnable, miss, writeData[28], q[28]);
D_ff_Mem v29(clk, reset, writeEnable, miss, writeData[29], q[29]);
D_ff_Mem v30(clk, reset, writeEnable, miss, writeData[30], q[30]);
D_ff_Mem v31(clk, reset, writeEnable, miss, writeData[31], q[31]);

endmodule


// 27b tag
module tag_27bits(input clk, input reset, input writeEnable, input miss, input [26:0] writeData, output [26:0] q);

D_ff_Mem v0(clk, reset, writeEnable, miss, writeData[0], q[0]);
D_ff_Mem v1(clk, reset, writeEnable, miss, writeData[1], q[1]);
D_ff_Mem v2(clk, reset, writeEnable, miss, writeData[2], q[2]);
D_ff_Mem v3(clk, reset, writeEnable, miss, writeData[3], q[3]);
D_ff_Mem v4(clk, reset, writeEnable, miss, writeData[4], q[4]);
D_ff_Mem v5(clk, reset, writeEnable, miss, writeData[5], q[5]);
D_ff_Mem v6(clk, reset, writeEnable, miss, writeData[6], q[6]);
D_ff_Mem v7(clk, reset, writeEnable, miss, writeData[7], q[7]);
D_ff_Mem v8(clk, reset, writeEnable, miss, writeData[8], q[8]);
D_ff_Mem v9(clk, reset, writeEnable, miss, writeData[9], q[9]);
D_ff_Mem v10(clk, reset, writeEnable, miss, writeData[10], q[10]);
D_ff_Mem v11(clk, reset, writeEnable, miss, writeData[11], q[11]);
D_ff_Mem v12(clk, reset, writeEnable, miss, writeData[12], q[12]);
D_ff_Mem v13(clk, reset, writeEnable, miss, writeData[13], q[13]);
D_ff_Mem v14(clk, reset, writeEnable, miss, writeData[14], q[14]);
D_ff_Mem v15(clk, reset, writeEnable, miss, writeData[15], q[15]);
D_ff_Mem v16(clk, reset, writeEnable, miss, writeData[16], q[16]);
D_ff_Mem v17(clk, reset, writeEnable, miss, writeData[17], q[17]);
D_ff_Mem v18(clk, reset, writeEnable, miss, writeData[18], q[18]);
D_ff_Mem v19(clk, reset, writeEnable, miss, writeData[19], q[19]);
D_ff_Mem v20(clk, reset, writeEnable, miss, writeData[20], q[20]);
D_ff_Mem v21(clk, reset, writeEnable, miss, writeData[21], q[21]);
D_ff_Mem v22(clk, reset, writeEnable, miss, writeData[22], q[22]);
D_ff_Mem v23(clk, reset, writeEnable, miss, writeData[23], q[23]);
D_ff_Mem v24(clk, reset, writeEnable, miss, writeData[24], q[24]);
D_ff_Mem v25(clk, reset, writeEnable, miss, writeData[25], q[25]);
D_ff_Mem v26(clk, reset, writeEnable, miss, writeData[26], q[26]);

endmodule





//1b V/I
module validInvalid1bit(input clk, input reset, input miss,input writeEnable, output q);

D_ff_Mem_valid v0(clk, reset,miss, writeEnable, q);

endmodule




//16B block or cache line
module block_16B(input clk, input reset, input writeEnable,input miss, input [127:0] finalWriteData, output [127:0] q, input [26:0] tag, 
output [26:0] tag_out, output valid_out );

instr_4B v0(clk, reset, writeEnable, miss, finalWriteData[31:0], q[31:0]);
instr_4B v1(clk, reset, writeEnable, miss, finalWriteData[63:32], q[63:32]);
instr_4B v2(clk, reset, writeEnable, miss, finalWriteData[95:64], q[95:64]);
instr_4B v3(clk, reset, writeEnable, miss, finalWriteData[127:96], q[127:96]);

tag_27bits tag0(clk, reset, writeEnable, miss, tag, tag_out);

validInvalid1bit d1(clk, reset, miss,writeEnable, valid_out);

endmodule




module cacheSet(input clk, input reset, input [3:0] writeEnable, input miss,input [127:0] finalWriteData0, finalWriteData1, finalWriteData2, finalWriteData3,
input [26:0] tag0, tag1, tag2, tag3, output [127:0] data0, data1, data2, data3, output [26:0] tag_out0, tag_out1, tag_out2, tag_out3, 
output valid_out0, valid_out1, valid_out2, valid_out3, input enable, input hit, input [1:0] wayIndex, output [1:0] LRUWay);  
 
block_16B b0(clk, reset, writeEnable[0], miss, finalWriteData0, data0, tag0, tag_out0, valid_out0 );
block_16B b1(clk, reset, writeEnable[1], miss, finalWriteData1, data1, tag1, tag_out1, valid_out1 ); 
block_16B b2(clk, reset, writeEnable[2], miss, finalWriteData2, data2, tag2, tag_out2, valid_out2 );  
block_16B b3(clk, reset, writeEnable[3], miss, finalWriteData3, data3, tag3, tag_out3, valid_out3 ); 
 
lru l0(wayIndex,enable,clk, reset, hit, LRUWay);

 
endmodule



module comparator_Mem(input [26:0] in1,input [26:0] in2,output reg out);
always @(in1,in2)
begin
if (in1==in2)
out=1'b1;
else
out=1'b0;
end
endmodule




module mux_MemData(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [127:0] in5,input [127:0] in6,
input [127:0] in7,input [127:0] in8,input [2:0] Sel, output reg [127:0] Data_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Data_out=in1;
3'b001:Data_out=in2;
3'b010:Data_out=in3;
3'b011:Data_out=in4;
3'b100:Data_out=in5;
3'b101:Data_out=in6;
3'b110:Data_out=in7;
3'b111:Data_out=in8;

endcase
end
endmodule




module mux_MemTag(input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,input [26:0] tag4,input [26:0] tag5,input [26:0] tag6,
input [26:0] tag7,input [26:0] tag8,input [2:0] Sel,output reg [26:0] Tag_out);
always @(tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,Sel)
begin
case(Sel)
3'b000:Tag_out=tag1;
3'b001:Tag_out=tag2;
3'b010:Tag_out=tag3;
3'b011:Tag_out=tag4;
3'b100:Tag_out=tag5;
3'b101:Tag_out=tag6;
3'b110:Tag_out=tag7;
3'b111:Tag_out=tag8;

endcase
end
endmodule





module mux_MemValid(input in1,input in2,input in3,input in4,input in5,input in6,input in7,input in8, input [2:0] Sel,output reg Valid_out);
always @(in1,in2,in3,in4,in5,in6,in7,in8,Sel)
begin
case(Sel)
3'b000:Valid_out=in1;
3'b001:Valid_out=in2;
3'b010:Valid_out=in3;
3'b011:Valid_out=in4;
3'b100:Valid_out=in5;
3'b101:Valid_out=in6;
3'b110:Valid_out=in7;
3'b111:Valid_out=in8;

endcase
end
endmodule





module mux_MemOffset(input [127:0] data, input [1:0] Sel,output reg [31:0] read_out);
always @(data,Sel)
begin
case (Sel)
2'b00:read_out=data[31:0];
2'b01:read_out=data[63:32];
2'b10:read_out=data[95:64];
2'b11:read_out=data[127:96];
endcase
end
endmodule





module mux_Memblock(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [1:0] Sel,output reg [127:0] block_out);
always @(in1,in2,in3,in4,Sel)
begin
case(Sel)
2'b00:block_out=in1;
2'b01:block_out=in2;
2'b10:block_out=in3;
2'b11:block_out=in4;
endcase
end
endmodule




module encoder_Mem(input in1,input in2,input in3,input in4,output reg [1:0] out);
always @(in1,in2,in3,in4)
begin
casex({in4,in3,in2,in1})
4'bxxx1:out=2'b00;
4'bxx10:out=2'b01;
4'bx100:out=2'b10;
4'b1000:out=2'b11;

endcase
end
endmodule



module decoder3to8_Mem(input [2:0] index, output reg [7:0] decOut);

always @(index)
begin
    case(index)
        3'b000: decOut = 8'b0000_0001;
        3'b001: decOut = 8'b0000_0010;
        3'b010: decOut = 8'b0000_0100;
        3'b011: decOut = 8'b0000_1000;
        3'b100: decOut = 8'b0001_0000;
        3'b101: decOut = 8'b0010_0000;
        3'b110: decOut = 8'b0100_0000;
        3'b111: decOut = 8'b1000_0000;
    endcase
end
endmodule


module decoder2to4(input [1:0] in, output reg [3:0] out);
always@(in)
begin
case(in)
2'b00: out = 4'b0001;
2'b01: out = 4'b0010;
2'b10: out = 4'b0100;
2'b11: out = 4'b1000;
endcase
end
endmodule


module mux16B_2to1(input [127:0] in1, in2, input hit, output reg [127:0] data);

always @(in1, in2, hit)
begin
    case(hit)
        1'b0: data = in1;
        1'b1: data = in2;
    endcase
end
endmodule




module mux32bits_2to1(input [31:0] in1, input Sel, output reg [31:0] muxOut);

always @(in1, Sel)
begin
    case(Sel)
        1'b0: muxOut = 32'd0;
        1'b1: muxOut = in1;
    endcase
end
endmodule




module cache_Mem(output miss, output [31:0] read_out,input [31:0] instr,input clk, input reset, input MemWrite, MemRead, input [127:0] replaceData, 
input [31:0] writeData);
 
wire [26:0] tag;
wire [127:0] data;
wire [127:0] q1, q2, q3, q4;
wire [127:0] q5, q6, q7, q8;
wire [127:0] q9, q10, q11, q12;
wire [127:0] q13, q14, q15, q16;
wire [127:0] q17, q18, q19, q20;
wire [127:0] q21, q22, q23, q24;
wire [127:0] q25, q26, q27, q28;
wire [127:0] q29, q30, q31, q32;


wire [26:0] tag_out1, tag_out2, tag_out3, tag_out4, tag_out5, tag_out6, tag_out7, tag_out8;
wire [26:0] tag_out9, tag_out10, tag_out11, tag_out12, tag_out13, tag_out14, tag_out15, tag_out16;
wire [26:0] tag_out17, tag_out18, tag_out19, tag_out20, tag_out21, tag_out22, tag_out23, tag_out24;
wire [26:0] tag_out25, tag_out26, tag_out27, tag_out28, tag_out29, tag_out30, tag_out31, tag_out32;

wire valid_out1, valid_out2, valid_out3, valid_out4;
wire valid_out5, valid_out6, valid_out7, valid_out8;
wire valid_out9, valid_out10, valid_out11, valid_out12;
wire valid_out13, valid_out14, valid_out15, valid_out16;
wire valid_out17, valid_out18, valid_out19, valid_out20;
wire valid_out21, valid_out22, valid_out23, valid_out24;
wire valid_out25, valid_out26, valid_out27, valid_out28;
wire valid_out29, valid_out30, valid_out31, valid_out32;

wire [127:0] Data_out1;
wire [127:0] Data_out2;
wire [127:0] Data_out3;
wire [127:0] Data_out4;
wire [26:0] Tag_out_out1;
wire [26:0] Tag_out_out2;
wire [26:0] Tag_out_out3;
wire [26:0] Tag_out_out4;
wire Valid_out1;
wire Valid_out2;
wire Valid_out3;
wire Valid_out4;
wire comp_out1;
wire comp_out2;
wire comp_out3;
wire comp_out4;
wire w1,w2,w3,w4;
wire hit;
wire [127:0] block_out;
wire [1:0] wayIndex;
wire [7:0] enable;
wire [1:0] LRUWay0, LRUWay1, LRUWay2, LRUWay3, LRUWay4, LRUWay5, LRUWay6, LRUWay7;
wire [3:0] LRUdecOut0, LRUdecOut1, LRUdecOut2, LRUdecOut3, LRUdecOut4, LRUdecOut5, LRUdecOut6, LRUdecOut7; 
wire [3:0] writeEnable0, writeEnable1, writeEnable2, writeEnable3, writeEnable4, writeEnable5, writeEnable6, writeEnable7;
reg [127:0] maskedData;
wire [31:0] data_read;

assign tag = instr[31:5];

cacheSet set0(clk, reset, writeEnable0, miss, data, data, data, data, tag, tag, tag, tag, q1, q2, q3, q4, tag_out1, tag_out2, tag_out3, 
tag_out4, valid_out1, valid_out2, valid_out3, valid_out4, enable[0], hit, wayIndex, LRUWay0); 

cacheSet set1(clk, reset, writeEnable1, miss, data, data, data, data, tag, tag, tag, tag, q5, q6, q7, q8, tag_out5, tag_out6, tag_out7, 
tag_out8, valid_out5, valid_out6, valid_out7, valid_out8, enable[1], hit, wayIndex, LRUWay1); 
  
cacheSet set2(clk, reset, writeEnable2, miss, data, data, data, data, tag, tag, tag, tag, q9, q10, q11, q12, tag_out9, tag_out10, tag_out11, 
tag_out12, valid_out9, valid_out10, valid_out11, valid_out12, enable[2], hit, wayIndex, LRUWay2); 

cacheSet set3(clk, reset, writeEnable3, miss, data, data, data, data, tag, tag, tag, tag, q13, q14, q15, q16, tag_out13, tag_out14, 
tag_out15, tag_out16, valid_out13, valid_out14, valid_out15, valid_out16, enable[3], hit, wayIndex, LRUWay3);
  
cacheSet set4(clk, reset, writeEnable4, miss, data, data, data, data, tag, tag, tag, tag, q17, q18, q19, q20, tag_out17, tag_out18, 
tag_out19, tag_out20, valid_out17, valid_out18, valid_out19, valid_out20, enable[4], hit, wayIndex, LRUWay4);

cacheSet set5(clk, reset, writeEnable5, miss, data, data, data, data, tag, tag, tag, tag, q21, q22, q23, q24, tag_out21, tag_out22, 
tag_out23, tag_out24, valid_out21, valid_out22, valid_out23, valid_out24, enable[5], hit, wayIndex, LRUWay5);

cacheSet set6(clk, reset, writeEnable6, miss, data, data, data, data, tag, tag, tag, tag, q25, q26, q27, q28, tag_out25, tag_out26, 
tag_out27, tag_out28, valid_out25, valid_out26, valid_out27, valid_out28, enable[6], hit, wayIndex, LRUWay6);
  
cacheSet set7(clk, reset, writeEnable7, miss, data, data, data, data, tag, tag, tag, tag, q29, q30, q31, q32, tag_out29, tag_out30, 
tag_out31, tag_out32, valid_out29, valid_out30, valid_out31, valid_out32, enable[7], hit, wayIndex, LRUWay7);

  

 
mux_MemData r0(q1, q5, q9, q13, q17, q21, q25, q29, instr[4:2], Data_out1);
mux_MemData r1(q2, q6, q10, q14, q18, q22, q26, q30, instr[4:2], Data_out2);
mux_MemData r2(q3, q7, q11, q15, q19, q23, q27, q31, instr[4:2], Data_out3);
mux_MemData r3(q4, q8, q12, q16, q20, q24, q28, q32, instr[4:2], Data_out4);

mux_MemTag  m11( tag_out1, tag_out5, tag_out9, tag_out13, tag_out17, tag_out21, tag_out25, tag_out29, instr[4:2], Tag_out_out1);
mux_MemTag  m12( tag_out2, tag_out6, tag_out10, tag_out14, tag_out18, tag_out22, tag_out26, tag_out30, instr[4:2], Tag_out_out2);
mux_MemTag  m13( tag_out3, tag_out7, tag_out11, tag_out15, tag_out19, tag_out23, tag_out27, tag_out31, instr[4:2], Tag_out_out3);
mux_MemTag  m14( tag_out4, tag_out8, tag_out12, tag_out16, tag_out20, tag_out24, tag_out28, tag_out32, instr[4:2], Tag_out_out4);

mux_MemValid  r11( valid_out1, valid_out5, valid_out9, valid_out13, valid_out17, valid_out21, valid_out25, valid_out29, instr[4:2], Valid_out1);
mux_MemValid  r12( valid_out2, valid_out6, valid_out10, valid_out14, valid_out18, valid_out22, valid_out26, valid_out30, instr[4:2], valid_out_out2);
mux_MemValid  r13( valid_out3, valid_out7, valid_out11, valid_out15, valid_out19, valid_out23, valid_out27, valid_out31, instr[4:2], Valid_out3);
mux_MemValid  r14( valid_out4, valid_out8, valid_out12, valid_out16, valid_out20, valid_out24, valid_out28, valid_out32, instr[4:2], Valid_out4);

comparator_Mem r15(Tag_out_out1, instr[31:5], comp_out1);
comparator_Mem r16(Tag_out_out2, instr[31:5], comp_out2);
comparator_Mem r17(Tag_out_out3, instr[31:5], comp_out3);
comparator_Mem r18(Tag_out_out4, instr[31:5], comp_out4);

and x1(w1,comp_out1,Valid_out1);
and x2(w2,comp_out2,Valid_out2);
and x3(w3,comp_out3,Valid_out3);
and x4(w4,comp_out4,Valid_out4);

or u8(hit, w1,w2,w3,w4);
assign miss= ~hit;

decoder2to4 a1(LRUWay0, LRUdecOut0);
decoder2to4 a2(LRUWay1, LRUdecOut1);
decoder2to4 a3(LRUWay2, LRUdecOut2);
decoder2to4 a4(LRUWay3, LRUdecOut3);
decoder2to4 a5(LRUWay4, LRUdecOut4);
decoder2to4 a6(LRUWay5, LRUdecOut5);
decoder2to4 a7(LRUWay6, LRUdecOut6);
decoder2to4 a8(LRUWay7, LRUdecOut7);

assign writeEnable0 = {3'd0, MemWrite} & {3'd0,enable[0]} & LRUdecOut0;
assign writeEnable1 = {3'd0, MemWrite} & {3'd0,enable[1]} & LRUdecOut1;
assign writeEnable2 = {3'd0, MemWrite} & {3'd0,enable[2]} & LRUdecOut2;
assign writeEnable3 = {3'd0, MemWrite} & {3'd0,enable[3]} & LRUdecOut3;
assign writeEnable4 = {3'd0, MemWrite} & {3'd0,enable[4]} & LRUdecOut4;
assign writeEnable5 = {3'd0, MemWrite} & {3'd0,enable[5]} & LRUdecOut5;
assign writeEnable6 = {3'd0, MemWrite} & {3'd0,enable[6]} & LRUdecOut6;
assign writeEnable7 = {3'd0, MemWrite} & {3'd0,enable[7]} & LRUdecOut7;


// Masking of  data
always @(writeData)
begin
    if(instr[1:0] == 2'b00)
        maskedData = {block_out[127:32], writeData[31:0]};
    else if(instr[1:0] == 2'b01)
        maskedData = {block_out[127:64], writeData[31:0], block_out[31:0]};
    else if(instr[1:0] == 2'b10)
        maskedData = {block_out[127:96], writeData[31:0], block_out[63:0]};
    else if(instr[1:0] == 2'b11)
        maskedData = {writeData[31:0], block_out[95:0]};
end

mux16B_2to1 mux1(replaceData, maskedData, hit, data);

decoder3to8_Mem d1(instr[4:2], enable);

encoder_Mem r22(comp_out1,comp_out2,comp_out3,comp_out4,wayIndex);

mux_Memblock r19(Data_out1,Data_out2,Data_out3,Data_out4,wayIndex, block_out);

mux_MemOffset r21(block_out, instr[1:0], data_read);

mux32bits_2to1 muxRead(data_read, MemRead, read_out);


endmodule

module mux2to1_2bit(input [1:0] in0, input [1:0] in1, input Sel, output reg [1:0] muxOut);
	always @ (in0,in1,Sel)
	begin
		case(Sel)
			1'b0:	muxOut=in0;
			1'b1:	muxOut=in1;
		endcase
	end
endmodule


module mux4to1_2bit(input [1:0] in0, input [1:0] in1, input [1:0] in2, input [1:0] in3, input [1:0] Sel, output reg [1:0] muxOut);
	always @ (in0,in1,in2,in3,Sel)
	begin
		case(Sel)
			2'b00:	muxOut=in0;
			2'b01:	muxOut=in1;
			2'b10:	muxOut=in2;
			2'b11:	muxOut=in3;
		endcase
	end
endmodule

/*
module decoder2to4(input [1:0] decIn, output reg [3:0] decOut);
	always @ (decIn)
	begin
		case(decIn)
			2'b00:	decOut=4'b0001;
			2'b01:	decOut=4'b0010;
			2'b10:	decOut=4'b0100;
			2'b11:	decOut=4'b1000;
		endcase
	end
endmodule */

	
module counter(input load,input enable, input clk, input reset, input [1:0] init_value, input dcr, output reg [1:0] count);
		
	always @ (reset,negedge clk)
	begin
	  if (enable) begin
		if(reset)
			count=init_value;
		else
		begin
			if(dcr)
				count=count-1;
			if(load)
				count=2'b11;
			
		end
		end
	end
endmodule	
		

module encoder4to2(input [3:0] encIn, output reg [1:0] encOut);
	always @ (encIn)
	begin
		case(encIn)
			4'b0000:	encOut=2'bxx;
			4'b0001:	encOut=2'b00;
			4'b0011:	encOut=2'b00;
			4'b0101:	encOut=2'b00;
			4'b0111:	encOut=2'b00;
			4'b1001:	encOut=2'b00;
			4'b1011:	encOut=2'b00;
			4'b1101:	encOut=2'b00;
			4'b1111:	encOut=2'b00;
						
			4'b0010:	encOut=2'b01;
			4'b0110:	encOut=2'b01;
			4'b1010:	encOut=2'b01;
			4'b1110:	encOut=2'b01;
			
			4'b0100:	encOut=2'b10;
			4'b1100:	encOut=2'b10;
						
			4'b1000:	encOut=2'b11;
		endcase
	end
endmodule



module comparator(input [1:0] in, input [1:0] ref, output reg dcr, output reg p);
	always @ (in,ref)
	begin
		if(in>ref)
			dcr=1'b1;
		else
			dcr=1'b0;
		
		if(in==2'b00)
			p=1'b1;
		else
			p=1'b0;
	end
endmodule
						
							
						
module lru(input [1:0] lineIndex,input enable, input clk, input reset, input hit, output reg [1:0] lruOut);
	
	wire [1:0] mux1Out,mux2Out,cnt0Out,cnt1Out,cnt2Out,cnt3Out;
	wire [3:0] decOut;	
	wire comp0Dcr,comp1Dcr,comp2Dcr,comp3Dcr,comp0P,comp1P,comp2P,comp3P;
	reg [3:0] encIn;	
	wire [1:0] encOut;
	
	always @ (comp0P,comp1P,comp2P,comp3P)
	begin
		encIn={comp3P,comp2P,comp1P,comp0P};
	end 
	
	always @ (encOut)
	begin
		lruOut=encOut;
	end
		
				
	mux2to1_2bit mmux1(lruOut,lineIndex,hit,mux1Out);
	
	decoder2to4 dec(mux1Out,decOut);
	
	counter cnt0(decOut[0],enable,clk,reset,2'b00,(comp0Dcr&~decOut[0]),cnt0Out);
	
	counter cnt1(decOut[1],enable,clk,reset,2'b00,(comp1Dcr&~decOut[1]),cnt1Out);
	
	counter cnt2(decOut[2],enable,clk,reset,2'b00,(comp2Dcr&~decOut[2]),cnt2Out);
	
	counter cnt3(decOut[3],enable,clk,reset,2'b00,(comp3Dcr&~decOut[3]),cnt3Out);
	
	mux4to1_2bit mux2(cnt0Out,cnt1Out,cnt2Out,cnt3Out,mux1Out,mux2Out);

	comparator comp0(cnt0Out,mux2Out,comp0Dcr,comp0P);

	comparator comp1(cnt1Out,mux2Out,comp1Dcr,comp1P);
	
	comparator comp2(cnt2Out,mux2Out,comp2Dcr,comp2P);
	
	comparator comp3(cnt3Out,mux2Out,comp3Dcr,comp3P);
	
	encoder4to2 enc(encIn,encOut);

endmodule




module lru_tb;
	
	reg clk,reset,hit,enable;
	reg [1:0] lineIndex;	
	wire [1:0] lruOut;
		
	lru lrucnt(lineIndex,enable,clk,reset,hit,lruOut);
	
	always
	begin
		#5 clk=~clk;
	end
	
	initial
	begin
		$dumpfile("lru_tb");
		$dumpvars;
		clk=1'b0;
		reset=1'b1;
		enable=1'b1;
		#8 $finish;
		/*
		#1 reset=1'b0; hit=1'b0; lineIndex=2'b10;
		#39	hit=1'b1;
		#10 lineIndex=2'b00;
		#10 lineIndex=2'b10;
		#10 lineIndex=2'b11;
		#10 lineIndex=2'b01;
		#10 hit=1'b0;
		#70 $finish;
		*/
	end

endmodule
