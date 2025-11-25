# linker script so spike will work

OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY {
  RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 16M
}

SECTIONS {
  .text : {
    *(.text*)
  } > RAM

  .rodata : {
    *(.rodata*)
  } > RAM

  .data : {
    *(.data*)
  } > RAM

  .bss : {
    *(.bss*)
    *(COMMON)
  } > RAM

  .signature : {
    __begin_signature = .;    /* Symbol for Spike */
    KEEP(*(.signature*))      /* Keep all .signature sections from input files */
    __end_signature = .;      /* Symbol for Spike */
  } > RAM
}
