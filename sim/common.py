from itertools import batched

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock

EBREAK = 0x00100073  # EBREAK encoding

def parse_verilog_hex(filename):
    memory = {}
    address = 0

    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('//'):
                continue
            if line.startswith('@'):
                address = int(line[1:], 16)
            else:
                line_bytes = bytes.fromhex(line)
                for word in batched(line_bytes, 4):
                    memory[address] = int.from_bytes(word, byteorder='little')
                    address += 4

    return memory


async def reset(dut):
    dut.rst.value = 1
    await ClockCycles(dut.clk, 5)
    dut.rst.value = 0
    print("Core reset")


async def sim_instr_mem(dut, memory):
    # drive i_mem
    while True:
        await RisingEdge(dut.clk)
        addr = int(dut.i_addr.value)
        #dut._log.debug(f"Fetching instruction @ address {addr}")
        dut.i_rd_data.value = memory[addr]
        if not dut.fetch_stall.value:
            dut._log.debug(f"Fetched 0x{memory[addr]:08X} from address 0x{addr:08X}")


async def sim_data_mem(dut, memory):
    # drive memory
    while True:
        await RisingEdge(dut.clk)
        addr = int(dut.d_addr.value)
        # write
        if dut.d_we.value[3]:
            memory[addr+3] = int(dut.d_wr_data.value[31:24])
        if dut.d_we.value[2]:
            memory[addr+2] = int(dut.d_wr_data.value[23:16])
        if dut.d_we.value[1]:
            memory[addr+1] = int(dut.d_wr_data.value[15:8])
        if dut.d_we.value[0]:
            memory[addr] = int(dut.d_wr_data.value[7:0])
        if dut.d_we.value:
            data = int(dut.d_wr_data.value)
            dut._log.info(f"WRITE mem: {0} bits: addr=0x{addr:08X} data=0x{data:08X}")
        elif dut.LSU_i.ld_valid.value:
            dut.d_rd_data.value = memory.get(addr, 0)
            data = memory.get(addr, 0)
            dut._log.info(f"READ mem: addr=0x{addr:08X} data=0x{data:08X}")