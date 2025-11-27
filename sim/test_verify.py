from common import *
from spike_runner import *

import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

TEST_DIR = "../benchmarks/bin"
test_files = [os.path.join(TEST_DIR,f) for f in os.listdir(TEST_DIR) if f.endswith(".hex") and os.path.isfile(os.path.join(TEST_DIR, f))]
elf_files = [e.replace(".hex", ".elf") for e in test_files]

max_run_cycles = 10000

@cocotb.test()
async def test_core_regression(dut):
    dut._log.setLevel("DEBUG")

    assert test_files, "Error: compile a test program before running simulation"
    for e in elf_files:
        if not os.path.isfile(e):
            assert 0, f"Error: elf file {e} does not exist"

    for hex_f, elf_f in zip(test_files, elf_files):
        print(f"hex path: {hex}")
        print(f"elf path: {elf_f}")
        print("\n\n\n\n\n")
        ref_sim = SpikeRunner(elf_f)
        mem, tohost = parse_verilog_hex(hex_f)

        cocotb.start_soon(Clock(dut.clk, 32, unit="ps").start())
        await reset(dut)
        imem = cocotb.start_soon(sim_instr_mem(dut, mem))
        dmem = cocotb.start_soon(sim_data_mem(dut, mem))
        

        await RisingEdge(dut.clk)
        last_cycle_valid = False
        dut.regfile_i.regs[5].value = 0x80000000
        dut.regfile_i.regs[11].value = 0x00001020

        for cycle in range(max_run_cycles):
            await RisingEdge(dut.clk)

            # check registers (last cycle from spike)
            if (last_cycle_valid and not dut.stall_execution.value):
                last_cycle_valid = False
                for idx,reg in enumerate(sim_regfile[1:], 1):
                    # write buffer
                    if (dut.core.LSU_i.ld_valid.value and dut.we.value and dut.rd.value == idx):
                        rtlregval = dut.rd_data.value
                    else:
                        rtlreg = dut.regfile_i.regs[idx]
                        rtlregval = rtlreg.value
                    assert reg == rtlregval, f"reg{idx} mismatch: spike {hex(reg)} rtl: {hex(rtlregval)}"
            
            # check pc and instr
            if (not dut.stall_execution.value):
                last_cycle_valid = True
                sim_pc, sim_instr = ref_sim.step()
                assert sim_pc == dut.core.PC.value, f"PC mismatch: spike: {hex(sim_pc)} rtl: {hex(dut.core.PC.value)}"
                assert sim_instr == dut.core.i_rd_data.value, f"Instr mismatch: spike: {hex(sim_instr)} rtl: {hex(dut.core.i_rd_data.value)}"
                sim_regfile = ref_sim.regs()
                    
            
            if read_word(mem, tohost):
                dut._log.info("Program halted (_tohost contains nonzero value)")
                print(f"Program halted after {cycle} cycles")
                break
            
        else:
            dut._log.error(f"Error: program did not terminate within {max_run_cycles} cycles.")

        imem.cancel()
        dmem.cancel()

