# Benchmarks

Carious bare-metal c applications used to compare the performance of our design against baseline

Compile by running `make` in this directory.\
Requires riscv32-unknown-elf

### Benchmarks
| Test | Description | Source |
| --- | --- | --- |
| quick_sort.c | Quick sort algorithm | https://github.com/ucb-bar/riscv-benchmarks |
| radix_sort.c | Radix sort algorithm | https://github.com/ucb-bar/riscv-benchmarks |
| multiply.c | Software based multiply | https://github.com/ucb-bar/riscv-benchmarks |
| towers_of_hanoi.c | Solution to towers of Hanoi puzzle | https://github.com/ucb-bar/riscv-benchmarks |
| sha256.c | SHA256 algorithm | https://github.com/ilvn/SHA256/blob/main/sha256.h |
