import os
from pathlib import Path
from cocotb_tools.runner import get_runner

def test_runner():
    sim = "verilator"

    rtl_path = Path(__file__).resolve().parent.parent / "RTL"
    includes = [rtl_path]
    sources = [rtl_path / "alu.sv"]

    runner = get_runner(sim)
    runner.build(
        sources=sources,
        includes=includes,
        hdl_toplevel="alu",
        #always=True,
    )

    # Run the test
    runner.test(
        hdl_toplevel="alu",
        test_module="test_alu",  # your test module name (without .py)
        # optional: gui=True, waves=True, etc.
    )

if __name__ == "__main__":
    test_runner()
