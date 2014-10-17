module D_ff_IM (input clk, input reset, input init_value1b, output reg q);
always @ (negedge clk)
begin
if(reset==1)
q=init_value1b;

end
endmodule




module D_ff_IM_valid (input clk, input reset,output reg q);
always @ (negedge clk)
begin
if(reset==1)
q=1'b1;

end
endmodule




module D_ff_IM_tag (input clk, input reset,input init_value1b,output reg q);   //same as D_ff_IM
always @ (negedge clk)
begin
if(reset==1)
q=init_value1b;

end
endmodule




module comparator_IM(input [26:0] in1,input [26:0] in2,output reg out);
always @(in1,in2)
begin
if (in1==in2)
out=1'b1;
else
out=1'b0;
end
endmodule




module mux_IMData(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [127:0] in5,input [127:0] in6,input [127:0] in7,input [127:0] in8,input [2:0] Sel, output reg [127:0]  Data_out);
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




module mux_IMTag(input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,input [26:0] tag4,input [26:0] tag5,input [26:0] tag6,input [26:0] tag7,input [26:0] tag8,input [2:0] Sel,output reg [26:0] Tag_out);
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





module mux_IMValid(input in1,input in2,input in3,input in4,input in5,input in6,input in7,input in8, input [2:0] Sel,output reg Valid_out);
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





module mux_IMOffset(input [127:0] data, input [1:0] Sel,output reg [31:0] read_out);
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






module mux_IMblock(input [127:0] in1,input [127:0] in2,input [127:0] in3,input [127:0] in4,input [1:0] Sel,output reg [127:0] block_out);
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




module encoder_IM(input in1,input in2,input in3,input in4,output reg [1:0] out);
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




module instr_IM (input clk, input reset, input [31:0] init_value1,  output  [31:0] q);

D_ff_IM v0(clk, reset,init_value1[0],   q[0]);
D_ff_IM v1(clk, reset,init_value1[1],   q[1]);
D_ff_IM v2(clk, reset,init_value1[2],   q[2]);
D_ff_IM v3(clk, reset,init_value1[3],   q[3]);
D_ff_IM v4(clk, reset,init_value1[4],   q[4]);
D_ff_IM v5(clk, reset,init_value1[5],   q[5]);
D_ff_IM v6(clk, reset,init_value1[6],   q[6]);
D_ff_IM v7(clk, reset,init_value1[7],   q[7]);
D_ff_IM v8(clk, reset,init_value1[8],   q[8]);
D_ff_IM v9(clk, reset,init_value1[9],   q[9]);
D_ff_IM v10(clk, reset,init_value1[10], q[10]);
D_ff_IM v11(clk, reset,init_value1[11],   q[11]);
D_ff_IM v12(clk, reset,init_value1[12],   q[12]);
D_ff_IM v13(clk, reset,init_value1[13],   q[13]);
D_ff_IM v14(clk, reset,init_value1[14],   q[14]);
D_ff_IM v15(clk, reset,init_value1[15],   q[15]);
D_ff_IM v16(clk, reset,init_value1[16],   q[16]);
D_ff_IM v17(clk, reset,init_value1[17],   q[17]);
D_ff_IM v18(clk, reset,init_value1[18],   q[18]);
D_ff_IM v19(clk, reset,init_value1[19],   q[19]);
D_ff_IM v20(clk, reset,init_value1[20],   q[20]);
D_ff_IM v21(clk, reset,init_value1[21],  q[21]);
D_ff_IM v22(clk, reset,init_value1[22],   q[22]);
D_ff_IM v23(clk, reset,init_value1[23],  q[23]);
D_ff_IM v24(clk, reset,init_value1[24],   q[24]);
D_ff_IM v25(clk, reset,init_value1[25],   q[25]);
D_ff_IM v26(clk, reset,init_value1[26],   q[26]);
D_ff_IM v27(clk, reset,init_value1[27],   q[27]);
D_ff_IM v28(clk, reset,init_value1[28],   q[28]);
D_ff_IM v29(clk, reset,init_value1[29],   q[29]);
D_ff_IM v30(clk, reset,init_value1[30], q[30]);
D_ff_IM v31(clk, reset,init_value1[31],   q[31]);

endmodule




module block_IM (input clk, input reset, input [127:0] init_value, output [127:0] q, input [26:0] tag,output [26:0] tag_out,output valid);

instr_IM v32(clk,  reset, init_value[31:0],  q[31:0]);
instr_IM v33(clk,  reset, init_value[63:32],  q[63:32]);
instr_IM v34(clk,  reset, init_value[95:64],  q[95:64]);
instr_IM v35(clk,  reset, init_value[127:96],  q[127:96]);

tag_IM v63(clk, reset, tag, tag_out);

D_ff_IM_valid v64( clk,  reset,valid);
endmodule




module tag_IM(input clk, input reset, input [26:0] init_value1, output [26:0] q);

D_ff_IM_tag v36( clk, reset, init_value1[0],q[0]);
D_ff_IM_tag v37( clk, reset, init_value1[1],q[1]);
D_ff_IM_tag v38( clk, reset, init_value1[2],q[2]);
D_ff_IM_tag v39( clk, reset, init_value1[3],q[3]);
D_ff_IM_tag v40( clk, reset, init_value1[4],q[4]);
D_ff_IM_tag v41( clk, reset, init_value1[5],q[5]);
D_ff_IM_tag v42( clk, reset, init_value1[6],q[6]);
D_ff_IM_tag v43( clk, reset, init_value1[7],q[7]);
D_ff_IM_tag v44( clk, reset, init_value1[8],q[8]);
D_ff_IM_tag v45( clk, reset, init_value1[9],q[9]);
D_ff_IM_tag v46( clk, reset, init_value1[10],q[10]);
D_ff_IM_tag v47( clk, reset, init_value1[11],q[11]);
D_ff_IM_tag v48( clk, reset, init_value1[12],q[12]);
D_ff_IM_tag v49( clk, reset, init_value1[13],q[13]);
D_ff_IM_tag v50( clk, reset, init_value1[14],q[14]);
D_ff_IM_tag v51( clk, reset, init_value1[15],q[15]);
D_ff_IM_tag v52( clk, reset, init_value1[16],q[16]);
D_ff_IM_tag v53( clk, reset, init_value1[17],q[17]);
D_ff_IM_tag v54( clk, reset, init_value1[18],q[18]);
D_ff_IM_tag v55( clk, reset, init_value1[19],q[19]);
D_ff_IM_tag v56( clk, reset, init_value1[20],q[20]);
D_ff_IM_tag v57( clk, reset, init_value1[21],q[21]);
D_ff_IM_tag v58( clk, reset, init_value1[22],q[22]);
D_ff_IM_tag v59( clk, reset, init_value1[23],q[23]);
D_ff_IM_tag v60( clk, reset, init_value1[24],q[24]);
D_ff_IM_tag v61( clk, reset, init_value1[25],q[25]);
D_ff_IM_tag v62( clk, reset, init_value1[26],q[26]);

endmodule




module cache_line(input clk, input reset, input [127:0] init_value1, input [127:0] init_value2, input [127:0] init_value3, input [127:0] init_value4,
 output  [127:0] q1,output [127:0] q2,output [127:0] q3,output  [127:0] q4, input [26:0] tag1, input [26:0] tag2,input [26:0] tag3,
 input [26:0] tag4,output  [26:0] tag_out1,output  [26:0] tag_out2,output  [26:0] tag_out3,output  [26:0] tag_out4, 
 output  valid1,output valid2,output  valid3,output  valid4, input [1:0] wayIndex, input hit, output [1:0] LRUWay);

block_IM v65(clk, reset, init_value1, q1, tag1, tag_out1, valid1);
block_IM v66(clk, reset, init_value2, q2, tag2, tag_out2, valid2);
block_IM v67(clk, reset, init_value3, q3, tag3, tag_out3, valid3);
block_IM v68(clk, reset, init_value4, q4, tag4, tag_out4, valid4);
