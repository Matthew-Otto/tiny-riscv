# tiny-riscv
A minimum-area RV32i implementation


### Dependencies:
[python3](https://www.python.org/downloads/) \
[cocotb](https://www.cocotb.org/) \
[verilator](https://www.veripool.org/verilator/) \
[surfer](https://surfer-project.org/)


### Design assumptions:

* Dual-port memory: one read port for instructions, one read/write port for data
* Memory operations take 1 cycle