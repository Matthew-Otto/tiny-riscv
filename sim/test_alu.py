from pathlib import Path
import random

import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_alu(dut):

    dut.instr.value = 1
    dut.is_imm.value = 0

    for _ in range(10):
        a = random.getrandbits(32)
        b = random.getrandbits(32)
        dut.rs1_data.value = a
        dut.rs2_data.value = b

        await Timer(2, unit="ns")
        assert dut.rd_data.value == (a + b) & ((0x1<<32) - 1), f"Adder result incorrect: {hex(dut.rd_data.value)} != {hex(a + b)}"