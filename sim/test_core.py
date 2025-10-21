import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

TEST_BIN_DIR = "../test_apps"
bin_files = [os.path.join(TEST_BIN_DIR,f) for f in os.listdir(TEST_BIN_DIR) if f.endswith(".bin") and os.path.isfile(os.path.join(TEST_BIN_DIR, f))]


async def reset(dut):
    dut.rst.value = 1
    await ClockCycles(dut.clk, 5)
    dut.rst.value = 0
    print("Core reset")


I_MEM = []
async def sim_instr_mem(dut, binary_file):
    # load binary file
    with open(binary_file, "rb") as bin:
        while word := bin.read(4):
            instr = int.from_bytes(word, byteorder='little')
            I_MEM.append(instr)

    # drive i_mem
    while True:
        await FallingEdge(dut.clk)
        addr = int(dut.i_addr.value)
        word_addr = addr >> 2
        #dut._log.debug(f"Fetching instruction @ address {addr}")
        dut.i_rd_data.value = I_MEM[word_addr]
        dut._log.debug(f"Fetched 0x{I_MEM[word_addr]:08X} from address 0x{addr:08X}")


D_MEM = {}
async def sim_data_mem(dut):
    # drive d_mem
    while True:
        await FallingEdge(dut.clk)
        addr = int(dut.d_addr.value)
        if dut.d_we.value: # write
            if int(dut.d_we.value) > 2:
                D_MEM[addr+3] = int(dut.d_wr_data.value[31:24])
                D_MEM[addr+2] = int(dut.d_wr_data.value[23:16])
            if int(dut.d_we.value) > 1:
                D_MEM[addr+1] = int(dut.d_wr_data.value[15:8])
            D_MEM[addr] = int(dut.d_wr_data.value[7:0])

            width = 8 << 2**(int(dut.d_we.value)-1)
            data = int(dut.d_wr_data.value[width-1:0])
            dut._log.info(f"Mem write {width} bits: addr=0x{addr:08X} data=0x{data:08X}")
        else:
            dut.d_rd_data.value = D_MEM.get(addr, 0)
            
            



@cocotb.test()
async def test_core_regression(dut):
    dut._log.setLevel("DEBUG")

    assert bin_files, "Error: compile a test program before running simulation"

    for binary in bin_files:

        cocotb.start_soon(Clock(dut.clk, 32, unit="ps").start())
        await reset(dut)
        cocotb.start_soon(sim_instr_mem(dut, binary))
        cocotb.start_soon(sim_data_mem(dut))
        

        last_pc = 1
        for _ in range(20):
            await FallingEdge(dut.clk)
            if dut.BRU_i.PC.value == last_pc:
                break
            last_pc = dut.BRU_i.PC.value

        print([hex(b) for b in D_MEM.values()])

