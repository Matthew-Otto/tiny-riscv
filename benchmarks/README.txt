Benchmark programs originally sourced from https://github.com/ucb-bar/riscv-benchmarks


riscv32-unknown-elf-gcc -march=rv32e -mabi=ilp32e -nostdlib -T link.ld crt0.S test.c -o test.elf
riscv32-unknown-elf-objcopy -O verilog test.elf test.hex
riscv32-unknown-elf-objdump -d test.elf > test.asm