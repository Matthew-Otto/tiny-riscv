# tiny-riscv
A minimum-area RV32E implementation


# TODO:

* get better benchmarks
* verify functionality
* benchmark serv
* write report


## Results:

Compare to:
* [SweRV Core EL2](https://github.com/chipsalliance/Cores-VeeR-EL2)
* [PicoRV32](https://github.com/YosysHQ/picorv32)

## Dependencies:
#### RTL simulation:
* [python3](https://www.python.org/downloads/)
* [cocotb](https://www.cocotb.org/)
* [verilator](https://www.veripool.org/verilator/)
* [surfer](https://surfer-project.org/)
#### Functional verification:
* [Spike](https://github.com/riscv-software-src/riscv-isa-sim)
#### Binary generation (tests/benchmarks):
* riscv-gnu-toolchain-bin:
    - riscv32-unknown-elf-gcc
    - riscv32-unknown-elf-objcopy
    - riscv32-unknown-elf-objdump
#### Area/Timing modeling:
* [Yosys](https://github.com/YosysHQ/yosys)
* [OpenROAD](https://github.com/The-OpenROAD-Project/OpenROAD)
* [OpenSTA](https://github.com/The-OpenROAD-Project/OpenSTA)
* [FreePDK45 StdCells](https://vlsiarch.ecen.okstate.edu/flows/FreePDK_SRC/osu_freepdk_1.0/lib/files/)


## Verification Procedure

Test programs are written in C and compiled for RV32i.\
The programs are loaded into a Python testbench.\
Cocotb and Verilator are used to simulate the RTL.\
The programs are also simulated using Spike.\
After every instruction the architectural state is compared between the two to verify correctness.

To run simulation, cd to the `sim` directory and run `make verify`


## Benchmarks

https://github.com/ucb-bar/riscv-benchmarks


## Synthesis
1. Install Yosys
2. Download `gscl45nm.lib` from https://vlsiarch.ecen.okstate.edu/flows/FreePDK_SRC/osu_freepdk_1.0/lib/files/ and place it in synthesis/lib
3. Run Yosys in the synthesis directory:
    ``` 
    $ cd synthesis
    $ yosys synth.ys
    ```
4. The resulting netlist can be found at `synthesis/output/synth_netlist.v`

## PnR