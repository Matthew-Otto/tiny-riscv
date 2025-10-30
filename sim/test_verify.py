from common import *

import os
import random
from itertools import batched
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

TEST_DIR = "../tests"
test_files = [os.path.join(TEST_DIR,f) for f in os.listdir(TEST_DIR) if f.endswith(".hex") and os.path.isfile(os.path.join(TEST_DIR, f))]

@cocotb.test()
async def test_core_regression(dut):
    dut._log.setLevel("DEBUG")

    assert test_files, "Error: compile a test program before running simulation"

    for app in test_files:
        mem = parse_verilog_hex(app)
        cocotb.start_soon(Clock(dut.clk, 32, unit="ps").start())
        await reset(dut)
        cocotb.start_soon(sim_instr_mem(dut, mem))
        cocotb.start_soon(sim_data_mem(dut, mem))
        
        while True:
            await FallingEdge(dut.clk)
            if dut.i_rd_data.value == EBREAK:
                dut._log.info("Program halted (EBREAK detected)")
                break

        # TODO compare memory with SPIKE

