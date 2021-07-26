.PHONY: sim
sim: riscv_alu_div.v
	verilator -cc $< -Wall -Wno-fatal -CFLAGS "-std=c++11 -Wall -DTOPLEVEL_NAME=soc_domain -g -O0"

riscv_alu_div.v: riscv_alu_div.sv
	sv2v $< > $@