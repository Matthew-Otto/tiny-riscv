# Toolchain prefix
RISCV_PREFIX = riscv32-unknown-elf
CC     = $(RISCV_PREFIX)-gcc
OBJCOPY = $(RISCV_PREFIX)-objcopy
OBJDUMP = $(RISCV_PREFIX)-objdump
CFLAGS = -march=rv32i -mabi=ilp32 -nostdlib -nostartfiles -ffreestanding -O0 -static -Ttext=0x0

# Get all C files in the directory
C_SRCS := $(wildcard *.c)
# Convert to ELF files
ELFS   := $(C_SRCS:.c=.elf)
# Convert to BIN files
BINS   := $(C_SRCS:.c=.bin)
ASMS   := $(C_SRCS:.c=.asm)

all: $(BINS)

disassemble: $(ASMS)

# Compile each C file into an ELF
%.elf: %.c
	$(CC) $(CFLAGS) -o $@ $<

# Convert ELF to BIN
%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

# Disassemble binary files
%.asm: %.bin
	$(OBJDUMP) -b binary -m riscv:rv32i -D $< > $@

clean:
	rm -f *.o *.elf *.bin *.asm
