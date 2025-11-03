from common import *

import os
import random
from pathlib import Path

import cocotb
from cocotb.triggers import Timer, ReadOnly, ReadWrite, ClockCycles, RisingEdge, FallingEdge
from cocotb.clock import Clock



@cocotb.test()
async def test_shifter(dut):
    dut._log.setLevel("DEBUG")

    for _ in range(10000000):
        shift_right = bool(random.getrandbits(1))
        if shift_right:
            shift_arith = bool(random.getrandbits(1))
        else:
            shift_arith = False
        shamt = random.getrandbits(5)
        data_in = random.getrandbits(32)
        
        dut.sr.value = shift_right
        dut.arith.value = shift_arith
        dut.shamt.value = shamt
        dut.data_in.value = data_in

        await Timer(1, unit="ns")

        print(f"{hex(data_in)} ", end="")
        if shift_right and shift_arith:
            if data_in & 0x80000000:
                data_in = data_in - 0x100000000
            ref = (data_in >> shamt) & 0xFFFFFFFF
            print(f" >>> {shamt} = {hex(ref)}")
        elif shift_right:
            ref = (data_in >> shamt) & (0xFFFFFFFF >> shamt)
            print(f" >> {shamt} = {hex(ref)}")
        else:
            ref = (data_in << shamt) & 0xFFFFFFFF
            print(f" << {shamt} = {hex(ref)}")

        assert dut.data_out.value == ref, f"sim: {hex(dut.data_out.value)} =/= ref: {hex(ref)}"

