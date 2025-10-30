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
        await FallingEdge(dut.clk)
        addr = int(dut.i_addr.value)
        #dut._log.debug(f"Fetching instruction @ address {addr}")
        dut.i_rd_data.value = memory[addr]
        dut._log.debug(f"Fetched 0x{memory[addr]:08X} from address 0x{addr:08X}")


async def sim_data_mem(dut, memory):
    # drive memory
    while True:
        await FallingEdge(dut.clk)
        addr = int(dut.d_addr.value)
        if dut.d_we.value: # write
            if int(dut.d_we.value) > 2:
                memory[addr+3] = int(dut.d_wr_data.value[31:24])
                memory[addr+2] = int(dut.d_wr_data.value[23:16])
            if int(dut.d_we.value) > 1:
                memory[addr+1] = int(dut.d_wr_data.value[15:8])
            memory[addr] = int(dut.d_wr_data.value[7:0])

            width = 8 << 2**(int(dut.d_we.value)-1)
            data = int(dut.d_wr_data.value[width-1:0])
            dut._log.info(f"Mem write {width} bits: addr=0x{addr:08X} data=0x{data:08X}")
        else:
            dut.d_rd_data.value = memory.get(addr, 0)