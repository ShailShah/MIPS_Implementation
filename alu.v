module alu(input [31:0] aluSrc1, input [31:0] aluSrc2, input [31:0] aluSrc3, input [3:0] operation, output reg [31:0] aluResult, output reg carry);
	reg [32:0] temp;
	always @ (aluSrc1,aluSrc2,aluSrc3,operation)
	begin
		case(operation)
			4'b0000:	{carry,aluResult}=aluSrc1+aluSrc2;
			4'b0001:	{carry,aluResult}=aluSrc2-aluSrc1;
			4'b0010:	begin	
							aluResult=aluSrc1&aluSrc2;
							carry=1'b0;
						end		
			4'b0011:	{carry,aluResult}=aluSrc1<<aluSrc2;
			4'b0100:	{carry,aluResult}=aluSrc1>>aluSrc2;
			4'b0101:	{carry,aluResult}=(aluSrc1*aluSrc2)+aluSrc3;
			4'b0110:	{carry,aluResult}=(aluSrc1*aluSrc2)-aluSrc3;
			4'b0111:	{carry,aluResult}=(aluSrc1+aluSrc2)-aluSrc3;
			4'b1000:	{carry,aluResult}=aluSrc1+(aluSrc2<<aluSrc3);
			4'b1001:	{carry,aluResult}=aluSrc1+(aluSrc2>>aluSrc3);
		endcase
	end
endmodule

/*

aluOp:

0000		src1+src2
0001		src2-src1
0010		src1&src2
0011		src1<<src2
0100		src1>>src2
0101		(src1*src2)+src3
0110		(src1*src2)-src3
0111		src1+src2-src3
1000		src1+(src2<<src3)
1001		src1+(src2>>src3)

*/
