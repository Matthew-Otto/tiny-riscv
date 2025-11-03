from common import *

import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock



@cocotb.test()
async def test_adder(dut):
    dut._log.setLevel("DEBUG")

    for _ in range(10000000):
        sub = bool(random.getrandbits(1))
        a = random.getrandbits(32)
        b = random.getrandbits(32)
        
        dut.sub.value = sub
        dut.a.value = a
        dut.b.value = b

        await Timer(1, unit="ns")

        if sub:
            ref = (a - b) & 0xFFFFFFFF
            print(f"{hex(a)} - {hex(b)} = {hex(dut.sum.value)}")
        else:
            ref = (a + b) & 0xFFFFFFFF
            print(f"{hex(a)} + {hex(b)} = {hex(dut.sum.value)}")

        assert dut.sum.value == ref, f"sim: {hex(dut.sum.value)} =/= ref: {hex(ref)}"

