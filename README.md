# tiny-riscv
A minimum-area RV32I implementation


## Results:

Compare to [SERV](https://github.com/olofk/serv)

#### Area
| Design    | Post-synthesis (µm²) | Post-APR (µm²) |
| --------- | -------------------- | -------------- |
| Tiny-RISC | 5373.954300          | 5082           |
| [SERV](https://github.com/olofk/serv) | 2658.584500          | 2387.7984         |

#### Timing 
| Design    | Pre-APR | Post-APR |
| --------- | ------- | -------- |
| Tiny-RISC | 2.4748  | 2.5097   |
| [SERV](https://github.com/olofk/serv) | 999999  | 999999   |

#### Performance
| Design    | IPC | Fmax | Normalized Perf
| --------- | ------- | -------- | -------- |
| Tiny-RISC | 0.8355  | 999999   | 999999 |
| [SERV](https://github.com/olofk/serv) | 999999  | 999999   | 999999 |


## Tools / Dependencies:
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
* [Synopsis Design Compiler](https://www.synopsys.com/implementation-and-signoff/rtl-synthesis-test/design-compiler.html)
* [Cadence Innovus](https://www.cadence.com/en_US/home/tools/digital-design-and-signoff/soc-implementation-and-floorplanning/innovus-implementation-system.html)
* [Synopsys PrimeTime](https://www.synopsys.com/implementation-and-signoff/signoff/primetime.html)
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

TODO: make a plot of results for all apps


## Synthesis
1. Install Yosys
2. Run Yosys in the synthesis directory:
    ``` 
    $ cd synthesis
    $ yosys synth.ys
    ```
3. The resulting netlist can be found at `synthesis/output/synth_netlist.v`

## PnR

