# tiny-riscv
A minimum-area RV32i implementation


## Dependencies:
#### RTL simulation:
* [python3](https://www.python.org/downloads/)
* [cocotb](https://www.cocotb.org/)
* [verilator](https://www.veripool.org/verilator/)
* [surfer](https://surfer-project.org/)
#### Test binary generation:
* riscv-gnu-toolchain-bin:
    - riscv32-unknown-elf-gcc
    - riscv32-unknown-elf-objcopy
    - riscv32-unknown-elf-objdump
#### Functional verification:
* SPIKE ?



## Design assumptions:

* Dual-port memory: one read port for instructions, one read/write port for data
* Memory operations take 1 cycle

## Architecture notes:

* Single write port on register file, load instructions stall core for 1 cycle

### Ideas

* No comparison units, just use the adder to subtract
* use the same for the branch unit
* use ALU for load/store calculations
* design dedicated adder for PC+4 computation
* regfile ?????