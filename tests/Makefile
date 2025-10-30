# Toolchain prefix
RISCV_PREFIX = riscv32-unknown-elf-
AS      = $(RISCV_PREFIX)as
LD      = $(RISCV_PREFIX)ld
OBJCOPY = $(RISCV_PREFIX)objcopy
OBJDUMP = $(RISCV_PREFIX)objdump

AS_FLAGS = -march=rv32e -mabi=ilp32e
LD_FLAGS = -T spike.ld


SRC     := $(wildcard *.asm)
OBJ     := $(SRC:.asm=.o)
ELF     := $(SRC:.asm=.elf)
HEX     := $(SRC:.asm=.hex)
LST     := $(SRC:.asm=.lst)

all: $(HEX) $(LST)

# Assemble
$(OBJ): $(SRC)
	$(AS) $(AS_FLAGS) -o $@ $<

# Link
$(ELF): $(OBJ)
	$(LD) $(LD_FLAGS) -o $@ $<

# Convert ELF to Verilog hex file
$(HEX): $(ELF)
	$(OBJCOPY) -O verilog $< $@

# generate readable disassembly
$(LST): $(ELF)
	$(OBJDUMP) -d $< > $@

spike:
	spike -d +signature=functional_test.spike.memdump +signature-granularity=4 functional_test.elf

clean:
	rm -f *.o *.elf *.hex *.lst