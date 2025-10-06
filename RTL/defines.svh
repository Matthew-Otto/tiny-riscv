`ifndef DEFINES
`define DEFINES

typedef enum logic [4:0] {
    i_NOP,
    i_ADD,
    i_SUB,
    i_SLL,
    i_SLT,
    i_SLTU,
    i_XOR,
    i_SRL,
    i_SRA,
    i_OR,
    i_AND
} alu_instr_t;

`endif
