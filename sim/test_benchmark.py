from common import *

import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

TEST_DIR = "../benchmarks/bin"
test_files = [os.path.join(TEST_DIR,f) for f in os.listdir(TEST_DIR) if f.endswith(".hex") and os.path.isfile(os.path.join(TEST_DIR, f))]

tohost = 0x90000000
max_run_cycles = 1000000
ipc_results = []

@cocotb.test()
async def benchmark_core(dut):
    #dut._log.setLevel("DEBUG")

    assert test_files, "Error: compile a test program before running simulation"

    with open("benchmark_results.txt", "w") as f:

        for app in test_files:
            dut._log.info(f"Running test: {app}")
            profile = Profile()
            mem = parse_verilog_hex(app)
            cocotb.start_soon(Clock(dut.clk, 32, unit="ps").start())
            await reset(dut)
            imem = cocotb.start_soon(sim_instr_mem(dut, mem))
            dmem = cocotb.start_soon(sim_data_mem(dut, mem))
            
            for cycle in range(max_run_cycles):
                await FallingEdge(dut.clk)

                if (not dut.stall_execution.value):
                    profile.record(dut.core.i_rd_data.value)

                if read_word(mem, tohost):
                    dut._log.info("Program halted (_tohost contains nonzero value)")
                    dut._log.info(f"Program halted after {cycle} cycles")
                    break
            else:
                dut._log.error(f"Error: program did not terminate within {max_run_cycles} cycles.")

            imem.cancel()
            dmem.cancel()

            cycles = int(dut.cycle_count.value)
            instr = int(dut.exec_count.value)

            f.write(f"Results for {app}\n")
            f.write(f"Total instructions: {instr}\n")
            f.write(f"Total cycles: {cycles}\n")
            f.write(f"IPC: {instr / cycles}\n")
            f.write(f"Profile: {profile.instr_cnt}\n")
            f.write("\n")
            ipc_results.append(instr / cycles)
        
        ipc_avg = sum(ipc_results) / len(ipc_results)
        f.write(f"Average:\n")
        f.write(f"IPC: {ipc_avg}\n")

