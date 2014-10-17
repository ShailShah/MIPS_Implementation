D_ff:
	iverilog D_ff.v D_ff_tb.v
	./a.out
	gtkwave D_ff_tb
	rm ./a.out D_ff_tb

decoder4to16:
	iverilog decoder4to16.v decoder4to16_tb.v
	./a.out
	gtkwave decoder4to16_tb
	rm ./a.out decoder4to16_tb

register32bit:
	iverilog register32bit.v register32bit_tb.v
	./a.out
	gtkwave register32bit_tb
	rm ./a.out register32bit_tb

mux16to1_32bit:
	iverilog mux16to1_32bit.v mux16to1_32bit_tb.v
	./a.out
	gtkwave mux16to1_32bit_tb
	rm ./a.out mux16to1_32bit_tb

registerFile:
	iverilog registerFile.v registerFile_tb.v
	./a.out
	gtkwave registerFile_tb
	rm ./a.out registerFile_tb
	
adder:
	iverilog adder.v adder_tb.v
	./a.out
	gtkwave adder_tb
	rm ./a.out adder_tb
	
alu:
	iverilog alu.v alu_tb.v
	./a.out
	gtkwave alu_tb
	rm ./a.out alu_tb
	
ctrlCkt:
	iverilog ctrlCkt.v ctrlCkt_tb.v
	./a.out
	gtkwave ctrlCkt_tb
	rm ./a.out ctrlCkt_tb

mux2to1_4bit:
	iverilog mux2to1_4bit.v mux2to1_4bit_tb.v
	./a.out
	gtkwave mux2to1_4bit_tb
	rm ./a.out mux2to1_4bit_tb

mux2to1_32bit:
	iverilog mux2to1_32bit.v mux2to1_32bit_tb.v
	./a.out
	gtkwave mux2to1_32bit_tb
	rm ./a.out mux2to1_32bit_tb
	
mux4to1_32bit:
	iverilog mux4to1_32bit.v mux4to1_32bit_tb.v
	./a.out
	gtkwave mux4to1_32bit_tb
	rm ./a.out mux4to1_32bit_tb

sExt12to32bit:
	iverilog sExt12to32bit.v sExt12to32bit_tb.v
	./a.out
	gtkwave sExt12to32bit_tb
	rm ./a.out sExt12to32bit_tb
	
zExt12to32bit:
	iverilog zExt12to32bit.v zExt12to32bit_tb.v
	./a.out
	gtkwave zExt12to32bit_tb
	rm ./a.out zExt12to32bit_tb
	
zExt4to32bit:
	iverilog zExt4to32bit.v zExt4to32bit_tb.v
	./a.out
	gtkwave zExt4to32bit_tb
	rm ./a.out zExt4to32bit_tb
	
test:
	iverilog test.v test_tb.v
	./a.out
	gtkwave test_tb
	rm ./a.out test_tb
	
datapath:
	iverilog datapath.v datapath_tb.v
	./a.out
	gtkwave datapath_tb
	rm ./a.out datapath_tb
