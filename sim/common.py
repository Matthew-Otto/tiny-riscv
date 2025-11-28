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
                for byte in line_bytes:
                    memory[address] = int(byte)
                    address += 1

    return memory


async def reset(dut):
    dut.rst.value = 1
    await ClockCycles(dut.clk, 5)
    dut.rst.value = 0
    print("Core reset")


def read_word(memory, addr):
    data  = memory.get(addr, 0)
    data |= memory.get(addr+1, 0) << 8
    data |= memory.get(addr+2, 0) << 16
    data |= memory.get(addr+3, 0) << 24
    return data


async def sim_instr_mem(dut, memory):
    # drive i_mem
    while True:
        await RisingEdge(dut.clk)
        addr = int(dut.i_addr.value)
        #dut._log.debug(f"Fetching instruction @ address {addr}")
        data = read_word(memory,addr)
        dut.i_rd_data.value = data
        if not dut.core.fetch_stall.value:
            dut._log.debug(f"{int(dut.cycle_count.value)}: Fetched 0x{data:08X} from address 0x{addr:08X}")


async def sim_data_mem(dut, memory):
    # drive memory
    rd_addr = 0
    while True:
        await RisingEdge(dut.clk)
        
        # write
        wr_addr = int(dut.d_addr.value)
        data = 0
        width = 0
        if dut.d_we.value[0]:
            memory[wr_addr] = int(dut.d_wr_data.value[7:0])
            data |= int(dut.d_wr_data.value[7:0])
            width = 8
        if dut.d_we.value[1]:
            memory[wr_addr+1] = int(dut.d_wr_data.value[15:8])
            data |= int(dut.d_wr_data.value[15:8]) << 8
            width = 16
        if dut.d_we.value[2]:
            memory[wr_addr+2] = int(dut.d_wr_data.value[23:16])
            data |= int(dut.d_wr_data.value[23:16]) << 16
            width = 24
        if dut.d_we.value[3]:
            memory[wr_addr+3] = int(dut.d_wr_data.value[31:24])
            data |= int(dut.d_wr_data.value[31:24]) << 24
            width = 32
        if dut.d_we.value:
            dut._log.debug(f"{int(dut.cycle_count.value)}: WRITE mem: {width} bits: addr=0x{wr_addr:08X} data=0x{data:08X}")
        
        # read
        if dut.core.LSU_i.is_load_op.value:
            rd_addr = int(dut.d_addr.value)
            data = read_word(memory, rd_addr)
            dut.d_rd_data.value = data
            dut._log.debug(f"{int(dut.cycle_count.value)}: READ mem: addr=0x{rd_addr:08X} data=0x{data:08X}")
        