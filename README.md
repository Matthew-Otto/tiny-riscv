# tiny-riscv
A minimum-area RV32I implementation


## Results:

Compared to [SERV](https://github.com/olofk/serv) - "the world's smallest RISC-V CPU."

#### Area
| Design    | Post-synthesis | Post-APR | NAND2 Gate Equivalent |
| --------- | -------------------- | -------------- | --- |
| tiny-riscv | 5373.9543 µm² | 5166.0544 µm² | 2752 GE |
| SERV | 2658.5845 µm² | 2387.7984 µm² | 1272 GE |

2.16x larger area

#### Timing 
| Design    | Pre-APR | Post-APR | Fmax |
| --------- | ------- | -------- | ---- |
| tiny-riscv | 2.4748 ns | 2.5097 ns | 398.5 MHz |
| SERV | 0.7163 ns | 0.7377 ns | 1355 MHz |

3.40x lower Fmax

#### Performance
| Design    | IPC | Fmax | Normalized Perf
| --------- | ------- | -------- | -------- |
| tiny-riscv | 0.8355  | 398.5 MHz | 332.9 MIPS |
| SERV | .01926*  | 1355 MHz | 26.10 MIPS |

~12.75x higher performance with only 2.163x larger area.

\* This value is an estimate produced in part with 3rd party measurements of SERV performance. This is a conservative estimate. SERV IPC is lower in practice.

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
1. Compile benchmarks
    ```
    $ cd benchmarks
    $ make
    ```
2. Run cocotb/verilator in sim directory
    ```
    $ cd sim
    $ make benchmark
    ```
3. Results can be found in `sim/benchmark_results.txt`


## Synthesis
1. Install Yosys
2. Run Yosys in the synthesis directory:
    ``` 
    $ cd synthesis
    $ yosys synth.ys
    ```
3. The resulting netlist can be found at `synthesis/output/synth_netlist.v`

## PnR

