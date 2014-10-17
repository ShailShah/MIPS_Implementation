module comparator(input [1:0] in, input [1:0] ref, output reg dcr, output reg p);
	always @ (in,ref)
	begin
		case(ref)
			2'b00:	begin
						case(in)
							2'b00:	begin	dcr=1'b0; p=1'b1;	end
							2'b01:	begin	dcr=1'b1; p=1'b1;	end
							2'b10:	begin	dcr=1'b1; p=1'b0;	end
							2'b11:	begin	dcr=1'b1; p=1'b0;	end
						endcase
					end
			2'b01:	begin
						case(in)
							2'b00:	begin	dcr=1'b0; p=1'b1;	end
							2'b01:	begin	dcr=1'b0; p=1'b0;	end
							2'b10:	begin	dcr=1'b1; p=1'b0;	end
							2'b11:	begin	dcr=1'b1; p=1'b0;	end
						endcase
					end
			2'b10:	begin
						case(in)
							2'b00:	begin	dcr=1'b0; p=1'b1;	end
							2'b01:	begin	dcr=1'b0; p=1'b0;	end
							2'b10:	begin	dcr=1'b0; p=1'b0;	end
							2'b11:	begin	dcr=1'b1; p=1'b0;	end
						endcase
					end
			2'b11:	begin
						case(in)
							2'b00:	begin	dcr=1'b0; p=1'b1;	end
							2'b01:	begin	dcr=1'b0; p=1'b0;	end
							2'b10:	begin	dcr=1'b0; p=1'b0;	end
							2'b11:	begin	dcr=1'b0; p=1'b0;	end
						endcase
					end
		endcase
	end
endmodule
						
							
							
		
				
	
