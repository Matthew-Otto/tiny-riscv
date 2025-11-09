SIM ?= verilator
TOPLEVEL_LANG = verilog

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = $(DUT)
# MODULE is the basename of the Python test file
COCOTB_TEST_MODULES = test_$(DUT)
VERILOG_SOURCES += $(shell find ../RTL -name "*.svh")
VERILOG_SOURCES += $(shell find ../RTL -name "*.sv")
EXTRA_ARGS += -I../RTL

# warnings
COMPILE_ARGS += -Wno-SELRANGE -Wno-WIDTH
# waveforms
EXTRA_ARGS += --trace --trace-fst --trace-threads 2 --trace-structs
EXTRA_ARGS += --threads 2

include $(shell cocotb-config --makefiles)/Makefile.sim

verify:
	$(MAKE) DUT=core COCOTB_TEST_MODULES=test_verify -j10

benchmark:
	$(MAKE) DUT=core COCOTB_TEST_MODULES=test_benchmark -j10
	surfer -s state.surf.ron dump.fst


verify_adder:
	$(MAKE) DUT=ripple_carry_adder COCOTB_TEST_MODULES=test_verify_adder -j10

verify_shifter:
	$(MAKE) DUT=shifter COCOTB_TEST_MODULES=test_verify_shifter -j10

waves:
	@test -f dump.fst || (echo "Error: dump.fst not found. Simulate a target first." && exit 1)
	surfer -s state.surf.ron dump.fst

clean::
	rm -rf __pycache__
	rm -f results.xml
