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

TODO:\
run test programs in benchmarks in `benchmarks/bin`with spike:
`spike -d --isa=RV32I bin/towers.elf`
run the whole program:
`r`
record last PC
rerun spike and execute program with:
`untiln pc 0 <lastPC>`
then dump all registers
`reg 0`


## Synthesis
1. Install Yosys
2. Download `gscl45nm.lib` from https://vlsiarch.ecen.okstate.edu/flows/FreePDK_SRC/osu_freepdk_1.0/lib/files/ and place it in synthesis/lib
3. Run Yosys in the synthesis directory:
    - ``` 
      $ cd synthesis
      $ yosys synth.ys
      ```
4. The resulting netlist can be found at `synthesis/output/synth_netlist.v`

## PnR