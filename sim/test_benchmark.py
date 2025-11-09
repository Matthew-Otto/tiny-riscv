from common import *

import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

TEST_DIR = "../benchmarks/bin"
test_files = [os.path.join(TEST_DIR,f) for f in os.listdir(TEST_DIR) if f.endswith(".hex") and os.path.isfile(os.path.join(TEST_DIR, f))]

cycles = 10000

@cocotb.test()
async def test_core_regression(dut):
    dut._log.setLevel("DEBUG")

    assert test_files, "Error: compile a test program before running simulation"

    for app in test_files:
        mem = parse_verilog_hex(app)
        cocotb.start_soon(Clock(dut.clk, 32, unit="ps").start())
        await reset(dut)
        imem = cocotb.start_soon(sim_instr_mem(dut, mem))
        dmem = cocotb.start_soon(sim_data_mem(dut, mem))
        
        for _ in range(cycles):
            await FallingEdge(dut.clk)
            if dut.i_rd_data.value == EBREAK:
                dut._log.info("Program halted (EBREAK detected)")
                break
        else:
            dut._log.error(f"Error: program did not terminate within {cycles} cycles.")

        imem.cancel()
        dmem.cancel()

        # TODO compare memory with SPIKE

