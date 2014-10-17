module testBench_DM;

	// Inputs
	reg [31:0] instr;
	reg clk;
	reg reset;
	reg MemWrite;
	reg MemRead;
	reg [127:0] replaceData;
	//reg [31:0] replaceData;
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

	
	initial begin
		// Initialize Inputs
		instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
		clk = 0;
		reset = 1;
		MemWrite = 1;
		MemRead = 1;
		replaceData = 0;
		
		writeData = 0;
		
		//#10 writeData = 32'b1111_1111_1111_1111_1111_1111_1111_1111;
	  #3 reset = 0;
	  //#10 MemWrite = 1;
	   
	  
	  #10 MemRead = 1;instr = 32'b0000_0000_0000_0000_0000_0000_0000_0011;
	 
		// Wait 600 ns for global reset to finish
		#600 $finish;
		
		//#9 $finish;
	end
	
	always
	#15 clk = ~clk;
	
	always @(miss)
	if (miss==1)
	  replaceData=128'hffff_eeee_dddd_cccc_bbbb_aaaa_9999_8888; 
	 //replaceData=32'hffff_eeee;//_dddd_cccc_bbbb_aaaa_9999_8888; 
      
endmodule
